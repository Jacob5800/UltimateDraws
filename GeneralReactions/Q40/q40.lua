local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Quantum40",
			uuid = "aee149b8-04ba-1702-b8be-631dc6ce4051",
		},
		objectType = "folder",
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
						name = "Quantum40",
						uuid = "270af919-0510-d7b2-9ca7-cd5db06cdc12",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertDuration = 2500,
						alertPriority = 3,
						alertScale = 0.89999997615814,
						alertText = "NO DEBUFF",
						conditions = 
						{
							
							{
								"5b6e3f7e-72c5-5382-bdd8-d605a492b860",
								true,
							},
							
							{
								"22e37a6e-3216-796e-9b04-67b9ef438e3d",
								true,
							},
							
							{
								"ab86153d-46f9-5d16-9902-342adb140bba",
								true,
							},
						},
						displayPath = "Quantum40",
						name = "NO DEBUFF",
						uuid = "fb6639f3-4878-24f3-be47-10a019724da4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "b0da491a-ce19-886e-a4f3-ccbd33e13d0c",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40",
						localmapid = 1311,
						name = "Quantum40 Map",
						uuid = "22e37a6e-3216-796e-9b04-67b9ef438e3d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffIDList = 
						{
							4559,
							4560,
						},
						category = "Self",
						displayPath = "Quantum40",
						name = "Missing Dark + Light Vengeance",
						uuid = "ab86153d-46f9-5d16-9902-342adb140bba",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						hpType = 2,
						hpValue = 1,
						name = "Alive",
						uuid = "5b6e3f7e-72c5-5382-bdd8-d605a492b860",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40",
			name = "[Quantum40] No Debuff Alert",
			throttleTime = 1000,
			timeout = 2,
			uuid = "03378a63-bf84-fb01-89af-12b8a47fd06a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40",
			name = "Bounds of Sin",
			uuid = "fad96cfa-f669-1012-b7bc-2df8dd44bd0c",
		},
		objectType = "folder",
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
						name = "Quantum40",
						uuid = "2139f284-4534-be8f-a2e4-f4eae3b9af2f",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Bounds of Sin",
						uuid = "7f8aba7a-1fcc-db18-aa76-b81805c81059",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p = TensorCore.mGetPlayer()\nif p == nil or p.pos == nil then\n    self.used = true\n    return\nend\n\nlocal function assignedRole(entity)\n    if entity == nil then\n        return nil\n    end\n    if entity.name and gLj_Toolbox and gLj_Toolbox.Settings and gLj_Toolbox.Settings.partyRoles then\n        local assigned = gLj_Toolbox.Settings.partyRoles[entity.name]\n        if assigned ~= nil and assigned ~= \"None\" then\n            return assigned\n        end\n    end\n    if gLj_PartyRoles and entity.id ~= nil then\n        for candidate, entityID in pairs(gLj_PartyRoles) do\n            if entityID == entity.id then\n                return candidate\n            end\n        end\n    end\n    return nil\nend\n\nlocal function roleKind(role)\n    if role == \"MT\" or role == \"OT\" then\n        return \"tank\"\n    elseif role == \"H1\" or role == \"H2\" then\n        return \"healer\"\n    elseif role == \"M1\" or role == \"M2\" then\n        return \"melee\"\n    elseif role == \"R1\" or role == \"R2\" then\n        return \"ranged\"\n    end\n    return nil\nend\n\nlocal function jobKind(job)\n    if job == 19 or job == 21 or job == 32 or job == 37 then\n        return \"tank\"\n    elseif job == 24 or job == 28 or job == 33 or job == 40 then\n        return \"healer\"\n    elseif job == 20 or job == 22 or job == 30 or job == 34 or job == 39 or job == 41 then\n        return \"melee\"\n    end\n    return \"ranged\"\nend\n\nlocal function entityKind(entity)\n    return roleKind(assignedRole(entity)) or jobKind(entity and entity.job)\nend\n\nlocal kind = entityKind(p)\nif kind == nil then\n    self.used = true\n    return\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal seen = {}\nlocal function addEntity(entity)\n    if entity and entity.id and not seen[entity.id] then\n        seen[entity.id] = true\n        return true\n    end\n    return false\nend\naddEntity(p)\n\nlocal entities = {p}\nfor _, entity in pairs(party) do\n    if addEntity(entity) then\n        table.insert(entities, entity)\n    end\nend\n\nlocal centerX = -600.0\nlocal centerZ = -300.0\nlocal minX, maxX = p.pos.x, p.pos.x\nlocal minZ, maxZ = p.pos.z, p.pos.z\nfor _, entity in ipairs(entities) do\n    if entity.pos then\n        minX = math.min(minX, entity.pos.x)\n        maxX = math.max(maxX, entity.pos.x)\n        minZ = math.min(minZ, entity.pos.z)\n        maxZ = math.max(maxZ, entity.pos.z)\n    end\nend\n\nlocal axis\nlocal xSpread = maxX - minX\nlocal zSpread = maxZ - minZ\nif xSpread > zSpread * 1.15 then\n    axis = \"WE\"\nelseif zSpread > xSpread * 1.15 then\n    axis = \"NS\"\nelse\n    axis = \"NS\"\nend\n\nlocal partnerKind\nif axis == \"NS\" then\n    if kind == \"tank\" then\n        partnerKind = \"melee\"\n    elseif kind == \"melee\" then\n        partnerKind = \"tank\"\n    elseif kind == \"healer\" then\n        partnerKind = \"ranged\"\n    elseif kind == \"ranged\" then\n        partnerKind = \"healer\"\n    end\nelse\n    if kind == \"tank\" then\n        partnerKind = \"ranged\"\n    elseif kind == \"ranged\" then\n        partnerKind = \"tank\"\n    elseif kind == \"healer\" then\n        partnerKind = \"melee\"\n    elseif kind == \"melee\" then\n        partnerKind = \"healer\"\n    end\nend\n\nif partnerKind == nil then\n    self.used = true\n    return\nend\n\nlocal partnerRoles = {}\nif axis == \"NS\" then\n    if kind == \"tank\" then\n        partnerRoles = { \"M1\", \"M2\" }\n    elseif kind == \"melee\" then\n        partnerRoles = { \"MT\", \"OT\" }\n    elseif kind == \"healer\" then\n        partnerRoles = { \"R1\", \"R2\" }\n    elseif kind == \"ranged\" then\n        partnerRoles = { \"H1\", \"H2\" }\n    end\nelse\n    if kind == \"tank\" then\n        partnerRoles = { \"R1\", \"R2\" }\n    elseif kind == \"ranged\" then\n        partnerRoles = { \"MT\", \"OT\" }\n    elseif kind == \"healer\" then\n        partnerRoles = { \"M1\", \"M2\" }\n    elseif kind == \"melee\" then\n        partnerRoles = { \"H1\", \"H2\" }\n    end\nend\n\nlocal exactPartners = {}\nlocal fallbackPartners = {}\nlocal exactSeen = {}\nlocal fallbackSeen = {}\nfor _, entity in ipairs(entities) do\n    if entity.id ~= p.id and entity.pos then\n        local entityRole = assignedRole(entity)\n        local exact = false\n        for _, partnerRole in ipairs(partnerRoles) do\n            if entityRole == partnerRole then\n                exact = true\n                break\n            end\n        end\n        if exact and not exactSeen[entity.id] then\n            exactSeen[entity.id] = true\n            table.insert(exactPartners, entity)\n        end\n        if entityKind(entity) == partnerKind and not fallbackSeen[entity.id] then\n            fallbackSeen[entity.id] = true\n            table.insert(fallbackPartners, entity)\n        end\n    end\nend\n\nlocal partners = (#exactPartners > 0) and exactPartners or fallbackPartners\n\nlocal sideOffset = 8.5\nlocal sideX, sideZ\nif axis == \"NS\" then\n    sideX = centerX\n    sideZ = (kind == \"tank\" or kind == \"melee\") and (centerZ - sideOffset) or (centerZ + sideOffset)\nelse\n    sideX = (kind == \"tank\" or kind == \"ranged\") and (centerX - sideOffset) or (centerX + sideOffset)\n    sideZ = centerZ\nend\n\nlocal target = {x = sideX, y = p.pos.y, z = sideZ}\nlocal distance = TensorCore.getDistance2d(p.pos, target)\nlocal heading = TensorCore.getHeadingToTarget(p.pos, target)\nlocal length = math.max(3.0, math.min(distance, sideOffset))\nlocal drawer = TensorCore.getCachedFlatDrawer(0xDD50FF70, 0xDD50FF70, 0xDD50FF70, 0xFFFFFFFF, 2.4, 1)\ndrawer:addTimedArrow(8000, p.pos.x, p.pos.y, p.pos.z, heading, length, 0.9, 1.8, 1.3, 0, false)\n\nlocal labels = {}\nfor _, entity in ipairs(partners) do\n    drawer:addTimedCircleOnEnt(8000, entity.id, 1.5, 0, false, true)\n    local label = tostring(entity.name or \"\")\n    if label == \"\" or label == \"Player\" then\n        label = tostring(assignedRole(entity) or entity.job or partnerKind)\n    end\n    table.insert(labels, label)\nend\n\nlocal partnerLabel\nif #labels == 0 then\n    partnerLabel = tostring(partnerKind)\nelseif #labels == 1 then\n    partnerLabel = labels[1]\nelse\n    partnerLabel = table.concat(labels, \" / \")\nend\nTensorCore.addAlertText(3500, \"STACK WITH \" .. partnerLabel, 0.85, 2, false)\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"0a7dc35e-6b42-8c22-a225-ae1cd971443a",
								true,
							},
							
							{
								"827cb6c8-2801-74a2-80c7-aa643e6e571e",
								true,
							},
						},
						displayPath = "Quantum40/Bounds of Sin",
						name = "Draw partner split and marker",
						uuid = "88d16770-1de3-6ad0-bd23-78dddac39706",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "7b38fea1-907a-87a3-a6e3-80f28c2d6c84",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Bounds of Sin",
						uuid = "5aeb4423-a420-ed11-9f28-02c73599fddd",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Event",
						conditionLua = "\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1311 and spellID == 44121 and entityContentID == 14038\n",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Bounds of Sin",
						eventArgType = 2,
						eventSpellID = 44121,
						name = "Bounds cast spell (Argus)",
						uuid = "0a7dc35e-6b42-8c22-a225-ae1cd971443a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Bounds of Sin",
						eventArgOptionType = 2,
						eventEntityContentID = 14038,
						name = "Devoured Eater entity (Moogle)",
						uuid = "827cb6c8-2801-74a2-80c7-aa643e6e571e",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Bounds of Sin",
			enabled = false,
			eventType = 3,
			name = "[Quantum40] Bounds of Sin - Partner Split",
			throttleTime = 1000,
			timeout = 2,
			uuid = "00b07f2e-ef42-3014-a5a6-7c2bf4b6c08e",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "4a3c3287-75d0-b4a5-8b84-d0590276bcbf",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Bounds of Sin",
						uuid = "d361f3ed-f29e-5e24-a96b-c58e15ba98bd",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local b=data.q40bounds or {at=Now()};data.q40bounds=b;b.resolvedAt=Now()\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive or not p.pos then self.used=true return end\nlocal s=data.q40bounds\nif not s or Now()-s.at>15000 then s={at=Now()};data.q40bounds=s end\nif s.towerUntil then self.used=true return end\nif not data.q40towers or not next(data.q40towers) then self.used=true return end\ns.towerAt=Now()+1300\ns.towerUntil=Now()+5500\nself.used=true",
						conditions = 
						{
							
							{
								"03b8aa15-d3b9-56ad-8ff7-a1d02fbc6d21",
								true,
							},
							
							{
								"4b51d832-e238-456f-bbed-bcb05bf07b35",
								true,
							},
						},
						displayPath = "Quantum40/Bounds of Sin",
						name = "Draw role tower and debuff warning",
						uuid = "ad91edcc-ad37-f360-8d16-abc6acd12c38",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "ad215653-1049-1010-9142-09782ed40e65",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Bounds of Sin",
						uuid = "ccc00447-54d4-dc70-a45a-b5c44422ada2",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Event",
						conditionLua = "\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1311 and spellID == 44123 and entityContentID == 14038\n",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Bounds of Sin",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 44123,
						name = "Matching spell",
						spellIDList = 
						{
							44123,
							44124,
						},
						uuid = "03b8aa15-d3b9-56ad-8ff7-a1d02fbc6d21",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Bounds of Sin",
						eventArgOptionType = 2,
						eventEntityContentID = 14038,
						name = "Devoured Eater entity (Moogle)",
						uuid = "4b51d832-e238-456f-bbed-bcb05bf07b35",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Bounds of Sin",
			eventType = 2,
			name = "[Quantum40] Bounds of Sin - Tower Guide",
			throttleTime = 1000,
			timeout = 2,
			uuid = "877df1ab-538b-be75-b662-3ac0a25a9f72",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40",
			name = "Scourging Blaze",
			uuid = "272ce160-bcb2-fa64-b0a7-78a871952341",
		},
		objectType = "folder",
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
						name = "Quantum40",
						uuid = "6ddf2e23-da67-681f-bd98-1ef436618ac3",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Scourging Blaze",
						uuid = "bb2e1b2e-ff84-b672-b6de-5e9c2150d4f2",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local id=eventArgs.spellID\nlocal s=data.quantum40_scourging\nif id==44797 or id==44798 then\n if s and s.openingID==id and Now()-s.at<1000 then self.used=true return end\n if s then for _,h in ipairs(s.handles or {}) do Argus.deleteTimedShape(h) end;for _,l in pairs(s.lines or {}) do for _,h in pairs(l.handles or {}) do Argus.deleteTimedShape(h) end end end\n s={orbs={},handles={},lines={},at=Now(),openingID=id};data.quantum40_scourging=s\nend\nif s then s.mode=(id==44797 or id==44799) and 'EW' or 'NS' end\nself.used=true",
						conditions = 
						{
							
							{
								"07690648-780c-8f50-b16f-2255bb3c2f79",
								true,
							},
							
							{
								"37f7f123-0880-72a2-9260-812178764381",
								true,
							},
						},
						displayPath = "Quantum40/Scourging Blaze",
						name = "Store NS or EW opening",
						uuid = "de15a572-5cda-fb2d-8c85-acdc5fbf35b7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "a9f132cb-cc30-14fd-a41c-f06b9974c010",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Scourging Blaze",
						uuid = "d23b8b2a-0142-1cc7-9676-1c8e8938f4fe",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Event",
						conditionLua = "\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1311 and entityContentID == 14037 and (spellID == 44798 or spellID == 44797)\n",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Scourging Blaze",
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Matching spell",
						spellIDList = 
						{
							44797,
							44798,
							44799,
							44800,
						},
						uuid = "07690648-780c-8f50-b16f-2255bb3c2f79",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Scourging Blaze",
						eventArgOptionType = 2,
						eventEntityContentID = 14037,
						name = "Eminent Grief entity (Moogle)",
						uuid = "37f7f123-0880-72a2-9260-812178764381",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Scourging Blaze",
			eventType = 2,
			name = "[Quantum40] Scourging Blaze - Read Opening",
			timeout = 2,
			uuid = "97094a77-1f6e-6b9d-88b2-94b7e0c1f078",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "f76d869a-429a-b311-b2a2-6d59193787d8",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Scourging Blaze",
						uuid = "192f8bdc-43cc-0219-9f66-55bc73180554",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.quantum40_scourging\nif not s or not s.mode then self.used=true return end\nlocal x,z=eventArgs.x,eventArgs.z\nfor _,o in ipairs(s.orbs) do if math.abs(o.x-x)<.5 and math.abs(o.z-z)<.5 then self.used=true return end end\ns.orbs[#s.orbs+1]={x=x,z=z,dx=s.mode=='EW' and 1 or 0,dz=s.mode=='NS' and 1 or 0}\nlocal candidates={{x=-594.25,z=-313},{x=-594.25,z=-287},{x=-605.75,z=-287},{x=-605.75,z=-313}}\nlocal good={}\nfor _,p in ipairs(candidates) do\n local safe=true\n for _,o in ipairs(s.orbs) do local across=(p.x-o.x)*o.dz-(p.z-o.z)*o.dx;if math.abs(across)<5 then safe=false break end end\n if safe then good[#good+1]=p end\nend\ns.safe=#good==1 and good[1] or nil\nself.used=true",
						conditions = 
						{
							
							{
								"f4c260ce-5982-faf7-8cbe-21ea12a692d4",
								true,
							},
						},
						displayPath = "Quantum40/Scourging Blaze",
						name = "Draw numbered safe marker",
						uuid = "9d9ea67d-e1db-05da-8c40-0cc2c888e7c3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "78bb3219-4ae6-6d9a-959a-989150550ad9",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Scourging Blaze",
						uuid = "2dd2d399-a964-3f9f-9995-cd7b6a5b8d8b",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.keyID==2014832 and eventArgs.state==1",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Scourging Blaze",
						name = "Active crystal creation",
						uuid = "f4c260ce-5982-faf7-8cbe-21ea12a692d4",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Scourging Blaze",
			eventType = 29,
			name = "[Quantum40] Scourging Blaze - Safe Marker",
			timeout = 2,
			uuid = "f789b6b5-15c7-013f-a3f8-e68632daf80e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40",
			name = "LJ Quantum",
			uuid = "659dd06a-e0c2-30fd-af58-af52535bf262",
		},
		objectType = "folder",
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
								"5485188d-ecba-2fc5-aafe-665761770072",
								true,
							},
							
							{
								"a8f5541e-5c47-c2f8-8448-c8bf00409550",
								true,
							},
							
							{
								"db7d4579-907f-39b7-b172-6b66edd143a5",
								true,
							},
						},
						endIfUsed = true,
						name = "Stop Moving",
						stopMoving = true,
						uuid = "9fa3b01d-c6c8-282c-b6a7-67b2e5f4ba12",
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
								"5485188d-ecba-2fc5-aafe-665761770072",
								true,
							},
							
							{
								"a8f5541e-5c47-c2f8-8448-c8bf00409550",
								true,
							},
							
							{
								"e58acd91-04e3-d91f-9f80-ec5d646975b7",
								true,
							},
							
							{
								"2955e76e-d6c1-84e3-94d9-7565b11b7c2c",
								false,
							},
							
							{
								"693fe82e-8708-e70c-873a-bf286231a30b",
								false,
							},
							
							{
								"f051a4f7-b8c4-c279-a6c2-262d1a147434",
								false,
							},
						},
						endIfUsed = true,
						name = "Target Dark Boss",
						setTarget = true,
						targetContentID = 14038,
						targetType = "ContentID",
						uuid = "18de7548-aa73-37c7-a1f6-1e91f567b1ea",
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
								"5485188d-ecba-2fc5-aafe-665761770072",
								true,
							},
							
							{
								"a8f5541e-5c47-c2f8-8448-c8bf00409550",
								true,
							},
							
							{
								"ede039a8-7958-e8a8-882c-5946fd4798fa",
								true,
							},
							
							{
								"6047a452-1222-a016-a6ef-bb33ed71a0b4",
								false,
							},
							
							{
								"693fe82e-8708-e70c-873a-bf286231a30b",
								false,
							},
							
							{
								"f051a4f7-b8c4-c279-a6c2-262d1a147434",
								false,
							},
						},
						endIfUsed = true,
						name = "Target Light Boss",
						setTarget = true,
						targetContentID = 14037,
						targetType = "ContentID",
						uuid = "93d84d1d-cf4c-a327-b95b-bcdf0f43adca",
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
								"5485188d-ecba-2fc5-aafe-665761770072",
								true,
							},
							
							{
								"a8f5541e-5c47-c2f8-8448-c8bf00409550",
								true,
							},
							
							{
								"f051a4f7-b8c4-c279-a6c2-262d1a147434",
								true,
							},
						},
						endIfUsed = true,
						name = "Target Adds or Nail",
						setTarget = true,
						targetType = "Detection Target",
						uuid = "814a0c68-c483-3342-b4f4-b91d2b3dd7a2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						uuid = "5485188d-ecba-2fc5-aafe-665761770072",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						name = "Assist Enabled",
						uuid = "a8f5541e-5c47-c2f8-8448-c8bf00409550",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4562,
						category = "Self",
						name = "Chains of Condemnation",
						uuid = "db7d4579-907f-39b7-b172-6b66edd143a5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4559,
						category = "Self",
						name = "Dark Vengeance",
						uuid = "e58acd91-04e3-d91f-9f80-ec5d646975b7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4560,
						category = "Self",
						name = "Light Vengeance",
						uuid = "ede039a8-7958-e8a8-882c-5946fd4798fa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14038,
						name = "Dark Boss Target",
						uuid = "2955e76e-d6c1-84e3-94d9-7565b11b7c2c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14037,
						name = "Light Boss Target",
						uuid = "6047a452-1222-a016-a6ef-bb33ed71a0b4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14041,
						name = "Flameborn Target",
						uuid = "693fe82e-8708-e70c-873a-bf286231a30b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						filterTargetType = "ContentID",
						name = "F - Nails",
						partyTargetContentID = 14042,
						uuid = "5c27b545-a9fe-7903-9b71-62fc4205f3a1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						filterTargetSubtype = "Highest HP",
						filterTargetType = "ContentID",
						name = "F - Adds",
						partyTargetContentID = 14039,
						uuid = "b2fe0626-0c36-1950-b025-8e9c6171c5bd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						matchAnyBuff = true,
						name = "F - Adds OR Nails Exist",
						partyTargetNumber = 0,
						uuid = "f051a4f7-b8c4-c279-a6c2-262d1a147434",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/LJ Quantum",
			name = "Lj: Quantum | Target Selector",
			uuid = "3aa04d0d-336d-24b8-a464-9eec88d3c0a6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40",
			name = "Mitigations",
			uuid = "158b67e5-32bc-f645-8647-8bec70b05539",
		},
		objectType = "folder",
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
						name = "Quantum40",
						uuid = "08a16e56-8b2e-c750-900d-9d6e908e7a90",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "134a9f89-c4d8-e401-92a8-5d0bcc20cf7c",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 3,
						alertScale = 0.9,
						alertTTS = true,
						alertText = "TANK LIMIT BREAK NOW",
						alertVolume = 90,
						conditions = 
						{
							
							{
								"4c23ee99-4416-4473-8536-1c688c147d3f",
								true,
							},
							
							{
								"a9064e4c-00c2-d9cd-b3f2-5c3f3b0a0836",
								true,
							},
							
							{
								"a19b5e12-a8fc-10a7-acb5-3bffee198b2b",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations",
						name = "TTS - Tank LB",
						uuid = "900e73b2-ee19-78c1-82a0-0e186708a6c0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "452c25d2-20e4-c7fa-9c74-13dc313f0258",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "ac07e33b-2de3-2dca-8aff-27bc1076eddd",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "4c23ee99-4416-4473-8536-1c688c147d3f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations",
						eventArgType = 2,
						eventSpellID = 44171,
						name = "Self-destruct action",
						uuid = "a9064e4c-00c2-d9cd-b3f2-5c3f3b0a0836",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or not eventArgs or eventArgs.spellID ~= 44171 then\n    return false\nend\n\nif TensorReactions_Q40MitigationRole ~= \"Tank\" then\n    return false\nend\n\nlocal mapID = tonumber(player.localmapid)\nif mapID ~= 1311 and mapID ~= 1333 and mapID ~= 1290 then\n    return false\nend\n\ndata.quantum40_tank_lb_warning = data.quantum40_tank_lb_warning or {}\nlocal state = data.quantum40_tank_lb_warning\nlocal timer = tonumber(TensorReactions_CurrentCombatTimer) or 0\n\nif state.lastTimer ~= nil and timer < state.lastTimer then\n    state.selfDestructCount = 0\nend\n\nstate.lastTimer = timer\nstate.selfDestructCount = (state.selfDestructCount or 0) + 1\nreturn state.selfDestructCount == 3",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations",
						name = "Third Self-destruct (Tank role)",
						uuid = "a19b5e12-a8fc-10a7-acb5-3bffee198b2b",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations",
			eventType = 3,
			name = "[Quantum40] Self-destruct 3 - Tank LB Warning",
			throttleTime = 5000,
			timeout = 3,
			uuid = "a495dce8-8572-8705-ae18-f6e0714bca22",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40/Mitigations",
			name = "Melee",
			uuid = "4a75a493-f1a8-6bf8-9972-f9f17dcb3568",
		},
		objectType = "folder",
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
						name = "Quantum40",
						uuid = "bb6441d4-0025-eba1-806b-5c7b2f1bf64b",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "0135ae17-69c0-79d8-aa82-b758ce8cd4fd",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Melee",
						uuid = "2779ac7b-4a79-34b5-b123-08f31ee9f4a7",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						actionID = 7549,
						conditions = 
						{
							
							{
								"c5a06620-9486-9d28-9078-8b40868ed592",
								true,
							},
							
							{
								"d657332f-d817-0c0b-a8c2-c2f44c55baeb",
								true,
							},
							
							{
								"01b3f279-4e6b-d2d7-afb0-5ab913a91709",
								true,
							},
							
							{
								"d0842d09-5bf7-1f54-b2fe-5e2828a8b023",
								true,
							},
							
							{
								"46f2a6f2-694b-5290-a60a-86f247bb1782",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Melee",
						name = "Feint",
						targetType = "Event Entity",
						uuid = "942fd2bb-cc46-e8a9-942a-7d9d62cf1d90",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "56485a53-a73e-f5ad-ac04-634fad67a903",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "302a8c89-4840-fad4-b60d-ddcc6d4ff291",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Melee",
						uuid = "bb56781b-0638-b3e8-8d64-00e792e324cb",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "c5a06620-9486-9d28-9078-8b40868ed592",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						eventArgOptionType = 2,
						eventEntityContentID = 14037,
						name = "Eminent Grief caster",
						uuid = "d657332f-d817-0c0b-a8c2-c2f44c55baeb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						eventArgType = 2,
						eventSpellID = 45119,
						name = "Eminent Grief cast",
						uuid = "01b3f279-4e6b-d2d7-afb0-5ab913a91709",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						jobIDList = 
						{
							20,
							22,
							30,
							34,
							39,
							41,
						},
						name = "Melee jobs",
						uuid = "d0842d09-5bf7-1f54-b2fe-5e2828a8b023",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or not eventArgs or eventArgs.spellID ~= 45119 then\n    return false\nend\n\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil then\n    return false\nend\nlocal slot = roster.mySlot()\nif slot ~= \"M1\" and slot ~= \"M2\" then\n    return false\nend\n\nlocal timer = tonumber(TensorReactions_CurrentCombatTimer) or 0\ndata.quantum40_melee_spinelash = data.quantum40_melee_spinelash or {}\nlocal state = data.quantum40_melee_spinelash\n\nif state.lastTimer ~= nil and timer < state.lastTimer then\n    state.count = 0\n    state.lastTimer = nil\nend\n\nif state.lastTimer ~= nil and math.abs(timer - state.lastTimer) < 1.0 then\n    return false\nend\n\nstate.lastTimer = timer\nstate.count = (state.count or 0) + 1\nreturn state.count >= 2",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						name = "Planned occurrence and Melee role",
						uuid = "46f2a6f2-694b-5290-a60a-86f247bb1782",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Melee",
			eventType = 3,
			name = "[Quantum40] Spinelash - Melee Feint (Eminent Grief)",
			throttleTime = 5000,
			timeout = 3,
			uuid = "24ea074f-7bdb-b5eb-9379-3d30b4b2deec",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "c84da98c-004f-d848-a57a-2f6683d53020",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "4ebb50d9-402f-7f1d-a004-33486a578919",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Melee",
						uuid = "33895b56-02e2-e413-904d-8838d4cb152b",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						actionID = 7549,
						conditions = 
						{
							
							{
								"64b29811-b28b-796b-a9db-1f94733d9fef",
								true,
							},
							
							{
								"de157243-b889-3e66-ab1c-441d595203ff",
								true,
							},
							
							{
								"bd799627-5f93-b0c7-80ea-59507696ae2a",
								true,
							},
							
							{
								"7ed81f8d-1e67-7cc0-974c-e191fd3a3d58",
								true,
							},
							
							{
								"fa80284e-358d-ec36-b258-ad2877263a99",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Melee",
						name = "Feint",
						targetType = "Event Entity",
						uuid = "6ad08119-28bb-1187-b602-8626e20759eb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "50e9890f-3536-7f86-8313-0a38907b1535",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "dfc7c8ff-f11e-031c-ac75-be73fed75efd",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Melee",
						uuid = "ecb4641c-33eb-e9a0-9276-6f264fcd42a7",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "64b29811-b28b-796b-a9db-1f94733d9fef",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						eventArgOptionType = 2,
						eventEntityContentID = 14038,
						name = "Devoured Eater caster",
						uuid = "de157243-b889-3e66-ab1c-441d595203ff",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						eventArgType = 2,
						eventSpellID = 44164,
						name = "Devoured Eater cast",
						uuid = "bd799627-5f93-b0c7-80ea-59507696ae2a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						jobIDList = 
						{
							20,
							22,
							30,
							34,
							39,
							41,
						},
						name = "Melee jobs",
						uuid = "7ed81f8d-1e67-7cc0-974c-e191fd3a3d58",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or not eventArgs or eventArgs.spellID ~= 44164 then\n    return false\nend\n\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil then\n    return false\nend\nlocal slot = roster.mySlot()\nif slot ~= \"M1\" and slot ~= \"M2\" then\n    return false\nend\n\nlocal timer = tonumber(TensorReactions_CurrentCombatTimer) or 0\ndata.quantum40_melee_unholy_darkness = data.quantum40_melee_unholy_darkness or {}\nlocal state = data.quantum40_melee_unholy_darkness\n\nif state.lastTimer ~= nil and timer < state.lastTimer then\n    state.count = 0\n    state.lastTimer = nil\nend\n\nif state.lastTimer ~= nil and math.abs(timer - state.lastTimer) < 1.0 then\n    return false\nend\n\nstate.lastTimer = timer\nstate.count = (state.count or 0) + 1\nreturn state.count == 3",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						name = "Planned occurrence and Melee role",
						uuid = "fa80284e-358d-ec36-b258-ad2877263a99",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Melee",
			eventType = 3,
			name = "[Quantum40] Unholy Darkness 3 - Melee Feint (Devoured Eater)",
			throttleTime = 5000,
			timeout = 3,
			uuid = "062823e2-8b10-2d19-8eb0-08b90b434423",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "34c6d4d5-e58e-ae1d-aea5-4c23f5acb642",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "e5c4e4ed-4e73-a617-b3e8-3f2039fdf6c4",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Melee",
						uuid = "e149d4b8-cef6-50f3-83bc-5eb56d720f00",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 3,
						alertScale = 0.9,
						alertTTS = true,
						alertText = "USE PILGRIM'S POTION",
						alertVolume = 90,
						conditions = 
						{
							
							{
								"10a79961-5136-ba4d-a26a-dcbe47bb7a17",
								true,
							},
							
							{
								"cd15c52f-e6ef-ae1a-8d02-febfa3acf6b8",
								true,
							},
							
							{
								"5f7418f1-1e02-916f-aa06-b744f73f441d",
								true,
							},
							
							{
								"a64a04e1-ab41-1d40-baab-78a516992752",
								true,
							},
							
							{
								"fdf9052d-12a6-5028-ac9b-8004a31f6beb",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Melee",
						name = "Use Pilgrim's Potion",
						uuid = "a36ada05-c759-713d-b708-b52d0c3a85b7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "a83c16b7-8816-46a3-9e6d-087d8f534bfe",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "2511e2fb-5c6c-16e9-a4a1-9eecc24a7e07",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Melee",
						uuid = "964ca745-cfad-aa91-9659-09a86acc24d5",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "10a79961-5136-ba4d-a26a-dcbe47bb7a17",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						eventArgOptionType = 2,
						eventEntityContentID = 14037,
						name = "Eminent Grief caster",
						uuid = "cd15c52f-e6ef-ae1a-8d02-febfa3acf6b8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						eventArgType = 2,
						eventSpellID = 44144,
						name = "Searing Chains cast",
						uuid = "5f7418f1-1e02-916f-aa06-b744f73f441d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						jobIDList = 
						{
							20,
							22,
							30,
							34,
							39,
							41,
						},
						name = "Melee jobs",
						uuid = "a64a04e1-ab41-1d40-baab-78a516992752",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or not eventArgs or eventArgs.spellID ~= 44144 then\n    return false\nend\n\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil then\n    return false\nend\nlocal slot = roster.mySlot()\nif slot ~= \"M1\" and slot ~= \"M2\" then\n    return false\nend\n\nlocal timer = tonumber(TensorReactions_CurrentCombatTimer) or 0\ndata.quantum40_melee_searing_chains = data.quantum40_melee_searing_chains or {}\nlocal state = data.quantum40_melee_searing_chains\n\nif state.lastTimer ~= nil and timer < state.lastTimer then\n    state.count = 0\n    state.lastTimer = nil\nend\n\nif state.lastTimer ~= nil and math.abs(timer - state.lastTimer) < 1.0 then\n    return false\nend\n\nstate.lastTimer = timer\nstate.count = (state.count or 0) + 1\nreturn state.count == 3",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Melee",
						name = "Third cast and Melee role",
						uuid = "fdf9052d-12a6-5028-ac9b-8004a31f6beb",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Melee",
			eventType = 2,
			name = "[Quantum40] Searing Chains 3 - Pilgrim's Potion Alert",
			throttleTime = 5000,
			timeout = 3,
			uuid = "02b66514-7517-a98f-9d66-e1592e2faa1a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40/Mitigations",
			name = "Extra",
			uuid = "616e3225-f1ca-12a3-8f86-27581a34b2bb",
		},
		objectType = "folder",
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
						name = "Quantum40",
						uuid = "85f93cf4-490e-97af-a242-1c6930872d16",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "9c4b81a3-0e35-f9ee-a5ba-c1a4e97d98ce",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "b2eb71a4-5eb4-ac75-9499-328ea9e76fc0",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						actionID = 2887,
						conditions = 
						{
							
							{
								"e119fac1-dbb0-eec6-9abe-8ac5f53780cb",
								true,
							},
							
							{
								"565da555-ae75-7489-a340-e0d901af1a75",
								true,
							},
							
							{
								"5c3cf96b-e990-32a1-8cb7-d7d658d25dfa",
								true,
							},
							
							{
								"bbed7e57-6b74-4662-8af2-11fb47f5d5b3",
								true,
							},
							
							{
								"8c68de46-94d3-0d1b-bf78-9031fedcc94d",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Dismantle",
						targetType = "Event Entity",
						uuid = "1aea5580-0a69-9850-98d9-32d870625447",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "d9a3e8f1-2e9b-3773-96a2-1762413b9a51",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "90bb22e7-f4fb-139d-b973-aacfaa2198cf",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "73c3135b-1e36-7214-8c69-27b609569bbd",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "e119fac1-dbb0-eec6-9abe-8ac5f53780cb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgOptionType = 2,
						eventEntityContentID = 14037,
						name = "Eminent Grief",
						uuid = "565da555-ae75-7489-a340-e0d901af1a75",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgType = 2,
						eventSpellID = 45119,
						name = "Spinelash",
						uuid = "5c3cf96b-e990-32a1-8cb7-d7d658d25dfa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						jobIDList = 
						{
							31,
						},
						name = "Machinist",
						uuid = "bbed7e57-6b74-4662-8af2-11fb47f5d5b3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 2887,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Dismantle ready",
						uuid = "8c68de46-94d3-0d1b-bf78-9031fedcc94d",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Extra",
			eventType = 3,
			name = "[Quantum40] Spinelash - Extra Dismantle (Eminent Grief)",
			throttleTime = 5000,
			timeout = 3,
			uuid = "327c6a4e-4931-0d33-a402-bdde33106935",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "c87fc9be-c551-d1ee-8662-bcc274c3c478",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "638ea6d3-ce91-da5b-a233-94f2a9184b35",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "f24af9d7-29f7-5413-9930-dc0155440337",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						actionID = 34685,
						conditions = 
						{
							
							{
								"052aa91a-9d0b-a81d-ad07-5bc4e3e81eb6",
								true,
							},
							
							{
								"1f6dc91b-7884-b5d8-b726-aed68568c0fa",
								true,
							},
							
							{
								"29190464-45b2-d947-8c7b-bbc365c107be",
								true,
							},
							
							{
								"25ec32c5-f0b5-e259-a8d1-127cc9397ba6",
								true,
							},
							
							{
								"02052fa3-bc1a-7bc4-b975-deac35c55664",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Tempera Coat",
						uuid = "c8757075-3dff-843b-ae8e-5268f0bfe8b7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "7c7b143d-f934-b7bf-bf48-73f95e642a8b",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "b24c3f48-dd0f-1aad-b9b1-8f553d1eeae6",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "a4afbd19-7b57-7248-91d2-100266916db5",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "052aa91a-9d0b-a81d-ad07-5bc4e3e81eb6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgOptionType = 2,
						eventEntityContentID = 14037,
						name = "Eminent Grief",
						uuid = "1f6dc91b-7884-b5d8-b726-aed68568c0fa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgType = 2,
						eventSpellID = 45119,
						name = "Spinelash",
						uuid = "29190464-45b2-d947-8c7b-bbc365c107be",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						jobIDList = 
						{
							42,
						},
						name = "Pictomancer",
						uuid = "25ec32c5-f0b5-e259-a8d1-127cc9397ba6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 34685,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Tempera Coat ready",
						uuid = "02052fa3-bc1a-7bc4-b975-deac35c55664",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Extra",
			eventType = 3,
			name = "[Quantum40] Spinelash - Extra Tempera Coat",
			throttleTime = 5000,
			timeout = 3,
			uuid = "fe0d6a0c-bae7-ce70-934c-9b15289dd20a",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "a7f60700-eee4-dd0d-b68d-55f7b4729287",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "6684a2c8-957e-23b7-bb49-88a1717a0830",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "1ee4e774-b406-d09e-bcc5-ed8ac77d8127",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						actionID = 34685,
						conditions = 
						{
							
							{
								"efb1d458-27f1-9288-a451-ed3087ca47a0",
								true,
							},
							
							{
								"e8f49a1e-659e-725e-827d-719649b9deef",
								true,
							},
							
							{
								"db0cd96f-c4ff-85f7-9fe9-2bc3cb4c2598",
								true,
							},
							
							{
								"38d34e6c-5df8-d3fa-bbc6-ed6801f0ae53",
								true,
							},
							
							{
								"6d601cdf-ccb4-721b-9b62-03af75b3e5df",
								true,
							},
							
							{
								"5716d74e-ce47-69e4-82e1-55876954914c",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Tempera Coat",
						uuid = "ad1e0af3-6497-ca90-bb20-23db082f826f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "105a70d9-da41-750f-a53e-6a3bdb67fb70",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "6b1df093-afab-b531-8f90-2431e6009688",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "dce2defd-128b-c5dd-9346-69072722b278",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "efb1d458-27f1-9288-a451-ed3087ca47a0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgOptionType = 2,
						eventEntityContentID = 14041,
						name = "Flameborn",
						uuid = "e8f49a1e-659e-725e-827d-719649b9deef",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgType = 2,
						eventSpellID = 44171,
						name = "Self-destruct",
						uuid = "db0cd96f-c4ff-85f7-9fe9-2bc3cb4c2598",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						jobIDList = 
						{
							42,
						},
						name = "Pictomancer",
						uuid = "38d34e6c-5df8-d3fa-bbc6-ed6801f0ae53",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 34685,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Tempera Coat ready",
						uuid = "6d601cdf-ccb4-721b-9b62-03af75b3e5df",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or not eventArgs or eventArgs.spellID ~= 44171 then\n    return false\nend\n\nlocal timer = tonumber(TensorReactions_CurrentCombatTimer) or 0\ndata.quantum40_extra_tempera_selfdestruct = data.quantum40_extra_tempera_selfdestruct or {}\nlocal state = data.quantum40_extra_tempera_selfdestruct\n\nif state.lastTimer ~= nil and timer < state.lastTimer then\n    state.count = 0\n    state.lastTimer = nil\nend\n\nif state.lastTimer ~= nil and math.abs(timer - state.lastTimer) < 1.0 then\n    return false\nend\n\nstate.lastTimer = timer\nstate.count = (state.count or 0) + 1\nreturn state.count == 1",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "First Self-destruct",
						uuid = "5716d74e-ce47-69e4-82e1-55876954914c",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Extra",
			eventType = 3,
			name = "[Quantum40] Self-destruct 1 - Extra Tempera Coat",
			throttleTime = 5000,
			timeout = 3,
			uuid = "327d2ceb-7668-a6df-aa35-f89d91dba0dc",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "aacf490b-6aee-129c-8d22-20fde5762747",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "6f519946-fb8d-44c0-a2a3-13905b9ad37e",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "6b40374c-666d-e4bd-b527-86d6bb6d94d2",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						actionID = 7560,
						conditions = 
						{
							
							{
								"7334a929-f60e-e0d1-835a-7f472473fa52",
								true,
							},
							
							{
								"30eafe88-b789-76f8-be2f-4bed952fb853",
								true,
							},
							
							{
								"0b1ac748-dc71-35c2-afbf-13683d0772e5",
								true,
							},
							
							{
								"b4ba838a-c69b-4aad-86e1-834132030cc8",
								true,
							},
							
							{
								"33d5f5b9-adb5-f6e6-9e55-4f9ba1e4e690",
								true,
							},
							
							{
								"db7d2a3c-e951-4121-9347-3c1238a31794",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Addle",
						targetType = "Event Entity",
						uuid = "c89d6444-452f-8ce1-a5b0-871543f350b2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "a61ddda3-4ed5-aeb3-b24b-4e8dad94fb85",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "f7e78f64-2402-0f1f-a343-0855541d5972",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "c7420861-30f3-a83a-bf2c-12f3f32e51a4",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "7334a929-f60e-e0d1-835a-7f472473fa52",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgOptionType = 2,
						eventEntityContentID = 14038,
						name = "Devoured Eater",
						uuid = "30eafe88-b789-76f8-be2f-4bed952fb853",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgType = 2,
						eventSpellID = 44164,
						name = "Unholy Darkness",
						uuid = "0b1ac748-dc71-35c2-afbf-13683d0772e5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						jobIDList = 
						{
							25,
							27,
							35,
							42,
						},
						name = "Caster jobs",
						uuid = "b4ba838a-c69b-4aad-86e1-834132030cc8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 7560,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Addle ready",
						uuid = "33d5f5b9-adb5-f6e6-9e55-4f9ba1e4e690",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or not eventArgs or eventArgs.spellID ~= 44164 then\n    return false\nend\n\nlocal timer = tonumber(TensorReactions_CurrentCombatTimer) or 0\ndata.quantum40_extra_addle_unholy = data.quantum40_extra_addle_unholy or {}\nlocal state = data.quantum40_extra_addle_unholy\n\nif state.lastTimer ~= nil and timer < state.lastTimer then\n    state.count = 0\n    state.lastTimer = nil\nend\n\nif state.lastTimer ~= nil and math.abs(timer - state.lastTimer) < 1.0 then\n    return false\nend\n\nstate.lastTimer = timer\nstate.count = (state.count or 0) + 1\nreturn state.count == 1 or state.count == 3",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "First or third Unholy Darkness",
						uuid = "db7d2a3c-e951-4121-9347-3c1238a31794",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Extra",
			eventType = 3,
			name = "[Quantum40] Unholy Darkness - Extra Addle (Devoured Eater)",
			throttleTime = 5000,
			timeout = 3,
			uuid = "35869ae4-4443-2727-a3b5-be72f53487fc",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "b198f3a7-30ce-bf18-945c-3a36ba132745",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "75b2ec6c-e4bc-88bf-8ad9-a2b458600ab0",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "8a4c7b0c-c995-3fb7-b591-adfe80f446d6",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						actionID = 25857,
						conditions = 
						{
							
							{
								"119cd133-7ef3-9e91-9811-938c95ef6b98",
								true,
							},
							
							{
								"2da494a9-0e57-84e9-a237-87e56385a0a4",
								true,
							},
							
							{
								"86afa486-7148-9553-b9a7-08e9be242dc5",
								true,
							},
							
							{
								"486b02dc-fb84-a16a-9000-ce132ed6c08b",
								true,
							},
							
							{
								"4824f96e-d4bf-9f6f-848d-4e8950e377e3",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Magick Barrier",
						uuid = "b5ca2bda-e355-be3a-96a9-7010d527dffa",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "9d978823-cd70-c057-b69c-d907f33e6e5e",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "39ed1fa3-145a-2315-b34f-5f14b28f895a",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "0791f68d-b84f-2ff7-832f-8f039704dd09",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "119cd133-7ef3-9e91-9811-938c95ef6b98",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgOptionType = 2,
						eventEntityContentID = 14037,
						name = "Eminent Grief",
						uuid = "2da494a9-0e57-84e9-a237-87e56385a0a4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgType = 2,
						eventSpellID = 44139,
						name = "Abyssal Sun",
						uuid = "86afa486-7148-9553-b9a7-08e9be242dc5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						jobIDList = 
						{
							35,
						},
						name = "Red Mage",
						uuid = "486b02dc-fb84-a16a-9000-ce132ed6c08b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 25857,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Magick Barrier ready",
						uuid = "4824f96e-d4bf-9f6f-848d-4e8950e377e3",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Extra",
			eventType = 2,
			name = "[Quantum40] Abyssal Sun - Extra Magick Barrier",
			throttleTime = 5000,
			timeout = 3,
			uuid = "bfe1c37e-6c69-b003-8f67-1f26c31d9a05",
			version = 2,
		},
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
						name = "Quantum40",
						uuid = "d137ce87-71b1-26ff-b9b3-87b4638aade8",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "b8c684ed-f7e5-53cd-8cec-c67a61484f42",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "eff08fb9-b925-ff19-88ec-964e8ccaeedb",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						actionID = 25857,
						conditions = 
						{
							
							{
								"7d1afcda-1d13-e320-b4ec-577f6cfbd60b",
								true,
							},
							
							{
								"993f3060-237d-8114-8fff-2ac1d5b60550",
								true,
							},
							
							{
								"1be02f14-25a7-39d4-bb78-630b1b5ebae0",
								true,
							},
							
							{
								"fea8da52-75b9-81a4-9a30-d93d297ee964",
								true,
							},
							
							{
								"913a2a0c-7188-ac4f-bbcd-3fc5701bf205",
								true,
							},
							
							{
								"b988ca7f-df68-631c-9266-b895e8029f5a",
								true,
							},
						},
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Magick Barrier",
						uuid = "cbc12a70-aa13-4c0c-ad18-140ecc49b8be",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						displayPath = "",
						name = "Quantum40",
						uuid = "12b62c55-8be8-ed3f-980d-84372fa3927e",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40",
						name = "Mitigations",
						uuid = "653982e4-66b0-8da9-9e15-0e2ae2934ba7",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						displayPath = "Quantum40/Mitigations",
						name = "Extra",
						uuid = "7d43850f-581c-4a02-be11-bc694386381d",
					},
					objectType = "folder",
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						name = "Q40 map",
						uuid = "7d1afcda-1d13-e320-b4ec-577f6cfbd60b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgOptionType = 2,
						eventEntityContentID = 14037,
						name = "Eminent Grief",
						uuid = "993f3060-237d-8114-8fff-2ac1d5b60550",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						eventArgType = 2,
						eventSpellID = 44144,
						name = "Searing Chains",
						uuid = "1be02f14-25a7-39d4-bb78-630b1b5ebae0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						jobIDList = 
						{
							35,
						},
						name = "Red Mage",
						uuid = "fea8da52-75b9-81a4-9a30-d93d297ee964",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 25857,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Magick Barrier ready",
						uuid = "913a2a0c-7188-ac4f-bbcd-3fc5701bf205",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or not eventArgs or eventArgs.spellID ~= 44144 then\n    return false\nend\n\nlocal timer = tonumber(TensorReactions_CurrentCombatTimer) or 0\ndata.quantum40_extra_magick_searing = data.quantum40_extra_magick_searing or {}\nlocal state = data.quantum40_extra_magick_searing\n\nif state.lastTimer ~= nil and timer < state.lastTimer then\n    state.count = 0\n    state.lastTimer = nil\nend\n\nif state.lastTimer ~= nil and math.abs(timer - state.lastTimer) < 1.0 then\n    return false\nend\n\nstate.lastTimer = timer\nstate.count = (state.count or 0) + 1\nreturn state.count == 2",
						dequeueIfLuaFalse = true,
						displayPath = "Quantum40/Mitigations/Extra",
						name = "Second Searing Chains",
						uuid = "b988ca7f-df68-631c-9266-b895e8029f5a",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Mitigations/Extra",
			eventType = 2,
			name = "[Quantum40] Searing Chains 2 - Extra Magick Barrier",
			throttleTime = 5000,
			timeout = 3,
			uuid = "4e40bac9-1b1e-cd74-abcb-76cfc4bb3894",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40",
			name = "Guidance",
			uuid = "7a4c275f-5837-401a-b00f-75817b777767",
		},
		objectType = "folder",
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
						actionLua = "local b=data.q40bounds\nif b then if b.towerArrow then Argus.deleteTimedShape(b.towerArrow) end;if b.towerCircle then Argus.deleteTimedShape(b.towerCircle) end end\ndata.q40bounds={at=Now(),samples={}}\nself.used=true",
						conditions = 
						{
							
							{
								"4851bfcb-82d7-6602-b3d5-0f56a3f9651f",
								true,
							},
							
							{
								"2dac5cab-6da5-3ff2-969e-dd769831aec1",
								true,
							},
						},
						name = "[Quantum40] Bounds - reset pattern",
						uuid = "e2f59350-fc7b-e8b5-b815-033ffa60c330",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "4851bfcb-82d7-6602-b3d5-0f56a3f9651f",
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
						name = "Matching spell",
						spellIDList = 
						{
							44121,
						},
						uuid = "2dac5cab-6da5-3ff2-969e-dd769831aec1",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 3,
			name = "[Quantum40] Bounds - reset pattern",
			timeout = 1,
			uuid = "96ff3d09-60f1-b459-a51d-a8007a96e73a",
			version = 2,
		},
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
						actionLua = "local s=data.q40bounds\nif not s or Now()-s.at>12000 then self.used=true return end\nlocal dx,dz=eventArgs.x+600,eventArgs.z+300\nlocal radial=dx*math.sin(eventArgs.heading)+dz*math.cos(eventArgs.heading)\nif not s.mode then\n s.mode=radial>0 and 'IN' or 'OUT'\n if s.mode=='IN' then TensorCore.addAlertText(4000,'IN - stay middle',1,2,true) end\nend\n-- The first cardinal pair is already firing; exit through the perpendicular pair.\nif s.mode=='OUT' and not s.axis and (math.abs(dx)<.6 or math.abs(dz)<.6) then\n s.axis=math.abs(dx)<.6 and 'EW' or 'NS'\n TensorCore.addAlertText(4000,'OUT - '..(s.axis=='NS' and 'NORTH / SOUTH' or 'WEST / EAST'),1,2,true)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"9c76365d-ec5d-8106-9631-7cca78d4aa00",
								true,
							},
							
							{
								"58941949-e209-be48-98f1-c058e107eac9",
								true,
							},
						},
						name = "[Quantum40] Bounds - actual In Out axis",
						uuid = "0ff91797-97e8-e9df-8d35-98a53c9b09e6",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "9c76365d-ec5d-8106-9631-7cca78d4aa00",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeID==44122 and eventArgs.contentID==14038",
						dequeueIfLuaFalse = true,
						name = "Bounds icicle AOE",
						uuid = "58941949-e209-be48-98f1-c058e107eac9",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 18,
			name = "[Quantum40] Bounds - actual In Out axis",
			timeout = 1,
			uuid = "980e7b07-269c-e92d-b95b-f7985d2d9904",
			version = 2,
		},
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
						actionLua = "local s=data.q40bounds\nlocal p=TensorCore.mGetPlayer()\nif not s then self.used=true return end\nlocal j=p and p.job;local x,z,name,index\nif j==19 or j==21 or j==32 or j==37 then x=-607.78;z=-307.78;name='TANK NW TOWER';index=27\nelseif j==24 or j==28 or j==33 or j==40 then x=-592.22;z=-292.22;name='HEALER SE TOWER';index=30\nelseif j==20 or j==22 or j==30 or j==34 or j==39 or j==41 then x=-592.22;z=-307.78;name='MELEE NE TOWER';index=28\nelse x=-607.78;z=-292.22;name='RANGED SW TOWER';index=29 end\nlocal active=data.q40towers and data.q40towers[index]\nif not active or not s.towerUntil or Now()>=s.towerUntil or not p or not p.alive or Now()<s.towerAt or Now()<(data.q40towerBlockUntil or 0) then\n if s.towerArrow then Argus.deleteTimedShape(s.towerArrow);s.towerArrow=nil end\n if s.towerCircle then Argus.deleteTimedShape(s.towerCircle);s.towerCircle=nil end\n if not active or not s.towerUntil or Now()>=s.towerUntil then s.towerUntil=nil end\n self.used=true return\nend\nlocal ms=s.towerUntil-Now()\nlocal drawer=TensorCore.getCachedFlatDrawer(0x4433FF33,0x6633FF33,0x8833FF33,0xFF33FF33,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\nlocal pos={x=x,y=p.pos.y,z=z};local d=TensorCore.getDistance2d(p.pos,pos);local h=TensorCore.getHeadingToTarget(p.pos,pos)\nif not s.towerCircle then s.towerCircle=drawer:addTimedCircle(ms,x,p.pos.y,z,1,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) end\nif d>.7 or (s.towerArrow and Now()<(s.towerArrowAt or 0)+3000) then\n if s.towerArrow then drawer:updateTimedArrow(s.towerArrow,ms,p.pos.x,p.pos.y,p.pos.z,h,math.max(.1,d-1),.65,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI)\n else s.towerArrowAt=Now();s.towerArrow=drawer:addTimedArrow(ms,p.pos.x,p.pos.y,p.pos.z,h,math.max(.1,d-1),.65,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI) end\nelseif s.towerArrow then Argus.deleteTimedShape(s.towerArrow);s.towerArrow=nil end\nif not s.towerSaid then TensorCore.addAlertText(2500,name,.9,2,false);s.towerSaid=true end\nself.used=true",
						conditions = 
						{
							
							{
								"5ab47c03-b84b-5742-9b38-fa7653d6d2d2",
								true,
							},
							
							{
								"dadc4dbe-6332-0821-8223-56b19c13a134",
								true,
							},
						},
						name = "[Quantum40] Bounds - job tower arrow",
						uuid = "ee5bbd1c-6782-9f7b-9815-2ac65917c484",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "5ab47c03-b84b-5742-9b38-fa7653d6d2d2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.q40bounds;if not s then return false end\nif s.towerArrow~=nil or s.towerCircle~=nil then return true end\nreturn s.towerUntil~=nil and s.towerAt~=nil and Now()>=s.towerAt and Now()>=(data.q40towerBlockUntil or 0)",
						dequeueIfLuaFalse = true,
						name = "Tower window",
						uuid = "dadc4dbe-6332-0821-8223-56b19c13a134",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			name = "[Quantum40] Bounds - job tower arrow",
			throttleTime = 100,
			timeout = 1,
			uuid = "74a126c5-745f-ae9c-aa14-bb32d34f2e60",
			version = 2,
		},
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
						actionLua = "local i=eventArgs.a1;local t=data.q40towers or {};data.q40towers=t\nif eventArgs.a2==1 and eventArgs.a3==2 then\n if not next(t) then\n  data.q40quadWave=(data.q40quadWave or 0)+1\n  if data.q40quadWave>1 then\n   local b=data.q40bounds or {at=Now()};data.q40bounds=b\n   b.towerAt=math.max(Now(),data.q40towerBlockUntil or 0);b.towerUntil=Now()+15000;b.towerSaid=nil\n  end\n end\n t[i]=true\nelseif (eventArgs.a2==4 and eventArgs.a3==8) or (eventArgs.a2==16 and eventArgs.a3==32) then t[i]=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"8c9a3364-8f79-135d-8265-75cd0f80c59a",
								true,
							},
							
							{
								"3b90e968-d687-9271-b836-bfb0a4d63ee6",
								true,
							},
						},
						name = "[Quantum40] Tower spawn and resolution",
						uuid = "444346e1-362f-02e7-83d8-32a6404a1514",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "8c9a3364-8f79-135d-8265-75cd0f80c59a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.a1>=27 and eventArgs.a1<=30",
						dequeueIfLuaFalse = true,
						name = "Tower map effect",
						uuid = "3b90e968-d687-9271-b836-bfb0a4d63ee6",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 14,
			name = "[Quantum40] Tower spawn and resolution",
			timeout = 1,
			uuid = "fa5412ca-2d58-15c4-b709-f359f183d1db",
			version = 2,
		},
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
						actionLua = "local s=data.quantum40_scourging\nif not s then data.q40renderDirty=true;self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then data.q40renderDirty=true;self.used=true return end\nlocal o\nfor _,orb in ipairs(s.orbs) do if math.abs(orb.x-e.pos.x)<1 and math.abs(orb.z-e.pos.z)<1 then o=orb;break end end\nlocal anyActive=false;for _,l in pairs(s.lines) do if Now()<l.expires then anyActive=true break end end\nif not anyActive then s.safeShown=false end\nif o and (not s.lines[eventArgs.entityID] or Now()>=s.lines[eventArgs.entityID].expires) then\n s.lines[eventArgs.entityID]={x=o.x,z=o.z,y=e.pos.y,dx=o.dx,dz=o.dz,handles={},hit={},expires=Now()+25000}\nend\ndata.q40renderDirty=true;self.used=true",
						conditions = 
						{
							
							{
								"5bda82f6-cbed-ff00-8cc8-10700d074a0f",
								true,
							},
							
							{
								"4d552d3d-03ce-4ea8-a5d5-d3d66b0d3d6c",
								true,
							},
						},
						name = "[Quantum40] Exacrystals - three per lane",
						uuid = "f1349b74-a4a6-e177-811f-4195d4cc5809",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "5bda82f6-cbed-ff00-8cc8-10700d074a0f",
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
						name = "Matching spell",
						spellIDList = 
						{
							44118,
						},
						uuid = "4d552d3d-03ce-4ea8-a5d5-d3d66b0d3d6c",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 3,
			name = "[Quantum40] Exacrystals - three per lane",
			timeout = 1,
			uuid = "42da2503-6288-4674-b472-a752573330a3",
			version = 2,
		},
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
						actionLua = "local s=data.quantum40_scourging\nif not s then data.q40renderDirty=true;self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nlocal x,z=eventArgs.castPosX,eventArgs.castPosZ\nif not x or not z then if not e then data.q40renderDirty=true;self.used=true return end;x=e.pos.x;z=e.pos.z end\nfor _,l in pairs(s.lines) do\n if Now()<l.expires then\n  local across=(x-l.x)*l.dz-(z-l.z)*l.dx\n  if math.abs(across)<.7 then local k=math.floor(((x-l.x)*l.dx+(z-l.z)*l.dz)/4+.5);l.hit[k]=true end\n end\nend\ndata.q40renderDirty=true;self.used=true",
						conditions = 
						{
							
							{
								"f4a534e9-9d62-5a73-bea7-6875adad1fa9",
								true,
							},
							
							{
								"977e945e-280f-20cd-9152-0b4cf7b87b70",
								true,
							},
						},
						name = "[Quantum40] Exacrystals - advance previews",
						uuid = "b86a8bb9-7866-17a5-b4f3-856e79d42c85",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "f4a534e9-9d62-5a73-bea7-6875adad1fa9",
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
						name = "Matching spell",
						spellIDList = 
						{
							44118,
							44119,
						},
						uuid = "977e945e-280f-20cd-9152-0b4cf7b87b70",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 2,
			name = "[Quantum40] Exacrystals - advance previews",
			timeout = 1,
			uuid = "9a9f0866-a975-c553-bd10-ad1570960d98",
			version = 2,
		},
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
						actionLua = "local party=TensorCore.getEntityGroupList('Party') or {}\nlocal p=TensorCore.mGetPlayer()\nlocal owner,buff\nif p and p.alive then local b=TensorCore.getBuff(p,4567);if b then owner=p;buff=b end end\nfor _,e in pairs(party) do local b=TensorCore.getBuff(e,4567);if b and e.alive then owner=e;buff=b;break end end\nlocal s=data.q40sin or {};data.q40sin=s\nif not owner then\n s.missingSince=s.missingSince or Now()\n if Now()-s.missingSince>=500 then if s.circle then Argus.deleteTimedShape(s.circle) end;data.q40sin=nil end\n self.used=true return\nend\ns.missingSince=nil\nlocal radius=buff.stacks>=10 and 4 or 1.2\nlocal drawer=TensorCore.getCachedFlatDrawer(0x99FFFFFF,0x99FFFFFF,0x99FFFFFF,0xFFFFFFFF,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\nif s.owner~=owner.id then if s.circle then Argus.deleteTimedShape(s.circle) end;s.owner=owner.id;s.circle=drawer:addTimedCircleOnEnt(60000,owner.id,radius,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI)\nelseif not drawer:updateTimedCircleOnEnt(s.circle,60000,owner.id,radius,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) then\n s.circle=drawer:addTimedCircleOnEnt(60000,owner.id,radius,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) end\n\n-- The diagram defines the complete pass order from the first holder's job.\nlocal function role(e)\n local j=e.job\n if j==19 or j==21 or j==32 or j==37 then return 'tank' end\n if j==24 or j==28 or j==33 or j==40 then return 'healer' end\n if j==20 or j==22 or j==30 or j==34 or j==39 or j==41 then return 'melee' end\n if j==23 or j==31 or j==38 or j==25 or j==27 or j==35 or j==42 then return 'ranged' end\nend\nif not data.q40sinPassOrder then\n local sequences={tank={'tank','melee','ranged','healer'},healer={'healer','ranged','melee','tank'},ranged={'ranged','healer','tank','melee'},melee={'melee','tank','healer','ranged'}}\n local sequence=sequences[role(owner)];local byRole={};local seen={};local valid=true\n local function take(e)\n  if seen[e.id] then return end;seen[e.id]=true\n  local k=role(e);if not k then valid=false return end\n  if byRole[k] then valid=false else byRole[k]=e.id end\n end\n if p then take(p) end;for _,e in pairs(party) do take(e) end\n if valid and sequence then\n  local order={};for i,k in ipairs(sequence) do if not byRole[k] then valid=false break end;order[i]=byRole[k] end\n  if valid then data.q40sinPassOrder=order end\n end\nend\nlocal nextID\nfor i,id in ipairs(data.q40sinPassOrder or {}) do if id==owner.id then nextID=data.q40sinPassOrder[i+1];break end end\nlocal nextPlayer=nextID and TensorCore.mGetEntity(nextID)\nif buff.stacks>=8 and nextPlayer and nextPlayer.alive and not TensorCore.getBuff(nextPlayer,4569) then\n if s.nextLabelOwner~=owner.id then\n  AnyoneCore.addTimedWorldTextOnEnt(6000,'Next',nextPlayer.id,0xFFFFFFFF,true,1.3,3.5);s.nextLabelOwner=owner.id\n end\n if p and p.alive and p.id==nextPlayer.id and s.nextWarnedOwner~=owner.id then\n  AnyoneCore.addTimedWorldTextOnEnt(6000,'Go near Sinbearer',p.id,0xFFFFFFFF,true,1.2,2.8)\n  TensorCore.addAlertText(4000,\"YOU'RE NEXT - GO NEAR SINBEARER\",.95,2,true);s.nextWarnedOwner=owner.id\n end\nend\n\n-- The Toolbox documents fixed entity labels, not an update/count-up API. Display real stacks as a short refreshed status label.\nAnyoneCore.addTimedWorldTextOnEnt(270,tostring(buff.stacks)..'/16',owner.id,0xFFFFFFFF,true,1.3,2)\nself.used=true",
						conditions = 
						{
							
							{
								"9074db67-b4ee-82ff-8832-5246ddb22949",
								true,
							},
							
							{
								"105ea3f0-f175-e493-9c0e-323eae84b413",
								true,
							},
						},
						name = "[Quantum40] Sin Bearer - holder and count",
						uuid = "7c3bacec-b1c7-d35a-9839-21b34ba2a656",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "9074db67-b4ee-82ff-8832-5246ddb22949",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if data.q40sin~=nil then return true end\nlocal p=TensorCore.mGetPlayer()\nif p and p.alive and TensorCore.getBuff(p,4567) then return true end\nfor _,e in pairs(TensorCore.getEntityGroupList('Party') or {}) do\n if e.alive and TensorCore.getBuff(e,4567) then return true end\nend\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Sin holder or cleanup",
						uuid = "105ea3f0-f175-e493-9c0e-323eae84b413",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			name = "[Quantum40] Sin Bearer - holder and count",
			throttleTime = 250,
			timeout = 1,
			uuid = "1a5563cd-dd4b-a77b-b880-7419199279da",
			version = 2,
		},
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
						actionLua = "local p=TensorCore.mGetPlayer();local e=TensorCore.mGetEntity(eventArgs.entityID)\nif not p or not e or not e.alive then self.used=true return end\nlocal party=TensorCore.getEntityGroupList('Party') or {};local found=e.id==p.id\nfor _,v in pairs(party) do if v.id==e.id then found=true break end end\nif found then TensorCore.addAlertText(5000,'ESUNA '..tostring(e.name)..' - DOOM',1.1,3,true);AnyoneCore.addTimedWorldTextOnEnt(math.min(5000,eventArgs.buffDuration*1000),'ESUNA - DOOM',e.id,0xFFFFFFFF,true,1.3,2) end\nself.used=true",
						conditions = 
						{
							
							{
								"40242444-380a-7237-9d99-faf80ea77071",
								true,
							},
							
							{
								"53de3376-f762-51a5-9513-6496784ef5a5",
								true,
							},
						},
						name = "[Quantum40] Doom - healer Esuna alert",
						uuid = "6f955748-7268-4355-95d7-1e3be8b173ac",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "40242444-380a-7237-9d99-faf80ea77071",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer();return eventArgs.buffID==4594 and p~=nil and p.alive and (p.job==24 or p.job==28 or p.job==33 or p.job==40)",
						dequeueIfLuaFalse = true,
						name = "Doom on healer client",
						uuid = "53de3376-f762-51a5-9513-6496784ef5a5",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 8,
			name = "[Quantum40] Doom - healer Esuna alert",
			timeout = 1,
			uuid = "a3ed38eb-5f0a-2cd9-8694-a0d5621e57ca",
			version = 2,
		},
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
						actionLua = "local e=TensorCore.mGetEntity(eventArgs.entityID);local p=TensorCore.mGetPlayer()\nif not e or not p or not p.alive then self.used=true return end\nlocal party=TensorCore.getEntityGroupList('Party') or {};local found=e.id==p.id\nfor _,v in pairs(party) do if v.id==e.id then found=true break end end\nif not found then self.used=true return end\nif data.q40stack and data.q40stack.circle then Argus.deleteTimedShape(data.q40stack.circle) end\ndata.q40spinelashCount=(data.q40spinelashCount or 0)+1\ndata.q40stack={target=e.id,at=Now(),expires=Now()+10500,first=data.q40spinelashCount==1,fixed=data.q40spinelashCount<=2}\nself.used=true",
						conditions = 
						{
							
							{
								"3f349861-7889-016f-9431-7a91d8627df8",
								true,
							},
							
							{
								"f885aed0-7713-06d6-ae36-c05104db6282",
								true,
							},
						},
						name = "[Quantum40] Spinelash - stack target and timer",
						uuid = "5bb318ab-0f44-fe73-971b-a3ed8c327eaa",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "3f349861-7889-016f-9431-7a91d8627df8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.markerID==23",
						dequeueIfLuaFalse = true,
						name = "Spinelash target marker",
						uuid = "f885aed0-7713-06d6-ae36-c05104db6282",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 4,
			name = "[Quantum40] Spinelash - stack target and timer",
			throttleTime = 500,
			timeout = 1,
			uuid = "2f2157e9-dea5-a1fb-b66c-adf09085b1e3",
			version = 2,
		},
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
						actionLua = "local s=data.quantum40_scourging\nif s then for _,h in ipairs(s.handles or {}) do Argus.deleteTimedShape(h) end;for _,l in pairs(s.lines or {}) do for _,h in pairs(l.handles) do Argus.deleteTimedShape(h) end end end\nlocal b=data.q40bounds;if b then if b.towerArrow then Argus.deleteTimedShape(b.towerArrow) end;if b.towerCircle then Argus.deleteTimedShape(b.towerCircle) end end\nif data.q40sin and data.q40sin.circle then Argus.deleteTimedShape(data.q40sin.circle) end\nif data.q40stack then for _,key in ipairs({'circle','guideCircle','guideArrow'}) do local h=data.q40stack[key];if h then Argus.deleteTimedShape(h) end end end\ndata.q40spinelashCount=nil\ndata.quantum40_scourging=nil;data.q40bounds=nil;data.q40sin=nil;data.q40stack=nil;data.q40towers=nil\nlocal t=data.q40tankTower;if t then if t.arrow then Argus.deleteTimedShape(t.arrow) end;if t.circle then Argus.deleteTimedShape(t.circle) end end\nlocal t=data.q40chain;if t then if t.arrow then Argus.deleteTimedShape(t.arrow) end;if t.circle then Argus.deleteTimedShape(t.circle) end end\ndata.q40tankTower=nil;data.q40chain=nil;data.q40quadWave=nil;data.q40towerBlockUntil=nil;data.q40vengeanceWarn=nil;data.q40renderDirty=nil\nif data.q40shackle and data.q40shackle.circle then Argus.deleteTimedShape(data.q40shackle.circle) end\nif data.q40tailBeam then Argus.deleteTimedShape(data.q40tailBeam) end\ndata.q40shackle=nil;data.q40tailBeam=nil;data.q40pullDeadline=nil;data.q40eruptionLast=nil\ndata.q40sinPassOrder=nil\nself.used=true",
						conditions = 
						{
							
							{
								"540b8edf-331c-85cb-afca-531f98ed6a8d",
								true,
							},
						},
						name = "[Quantum40] Owned guidance cleanup",
						uuid = "86b9a905-c747-5b04-a50c-6f93f2294c7c",
						version = 2.1,
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
						localmapid = 1311,
						name = "Quantum map",
						uuid = "540b8edf-331c-85cb-afca-531f98ed6a8d",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 9,
			name = "[Quantum40] Owned guidance cleanup",
			timeout = 1,
			uuid = "c9df6624-b604-76b8-8291-ceeb048d26f7",
			version = 2,
		},
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
						actionLua = "data.q40renderDirty=nil\nlocal now=Now();local b=data.q40bounds;local s=data.quantum40_scourging\nlocal pending=b~=nil and b.resolvedAt==nil\nlocal drawer=TensorCore.getCachedFlatDrawer(0x223333FF,0x443333FF,0x663333FF,0xCC3333FF,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\nif s then\n local allowed=not pending\n for _,l in pairs(s.lines or {}) do\n  local wanted={}\n  if allowed and now<l.expires then\n   for _,dir in ipairs({-1,1}) do\n    local first=0;while l.hit[first] do first=first+dir end\n    for n=0,3 do local k=first+n*dir;local x,z=l.x+k*4*l.dx,l.z+k*4*l.dz\n     if math.abs(x+600)<=19.5 and math.abs(z+300)<=14.5 then wanted[k]={x=x,z=z} end\n    end\n   end\n  end\n  for k,h in pairs(l.handles) do if not wanted[k] then Argus.deleteTimedShape(h);l.handles[k]=nil end end\n  for k,p in pairs(wanted) do\n   local ms=math.max(1,l.expires-now)\n   if not l.handles[k] then l.handles[k]=drawer:addTimedCircle(ms,p.x,l.y+.08,p.z,5,0,false,false,Argus2.RenderFlags.FLAG_RENDER_UI) end\n  end\n end\n if allowed and next(s.lines) and s.safe and not s.safeShown then\n  local p=TensorCore.mGetPlayer()\n  if p and p.alive then\n   local v={x=s.safe.x,y=p.pos.y,z=s.safe.z};local d=TensorCore.getDistance2d(p.pos,v)\n   local g=TensorCore.getCachedFlatDrawer(0x2233FF33,0x4433FF33,0x6633FF33,0xFF33FF33,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\n   s.handles[#s.handles+1]=g:addTimedCircle(12000,v.x,v.y+.15,v.z,1.2,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI)\n   if d>.8 then s.handles[#s.handles+1]=g:addTimedArrow(6500,p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,v),math.max(.1,d-1),.7,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI) end\n   local label;local best=math.huge\n   local labels={'A','B','C','D','1','2','3','4'}\n   for i=1,8 do local wx,wy,wz,active=Argus.getWaymarkInfo(i);if active then local d2=(wx-v.x)^2+(wz-v.z)^2;if d2<best then best=d2;label=labels[i] end end end\n   TensorCore.addAlertText(3500,label and ('EXACRYSTALS - WAYMARK '..label) or 'EXACRYSTAL SAFE SPOT',.95,2,true);s.safeShown=true\n  end\n end\nend\nlocal stack=data.q40stack\nif stack then\n local e=TensorCore.mGetEntity(stack.target);local p=TensorCore.mGetPlayer()\n if now>=stack.expires or not e or not e.alive or not p or not p.alive then\n  if stack.circle then Argus.deleteTimedShape(stack.circle) end\n  if stack.guideCircle then Argus.deleteTimedShape(stack.guideCircle) end\n  if stack.guideArrow then Argus.deleteTimedShape(stack.guideArrow) end\n  data.q40stack=nil\n elseif not pending then\n  local ms=stack.expires-now\n  local g=TensorCore.getCachedFlatDrawer(0x2233FF33,0x4433FF33,0x6633FF33,0xFF33FF33,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\n  local tank=p.job==19 or p.job==21 or p.job==32 or p.job==37\n  local fixed={x=stack.first and -613.5 or -586.5,y=p.pos.y+.15,z=-299.5}\n  if not stack.circle then\n   if stack.fixed then\n    stack.circle=g:addTimedCircle(ms,fixed.x,fixed.y,fixed.z,1.4,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI)\n   else stack.circle=g:addTimedCircleOnEnt(ms,e.id,1.4,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) end\n   local pos=stack.fixed and {x=fixed.x,y=fixed.y+1,z=fixed.z} or {x=e.pos.x,y=e.pos.y+1,z=e.pos.z}\n   AnyoneCore.addWorldTextCountdown(ms,pos,0xFFFFFFFF,true,1.3)\n   TensorCore.addAlertText(4500,tank and 'TANK IN FRONT OF LINE STACK' or 'STACK BEHIND TANK',1,2,true)\n  end\n  if stack.fixed then\n   local dest={x=fixed.x,y=fixed.y,z=tank and -302.5 or fixed.z}\n   if tank and not stack.guideCircle then stack.guideCircle=g:addTimedCircle(ms,dest.x,dest.y,dest.z,.8,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) end\n   local d=TensorCore.getDistance2d(p.pos,dest)\n   if d>.7 or (stack.guideArrow and Now()<(stack.guideArrowAt or 0)+3000) then\n    local h=TensorCore.getHeadingToTarget(p.pos,dest)\n    if stack.guideArrow then g:updateTimedArrow(stack.guideArrow,ms,p.pos.x,p.pos.y,p.pos.z,h,math.max(.1,d-1),.65,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI)\n    else stack.guideArrowAt=Now();stack.guideArrow=g:addTimedArrow(ms,p.pos.x,p.pos.y,p.pos.z,h,math.max(.1,d-1),.65,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI) end\n   elseif stack.guideArrow then Argus.deleteTimedShape(stack.guideArrow);stack.guideArrow=nil end\n   stack.px=p.pos.x;stack.pz=p.pos.z\n  end\n end\nend\nlocal t=data.q40tankTower\nif t then\n local p=TensorCore.mGetPlayer()\n local blocked=pending or now<(data.q40towerBlockUntil or 0)\n if now>=t.expires or not p or not p.alive or blocked then\n  if t.arrow then Argus.deleteTimedShape(t.arrow);t.arrow=nil end\n  if t.circle then Argus.deleteTimedShape(t.circle);t.circle=nil end\n  if now>=t.expires or not p or not p.alive then data.q40tankTower=nil end\n else\n  local g=TensorCore.getCachedFlatDrawer(0x2233FF33,0x4433FF33,0x6633FF33,0xFF33FF33,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\n  local ms=t.expires-now;local dest={x=t.x,y=t.y,z=t.z};local d=TensorCore.getDistance2d(p.pos,dest);local h=TensorCore.getHeadingToTarget(p.pos,dest)\n  if not t.circle then t.circle=g:addTimedCircle(ms,t.x,t.y,t.z,1.5,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) end\n  if d>.7 or (t.arrow and Now()<(t.arrowAt or 0)+3000) then\n   if t.arrow then g:updateTimedArrow(t.arrow,ms,p.pos.x,p.pos.y,p.pos.z,h,math.max(.1,d-1),.65,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI)\n   else t.arrowAt=Now();t.arrow=g:addTimedArrow(ms,p.pos.x,p.pos.y,p.pos.z,h,math.max(.1,d-1),.65,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI) end\n  elseif t.arrow then Argus.deleteTimedShape(t.arrow);t.arrow=nil end\n  t.px=p.pos.x;t.pz=p.pos.z\n  if not t.said then TensorCore.addAlertText(2500,'TANK SOAK TOWER',1,2,true);t.said=true end\n end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"47c8a838-688c-ac92-9a57-05f25b41d8ee",
								true,
							},
							
							{
								"96f28686-b8b7-8ffc-a758-610fdbb28003",
								true,
							},
						},
						name = "Render after In Out",
						uuid = "6e83c1f8-2da6-94fa-950c-835263bcbf40",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "47c8a838-688c-ac92-9a57-05f25b41d8ee",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local now=Now();local b=data.q40bounds;local pending=b~=nil and b.resolvedAt==nil\nlocal s=data.quantum40_scourging\nif s then\n for _,l in pairs(s.lines or {}) do\n  if next(l.handles or {}) and (pending or now>=l.expires) then return true end\n  if not pending and now<l.expires and data.q40renderDirty then return true end\n end\nend\nlocal t=data.q40stack\nif t then\n local p=TensorCore.mGetPlayer();local e=TensorCore.mGetEntity(t.target)\n if now>=t.expires or not p or not p.alive or not e or not e.alive then return true end\n if not pending and (not t.circle or (t.fixed and (t.px==nil or (p.pos.x-t.px)^2+(p.pos.z-t.pz)^2>.0225))) then return true end\nend\nlocal t=data.q40tankTower\nif t then\n local p=TensorCore.mGetPlayer()\n if not p or not p.alive or now>=t.expires then return true end\n local blocked=pending or now<(data.q40towerBlockUntil or 0)\n if blocked then return t.arrow~=nil or t.circle~=nil end\n return t.px==nil or (p.pos.x-t.px)^2+(p.pos.z-t.pz)^2>.0225\nend\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Active owned guidance",
						uuid = "96f28686-b8b7-8ffc-a758-610fdbb28003",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			name = "[Quantum40] Deferred exa and stack draws",
			throttleTime = 100,
			timeout = 1,
			uuid = "9cbfb4eb-232a-c708-98d9-660817fa6a33",
			version = 2,
		},
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
						actionLua = "local p=TensorCore.mGetPlayer();if not p or not p.alive then self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID);local found=e and e.id==p.id\nfor _,v in pairs(TensorCore.getEntityGroupList('Party') or {}) do if e and v.id==e.id then found=true break end end\nif found and (not data.q40pairCall or Now()-data.q40pairCall>3000) then data.q40pairCall=Now();TensorCore.addAlertText(4500,'STACK WITH PARTNER',1,2,true) end\nself.used=true",
						conditions = 
						{
							
							{
								"ab3bd025-7daa-4a33-8446-b0e1d9dcc554",
								true,
							},
							
							{
								"1d63e986-0ec3-c485-9893-65427328a4b4",
								true,
							},
						},
						name = "Partner stack once per set",
						uuid = "cc3044b4-2e52-9ea3-bb3c-af7b41562d5b",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "ab3bd025-7daa-4a33-8446-b0e1d9dcc554",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.markerID==77 or eventArgs.markerID==78",
						dequeueIfLuaFalse = true,
						name = "Light dark pair marker",
						uuid = "1d63e986-0ec3-c485-9893-65427328a4b4",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 4,
			name = "[Quantum40] Light dark - partner stack call",
			throttleTime = 1000,
			timeout = 1,
			uuid = "838ad22f-4685-335f-b35c-e6b1eb058a4f",
			version = 2,
		},
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
						actionLua = "local p=TensorCore.mGetPlayer()\nif p and p.alive and (not data.q40flameCall or Now()-data.q40flameCall>2000) then data.q40flameCall=Now();TensorCore.addAlertText(4000,'TAG FLAMEBORN',1,2,true) end\nself.used=true",
						conditions = 
						{
							
							{
								"6b722a5a-c304-d36c-8381-ca1b42aed5b7",
								true,
							},
							
							{
								"f792e322-7157-4e69-b567-2bbcc2245d4a",
								true,
							},
						},
						name = "[Quantum40] Flameborn targetable - tag call",
						uuid = "20a4d30c-fd38-d4f7-bdb0-af6f4dfb476a",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "6b722a5a-c304-d36c-8381-ca1b42aed5b7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.entityContentID==14041 and eventArgs.isTargetable==true",
						dequeueIfLuaFalse = true,
						name = "Matching mechanic",
						uuid = "f792e322-7157-4e69-b567-2bbcc2245d4a",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 26,
			name = "[Quantum40] Flameborn targetable - tag call",
			timeout = 1,
			uuid = "0d6d1791-214a-d113-bbf3-a5239640838f",
			version = 2,
		},
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
						actionLua = "local p=TensorCore.mGetPlayer();local e=TensorCore.mGetEntity(eventArgs.entityID)\nif not p or not p.alive or not e then self.used=true return end\nlocal s=data.q40tankTower\nif s then if s.arrow then Argus.deleteTimedShape(s.arrow) end;if s.circle then Argus.deleteTimedShape(s.circle) end end\ndata.q40tankTower={x=e.pos.x,y=e.pos.y,z=e.pos.z,expires=Now()+eventArgs.channelTimeMax*1000+2000}\nself.used=true",
						conditions = 
						{
							
							{
								"3f7f2b70-93ae-741d-990f-480351a39d74",
								true,
							},
							
							{
								"5ce0260d-d8e7-5582-9b6e-a04d75740b2c",
								true,
							},
						},
						name = "[Quantum40] Manifold - assigned tank tower",
						uuid = "f2acdc15-fb69-3c91-a89a-e539066da140",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "3f7f2b70-93ae-741d-990f-480351a39d74",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer();return eventArgs.spellID==44159 and p~=nil and (p.job==19 or p.job==21 or p.job==32 or p.job==37)",
						dequeueIfLuaFalse = true,
						name = "Matching mechanic",
						uuid = "5ce0260d-d8e7-5582-9b6e-a04d75740b2c",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 3,
			name = "[Quantum40] Manifold - assigned tank tower",
			timeout = 1,
			uuid = "65733dfd-7975-cd28-af62-82919e1fc74f",
			version = 2,
		},
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
						actionLua = "data.q40towerBlockUntil=math.max(data.q40towerBlockUntil or 0,Now()+eventArgs.channelTimeMax*1000+250)\nself.used=true",
						conditions = 
						{
							
							{
								"a26f6105-62f5-9e86-9d90-dacd4eb3738f",
								true,
							},
							
							{
								"5a443865-455e-7bfe-9acd-d285d380c775",
								true,
							},
						},
						name = "[Quantum40] Towers - wait for preceding mechanic",
						uuid = "dce7d590-8721-26ab-a829-9a7b68bee8d4",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "a26f6105-62f5-9e86-9d90-dacd4eb3738f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.spellID==44801 or eventArgs.spellID==44156 or eventArgs.spellID==44152 or eventArgs.spellID==44153 or eventArgs.spellID==44104 or eventArgs.spellID==44110 or eventArgs.spellID==44097 or eventArgs.spellID==44105 or eventArgs.spellID==44100 or eventArgs.spellID==44107",
						dequeueIfLuaFalse = true,
						name = "Matching mechanic",
						uuid = "5a443865-455e-7bfe-9acd-d285d380c775",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 3,
			name = "[Quantum40] Towers - wait for preceding mechanic",
			timeout = 1,
			uuid = "8e436993-15b2-7108-b36e-ba333fefb3d9",
			version = 2,
		},
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
						actionLua = "local p=TensorCore.mGetPlayer();if not p or not p.alive then self.used=true return end\nfor _,id in ipairs({4559,4560}) do\n local b=TensorCore.getBuff(p,id)\n if b and b.duration>0 and b.duration<10 then\n  data.q40vengeanceWarn={id=id,deadline=Now()+b.duration*1000}\n  TensorCore.addAlertText(2500,(id==4559 and 'DARK' or 'LIGHT')..' VENGEANCE BELOW 10s',.8,2,false)\n  break\n end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"567b4501-405b-76cb-938a-5bd9ab1b25d2",
								true,
							},
							
							{
								"936ca4e1-5edf-ce41-afdd-e0e20c0fb845",
								true,
							},
						},
						name = "[Quantum40] Vengeance - below 10s once",
						uuid = "066db0c1-bf0d-e10d-95f1-c591e74a2be4",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "567b4501-405b-76cb-938a-5bd9ab1b25d2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer();if not p or not p.alive then return false end\nfor _,id in ipairs({4559,4560}) do\n local b=TensorCore.getBuff(p,id)\n if b and b.duration>0 and b.duration<10 then\n  local w=data.q40vengeanceWarn\n  if not w or w.id~=id or math.abs(w.deadline-(Now()+b.duration*1000))>2000 then return true end\n end\nend\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Eligible warning",
						uuid = "936ca4e1-5edf-ce41-afdd-e0e20c0fb845",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			name = "[Quantum40] Vengeance - below 10s once",
			throttleTime = 250,
			timeout = 1,
			uuid = "c5ea786f-5c0c-8fc1-ae9f-1ce178ba3be7",
			version = 2,
		},
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
						actionLua = "local p=TensorCore.mGetPlayer();if p and p.alive then TensorCore.addAlertText(3500,'Switch to Add',1,2,true) end\nself.used=true",
						conditions = 
						{
							
							{
								"499d47a9-5b08-849c-8bde-9d1b5d59c814",
								true,
							},
							
							{
								"65ed409b-6942-0ecb-87b4-5c9a84baf780",
								true,
							},
						},
						name = "[Quantum40] Vodoriga - switch to add",
						uuid = "0ccdec1f-36ff-ffcf-affe-20a8f6e16dd4",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "499d47a9-5b08-849c-8bde-9d1b5d59c814",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14039,
						name = "Vodoriga spawn",
						uuid = "65ed409b-6942-0ecb-87b4-5c9a84baf780",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Guidance",
			eventType = 5,
			name = "[Quantum40] Vodoriga - switch to add",
			timeout = 1,
			uuid = "8e181cb4-3702-90c0-89dd-149d03188183",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40",
			name = "Chains",
			uuid = "f95ee7bd-7a7b-ff17-b2bf-fb80bb28d378",
		},
		objectType = "folder",
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
						actionLua = "local p=TensorCore.mGetPlayer()\nif not p or not p.alive or eventArgs.entityID~=p.id then self.used=true return end\nlocal old=data.q40chain;if old then if old.arrow then Argus.deleteTimedShape(old.arrow) end;if old.circle then Argus.deleteTimedShape(old.circle) end end\ndata.q40chain={x=-600,z=-300,expires=Now()+5000,stage='middle'}\nTensorCore.addAlertText(3500,'MIDDLE FOR CHAINS - REFRESH VENGEANCE',.9,2,true)\nself.used=true",
						conditions = 
						{
							
							{
								"613d56d5-6b87-8b4b-922b-0580f48a9cf4",
								true,
							},
							
							{
								"b30a4df3-01e8-8280-81ef-adc7c5a125c1",
								true,
							},
						},
						name = "[Quantum40] Chains - gather middle",
						uuid = "cd19fa79-c9f7-a57a-bac3-5a3de973c35d",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "613d56d5-6b87-8b4b-922b-0580f48a9cf4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventMarkerID = 97,
						uuid = "b30a4df3-01e8-8280-81ef-adc7c5a125c1",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Chains",
			eventType = 4,
			name = "[Quantum40] Chains - gather middle",
			timeout = 1,
			uuid = "07c10674-ecbb-f005-8c22-fab72485130b",
			version = 2,
		},
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
						actionLua = "local p=TensorCore.mGetPlayer()\nif not p or (eventArgs.sourceEntityID~=p.id and eventArgs.newTargetID~=p.id and eventArgs.oldTargetID~=p.id) then self.used=true return end\nlocal old=data.q40chain;if old then if old.arrow then Argus.deleteTimedShape(old.arrow) end;if old.circle then Argus.deleteTimedShape(old.circle) end end\ndata.q40chain=nil\nif eventArgs.newTetherID==9 and p.alive then\n local j=p.job;local marker,label\n if j==19 or j==21 or j==32 or j==37 then marker=4;label='D'\n elseif j==24 or j==28 or j==33 or j==40 then marker=3;label='C'\n elseif j==20 or j==22 or j==30 or j==34 or j==39 or j==41 then marker=1;label='A'\n else marker=2;label='B' end\n local x,y,z,active=Argus.getWaymarkInfo(marker)\n if active then data.q40chain={x=x,z=z,y=y,expires=Now()+12000,stage='break'} end\n TensorCore.addAlertText(4500,'BREAK CHAIN - WAYMARK '..label,1,2,true)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"cc05f4f3-26fa-0b22-8d81-247d0f37f06a",
								true,
							},
							
							{
								"56c28ade-a287-e017-8574-13dd78884e8f",
								true,
							},
						},
						name = "[Quantum40] Chains - assigned waymark",
						uuid = "9d593be5-99f0-e45c-b9cb-d20cd6b18f9b",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "cc05f4f3-26fa-0b22-8d81-247d0f37f06a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.newTetherID==9 or eventArgs.oldTetherID==9",
						dequeueIfLuaFalse = true,
						name = "Searing chain change",
						uuid = "56c28ade-a287-e017-8574-13dd78884e8f",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Chains",
			eventType = 15,
			name = "[Quantum40] Chains - assigned waymark",
			timeout = 1,
			uuid = "548bd0b9-5e96-f109-9059-dab6cfca1a9b",
			version = 2,
		},
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
						actionLua = "local s=data.q40chain;local p=TensorCore.mGetPlayer()\nif not s then self.used=true return end\nif not p or not p.alive or Now()>=s.expires then\n if s.arrow then Argus.deleteTimedShape(s.arrow) end;if s.circle then Argus.deleteTimedShape(s.circle) end;data.q40chain=nil;self.used=true return\nend\nlocal g=TensorCore.getCachedFlatDrawer(0x2233FF33,0x4433FF33,0x6633FF33,0xFF33FF33,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\nlocal dest={x=s.x,y=s.y or p.pos.y,z=s.z};local ms=s.expires-Now();local d=TensorCore.getDistance2d(p.pos,dest)\nif not s.circle then s.circle=g:addTimedCircle(ms,dest.x,dest.y+.05,dest.z,.8,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) end\nif d>.8 or (s.arrow and Now()<(s.arrowAt or 0)+3000) then\n local h=TensorCore.getHeadingToTarget(p.pos,dest)\n if s.arrow then g:updateTimedArrow(s.arrow,ms,p.pos.x,p.pos.y,p.pos.z,h,math.max(.1,d-1),.65,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI)\n else s.arrowAt=Now();s.arrow=g:addTimedArrow(ms,p.pos.x,p.pos.y,p.pos.z,h,math.max(.1,d-1),.65,1,1.3,0,false,Argus2.RenderFlags.FLAG_RENDER_UI) end\nelseif s.arrow then Argus.deleteTimedShape(s.arrow);s.arrow=nil end\ns.px=p.pos.x;s.pz=p.pos.z;self.used=true",
						conditions = 
						{
							
							{
								"baa33146-5d14-2fc0-9d08-4b935130d39e",
								true,
							},
							
							{
								"c0920576-26b5-4e19-b8fa-05d76e62bb4d",
								true,
							},
						},
						name = "[Quantum40] Chains - movement arrow",
						uuid = "93e03566-fc32-6fbe-af07-b179445a818e",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "baa33146-5d14-2fc0-9d08-4b935130d39e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.q40chain;if not s then return false end\nlocal p=TensorCore.mGetPlayer();if not p or not p.alive or Now()>=s.expires then return true end\nreturn s.px==nil or (p.pos.x-s.px)^2+(p.pos.z-s.pz)^2>.0225",
						dequeueIfLuaFalse = true,
						name = "Chain movement changed",
						uuid = "c0920576-26b5-4e19-b8fa-05d76e62bb4d",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Chains",
			name = "[Quantum40] Chains - movement arrow",
			throttleTime = 100,
			timeout = 1,
			uuid = "9066e9be-e9b2-221c-a326-ad6ae2a35789",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Quantum40",
			name = "Shackles",
			uuid = "6b6cf082-fc59-3bee-931c-ec34082eca6a",
		},
		objectType = "folder",
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
						actionLua = "local e=TensorCore.mGetEntity(eventArgs.targetID);local p=TensorCore.mGetPlayer()\nif not e or not e.alive or not p or p.id==e.id then self.used=true return end\nlocal found=false;for _,v in pairs(TensorCore.getEntityGroupList('Party') or {}) do if v.id==e.id then found=true break end end\nif not found then self.used=true return end\nif data.q40shackle and data.q40shackle.circle then Argus.deleteTimedShape(data.q40shackle.circle) end\nlocal b=TensorCore.getBuff(e,4564);local ms=b and b.duration>0 and b.duration*1000 or 90000\nlocal d=TensorCore.getCachedFlatDrawer(0x2233FFFF,0x3333FFFF,0x4433FFFF,0xFF33FFFF,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\ndata.q40shackle={id=e.id,at=Now(),expires=Now()+ms,x=e.pos.x,z=e.pos.z,circle=d:addTimedCircle(ms,e.pos.x,e.pos.y+.15,e.pos.z,21,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI)}\nself.used=true",
						conditions = 
						{
							
							{
								"6bb7852e-1123-9bfb-b3a5-af77fb2c2b61",
								true,
							},
							
							{
								"bcf74953-b965-daf3-ba41-b1ec1f59ddb2",
								true,
							},
						},
						name = "[Quantum40] Shackled Healing - healer danger circle",
						uuid = "65ec74d8-0a3c-2325-a84a-ae1a6476b4aa",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "6bb7852e-1123-9bfb-b3a5-af77fb2c2b61",
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
						eventBuffID = 4564,
						spellIDList = 
						{
							44147,
						},
						uuid = "bcf74953-b965-daf3-ba41-b1ec1f59ddb2",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Shackles",
			eventType = 2,
			name = "[Quantum40] Shackled Healing - healer danger circle",
			timeout = 1,
			uuid = "4723ed5c-4759-13b4-9dd9-c1ea0b296a0f",
			version = 2,
		},
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
						actionLua = "local s=data.q40shackle;local e=s and TensorCore.mGetEntity(s.id);local p=TensorCore.mGetPlayer()\nif not s then self.used=true return end\nif not e or not e.alive or not p or p.id==s.id or Now()>=s.expires or (Now()-s.at>1000 and TensorCore.getBuff(e,4564)==nil) then\n if s.circle then Argus.deleteTimedShape(s.circle) end;data.q40shackle=nil;self.used=true return\nend\nlocal d=TensorCore.getCachedFlatDrawer(0x2233FFFF,0x3333FFFF,0x4433FFFF,0xFF33FFFF,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\nlocal ms=s.expires-Now()\nif not d:updateTimedCircle(s.circle,ms,e.pos.x,e.pos.y+.15,e.pos.z,21,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) then s.circle=d:addTimedCircle(ms,e.pos.x,e.pos.y+.15,e.pos.z,21,0,false,true,Argus2.RenderFlags.FLAG_RENDER_UI) end\ns.x=e.pos.x;s.z=e.pos.z;self.used=true",
						conditions = 
						{
							
							{
								"36de2b9b-d8a7-e817-9eef-19ce5bd32327",
								true,
							},
							
							{
								"75aad2cf-813b-25d0-84a6-3d0a4b060cab",
								true,
							},
						},
						name = "[Quantum40] Shackled Healing - clear expired circle",
						uuid = "8ed2acad-d542-e3c2-8f4f-3e9b060d8026",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "36de2b9b-d8a7-e817-9eef-19ce5bd32327",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.q40shackle;if not s then return false end\nlocal e=TensorCore.mGetEntity(s.id);local p=TensorCore.mGetPlayer()\nif not e or not e.alive or not p or p.id==s.id or Now()>=s.expires then return true end\nif Now()-s.at>1000 and TensorCore.getBuff(e,4564)==nil then return true end\nreturn (e.pos.x-s.x)^2+(e.pos.z-s.z)^2>.01",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "75aad2cf-813b-25d0-84a6-3d0a4b060cab",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Shackles",
			name = "[Quantum40] Shackled Healing - maintain circle",
			throttleTime = 250,
			timeout = 1,
			uuid = "e6338b88-d115-2864-84b8-f63acde1be8f",
			version = 2,
		},
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
						actionLua = "data.q40pullDeadline=Now()+eventArgs.channelTimeMax*1000\nself.used=true",
						conditions = 
						{
							
							{
								"cf53f5cb-af8b-7e61-b54b-d4a4be2c4fd7",
								true,
							},
							
							{
								"42de311c-1964-0190-9094-43823b2ea34d",
								true,
							},
						},
						name = "[Quantum40] Hellish Earth - pull deadline",
						uuid = "e63e18f5-b56e-146d-8fc3-7484d08c6b62",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "cf53f5cb-af8b-7e61-b54b-d4a4be2c4fd7",
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
						spellIDList = 
						{
							44152,
							44153,
						},
						uuid = "42de311c-1964-0190-9094-43823b2ea34d",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Shackles",
			eventType = 3,
			name = "[Quantum40] Hellish Earth - pull deadline",
			timeout = 1,
			uuid = "e67d990f-316f-fdf0-ac7b-e4b2abc0fc44",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 7548,
						conditions = 
						{
							
							{
								"84385414-4bf6-9aae-99e8-2e077ec9a71c",
								true,
							},
							
							{
								"ad1ff6f3-8bdd-7eb0-8fd8-20cd04cd1ae0",
								true,
							},
							
							{
								"f070f8b0-b9d7-41bd-b3b8-c98bf1603d9b",
								true,
							},
							
							{
								"92bf3526-909b-1280-9378-88a954a55220",
								true,
							},
							
							{
								"4f6de439-2774-356b-8e31-1fa4f6306acf",
								true,
							},
						},
						ignoreWeaveRules = true,
						uuid = "c0ea5f1a-8951-08f9-a659-a44e180559db",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "84385414-4bf6-9aae-99e8-2e077ec9a71c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						hpType = 2,
						hpValue = 1,
						uuid = "ad1ff6f3-8bdd-7eb0-8fd8-20cd04cd1ae0",
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
							20,
							22,
							30,
							34,
							39,
							41,
							23,
							31,
							38,
						},
						uuid = "f070f8b0-b9d7-41bd-b3b8-c98bf1603d9b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.q40pullDeadline~=nil and Now()>=data.q40pullDeadline-3000 and Now()<data.q40pullDeadline-300",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "92bf3526-909b-1280-9378-88a954a55220",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 0.3,
						actionID = 7548,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						uuid = "4f6de439-2774-356b-8e31-1fa4f6306acf",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Shackles",
			name = "[Quantum40] Hellish Earth - Arm's Length",
			throttleTime = 6000,
			timeout = 1,
			uuid = "a43427c4-7974-1025-a4ac-c49bab65729b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 7559,
						conditions = 
						{
							
							{
								"611e9d09-86b2-1563-9960-e8d917b9e8a8",
								true,
							},
							
							{
								"16483d8a-3af5-1cc6-a9a2-642fd092a8c2",
								true,
							},
							
							{
								"932ae8d2-c16f-e3b6-b703-8106695f963f",
								true,
							},
							
							{
								"0a638149-586e-bc7b-b654-6de06fc361f9",
								true,
							},
							
							{
								"f3972e4d-35b4-5504-a044-507592f7e937",
								true,
							},
						},
						ignoreWeaveRules = true,
						uuid = "ec8a0230-a654-3754-9c75-c35d351c0dd2",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "611e9d09-86b2-1563-9960-e8d917b9e8a8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						hpType = 2,
						hpValue = 1,
						uuid = "16483d8a-3af5-1cc6-a9a2-642fd092a8c2",
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
							25,
							27,
							35,
							42,
						},
						uuid = "932ae8d2-c16f-e3b6-b703-8106695f963f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.q40pullDeadline~=nil and Now()>=data.q40pullDeadline-3000 and Now()<data.q40pullDeadline-300",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "0a638149-586e-bc7b-b654-6de06fc361f9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 0.3,
						actionID = 7559,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						uuid = "f3972e4d-35b4-5504-a044-507592f7e937",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Shackles",
			name = "[Quantum40] Hellish Earth - Surecast",
			throttleTime = 6000,
			timeout = 1,
			uuid = "1caa7f18-e358-9bc8-9a81-efecef8ad2fb",
			version = 2,
		},
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
						actionLua = "if not data.q40eruptionLast or Now()-data.q40eruptionLast>8000 then TensorCore.addAlertText(3500,'ERUPTIONS - BAIT PUDDLES',.95,2,true) end\ndata.q40eruptionLast=Now();self.used=true",
						conditions = 
						{
							
							{
								"d4df6abc-6222-e6b5-ba39-0f46530b40f5",
								true,
							},
							
							{
								"6b807e3a-c786-8524-84a1-e8b2eed15a95",
								true,
							},
							
							{
								"fa948c8d-1f12-74bb-8c63-fb97b429c419",
								true,
							},
							
							{
								"be2fe365-c8b3-0e95-a6f4-70ec9e93507f",
								true,
							},
						},
						name = "[Quantum40] Eruptions - bait once per set",
						uuid = "39ded397-7522-a568-bda2-2d41d433c7de",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "d4df6abc-6222-e6b5-ba39-0f46530b40f5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						hpType = 2,
						hpValue = 1,
						uuid = "6b807e3a-c786-8524-84a1-e8b2eed15a95",
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
						spellIDList = 
						{
							44156,
						},
						uuid = "fa948c8d-1f12-74bb-8c63-fb97b429c419",
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
							20,
							22,
							30,
							34,
							39,
							41,
							23,
							31,
							38,
							24,
							28,
							33,
							40,
							25,
							27,
							35,
							42,
						},
						uuid = "be2fe365-c8b3-0e95-a6f4-70ec9e93507f",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Shackles",
			eventType = 3,
			name = "[Quantum40] Eruptions - bait once per set",
			timeout = 1,
			uuid = "ccf4120b-bb44-4580-ae82-55f6b72693a2",
			version = 2,
		},
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
						actionLua = "local e=TensorCore.mGetEntity(eventArgs.entityID);if not e then self.used=true return end\nlocal d=TensorCore.getCachedFlatDrawer(0x223333FF,0x443333FF,0x663333FF,0xDD3333FF,2,1,Argus2.RenderFlags.FLAG_RENDER_UI)\nlocal ms=eventArgs.channelTimeMax*1000+300\nif data.q40tailBeam then Argus.deleteTimedShape(data.q40tailBeam) end\ndata.q40tailBeam=d:addTimedRectOnEnt(ms,e.id,42,9,nil,0,true,false,false,0,false,Argus2.RenderFlags.FLAG_RENDER_UI)\nself.used=true",
						conditions = 
						{
							
							{
								"4458ad8e-b9f5-075b-a90e-c3ff1ef8d999",
								true,
							},
							
							{
								"e366b25e-72b8-8e16-aaf2-0c39416e9c76",
								true,
							},
						},
						name = "[Quantum40] Manifold - advance tail beam",
						uuid = "ba04fa86-8cab-faf1-bc44-1a325128a2de",
						version = 2.1,
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
						localmapid = 1311,
						uuid = "4458ad8e-b9f5-075b-a90e-c3ff1ef8d999",
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
						spellIDList = 
						{
							44161,
						},
						uuid = "e366b25e-72b8-8e16-aaf2-0c39416e9c76",
						version = 3,
					},
				},
			},
			displayPath = "Quantum40/Shackles",
			eventType = 3,
			name = "[Quantum40] Manifold - advance tail beam",
			timeout = 1,
			uuid = "6c62ba33-0283-a347-84cd-61df7a3c4236",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
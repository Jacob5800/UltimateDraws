local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Eureka Anemos",
			uuid = "42837bb5-b0d1-37b3-a10d-602750c54070",
		},
		objectType = "folder",
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
						actionLua = "EurekaAnemosNM = EurekaAnemosNM or { ids = {}, nextScan = 0, names = {\n [6816]='Sabotender Corrido', [6820]='The Lord of Anemos', [6822]='Teles', [6823]='The Emperor of Anemos', [6826]='Callisto',\n [6827]='Number', [6983]='Jahannam', [6831]='Amemet', [6835]='Caym', [6987]='Bombadeel', [6837]='Serket',\n [6840]='Judgmental Julika', [7185]='The White Rider', [6843]='Polyphemus', [6845]=\"Simurgh's Strider\",\n [6974]='King Hazmat', [6990]='Fafnir', [6977]='Amarok', [6980]='Lamashtu', [6989]='Pazuzu' } }\nlocal s = EurekaAnemosNM\nif not s.filter then local k = {} for id in pairs(s.names) do k[#k+1] = tostring(id) end s.filter = 'contentid=' .. table.concat(k, ';') end\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList(s.filter)) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal w, h = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nif GUI:Begin('##EurekaAnemosNM', true, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing) then\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    local text = e and s.names[e.contentid]\n    if text and e.alive and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 2, z = e.pos.z}, true)\n      if x and y then\n        local tw, th = GUI:CalcTextSize(text)\n        x, y = x - tw / 2, y - th / 2\n        GUI:AddRectFilled(x - 4, y - 2, x + tw + 4, y + th + 2, 0xA0000000, 4)\n        GUI:AddText(x, y, 0xFFFFFFFF, text)\n      end\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"19f4bfe0-1073-4b1a-a198-4d818f3e0ab0",
								true,
							},
						},
						name = "Label NM trigger monsters",
						uuid = "9926bd5e-d8f0-d4a4-bc4c-23642833132e",
						version = 2.1,
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
						localmapid = 732,
						name = "In Anemos",
						uuid = "19f4bfe0-1073-4b1a-a198-4d818f3e0ab0",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Anemos",
			eventType = 13,
			name = "[Anemos] NM trigger labels",
			uuid = "3ba84a9e-ca50-338f-b643-a9149d77cd00",
			version = 2,
		},
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
						actionLua = "EurekaAnemosFairyText = EurekaAnemosFairyText or { ids = {}, nextScan = 0 }\nlocal s = EurekaAnemosFairyText\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList('contentid=7184')) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal w, h = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nif GUI:Begin('##EurekaAnemosFairy', true, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing) then\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    if e and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 2, z = e.pos.z}, true)\n      if x and y then GUI:AddText(x - 15, y, 0xFFFFFFFF, 'Fairy') end\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"d56cc6c5-6180-aecd-99fd-828ed566cc80",
								true,
							},
						},
						name = "Label fairy",
						uuid = "b55187f7-e89c-15a4-a75f-d73b09511799",
						version = 2.1,
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
						localmapid = 732,
						name = "In Anemos",
						uuid = "d56cc6c5-6180-aecd-99fd-828ed566cc80",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Anemos",
			eventType = 13,
			name = "[Anemos] Fairy label",
			uuid = "4c19bffa-4b3f-2466-afd6-3e33cf2e4217",
			version = 2,
		},
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
						actionLua = "EurekaAnemosFairyDraw = EurekaAnemosFairyDraw or { ids = {}, nextScan = 0, fairy = Argus2.ShapeDrawer:new(nil, nil, 0x1800FF23, 0xC800FF23, 2), tether = TensorCore.getStaticDrawer(0xC800FF23, 2) }\nlocal s = EurekaAnemosFairyDraw\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList('contentid=7184')) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nfor _, id in ipairs(s.ids) do\n  local e = TensorCore.mGetEntity(id)\n  if e and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n    s.fairy:addCircle(e.pos.x, e.pos.y, e.pos.z, 10 + (e.hitradius or 0), false)\n    s.tether:addLine(p.pos.x, p.pos.y, p.pos.z, e.pos.x, e.pos.y, e.pos.z, 2)\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"28052951-d88f-d3be-8beb-401d108e1bae",
								true,
							},
						},
						name = "Draw fairy circle",
						uuid = "b24af364-4dad-ba17-be96-3402646a97cf",
						version = 2.1,
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
						localmapid = 732,
						name = "In Anemos",
						uuid = "28052951-d88f-d3be-8beb-401d108e1bae",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Anemos",
			eventType = 12,
			name = "[Anemos] Fairy circle",
			uuid = "ce51c5dc-db68-5cb1-a2b0-b15cf0caef39",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Eureka Pagos",
			uuid = "59263306-9b27-cb3b-89bc-38434b12825a",
		},
		objectType = "folder",
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
						actionLua = "EurekaPagosNM = EurekaPagosNM or { ids = {}, nextScan = 0, names = {\n [7413]='The Snow Queen', [7465]='Taxim', [7434]='Ash Dragon', [7453]='Glavoid', [7471]='Anapos', [7429]='Hakutaku',\n [7419]='King Igloo', [7431]='Asag', [7423]='Surabhi', [7450]='King Arthro', [7442]='Mindertaur/Eldertaur',\n [7447]='Holy Cow', [7460]='Hadhayosh', [7445]='Horus', [7420]='Arch Angra Mainyu', [7462]='Copycat Cassie', [7468]='Louhi' } }\n-- Spawn list: Val Corpse (7468) triggers Louhi, Ameretat (7462) triggers Copycat Cassie.\nlocal s = EurekaPagosNM\nif not s.filter then local k = {} for id in pairs(s.names) do k[#k+1] = tostring(id) end s.filter = 'contentid=' .. table.concat(k, ';') end\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList(s.filter)) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal w, h = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nif GUI:Begin('##EurekaPagosNM', true, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing) then\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    local text = e and s.names[e.contentid]\n    if text and e.alive and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 2, z = e.pos.z}, true)\n      if x and y then\n        local tw, th = GUI:CalcTextSize(text)\n        x, y = x - tw / 2, y - th / 2\n        GUI:AddRectFilled(x - 4, y - 2, x + tw + 4, y + th + 2, 0xA0000000, 4)\n        GUI:AddText(x, y, 0xFFFFFFFF, text)\n      end\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"e408fca2-94b3-2d79-bf70-492f4d36390f",
								true,
							},
						},
						name = "Label NM trigger monsters",
						uuid = "d02bc22a-422e-899f-8bc0-2ba3d8cc5ea1",
						version = 2.1,
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
						localmapid = 763,
						name = "In Pagos",
						uuid = "e408fca2-94b3-2d79-bf70-492f4d36390f",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pagos",
			eventType = 13,
			name = "[Pagos] NM trigger labels",
			uuid = "19101095-dac5-4f9b-ab53-2fc351581155",
			version = 2,
		},
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
						actionLua = "EurekaPagosFairyText = EurekaPagosFairyText or { ids = {}, nextScan = 0 }\nlocal s = EurekaPagosFairyText\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList('contentid=7567;7473')) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal w, h = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nif GUI:Begin('##EurekaPagosFairy', true, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing) then\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    if e and (e.contentid == 7567 or e.alive) and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 2, z = e.pos.z}, true)\n      if x and y then GUI:AddText(x - 15, y, 0xFFFFFFFF, e.contentid == 7567 and 'Fairy' or 'Walk until out of circle') end\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"e5196a7e-d15e-47de-b272-affe2293a779",
								true,
							},
						},
						name = "Label fairy and voidragons",
						uuid = "6019df43-8d39-87d9-975d-258aa25d6e98",
						version = 2.1,
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
						localmapid = 763,
						name = "In Pagos",
						uuid = "e5196a7e-d15e-47de-b272-affe2293a779",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pagos",
			eventType = 13,
			name = "[Pagos] Fairy and dragon labels",
			uuid = "19dca0a0-1431-abf0-9b87-9e557a7a5bee",
			version = 2,
		},
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
						actionLua = "EurekaPagosFairyDraw = EurekaPagosFairyDraw or { ids = {}, nextScan = 0, fairy = Argus2.ShapeDrawer:new(nil, nil, 0x1800FF23, 0xC800FF23, 2), dragon = Argus2.ShapeDrawer:new(nil, nil, 0x18FF00EA, 0xC8FF00EA, 2), tether = TensorCore.getStaticDrawer(0xC800FF23, 2) }\nlocal s = EurekaPagosFairyDraw\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList('contentid=7567;7473')) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nfor _, id in ipairs(s.ids) do\n  local e = TensorCore.mGetEntity(id)\n  if e and (e.contentid == 7567 or e.alive) and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n    if e.contentid == 7567 then\n      s.fairy:addCircle(e.pos.x, e.pos.y, e.pos.z, 10 + (e.hitradius or 0), false)\n      s.tether:addLine(p.pos.x, p.pos.y, p.pos.z, e.pos.x, e.pos.y, e.pos.z, 2)\n    else\n      s.dragon:addCircle(e.pos.x, e.pos.y, e.pos.z, 13 + (e.hitradius or 0), false)\n    end\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"7eb0c133-352b-8561-adec-5e2c001c911f",
								true,
							},
						},
						name = "Draw fairy and voidragon circles",
						uuid = "9e417072-80ed-0970-9bb7-c4b78dce92da",
						version = 2.1,
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
						localmapid = 763,
						name = "In Pagos",
						uuid = "7eb0c133-352b-8561-adec-5e2c001c911f",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pagos",
			eventType = 12,
			name = "[Pagos] Fairy and dragon circles",
			uuid = "5c8e4460-c7b4-cf7e-bebb-fcfacd7b33e0",
			version = 2,
		},
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
						actionLua = "if not EurekaPagosBunnyUntil then self.used = true return end\nif Now() >= EurekaPagosBunnyUntil then EurekaPagosBunnyUntil = nil self.used = true return end\nEurekaPagosChests = EurekaPagosChests or { drawer = Argus2.ShapeDrawer:new(nil, nil, 0x6000D7FF, 0xFF00D7FF, 2), tether = TensorCore.getStaticDrawer(0xC800D7FF, 2), spots = {\n {-285.2,-586.5,-245.1},{-260.3,-602.9,-139.0},{530.8,-720.4,230.4},{-148.0,-563.6,-282.9},{-199.5,-594.9,-154.9},{-665.2,-627.4,-355.8},{-589.4,-698.3,15.3},{486.9,-756.6,291.8},\n {352.2,-690.0,114.9},{-606.3,-700.7,142.5},{544.0,-730.5,355.2},{631.0,-730.9,317.4},{-158.6,-576.2,-200.3},{-737.8,-677.9,143.1},{643.6,-702.9,117.9},{-652.1,-688.0,85.1},\n {-175.6,-568.1,-237.9},{445.5,-741.9,188.4},{514.9,-702.1,139.6},{516.2,-679.7,-38.1},{-289.7,-585.3,-178.7},{-222.8,-557.8,-370.9},{-298.4,-664.6,450.3},{398.5,-678.9,-15.6},\n {-222.4,-628.7,-69.7},{-257.8,-627.9,-67.6},{-340.4,-671.3,425.2},{-386.4,-677.5,468.4},{-283.4,-573.5,-337.2},{-430.3,-680.6,60.4},{476.7,-739.3,421.0} } }\nlocal s = EurekaPagosChests\nlocal p = TensorCore.mGetPlayer()\nfor _, c in ipairs(s.spots) do\n  local dx, dz = c[1] - p.pos.x, c[3] - p.pos.z\n  if dx * dx + dz * dz <= 10000 then\n    s.drawer:addCircle(c[1], c[2], c[3], 0.5, false)\n    s.tether:addLine(p.pos.x, p.pos.y, p.pos.z, c[1], c[2], c[3], 2)\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"d934d3c9-d206-a5ad-b675-ddfa949577d2",
								true,
							},
						},
						name = "Draw nearby bunny chests",
						uuid = "210f3688-a1e7-6ee6-9626-6aa0e7392a7c",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "EurekaPagosBunnyUntil = nil\nself.used = true\n",
						conditions = 
						{
							
							{
								"d934d3c9-d206-a5ad-b675-ddfa949577d2",
								false,
							},
						},
						name = "Clear bunny state outside Pagos",
						uuid = "5b5f1bbe-d82f-c8d7-9866-08970e229b19",
						version = 2.1,
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
						localmapid = 763,
						name = "In Pagos",
						uuid = "d934d3c9-d206-a5ad-b675-ddfa949577d2",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pagos",
			eventType = 12,
			name = "[Pagos] Bunny chest locations",
			uuid = "d4a862c7-485d-f2de-8222-c0d50b9e2f6b",
			version = 2,
		},
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
						actionLua = "local text = eventArgs.line and eventArgs.line.line\nif text then\n  if string.find(text, 'The happy bunny stares up at you', 1, true) then\n    EurekaPagosBunnyUntil = Now() + 600000\n  elseif string.find(text, 'The happy bunny seems rather pleased with itself', 1, true) then\n    EurekaPagosBunnyUntil = nil\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a2508267-0d65-5eaf-8a72-84d2e518ae09",
								true,
							},
						},
						name = "Track happy bunny messages",
						uuid = "cb0fa3a8-3f26-87d0-b818-3fa4968ca576",
						version = 2.1,
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
						localmapid = 763,
						name = "In Pagos",
						uuid = "a2508267-0d65-5eaf-8a72-84d2e518ae09",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pagos",
			enabled = false,
			eventType = 7,
			name = "[Pagos] Bunny chest start/stop",
			uuid = "5c5e714d-6d92-31f9-82e5-1af89ad99d5c",
			version = 2,
		},
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
						actionLua = "-- Each route: start {x, height, z} and end. Forge, Minotaurs, Horus/Mainyu, Louhi.\nEurekaPagosRoutes = EurekaPagosRoutes or { drawer = Argus2.ShapeDrawer:new(nil, nil, 0x300000FF, 0xC80000FF, 2), line = TensorCore.getStaticDrawer(0xC80000FF, 2), routes = {\n {{-619.4,-620.1,-4.5},{-627.3,-655.8,5.8}}, {{-568.9,-620.3,-8.0},{-572.6,-655.3,-2.5}},\n {{425.5,-589.6,-46.6},{419.9,-625.8,-44.6}}, {{546.3,-582.7,-69.2},{544.9,-625.8,-59.3}} } }\n-- Preset order is {x, z(height), y}; swap to {x, height, z}.\nlocal s = EurekaPagosRoutes\nlocal p = TensorCore.mGetPlayer()\nfor _, r in ipairs(s.routes) do\n  local a, b = r[1], r[2]\n  local ax, az, bx, bz = a[1] - p.pos.x, a[2] - p.pos.z, b[1] - p.pos.x, b[2] - p.pos.z\n  if ax*ax + az*az <= 10000 or bx*bx + bz*bz <= 10000 then\n    s.drawer:addCircle(a[1], a[3], a[2], 1.5, false)\n    s.drawer:addCircle(b[1], b[3], b[2], 1.5, false)\n    s.line:addLine(a[1], a[3], a[2], b[1], b[3], b[2], 2)\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"21e63bf1-5188-7b76-adb6-3a176571e8e0",
								true,
							},
						},
						name = "Draw routes",
						uuid = "d02aa7ee-4e51-cfd3-ae9d-2c50ff0aa897",
						version = 2.1,
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
						localmapid = 763,
						name = "In Pagos",
						uuid = "21e63bf1-5188-7b76-adb6-3a176571e8e0",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pagos",
			eventType = 12,
			name = "[Pagos] Route markers",
			uuid = "78919564-786b-3358-bfbe-1d85c4cdb6ed",
			version = 2,
		},
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
						actionLua = "-- {x, z, height, text}\nEurekaPagosRouteText = EurekaPagosRouteText or {\n {-619.4,-620.1,-4.5,'Drop below to the Forge'}, {-627.3,-655.8,5.8,'Forge is cave nearby'},\n {-568.9,-620.3,-8.0,'Drop below to the Minotaurs'}, {-572.6,-655.3,-2.5,'Inside the cave to Minotaurs'},\n {425.5,-589.6,-46.6,'Drop to Horus and Mainyu'}, {419.9,-625.8,-44.6,'Careful, you drop on dragon'},\n {425.5,-589.6,-47.3,'Walking recommended from here'},\n {546.3,-582.7,-69.2,'Drop below near dragon (Louhi)'}, {544.9,-625.8,-59.3,'Go inside the cave to Louhi'} }\n-- Preset order is {x, z(height), y}: world position = {x, height = third value, z = second value}.\nlocal p = TensorCore.mGetPlayer()\nlocal near = {}\nfor _, t in ipairs(EurekaPagosRouteText) do\n  local dx, dz = t[1] - p.pos.x, t[2] - p.pos.z\n  if dx*dx + dz*dz <= 10000 then near[#near+1] = t end\nend\nif #near == 0 then self.used = true return end\nlocal w, h = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nif GUI:Begin('##EurekaPagosRoutes', true, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing) then\n  for _, t in ipairs(near) do\n    local x, y = RenderManager:WorldToScreen({x = t[1], y = t[3] + 1, z = t[2]}, true)\n    if x and y then\n      local tw, th = GUI:CalcTextSize(t[4])\n      GUI:AddRectFilled(x - tw/2 - 4, y - 2, x + tw/2 + 4, y + th + 2, 0xA0000000, 4)\n      GUI:AddText(x - tw/2, y, 0xFFFFFFFF, t[4])\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"f15fcb1b-e50d-f2cb-9c41-abed623b5c04",
								true,
							},
						},
						name = "Label routes",
						uuid = "226e9843-a4f9-0774-b288-11a1161c637c",
						version = 2.1,
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
						localmapid = 763,
						name = "In Pagos",
						uuid = "f15fcb1b-e50d-f2cb-9c41-abed623b5c04",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pagos",
			eventType = 13,
			name = "[Pagos] Route labels",
			uuid = "99130e04-f7ef-3898-ae35-b4a78e147e4b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Eureka Pyros",
			uuid = "576c8142-62b3-f664-a335-8d16d99c2ee5",
		},
		objectType = "folder",
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
						actionLua = "local p = TensorCore.mGetPlayer()\nif not p or p.localmapid ~= 795 then self.used = true return end\n-- BNpcName ID (contentid) of each spawn monster -> Notorious Monster it triggers.\nif not EurekaPyrosNM then\n  EurekaPyrosNM = { names = {\n    [7776]='Leucosia', [7772]='Flauros', [7808]='The Sophist', [7812]='Graffiacane',\n    [7814]='Askalaphos', [7779]='Grand Duke Batym', [7821]='Aetolus', [7824]='Lesath',\n    [7825]='Eldthurs', [7830]='Iris', [7832]='Lamebrix Strikebocks', [7836]='Dux',\n    [7837]='Lumber Jack', [7841]='Glaukopis', [7845]='Ying-Yang', [7848]='Skoll',\n    [7846]='Penthesilea' }, ids = {}, nextScan = 0 }\n  local keys = {}\n  for id in pairs(EurekaPyrosNM.names) do keys[#keys+1] = tostring(id) end\n  EurekaPyrosNM.filter = 'contentid=' .. table.concat(keys, ';')\nend\nlocal s = EurekaPyrosNM\nlocal now = Now()\nif now >= s.nextScan then\n  s.nextScan = now + 500\n  local ids = {}\n  for id, e in pairs(TensorCore.entityList(s.filter)) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal width, height = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(width, height, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nlocal flags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing\nif GUI:Begin('##EurekaPyrosNMLabels', true, flags) then\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    local text = e and s.names[e.contentid]\n    if text and e.alive and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 2, z = e.pos.z}, true)\n      if x and y then\n        local w, h = GUI:CalcTextSize(text)\n        x, y = x - w / 2, y - h / 2\n        GUI:AddRectFilled(x - 4, y - 2, x + w + 4, y + h + 2, 0xA0000000, 4)\n        GUI:AddText(x, y, 0xFFFFFFFF, text)\n      end\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"6e057c7d-ef6e-2e19-af23-71611c249687",
								true,
							},
						},
						name = "Label NM trigger monsters",
						uuid = "dea084ab-18f1-b1c9-8bfb-cf1331440607",
						version = 2.1,
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
						localmapid = 795,
						name = "In Pyros",
						uuid = "6e057c7d-ef6e-2e19-af23-71611c249687",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 13,
			name = "[Pyros] NM trigger labels",
			uuid = "433554f3-367a-556d-93cb-81bd8688c2f6",
			version = 2,
		},
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
						actionLua = "local p = TensorCore.mGetPlayer()\nif not p or p.localmapid ~= 795 then self.used = true return end\nEurekaPyrosLocLabels = EurekaPyrosLocLabels or { ids = {}, nextScan = 0 }\nlocal s = EurekaPyrosLocLabels\nlocal now = Now()\nif now >= s.nextScan then\n  s.nextScan = now + 500\n  local ids = {}\n  for id, e in pairs(TensorCore.entityList('contentid=7764;7849')) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal width, height = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(width, height, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nlocal flags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing\nif GUI:Begin('##EurekaPyrosLocationLabels', true, flags) then\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    -- The fairy is a friendly NPC, so only the dragon is filtered on alive.\n    if e and (e.contentid == 7764 or e.alive) and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n      local text = e.contentid == 7764 and 'Fairy' or 'Walk until out of circle'\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 2, z = e.pos.z}, true)\n      if x and y then\n        local w, h = GUI:CalcTextSize(text)\n        x, y = x - w / 2, y - h / 2\n        GUI:AddRectFilled(x - 4, y - 2, x + w + 4, y + h + 2, 0xA0000000, 4)\n        GUI:AddText(x, y, 0xFFFFFFFF, text)\n      end\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"4d8ff32a-68f6-2369-b8e0-b9ebb4e9a634",
								true,
							},
						},
						name = "Label fairy and voidragons",
						uuid = "e5f4b70b-11cf-c7c9-b7f0-bcc5fe04ea52",
						version = 2.1,
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
						localmapid = 795,
						name = "In Pyros",
						uuid = "4d8ff32a-68f6-2369-b8e0-b9ebb4e9a634",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 13,
			name = "[Pyros] Fairy and dragon labels",
			uuid = "440f0b36-fc64-ac23-bdd9-3a3ae1d7817a",
			version = 2,
		},
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
						actionLua = "local p = TensorCore.mGetPlayer()\nif not p or p.localmapid ~= 795 then self.used = true return end\nif not EurekaPyrosCircles then\n  EurekaPyrosCircles = { ids = {}, nextScan = 0,\n    fairy = Argus2.ShapeDrawer:new(nil, nil, 0x1800FF23, 0xC800FF23, 2),\n    dragon = Argus2.ShapeDrawer:new(nil, nil, 0x18FF00E8, 0xC8FF00E8, 2),\n    tether = TensorCore.getStaticDrawer(0xC800FF23, 2) }\nend\nlocal s = EurekaPyrosCircles\nlocal now = Now()\nif now >= s.nextScan then\n  s.nextScan = now + 500\n  local ids = {}\n  for id, e in pairs(TensorCore.entityList('contentid=7764;7849')) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nfor _, id in ipairs(s.ids) do\n  local e = TensorCore.mGetEntity(id)\n  -- The fairy is a friendly NPC, so only the dragon is filtered on alive.\n  if e and (e.contentid == 7764 or e.alive) and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n    local pos = e.pos\n    if e.contentid == 7764 then\n      s.fairy:addCircle(pos.x, pos.y, pos.z, 10 + (e.hitradius or 0), false)\n      s.tether:addLine(p.pos.x, p.pos.y, p.pos.z, pos.x, pos.y, pos.z, 2)\n    elseif e.contentid == 7849 then\n      s.dragon:addCircle(pos.x, pos.y, pos.z, 13 + (e.hitradius or 0), false)\n    end\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"4a8c70df-5876-5380-9bbe-a34a674ba15d",
								true,
							},
						},
						name = "Draw fairy and voidragon circles",
						uuid = "964af83d-d9fb-1bdd-8847-6ffdf90eb0db",
						version = 2.1,
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
						localmapid = 795,
						name = "In Pyros",
						uuid = "4a8c70df-5876-5380-9bbe-a34a674ba15d",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 12,
			name = "[Pyros] Fairy and dragon circles",
			uuid = "f6aee8fc-ac60-fab6-9148-873079899f3c",
			version = 2,
		},
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
						actionLua = "-- Active only between the bunny's two chat messages (set by the chat reaction).\nlocal untilTime = EurekaPyrosBunnyUntil\nif not untilTime then self.used = true return end\nlocal p = TensorCore.mGetPlayer()\nif not p or p.localmapid ~= 795 or Now() >= untilTime then\n  EurekaPyrosBunnyUntil = nil\n  self.used = true\n  return\nend\nif not EurekaPyrosChests then\n  -- Minion coordinates {x, height, z}.\n  EurekaPyrosChests = {\n    drawer = Argus2.ShapeDrawer:new(nil, nil, 0x6000D7FF, 0xFF00D7FF, 2),\n    tether = TensorCore.getStaticDrawer(0xC800D7FF, 2),\n    spots = {\n      {92.87,754.26,825.00}, {-198.38,757.99,477.78}, {310.45,742.01,566.96}, {460.50,723.12,310.94},\n      {432.90,731.98,568.54}, {378.06,724.92,287.16}, {293.81,739.39,531.25}, {32.15,754.26,690.05},\n      {371.13,737.93,491.73}, {-39.00,769.83,504.77}, {146.33,752.45,756.24}, {468.93,726.35,535.03},\n      {367.93,744.05,639.26}, {-340.19,660.31,385.06}, {-189.14,671.71,323.27}, {248.57,723.12,118.80},\n      {156.82,751.11,704.12}, {-38.44,675.39,354.13}, {2.37,764.17,411.07}, {449.03,725.04,456.95},\n      {-197.18,759.52,598.88}, {-464.30,660.70,419.03}, {-150.61,762.71,451.64} } }\nend\nlocal s = EurekaPyrosChests\nfor _, c in ipairs(s.spots) do\n  local dx, dz = c[1] - p.pos.x, c[3] - p.pos.z\n  if dx * dx + dz * dz <= 900 then\n    s.drawer:addCircle(c[1], c[2], c[3], 0.5, false)\n    s.tether:addLine(p.pos.x, p.pos.y, p.pos.z, c[1], c[2], c[3], 2)\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"565e26fa-5849-4980-af64-e9412612ca22",
								true,
							},
						},
						name = "Draw nearby bunny chests",
						uuid = "a86819b2-0d36-3099-816c-2f8bb9ef113c",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "EurekaPyrosBunnyUntil = nil\nself.used = true\n",
						conditions = 
						{
							
							{
								"565e26fa-5849-4980-af64-e9412612ca22",
								false,
							},
						},
						name = "Clear bunny state outside Pyros",
						uuid = "5636d841-3fd9-29e3-94e5-4b27379db09c",
						version = 2.1,
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
						localmapid = 795,
						name = "In Pyros",
						uuid = "565e26fa-5849-4980-af64-e9412612ca22",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 12,
			name = "[Pyros] Bunny chest locations",
			uuid = "e752a12b-0bcf-bb04-a738-f90176097779",
			version = 2,
		},
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
						actionLua = "local text = eventArgs.line and eventArgs.line.line\nlocal p = TensorCore.mGetPlayer()\nif text and p and p.localmapid == 795 then\n  if string.find(text, 'The happy bunny stares up at you', 1, true) then\n    -- Safety expiry in case the closing message is missed.\n    EurekaPyrosBunnyUntil = Now() + 600000\n  elseif string.find(text, 'The happy bunny seems rather pleased with itself', 1, true) then\n    EurekaPyrosBunnyUntil = nil\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"86d61b76-2ceb-5135-8693-3dcf01ab03cd",
								true,
							},
						},
						name = "Track happy bunny messages",
						uuid = "63bdc9ad-c1a8-6e06-a7c1-e6dc4fe04110",
						version = 2.1,
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
						localmapid = 795,
						name = "In Pyros",
						uuid = "86d61b76-2ceb-5135-8693-3dcf01ab03cd",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			enabled = false,
			eventType = 7,
			name = "[Pyros] Bunny chest start/stop",
			uuid = "23eff0ce-7538-719a-9442-3bd1c77d95a0",
			version = 2,
		},
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
						actionLua = "-- Donut: safe only close to Iris. Inner edge = hitbox radius.\nlocal e = TensorCore.mGetEntity(eventArgs.entityID)\nif e then\n  local inner = e.hitradius or 6\n  TensorCore.getMoogleDrawer():addTimedDonutOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.entityID, inner, 30, 0, false)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a09b4fe8-ff4d-29b8-94ad-fd5aabd6999e",
								true,
							},
							
							{
								"50158622-858e-2551-a804-8d6b38658927",
								true,
							},
						},
						name = "Draw Whorl donut",
						uuid = "d734e1f1-0e18-2e01-aa63-b4ccb0a13ee0",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "a09b4fe8-ff4d-29b8-94ad-fd5aabd6999e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13653,
						name = "Electric Whorl",
						uuid = "50158622-858e-2551-a804-8d6b38658927",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Iris - Electric Whorl",
			uuid = "bdfd91e9-e3b2-d9b3-8c25-105f48a48fa6",
			version = 2,
		},
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
						actionLua = "-- Each Daughter of Glaukopis casts a 5-yalm circle centred on herself, with no ground marker.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.entityID, 5, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"7c24efef-9d45-68a2-949c-e0fd8f2b151a",
								true,
							},
							
							{
								"35166828-ddba-21e5-965f-b1e38336327d",
								true,
							},
						},
						name = "Draw daughter circle",
						uuid = "15bb0f5f-d114-4d22-9698-1696ea949846",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "7c24efef-9d45-68a2-949c-e0fd8f2b151a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13417,
						name = "Little Break III",
						uuid = "35166828-ddba-21e5-965f-b1e38336327d",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Glaukopis - Little Break III",
			uuid = "ba583dba-c292-e8ae-94b3-b80215c634c2",
			version = 2,
		},
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
								"970bec03-2508-2637-9911-ee1a184f6fc6",
								true,
							},
							
							{
								"1e6300dd-7b45-a2af-8b1e-88a7cdec3cce",
								true,
							},
							
							{
								"d2198364-a190-2186-b225-5d65efb38a37",
								true,
							},
							
							{
								"a51c1499-b943-83e9-86dc-de816b2fa688",
								true,
							},
						},
						name = "Stop cast for immunity",
						stopCasting = true,
						uuid = "edd3ccf4-1719-be3b-be63-4a2ca2a79741",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 7559,
						conditions = 
						{
							
							{
								"970bec03-2508-2637-9911-ee1a184f6fc6",
								true,
							},
							
							{
								"1e6300dd-7b45-a2af-8b1e-88a7cdec3cce",
								true,
							},
							
							{
								"9b3a9f1e-bc83-92c2-be3d-8b3ea4086def",
								true,
							},
							
							{
								"a51c1499-b943-83e9-86dc-de816b2fa688",
								true,
							},
						},
						uuid = "3e08303c-1d7f-7c8e-a074-1b40cb06edbf",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 7548,
						conditions = 
						{
							
							{
								"970bec03-2508-2637-9911-ee1a184f6fc6",
								true,
							},
							
							{
								"1e6300dd-7b45-a2af-8b1e-88a7cdec3cce",
								true,
							},
							
							{
								"9b3a9f1e-bc83-92c2-be3d-8b3ea4086def",
								true,
							},
							
							{
								"a51c1499-b943-83e9-86dc-de816b2fa688",
								true,
							},
						},
						uuid = "9524bc34-3df9-975c-8368-09e844b5a6ca",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "970bec03-2508-2637-9911-ee1a184f6fc6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13340,
						name = "Darkness done",
						uuid = "1e6300dd-7b45-a2af-8b1e-88a7cdec3cce",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "-- The pull comes 13.2s after Darkness and the knockback about 4s later.\nself.t = self.t or Now()\nreturn Now() - self.t >= 11500",
						name = "11.5s after",
						uuid = "9b3a9f1e-bc83-92c2-be3d-8b3ea4086def",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "-- From 12.4s, interrupt a hard cast only if Surecast/Arm's Length is ready and the cast would run past the pull.\nself.t = self.t or Now()\nif Now() - self.t < 12400 or Now() - self.t > 13000 then return false end\nlocal c = Player.castinginfo\nif not c or c.channelingid == 0 or (c.casttime - c.channeltime) < 0.4 then return false end\nfor _, id in ipairs({7559, 7548}) do\n  local a = ActionList:Get(1, id)\n  if a and a.usable and not a.isoncd then return true end\nend\nreturn false",
						name = "Cast blocks window",
						uuid = "d2198364-a190-2186-b225-5d65efb38a37",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = TensorCore.mGetPlayer()\nreturn not not (e and p and e.alive and TensorCore.getDistance2d(p.pos, e.pos) <= 40)",
						name = "Boss alive, near",
						uuid = "a51c1499-b943-83e9-86dc-de816b2fa688",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 2,
			name = "[Pyros] Askalaphos - Anti-knockback",
			timeout = 16.5,
			uuid = "85bf9c62-5c19-4651-bca6-fa15ef07658c",
			version = 2,
		},
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
						actionLua = "-- Water Familiar: 8-yalm circle around the targeted player.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.targetID, 8, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"eebe1d2a-e2c8-6a63-82d2-a6080416eb28",
								true,
							},
							
							{
								"73a55966-74fd-dd47-a5d1-ddad7284e04b",
								true,
							},
						},
						name = "Circle on target",
						uuid = "706010a8-312f-45b3-b20f-6431ba21bf32",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "eebe1d2a-e2c8-6a63-82d2-a6080416eb28",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13339,
						name = "Water III",
						uuid = "73a55966-74fd-dd47-a5d1-ddad7284e04b",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Askalaphos - Water III",
			uuid = "2452a21b-ddd3-bb71-897c-39638f79252a",
			version = 2,
		},
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
						actionLua = "-- On the Properties of Gravity: 6-yalm circle around the targeted player.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.targetID, 6, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"61829bdb-3a6a-6e6b-a271-d589741bba46",
								true,
							},
							
							{
								"f8736dd8-326c-e25d-9dd2-29c7da4ef76d",
								true,
							},
						},
						name = "Circle on target",
						uuid = "27ce0fa6-9355-00ee-b63e-31d998713015",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "61829bdb-3a6a-6e6b-a271-d589741bba46",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13330,
						name = "Gravity",
						uuid = "f8736dd8-326c-e25d-9dd2-29c7da4ef76d",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Askalaphos - Gravity",
			uuid = "09999432-5dbf-92c6-b986-930a13675878",
			version = 2,
		},
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
						actionLua = "-- 6-yalm circle around the targeted player.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.targetID, 6, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"ab941b79-5514-b2d6-9912-d5906e132c5b",
								true,
							},
							
							{
								"f41eb5c4-6ef3-ca9d-9c05-60e19fab8511",
								true,
							},
						},
						name = "Circle on target",
						uuid = "2f461e93-842d-59ee-8c44-ab4edc151d13",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "ab941b79-5514-b2d6-9912-d5906e132c5b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13843,
						name = "Levinspitter",
						uuid = "f41eb5c4-6ef3-ca9d-9c05-60e19fab8511",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Aetolus - Levinspitter",
			uuid = "ef033e27-31c7-2b27-a779-8931881d6f26",
			version = 2,
		},
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
						actionLua = "-- 6-yalm circle around the targeted player.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.targetID, 6, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"457c8ddb-3eb8-9122-bcc2-85c1768e197a",
								true,
							},
							
							{
								"67d5963a-8b08-4308-a417-0e4f5b7c0f01",
								true,
							},
						},
						name = "Circle on target",
						uuid = "9a7dde79-8601-7ebf-9a8b-0507cfd5f0f9",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "457c8ddb-3eb8-9122-bcc2-85c1768e197a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13354,
						name = "Hundredfold Gale",
						uuid = "67d5963a-8b08-4308-a417-0e4f5b7c0f01",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Batym - Hundredfold Gale",
			uuid = "85423a7c-4bc0-2fe7-98f3-beb29808e292",
			version = 2,
		},
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
						actionLua = "-- 6-yalm circle around the targeted player.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.targetID, 6, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"0f43d713-950b-dacd-bc41-d6a2810db4b9",
								true,
							},
							
							{
								"9fbd659f-879f-2187-a988-677ede02f48e",
								true,
							},
						},
						name = "Circle on target",
						uuid = "f5111d70-707d-53ff-8b5f-2dbbeb4a6533",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "0f43d713-950b-dacd-bc41-d6a2810db4b9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13264,
						name = "Bad Water",
						uuid = "9fbd659f-879f-2187-a988-677ede02f48e",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Leucosia - Bad Water",
			uuid = "cb988545-41f5-c7fe-b914-95e050c6e89f",
			version = 2,
		},
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
						actionLua = "-- 5-yalm circle around the targeted player.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.targetID, 5, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"d2d9032f-07f4-8eea-ab43-e385cfb77df4",
								true,
							},
							
							{
								"a758b60f-fff9-08ea-a3d8-f4c57d21168f",
								true,
							},
						},
						name = "Circle on target",
						uuid = "af6f6835-d780-e08b-a524-3034dd5fd761",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "d2d9032f-07f4-8eea-ab43-e385cfb77df4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13288,
						name = "Thrown Kiss",
						uuid = "a758b60f-fff9-08ea-a3d8-f4c57d21168f",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Penthesilea - Thrown Kiss",
			uuid = "a1a005cd-d777-3a1f-be4a-64a1ee156c3c",
			version = 2,
		},
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
						actionLua = "-- Thundercloud: 8-yalm circle around itself.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.entityID, 8, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"01ec8d04-e383-8cca-861e-50cf4a8a3267",
								true,
							},
							
							{
								"4b6ff762-c223-33fb-b575-45007b19ae7f",
								true,
							},
						},
						name = "Circle on caster",
						uuid = "13f6a7ef-45da-d247-b5ab-a95e220f0245",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "01ec8d04-e383-8cca-861e-50cf4a8a3267",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13429,
						name = "Spindly Finger",
						uuid = "4b6ff762-c223-33fb-b575-45007b19ae7f",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Dux - Spindly Finger",
			uuid = "b9e38340-7314-267d-92c3-46ed3727fa88",
			version = 2,
		},
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
						actionLua = "-- Untelegraphed frontal cone, 12y. Logged hits reach 52 degrees off centre, so 120 degrees.\nlocal e = TensorCore.mGetEntity(eventArgs.entityID)\nif e then\n  TensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax + 0.3) * 1000, e.pos.x, e.pos.y, e.pos.z, 12, math.rad(120), e.pos.h, 0, false)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"44110e3e-c79f-a54e-a5e9-a7972e2ef25f",
								true,
							},
							
							{
								"8ed55e28-5632-0044-964a-33bea379773b",
								true,
							},
						},
						name = "Draw Rake cone",
						uuid = "747be9a6-608c-0433-92cd-8e64ebff87ac",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "44110e3e-c79f-a54e-a5e9-a7972e2ef25f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13435,
						name = "Rake",
						uuid = "8ed55e28-5632-0044-964a-33bea379773b",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Dux - Rake",
			uuid = "33d82991-5adf-e9d4-b0da-b1659efc027b",
			version = 2,
		},
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
						actionLua = "local e = TensorCore.mGetEntity(eventArgs.entityID)\nif e then\n  local id = eventArgs.spellID\n  local time = (eventArgs.channelTimeMax + 0.3) * 1000\n  local drawer = TensorCore.getMoogleDrawer()\n  local p = e.pos\n  if id == 13556 then\n    drawer:addTimedCone(time, p.x, p.y, p.z, 42.25, math.rad(120), p.h, 0, false)\n  elseif id == 13553 then\n    drawer:addTimedCone(time, p.x, p.y, p.z, 19.9, math.rad(60), p.h, 0, false)\n  else\n    -- Donut: safe inside 5y.\n    drawer:addTimedDonut(time, p.x, p.y, p.z, 5, 10, 0, false)\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"21dff965-70a5-e531-b10c-ffc82630b7a8",
								true,
							},
							
							{
								"7d842df8-df2b-d1dc-8a2d-e1d98ca5be1e",
								true,
							},
						},
						name = "Draw Heat Gaze",
						uuid = "aa672507-1de5-278a-b4c5-4645b7fa08e5",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "21dff965-70a5-e531-b10c-ffc82630b7a8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local id = eventArgs.spellID\nreturn id == 13553 or id == 13554 or id == 13556 or id == 13648",
						dequeueIfLuaFalse = true,
						name = "Heat Gaze",
						uuid = "7d842df8-df2b-d1dc-8a2d-e1d98ca5be1e",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Graffiacane - Heat Gaze",
			uuid = "c4537f42-2c72-aa25-a4fc-bcb0e2400c91",
			version = 2,
		},
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
								"3539471e-1d2f-a123-8946-d06d19c69692",
								true,
							},
							
							{
								"b4486a5d-3284-3691-96bc-16a894ffd5b3",
								true,
							},
							
							{
								"30e886ab-38b9-0d2c-9048-a489de52f7f3",
								true,
							},
							
							{
								"a261957b-515a-dff9-81e1-787d5c1b97f0",
								true,
							},
						},
						name = "Stop cast for immunity",
						stopCasting = true,
						uuid = "6978391f-c87f-0b27-8bc9-6520dd832443",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 7559,
						conditions = 
						{
							
							{
								"3539471e-1d2f-a123-8946-d06d19c69692",
								true,
							},
							
							{
								"b4486a5d-3284-3691-96bc-16a894ffd5b3",
								true,
							},
							
							{
								"a261957b-515a-dff9-81e1-787d5c1b97f0",
								true,
							},
						},
						uuid = "1e8a8fc9-c569-c1c9-bd53-0357d72d7c9b",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 7548,
						conditions = 
						{
							
							{
								"3539471e-1d2f-a123-8946-d06d19c69692",
								true,
							},
							
							{
								"b4486a5d-3284-3691-96bc-16a894ffd5b3",
								true,
							},
							
							{
								"a261957b-515a-dff9-81e1-787d5c1b97f0",
								true,
							},
						},
						uuid = "2779436b-30ab-c0c9-806b-c9e5c76d2bdc",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "3539471e-1d2f-a123-8946-d06d19c69692",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13430,
						name = "Howl",
						uuid = "b4486a5d-3284-3691-96bc-16a894ffd5b3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = TensorCore.mGetPlayer()\n-- Howl reaches 18y; 2y margin for stepping closer during the cast.\nreturn not not (e and p and e.alive and TensorCore.getDistance2d(p.pos, e.pos) <= 20)",
						name = "Boss alive, in range",
						uuid = "a261957b-515a-dff9-81e1-787d5c1b97f0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "-- From 1.8s into Howl, interrupt a hard cast only if Surecast/Arm's Length is ready and the cast would run past the knockback.\nself.t = self.t or Now()\nlocal waited = Now() - self.t\nif waited < 1800 or waited > 3000 then return false end\nlocal c = Player.castinginfo\nif not c or c.channelingid == 0 or (c.casttime - c.channeltime) < 0.4 then return false end\nfor _, id in ipairs({7559, 7548}) do\n  local a = ActionList:Get(1, id)\n  if a and a.usable and not a.isoncd then return true end\nend\nreturn false",
						name = "Cast blocks window",
						uuid = "30e886ab-38b9-0d2c-9048-a489de52f7f3",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Dux - Howl Anti-knockback",
			timeout = 3.2,
			uuid = "98fda350-7935-cab3-9166-69ee5339ada7",
			version = 2,
		},
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
						actionLua = "-- Untelegraphed 18y knockback circle; the push lands about 1s after the cast bar ends.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 1.2) * 1000, eventArgs.entityID, 18, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"a57d908f-7f06-3e72-9a96-603dee338548",
								true,
							},
							
							{
								"a127f8da-a4b9-2468-b091-e678bc05f0f9",
								true,
							},
						},
						name = "Draw Howl circle",
						uuid = "ddb6f05e-efab-fe26-afdd-b878706caa9a",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "a57d908f-7f06-3e72-9a96-603dee338548",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13430,
						name = "Howl",
						uuid = "a127f8da-a4b9-2468-b091-e678bc05f0f9",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Dux - Howl circle",
			uuid = "fae7e66d-eb8a-d951-8072-3c483191b9f4",
			version = 2,
		},
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
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true return end\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 795\nlocal targets = {\n  [7730] = '[Eureka] Daughter of Glaukopis',\n  [7732] = '[Eureka] Crimson Ember',\n  [7733] = '[Eureka] Cobalt Ember',\n}\nlocal state = EurekaPyrosDoT\n\n-- Restore previous entries on leaving Pyros or changing job.\nif state and (not eligible or state.job ~= player.job) then\n  for contentID, saved in pairs(state.entries) do\n    local entry = saved.entry\n    -- Leave entries the user has changed since.\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n      if saved.created then\n        entry.enabled = false\n        if player.job == state.job and api.getBlacklistEntry(contentID) then\n          local current = api.addBlacklistEntry(contentID)\n          if current == entry and current.name == targets[contentID] then\n            api.deleteBlacklistEntry(contentID)\n          end\n        end\n      else\n        entry.enabled = saved.enabled\n        entry.allowIfTarget = saved.allowIfTarget\n        entry.allowSmartDoT = saved.allowSmartDoT\n      end\n    end\n  end\n  EurekaPyrosDoT = nil\n  state = nil\nend\n\nif eligible and not state then\n  -- Recorded before the attempt so an unsupported ACR is not retried every update.\n  state = { job = player.job, entries = {} }\n  EurekaPyrosDoT = state\n  for contentID, label in pairs(targets) do\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n      local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n      if ok and entry then\n        state.entries[contentID] = {\n          entry = entry, created = not exists, enabled = entry.enabled,\n          allowIfTarget = entry.allowIfTarget, allowSmartDoT = entry.allowSmartDoT,\n        }\n        entry.enabled = true\n        entry.allowIfTarget = false\n        entry.allowSmartDoT = false\n      end\n    end\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"f6e17406-7ad7-6c3d-9870-211ac69474df",
								true,
							},
						},
						name = "Apply or restore blacklist",
						uuid = "cbc5704a-947d-34cd-96c2-b6a578ae2255",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal eligible = player.localmapid == 795\nlocal state = EurekaPyrosDoT\nif state then return not eligible or state.job ~= player.job end\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Apply or restore due",
						uuid = "f6e17406-7ad7-6c3d-9870-211ac69474df",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			name = "[Pyros] Adds - DoT blacklist",
			throttleTime = 500,
			uuid = "988e863d-8afe-ea0f-a521-4117abcf17f0",
			version = 2,
		},
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
						actionLua = "-- Untelegraphed 8-yalm tankbuster circle around the targeted player.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.channelTimeMax + 0.3) * 1000, eventArgs.targetID, 8, 0, false)\nself.used = true\n",
						conditions = 
						{
							
							{
								"7727ead6-5560-8780-b1e3-cb2375e891dd",
								true,
							},
							
							{
								"46047c64-268f-9c79-a30f-5d5dbc3a49d1",
								true,
							},
						},
						name = "Circle on target",
						uuid = "e013c803-bb2e-dbbf-8f1f-9a2e7f026fdf",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "7727ead6-5560-8780-b1e3-cb2375e891dd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 13277,
						name = "Dramatic Flare",
						uuid = "46047c64-268f-9c79-a30f-5d5dbc3a49d1",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Penthesilea - Dramatic Flare",
			uuid = "126571e3-7046-c8b6-92cc-fb169d3198b4",
			version = 2,
		},
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
						actionLua = "-- Kill the ember before its 23.7s Mutation finishes.\nlocal e = TensorCore.mGetEntity(eventArgs.entityID)\nif e and AnyoneCore then\n  AnyoneCore.addWorldTextCountdown(eventArgs.channelTimeMax * 1000, { x = e.pos.x, y = e.pos.y + 2, z = e.pos.z }, 0xFFFFFFFF, true, 1.5)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"dbf72dc0-722d-5ccf-b384-ed8b96f5c35f",
								true,
							},
							
							{
								"3d198c1d-6507-5f84-82ee-0c1dd0d4f978",
								true,
							},
						},
						name = "Countdown on ember",
						uuid = "a041e274-66ae-ab8b-80f6-8ec01a911e9f",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "dbf72dc0-722d-5ccf-b384-ed8b96f5c35f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.spellID == 13284 or eventArgs.spellID == 13285",
						dequeueIfLuaFalse = true,
						name = "Mutation",
						uuid = "3d198c1d-6507-5f84-82ee-0c1dd0d4f978",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 3,
			name = "[Pyros] Penthesilea - Ember Mutation countdown",
			uuid = "4ac6305e-0a47-d999-9ead-56e0d1faf87d",
			version = 2,
		},
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
						actionLua = "-- The AoE record's heading is the real direction: Sadistic Attack points 75 degrees off the boss's facing.\nlocal id = eventArgs.aoeID\nlocal time = (eventArgs.duration + 0.3) * 1000\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal x, y, z = eventArgs.x, eventArgs.y, eventArgs.z\nif id == 13322 then\n  -- Sadistic Attack: wide cone; logged targets lie within 99 degrees of its centre.\n  drawer:addTimedCone(time, x, y, z, 33, math.rad(210), eventArgs.heading, 0, false)\nelseif id == 13325 then\n  -- Ravening Shadow: donut; nobody closer than 9y was hit.\n  drawer:addTimedDonut(time, x, y, z, 8, 30, 0, false)\nelse\n  -- Dark: ground circles.\n  drawer:addTimedCircle(time, x, y, z, 5, 0, false)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"fa6dc02a-8c65-b53c-8ca1-b10ea98bec7b",
								true,
							},
							
							{
								"f41ba8da-11a7-5307-b376-543b04c04827",
								true,
							},
						},
						name = "Draw Ying-Yang shape",
						uuid = "4476c36d-32f3-7f9f-b8ed-743f78a70257",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "fa6dc02a-8c65-b53c-8ca1-b10ea98bec7b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local id = eventArgs.aoeID\nreturn id == 13322 or id == 13325 or id == 13350 or id == 13351",
						dequeueIfLuaFalse = true,
						name = "Ying-Yang AoE",
						uuid = "f41ba8da-11a7-5307-b376-543b04c04827",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			eventType = 18,
			name = "[Pyros] Ying-Yang - AoE draws",
			uuid = "f8795cfe-f2f6-d4a0-a149-d32c06424176",
			version = 2,
		},
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
						actionLua = "local list = MoogleTelegraphs and MoogleTelegraphs.Settings and MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif list then\n  local source = 'Eureka Reactions (EU Ultimate)'\n  for id, label in pairs({ [13322] = 'Sadistic Attack', [13325] = 'Ravening Shadow' }) do\n    list[id] = { label = label, source = source }\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"05cbd15d-b599-9c20-b74a-ac5041f84c6e",
								true,
							},
							
							{
								"54640460-6be4-ac36-aece-46609cac02ab",
								true,
							},
						},
						name = "Write blacklist entries",
						uuid = "bad58b72-9081-46b4-9dda-e90c3dbbdbd5",
						version = 2.1,
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
						dequeueIfLuaFalse = true,
						localmapid = 795,
						name = "In Pyros",
						uuid = "05cbd15d-b599-9c20-b74a-ac5041f84c6e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local list = MoogleTelegraphs and MoogleTelegraphs.Settings and MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif not list then return false end\nlocal source = 'Eureka Reactions (EU Ultimate)'\nfor id, label in pairs({ [13322] = 'Sadistic Attack', [13325] = 'Ravening Shadow' }) do\n  local entry = list[id]\n  if not entry or entry.label ~= label or entry.source ~= source then return true end\nend\nreturn false",
						name = "Entry missing",
						uuid = "54640460-6be4-ac36-aece-46609cac02ab",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Pyros",
			name = "[Utility] Eureka - Moogle Telegraphs blacklist",
			throttleTime = 5000,
			uuid = "a92cf52a-4806-9109-83ae-4858b0c15489",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Eureka Hydatos",
			uuid = "07a366ce-6dce-7b43-9a24-bf2fd4aaf496",
		},
		objectType = "folder",
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
						actionLua = "EurekaHydatosNM = EurekaHydatosNM or { ids = {}, nextScan = 0, names = {\n [8024]='Khalamari', [8028]='Stegodon', [8031]='Molech', [8032]='Piasa', [8037]='Frostmane', [8038]='Daphne',\n [8058]='King Goldemar', [8045]='Leuke', [8047]='Barong', [8050]='Ceto', [8054]='Provenance Watcher' } }\nlocal s = EurekaHydatosNM\nif not s.filter then local k = {} for id in pairs(s.names) do k[#k+1] = tostring(id) end s.filter = 'contentid=' .. table.concat(k, ';') end\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList(s.filter)) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal w, h = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nif GUI:Begin('##EurekaHydatosNM', true, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing) then\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    local text = e and s.names[e.contentid]\n    if text and e.alive and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 2, z = e.pos.z}, true)\n      if x and y then\n        local tw, th = GUI:CalcTextSize(text)\n        x, y = x - tw / 2, y - th / 2\n        GUI:AddRectFilled(x - 4, y - 2, x + tw + 4, y + th + 2, 0xA0000000, 4)\n        GUI:AddText(x, y, 0xFFFFFFFF, text)\n      end\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"a603d2d7-d6d0-24cf-a2eb-c94af3bc717b",
								true,
							},
						},
						name = "Label NM trigger monsters",
						uuid = "214d8c23-f5c7-56e5-a495-875f57487695",
						version = 2.1,
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
						localmapid = 827,
						name = "In Hydatos",
						uuid = "a603d2d7-d6d0-24cf-a2eb-c94af3bc717b",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Hydatos",
			eventType = 13,
			name = "[Hydatos] NM trigger labels",
			uuid = "7161b0c1-c4f3-c54a-beeb-548c41203538",
			version = 2,
		},
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
						actionLua = "EurekaHydatosFairyText = EurekaHydatosFairyText or { ids = {}, nextScan = 0 }\nlocal s = EurekaHydatosFairyText\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList('contentid=8131')) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal w, h = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nif GUI:Begin('##EurekaHydatosFairy', true, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing) then\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    if e and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 2, z = e.pos.z}, true)\n      if x and y then GUI:AddText(x - 15, y, 0xFFFFFFFF, 'Fairy') end\n    end\n  end\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"ce1336e0-906b-4dc9-b7ae-014cb09de1d3",
								true,
							},
						},
						name = "Label fairy",
						uuid = "f0955874-c4b8-3dee-874f-226d862c9b29",
						version = 2.1,
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
						localmapid = 827,
						name = "In Hydatos",
						uuid = "ce1336e0-906b-4dc9-b7ae-014cb09de1d3",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Hydatos",
			eventType = 13,
			name = "[Hydatos] Fairy label",
			uuid = "2c87e28c-5d61-c1b5-8677-35801713d16e",
			version = 2,
		},
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
						actionLua = "EurekaHydatosFairyDraw = EurekaHydatosFairyDraw or { ids = {}, nextScan = 0, fairy = Argus2.ShapeDrawer:new(nil, nil, 0x1800FF23, 0xC800FF23, 2), tether = TensorCore.getStaticDrawer(0xC800FF23, 2) }\nlocal s = EurekaHydatosFairyDraw\nlocal p = TensorCore.mGetPlayer()\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 500\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList('contentid=8131')) do ids[#ids+1] = e.id end\n  s.ids = ids\nend\nfor _, id in ipairs(s.ids) do\n  local e = TensorCore.mGetEntity(id)\n  if e and TensorCore.getDistance2d(p.pos, e.pos) <= 100 then\n    s.fairy:addCircle(e.pos.x, e.pos.y, e.pos.z, 10 + (e.hitradius or 0), false)\n    s.tether:addLine(p.pos.x, p.pos.y, p.pos.z, e.pos.x, e.pos.y, e.pos.z, 2)\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"b0be161c-c47a-27c2-a6c4-9976e480cc86",
								true,
							},
						},
						name = "Draw fairy circle",
						uuid = "cb74fcd6-aef3-bbe3-9ef2-3d80bee9a2bc",
						version = 2.1,
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
						localmapid = 827,
						name = "In Hydatos",
						uuid = "b0be161c-c47a-27c2-a6c4-9976e480cc86",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Hydatos",
			eventType = 12,
			name = "[Hydatos] Fairy circle",
			uuid = "8e4064b1-6595-765a-af34-1f66e0b01b67",
			version = 2,
		},
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
						actionLua = "if not EurekaHydatosBunnyUntil then self.used = true return end\nif Now() >= EurekaHydatosBunnyUntil then EurekaHydatosBunnyUntil = nil self.used = true return end\nEurekaHydatosChests = EurekaHydatosChests or { drawer = Argus2.ShapeDrawer:new(nil, nil, 0x6000D7FF, 0xFF00D7FF, 2), tether = TensorCore.getStaticDrawer(0xC800D7FF, 2), spots = {\n {-933.7,523.2,-736.9},{-920.2,506.0,-172.4},{-863.6,513.3,-440.0},{-678.9,504.3,-366.6},{-799.9,505.5,-109.4},{-666.3,509.7,-589.7},{-614.3,512.0,-872.5},{-562.3,496.7,-13.5},\n {-438.5,505.1,-682.9},{-350.4,500.4,-108.9},{-323.0,501.0,-730.6},{-182.5,501.4,-591.6},{-159.4,495.8,-44.3},{8.5,504.5,-369.1},{122.1,500.0,-616.5},{140.3,496.1,12.4},\n {172.5,503.0,-349.4},{226.6,505.5,-886.1},{287.9,505.2,-519.2},{344.6,495.1,-212.5},{368.6,505.9,-400.7},{468.0,505.0,-711.0},{659.8,503.0,-732.7},{843.5,494.4,-7.5},\n {872.4,518.5,-238.0},{851.0,517.5,-885.2} } }\nlocal s = EurekaHydatosChests\nlocal p = TensorCore.mGetPlayer()\nfor _, c in ipairs(s.spots) do\n  local dx, dz = c[1] - p.pos.x, c[3] - p.pos.z\n  if dx * dx + dz * dz <= 10000 then\n    s.drawer:addCircle(c[1], c[2], c[3], 0.5, false)\n    s.tether:addLine(p.pos.x, p.pos.y, p.pos.z, c[1], c[2], c[3], 2)\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"48423f3a-2a48-ef72-9dad-ae4a482a8eee",
								true,
							},
						},
						name = "Draw nearby bunny chests",
						uuid = "0699746c-fce3-d4e5-8598-8ee90a3e169d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "EurekaHydatosBunnyUntil = nil\nself.used = true\n",
						conditions = 
						{
							
							{
								"48423f3a-2a48-ef72-9dad-ae4a482a8eee",
								false,
							},
						},
						name = "Clear bunny state outside Hydatos",
						uuid = "231e0477-17d5-8989-9499-4bbcbc21231c",
						version = 2.1,
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
						localmapid = 827,
						name = "In Hydatos",
						uuid = "48423f3a-2a48-ef72-9dad-ae4a482a8eee",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Hydatos",
			eventType = 12,
			name = "[Hydatos] Bunny chest locations",
			uuid = "1978aa96-8498-c96c-9c7c-0ad9cb433047",
			version = 2,
		},
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
						actionLua = "local text = eventArgs.line and eventArgs.line.line\nif text then\n  if string.find(text, 'The happy bunny stares up at you', 1, true) then\n    EurekaHydatosBunnyUntil = Now() + 600000\n  elseif string.find(text, 'The happy bunny seems rather pleased with itself', 1, true) then\n    EurekaHydatosBunnyUntil = nil\n  end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"1d15783e-3b85-bd7c-bf5c-ddc6e4c09236",
								true,
							},
						},
						name = "Track happy bunny messages",
						uuid = "99898b92-4c5c-0e62-9798-9e17168190a8",
						version = 2.1,
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
						localmapid = 827,
						name = "In Hydatos",
						uuid = "1d15783e-3b85-bd7c-bf5c-ddc6e4c09236",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Hydatos",
			enabled = false,
			eventType = 7,
			name = "[Hydatos] Bunny chest start/stop",
			uuid = "93101e71-67cd-ac9e-a352-54ac50e885f8",
			version = 2,
		},
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
						actionLua = "EurekaHydatosOvni = EurekaHydatosOvni or { ids = {}, nextScan = 0 }\nlocal s = EurekaHydatosOvni\nif Now() >= s.nextScan then\n  s.nextScan = Now() + 250\n  local ids = {}\n  for _, e in pairs(TensorCore.entityList('contentid=8060')) do\n    if e.alive and TensorCore.hasAnyBuff(e, 61,263,290,300,332,403,443,505,566,672,687,1161,1225,1544,1572,1592,1760,1766,1770,1781,1919,2220,2394,2433,2507,2550,3129,3260) then ids[#ids+1] = e.id end\n  end\n  s.ids = ids\nend\nif #s.ids == 0 then self.used = true return end\nlocal w, h = GUI:GetScreenSize()\nGUI:SetNextWindowPos(0, 0, GUI.SetCond_Always)\nGUI:SetNextWindowSize(w, h, GUI.SetCond_Always)\nGUI:PushStyleColor(GUI.Col_WindowBg, 0, 0, 0, 0)\nif GUI:Begin('##EurekaHydatosOvni', true, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize + GUI.WindowFlags_NoMove + GUI.WindowFlags_NoScrollbar + GUI.WindowFlags_NoSavedSettings + GUI.WindowFlags_NoInputs + GUI.WindowFlags_NoFocusOnAppearing) then\n  GUI:SetWindowFontScale(3)\n  for _, id in ipairs(s.ids) do\n    local e = TensorCore.mGetEntity(id)\n    if e then\n      local x, y = RenderManager:WorldToScreen({x = e.pos.x, y = e.pos.y + 3, z = e.pos.z}, true)\n      if x and y then local tw = GUI:CalcTextSize('!!! DISPEL !!!') GUI:AddText(x - tw/2, y, 0xFF0000FF, '!!! DISPEL !!!') end\n    end\n  end\n  GUI:SetWindowFontScale(1)\nend\nGUI:End()\nGUI:PopStyleColor()\nself.used = true\n",
						conditions = 
						{
							
							{
								"6903bc18-7cca-b186-b160-8c44564db344",
								true,
							},
						},
						name = "Show DISPEL over Ovni",
						uuid = "4ce9d4ea-c41e-9db3-b8cf-e662e7bb2251",
						version = 2.1,
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
						localmapid = 827,
						name = "In Hydatos",
						uuid = "6903bc18-7cca-b186-b160-8c44564db344",
						version = 3,
					},
				},
			},
			displayPath = "Eureka Hydatos",
			eventType = 13,
			name = "[Hydatos] Ovni dispel warning",
			uuid = "4bd07975-2df5-aa5d-92a1-959733760278",
			version = 2,
		},
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
						actionLua = "local s = EurekaNMEcho\nif s then\n  -- Map sheet row for each Eureka territory, needed to place the map flag.\n  local mapRow = { [732] = 414, [763] = 467, [795] = 484, [827] = 515 }\n  for _, nm in ipairs(s.pending) do\n    local text = nm.text\n    -- <flag> turns into a clickable link to the flag just placed on the NM.\n    if nm.x and nm.z and SetMapFlagPosition(mapRow[s.map], s.map, nm.x, nm.z) then\n      text = text .. ' <flag>'\n    end\n    SendTextCommand('/e ' .. text)\n  end\n  s.pending = {}\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"665f258e-9212-940d-b7ae-5aee050b6ac3",
								true,
							},
						},
						name = "Echo NM name",
						uuid = "be9d2596-a268-ade2-9403-ea12a61949f7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local map = Player and Player.localmapid\nif map ~= 732 and map ~= 763 and map ~= 795 and map ~= 827 then\n  EurekaNMEcho = nil\n  return false\nend\nlocal now = Now()\nlocal s = EurekaNMEcho\nif not s or s.map ~= map or not s.timers then\n  -- FATEs already up during the first 10s after entering are recorded without an echo.\n  s = { map = map, seen = {}, pending = {}, timers = {}, quietUntil = now + 10000, nextScan = 0 }\n  EurekaNMEcho = s\nend\nif now >= s.nextScan then\n  s.nextScan = now + 2000\n  -- Happy bunny FATEs (Pagos, Pyros, Hydatos).\n  local bunny = { [1367] = true, [1368] = true, [1407] = true, [1408] = true, [1425] = true }\n  for _, f in pairs(MFateList() or {}) do\n    if f.id and not bunny[f.id] and f.name and f.name ~= '' then\n      local last = s.seen[f.id]\n      if not last or now - last > 60000 then\n        local quiet = now < s.quietUntil\n        -- Respawn timer shown in the forecast window; 'early' means it was already up on arrival.\n        s.timers[f.id] = { name = f.name, at = os.time(), early = quiet }\n        if not quiet then\n          s.pending[#s.pending + 1] = { text = 'NM popped: ' .. f.name .. ' (Lv ' .. tostring(f.level) .. ')', x = f.x, z = f.z }\n        end\n      end\n      s.seen[f.id] = now\n    end\n  end\nend\nreturn #s.pending > 0",
						dequeueIfLuaFalse = true,
						name = "New NM up",
						uuid = "665f258e-9212-940d-b7ae-5aee050b6ac3",
						version = 3,
					},
				},
			},
			name = "[Utility] Eureka - NM pop echo",
			uuid = "2c2ccdaf-6079-5314-98ca-f7a7b0eba387",
			version = 2,
		},
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
						actionLua = "local s = EurekaBunnyChat\nlocal p = TensorCore.mGetPlayer()\nif s and s.pending and p then\n  -- 10 minute safety expiry in case the closing message is missed.\n  local untilTime = nil\n  if s.pending == 'start' then untilTime = Now() + 600000 end\n  if p.localmapid == 763 then EurekaPagosBunnyUntil = untilTime\n  elseif p.localmapid == 795 then EurekaPyrosBunnyUntil = untilTime\n  elseif p.localmapid == 827 then EurekaHydatosBunnyUntil = untilTime end\n  s.pending = nil\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"e10d4e33-287f-3f01-9c3e-02eba832fc67",
								true,
							},
						},
						name = "Set bunny chest state",
						uuid = "92fb5575-4eee-d718-ae32-9193390fdede",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local map = Player and Player.localmapid\nif map ~= 763 and map ~= 795 and map ~= 827 then\n  EurekaBunnyChat = nil\n  return false\nend\nlocal s = EurekaBunnyChat\nlocal now = Now()\nif s and now < s.nextScan then return s.pending ~= nil end\nlocal lines = GetChatLines()\nif not lines then return false end\nlocal newest, fresh = 0, {}\nfor i in pairs(lines) do\n  if i > newest then newest = i end\n  if s and i > s.last then fresh[#fresh + 1] = i end\nend\nif not s then\n  -- Only messages that arrive after this point count.\n  EurekaBunnyChat = { last = newest, nextScan = now + 1000 }\n  return false\nend\ns.nextScan = now + 1000\ntable.sort(fresh)\nfor _, i in ipairs(fresh) do\n  local text = lines[i].line\n  if text then\n    if string.find(text, 'The happy bunny stares up at you', 1, true) then\n      s.pending = 'start'\n    elseif string.find(text, 'The happy bunny seems rather pleased with itself', 1, true) then\n      s.pending = 'stop'\n    end\n  end\nend\ns.last = newest\nreturn s.pending ~= nil",
						dequeueIfLuaFalse = true,
						name = "New bunny message",
						uuid = "e10d4e33-287f-3f01-9c3e-02eba832fc67",
						version = 3,
					},
				},
			},
			name = "[Utility] Eureka - Bunny chest start/stop",
			uuid = "04cbd0d3-2eeb-1f66-afe7-c14834ec8e23",
			version = 2,
		},
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
						actionLua = "local map = Player and Player.localmapid\nlocal names = { [2]='Fair Skies', [4]='Fog', [6]='Gales', [8]='Showers', [9]='Thunder', [10]='Thunderstorms', [14]='Heat Waves', [15]='Snow', [16]='Blizzards', [17]='Gloom', [49]='Umbral Wind' }\n-- {cumulative chance, weather id}, from the game's WeatherRate sheet.\nlocal rates = {\n  [732] = { {30,2}, {60,6}, {90,8}, {100,15} },\n  [763] = { {10,2}, {28,4}, {46,14}, {64,15}, {82,9}, {100,16} },\n  [795] = { {10,2}, {28,14}, {46,9}, {64,16}, {82,49}, {100,15} },\n  [827] = { {12,2}, {34,8}, {56,17}, {78,10}, {100,15} },\n}\n-- {label, weather id, or nil for night}. NM conditions as listed by the EurekaHelper plugin.\nlocal nms = {\n  [732] = { {'Pazuzu (NM)', 6}, {'Jahannam: Typhoon Sprite', 6}, {'Pazuzu: Shadow Wraith'}, {'Fafnir: Fossil Dragon'}, {'Bombadeel: Traveling Gourmand'}, {'Lamashtu: Val Specter'}, {'White Rider: Duskfall Dullahan'} },\n  [763] = { {'Anapos: Snowmelt Sprite', 4}, {'King Arthro (NM)', 4}, {'Hadhayosh (NM)', 9}, {'Horus (NM)', 14}, {'Cassie (NM)', 16}, {'Louhi: Val Corpse'}, {'Taxim: Demon of the Incunable'} },\n  [795] = { {'Flauros: Thunderstorm Sprite', 9}, {'Dux (NM)', 9}, {'Askalaphos (NM)', 49}, {'Skoll (NM)', 16}, {'Penthesilea (NM)', 14}, {'Leucosia: Pyros Bhoot'}, {'Batym: Dark Troubadour'} },\n  [827] = { {'King Goldemar: Hydatos Wraith'} },\n}\nlocal table_ = rates[map]\nif not table_ then self.used = true return end\n\nlocal folder = GetLuaModsPath() .. [[TensorReactions\\Settings\\]]\nlocal path = folder .. 'EurekaForecast.lua'\nlocal function save()\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path, EurekaForecastSettings)\nend\nif not EurekaForecastSettings or EurekaForecastSettings.showWeather == nil then\n  local loaded = FileExists(path) and FileLoad(path) or nil\n  if type(loaded) ~= 'table' then loaded = {} end\n  EurekaForecastSettings = {\n    hidden = loaded.hidden == true,\n    showWeather = loaded.showWeather ~= false,\n    showWeatherNMs = loaded.showWeatherNMs ~= false,\n    showRespawns = loaded.showRespawns ~= false,\n  }\nend\nlocal settings = EurekaForecastSettings\n\n-- Weather changes every 1400 real seconds (8 Eorzea hours).\nlocal function weatherAt(t)\n  local bell = math.floor(t / 175)\n  local increment = (bell + 8 - (bell % 8)) % 24\n  local base = math.floor(t / 4200) * 100 + increment\n  local s1 = bit.bxor(bit.lshift(base, 11), base)\n  local s2 = bit.bxor(bit.rshift(s1, 8), s1)\n  local chance = (s2 % 4294967296) % 100\n  for _, r in ipairs(table_) do\n    if chance < r[1] then return r[2] end\n  end\nend\n\nlocal s = EurekaForecast\nif not s or s.map ~= map then\n  s = { map = map, nextUpdate = 0 }\n  EurekaForecast = s\nend\nlocal now = os.time()\nif now >= s.nextUpdate then\n  s.nextUpdate = now + 1\n  -- Typing /e forecast shows or hides the window.\n  local lines = GetChatLines()\n  if lines then\n    local newest, toggles = 0, 0\n    for i, entry in pairs(lines) do\n      if i > newest then newest = i end\n      if s.lastChat and i > s.lastChat and entry.line and string.lower(entry.line) == 'forecast' then toggles = toggles + 1 end\n    end\n    s.lastChat = newest\n    if toggles % 2 == 1 then\n      settings.hidden = not settings.hidden\n      save()\n    end\n  end\n  local function fmt(sec)\n    if sec >= 3600 then return string.format('%d:%02d:%02d', math.floor(sec / 3600), math.floor(sec / 60) % 60, sec % 60) end\n    return string.format('%d:%02d', math.floor(sec / 60), sec % 60)\n  end\n  local start = now - (now % 1400)\n  local current = weatherAt(start)\n  -- Seconds until each weather next begins (0 = active now).\n  local untilW, found, want = { [current] = 0 }, 1, #table_\n  for i = 1, 100 do\n    if found >= want then break end\n    local t = start + i * 1400\n    local w = weatherAt(t)\n    if w and not untilW[w] then untilW[w] = t - now found = found + 1 end\n  end\n  local endsIn = start + 1400 - now\n  -- Night is Eorzea 19:00 to 06:00; one Eorzea hour is 175 seconds.\n  local etHour = (now / 175) % 24\n  local night = etHour >= 19 or etHour < 6\n  local change = night and ((6 - etHour) % 24) or (19 - etHour)\n  local changeIn = math.ceil(change * 175)\n  s.header = {\n    string.format('ET %02d:%02d  %s, %s in %s', math.floor(etHour), math.floor((etHour % 1) * 60), night and 'Night' or 'Day', night and 'day' or 'night', fmt(changeIn)),\n    string.format('Now: %s (%s left)', names[current] or '?', fmt(endsIn)),\n  }\n  s.weather = {}\n  for _, r in ipairs(table_) do\n    local w = r[2]\n    if w ~= current then\n      s.weather[#s.weather + 1] = { sec = untilW[w] or math.huge, text = string.format('%s in %s', names[w], untilW[w] and fmt(untilW[w]) or '?') }\n    end\n  end\n  table.sort(s.weather, function(a, b) return a.sec < b.sec end)\n  s.nms = {}\n  for _, nm in ipairs(nms[map]) do\n    local label, w = nm[1], nm[2]\n    local need = w and names[w] or 'Night'\n    local active, sec\n    if w then\n      active = w == current\n      sec = active and endsIn or untilW[w]\n    else\n      active = night\n      sec = changeIn\n    end\n    local state = active and ('NOW, ' .. fmt(sec) .. ' left') or (sec and ('in ' .. fmt(sec)) or '?')\n    s.nms[#s.nms + 1] = { order = active and -1 or (sec or math.huge), text = string.format('%s - %s: %s', label, need, state) }\n  end\n  table.sort(s.nms, function(a, b) return a.order < b.order end)\n\n  -- NM respawns: 2 hours after the pop, using the pop times the NM echo reaction records.\n  s.respawns = {}\n  local echo = EurekaNMEcho\n  if echo and echo.map == map and echo.timers then\n    for _, t in pairs(echo.timers) do\n      local left = t.at + 7200 - now\n      local text\n      if left <= 0 then\n        text = t.name .. ': can pop again'\n      else\n        -- NMs already up on arrival popped earlier, so their time is only an upper limit.\n        text = string.format('%s: %s %s', t.name, t.early and 'within' or 'in', fmt(left))\n      end\n      s.respawns[#s.respawns + 1] = { sec = left, text = text }\n    end\n    table.sort(s.respawns, function(a, b) return a.sec < b.sec end)\n  end\n\n  -- Echo when a weather or night that matters starts; silent on entering the zone.\n  if s.lastWindow and s.lastWindow ~= start then\n    local list = {}\n    for _, nm in ipairs(nms[map]) do\n      if nm[2] == current then list[#list + 1] = nm[1] end\n    end\n    if #list > 0 then SendTextCommand('/e ' .. names[current] .. ' started: ' .. table.concat(list, ', ')) end\n  end\n  if s.lastNight == false and night then\n    local list = {}\n    for _, nm in ipairs(nms[map]) do\n      if not nm[2] then list[#list + 1] = nm[1] end\n    end\n    if #list > 0 then SendTextCommand('/e Night started: ' .. table.concat(list, ', ')) end\n  end\n  s.lastWindow, s.lastNight = start, night\nend\n\nif not settings.hidden then\n  if GUI:Begin('Eureka Forecast', true, GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoFocusOnAppearing) then\n    if settings.showWeather then\n      for _, line in ipairs(s.header) do GUI:Text(line) end\n      GUI:Separator()\n      for _, w in ipairs(s.weather) do GUI:Text(w.text) end\n      GUI:Separator()\n    end\n    if settings.showWeatherNMs then\n      for _, nm in ipairs(s.nms) do\n        -- Active lines (NOW) in green.\n        if nm.order < 0 then GUI:TextColored(0.2, 1, 0.2, 1, nm.text) else GUI:Text(nm.text) end\n      end\n      GUI:Separator()\n    end\n    if settings.showRespawns and s.respawns and #s.respawns > 0 then\n      GUI:Text('NM respawns')\n      for _, r in ipairs(s.respawns) do\n        -- 'can pop again' lines in green.\n        if r.sec <= 0 then GUI:TextColored(0.2, 1, 0.2, 1, r.text) else GUI:Text(r.text) end\n      end\n      GUI:Separator()\n    end\n    local changed = false\n    local function toggle(label, key)\n      local value = GUI:Checkbox(label .. '##EurekaForecast', settings[key])\n      if value ~= settings[key] then\n        settings[key] = value\n        changed = true\n      end\n    end\n    toggle('Weather', 'showWeather')\n    GUI:SameLine()\n    toggle('Weather NMs', 'showWeatherNMs')\n    GUI:SameLine()\n    toggle('Respawns', 'showRespawns')\n    if changed then save() end\n    if GUI:Button('Hide') then\n      settings.hidden = true\n      save()\n      SendTextCommand('/e Eureka forecast hidden. Type /e forecast to show it again.')\n    end\n  end\n  GUI:End()\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"47196874-cc93-b20f-84e4-99c480b34ed1",
								true,
							},
						},
						name = "Forecast window and alerts",
						uuid = "8da47cf0-b1e5-0235-b377-49863d0c2c29",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local map = Player and Player.localmapid\nlocal inside = map == 732 or map == 763 or map == 795 or map == 827\nif not inside then EurekaForecast = nil end\nreturn inside",
						name = "In Eureka",
						uuid = "47196874-cc93-b20f-84e4-99c480b34ed1",
						version = 3,
					},
				},
			},
			eventType = 13,
			name = "[Utility] Eureka - Weather forecast",
			uuid = "6320e41e-c13e-bb6a-a690-10f34fd3d900",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
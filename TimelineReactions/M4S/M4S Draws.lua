local tbl = 
{
	[5] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "10c76929-df58-8471-ae94-f053a56b7023",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Bewitching Flight: stand in a safe intersection. 5 vertical beams (from the boss, north) and\n-- 4-5 horizontal beams (from the west cubes; screenshot shows 4), each 5 wide. Columns: the two safe columns nearest the middle\n-- (G1 left / G2 right). Rows (north to south, the 3 safe rows nearest the boss): M+T, then R, then H.\nlocal m = data.m4_bf\nif not (m and m.t) or Now() - m.t > 15000 or m.done then return end\nif Now() - (m.la or 0) < 400 then return end\nlocal function vals(tbl, key, nlo, nhi)\n  local out = {}\n  for id, c in pairs(tbl) do\n    local ent = TensorCore.mGetEntity(id)\n    local ps = ent and ent.pos\n    if ps and not (ps.x == 0 and ps.z == 0) then\n      if c then c.x, c.z = ps.x, ps.z else c = {x = ps.x, z = ps.z}; tbl[id] = c end\n    end\n    if c then\n      local v = c[key]\n      if not v or v < 77 or v > 123 then return nil end\n      local dup = false\n      for _, o in ipairs(out) do if math.abs(o - v) < 1 then dup = true; break end end\n      if not dup then out[#out + 1] = v end\n    end\n  end\n  if #out < nlo or #out > nhi then return nil end\n  table.sort(out)\n  return out\nend\nlocal function gaps(cs)\n  local res, start = {}, 80\n  for _, c in ipairs(cs) do\n    local a = c - 2.5\n    if a - start >= 2 then res[#res + 1] = (start + a) / 2 end\n    if c + 2.5 > start then start = c + 2.5 end\n  end\n  if 120 - start >= 2 then res[#res + 1] = (start + 120) / 2 end\n  return res\nend\nlocal xs = vals(m.ver, \"x\", 5, 5)\nlocal zs = vals(m.bat, \"z\", 4, 5)\nif not (xs and zs) then return end\nlocal cg, rg = gaps(xs), gaps(zs)\nif #cg < 2 or #rg < 3 then return end\ntable.sort(cg, function(a, b) return math.abs(a - 100) < math.abs(b - 100) end)\nif #cg >= 3 and math.abs(math.abs(cg[3] - 100) - math.abs(cg[2] - 100)) < 0.5 then return end\nlocal L, R = math.min(cg[1], cg[2]), math.max(cg[1], cg[2])\nif R - L < 3 then return end\ntable.sort(rg)\nlocal ROW = {T1 = 1, M1 = 1, T2 = 1, M2 = 1, R1 = 2, R2 = 2, H1 = 3, H2 = 3}\nlocal COL = {T1 = L, M1 = L, R1 = L, H1 = L, T2 = R, M2 = R, R2 = R, H2 = R}\nlocal r, c = ROW[slot], COL[slot]\nif not (r and c) then return end\ngo(c, rg[r])\n",
							name = "[Draw] M4S - Bewitching Flight safe spot",
							uuid = "d763e96d-69bf-bdfc-b364-38cfcc4251a5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 38.2,
				name = "[Draw] M4S - Bewitching Flight safe spot",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 3,
				timerStartOffset = -10,
				uuid = "963c2b7c-cf22-c773-897b-deec2cb7a7c9",
				version = 2,
			},
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
							actionLua = "-- M4S Bewitching Flight: Gun Battery cubes (OID 0x43AC = 17324) spawn on the west edge; each fires a horizontal\n-- Electray (range 40 width 5) ~6.8s later. Store the entity so its z can be read.\nlocal e = eventArgs\nif not (e and e.entityContentID == 13059 and e.entityID) then self.used = true; return end\nlocal m = data.m4_bf\nif not m or not m.t or Now() - m.t > 20000 then\n  m = {t = Now(), ver = {}, bat = {}}\n  data.m4_bf = m\nend\nlocal ent = TensorCore.mGetEntity(e.entityID)\nlocal ps = ent and ent.pos\nif m.bat[e.entityID] == nil then m.la = Now() end\nm.bat[e.entityID] = (ps and ps.x ~= 0 and {x = ps.x, z = ps.z}) or m.bat[e.entityID] or false\n-- position can still be 0/unknown on the spawn tick: stay queued and retry (bounded by the reaction window)\nif m.bat[e.entityID] then\n m.cannonDue=m.cannonDue or {};m.cannonDue[e.entityID]=m.cannonDue[e.entityID] or Now()+6800\n self.used = true\nend",
							conditions = 
							{
								
								{
									"8db11b14-2d5b-ef48-aef0-2803045bbc85",
									true,
								},
							},
							name = "[Draw] M4S - Bewitching Flight capture cubes",
							uuid = "52409036-00ca-0413-8a00-db59c2d2c75a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 13059",
							dequeueIfLuaFalse = true,
							name = "Relevant mechanic event",
							uuid = "8db11b14-2d5b-ef48-aef0-2803045bbc85",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 5,
				loop = true,
				mechanicTime = 38.2,
				name = "[Draw] M4S - Bewitching Flight capture cubes",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 4,
				timerStartOffset = -14,
				uuid = "0e55c073-fb31-ad58-a454-113fd5da96d4",
				version = 2,
			},
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
							actionLua = "-- M4S Bewitching Flight: 38377 = vertical beam (Helper, range 40 width 5, from the north), 38379 = Electray\n-- (Gun Battery horizontal beam; fallback if the cube spawn was missed).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38377 and sp ~= 38379 then return end\nif not e.entityID then return end\nlocal m = data.m4_bf\nif not m or not m.t or Now() - m.t > 20000 then\n  m = {t = Now(), ver = {}, bat = {}}\n  data.m4_bf = m\nend\nlocal ent = TensorCore.mGetEntity(e.entityID)\nlocal ps = ent and ent.pos\nlocal tb = (sp == 38377) and m.ver or m.bat\nif tb[e.entityID] == nil then m.la = Now() end\nlocal v = (ps and {x = ps.x, z = ps.z}) or false\nif sp == 38377 then m.ver[e.entityID] = v or m.ver[e.entityID] or false\nelse m.bat[e.entityID] = v or m.bat[e.entityID] or false end\n",
							name = "[Draw] M4S - Bewitching Flight capture beams",
							uuid = "0f0a619e-386c-ddaf-b427-aa9c676d977c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 38.2,
				name = "[Draw] M4S - Bewitching Flight capture beams",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 4,
				timerStartOffset = -14,
				uuid = "46fa5580-dfcc-5762-bb5a-b1359c11e274",
				version = 2,
			},
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
							actionLua = "-- M4S Bewitching Flight resolved (vertical 38377 / Electray 38379 landed): stop drawing.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38377 and sp ~= 38379 then return end\nlocal m = data.m4_bf\nif m and m.t and Now() - m.t < 20000 then m.done = m.done or Now() end\n",
							name = "[Draw] M4S - Bewitching Flight resolved",
							uuid = "cc0a4281-8744-ebd7-ad93-6a920cea3fc4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 38.2,
				name = "[Draw] M4S - Bewitching Flight resolved",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 6,
				timerStartOffset = -14,
				uuid = "719c2c65-3f06-3582-aa87-bc86aa0ed7d0",
				version = 2,
			},
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
							actionLua = "local m=data.m4_bf\nif not m or m.done or not m.cannonDue then return end\nlocal now=Now();local d=TensorCore.getCachedDrawer(0x443333FF,0x443333FF,0xFF9999FF,0xFF000000,2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nfor id,due in pairs(m.cannonDue) do\n local q=m.bat[id]\n if q and now<due then d:addRect(q.x,0.04,q.z,40,5,math.pi/2,false,flags) end\nend",
							name = "[Draw] M4S - Early side cannon lanes",
							uuid = "3ea2e7e5-7249-78fb-8b97-627788aa6966",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 38.2,
				name = "[Draw] M4S - Early side cannon lanes",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 6,
				timerStartOffset = -10,
				uuid = "5e8957d3-4a47-6d33-bb0c-b51e3a98d2ad",
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
				name = "Role Draws",
				uuid = "e853935f-4586-840f-8a5d-3898d4617b43",
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
							actionLua = "-- M4S Electrifying Witch Hunt capture (cast starts). 38378 = Burst line (Helper, N-S rect 40 x 16): the 1st set goes\n-- with the 1st spreads (38373 Electrifying Witch Hunt), the 2nd set with the near/far bait (38366 Witch Hunt).\n-- 38373/38366 = boss casts: store the boss id (its Marker status 2970 says near/far).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38378 and sp ~= 38373 and sp ~= 38366 then return end\nlocal now = Now()\nlocal m = data.m4_ewh\nif not m or not m.t or now - m.t > 30000 then\n  m = {t = now, sets = {}}\n  data.m4_ewh = m\nend\nm.t = now\nif sp ~= 38378 then\n  if e.entityID then m.boss = e.entityID end\n  return\nend\nlocal ent = e.entityID and TensorCore.mGetEntity(e.entityID)\nlocal ps = ent and ent.pos\nif not (ps and ps.x) then return end\nlocal wave = m.hit1 and 2 or 1\nlocal cur = m.sets[wave]\nif not cur or now - cur.t > 3000 then\n  -- a set started after the first spreads landed is the second set\n  local n = m.hit1 and 2 or 1\n  if n == 1 and #m.sets >= 1 then m.sets = {} end\n  cur = {t = now, xs = {}}\n  m.sets[n] = cur\nend\ncur.xs[#cur.xs + 1] = ps.x\n",
							name = "[Draw] M4S - Electrifying Witch Hunt capture casts",
							uuid = "03518351-8821-5a46-9352-9d036e2ccca4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 49.6,
				name = "[Draw] M4S - Electrifying Witch Hunt capture casts",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 16,
				timerStartOffset = -16,
				uuid = "5c5fc37a-c90a-6580-a326-a211c8521972",
				version = 2,
			},
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
							actionLua = "-- M4S Electrifying Witch Hunt capture (hits). 38374 = first spreads landed (targets get Forked Lightning 587),\n-- 38367 = near/far baits landed (mechanic over).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38374 and sp ~= 38367 then return end\nlocal m = data.m4_ewh\nif not m or not m.t or Now() - m.t > 30000 then return end\nm.t = Now()\nif sp == 38374 then\n  m.hit1 = m.hit1 or {t = Now()}\n  m.firstTargets=m.firstTargets or {}\n  for _,id in ipairs(e.hitTargets or {}) do m.firstTargets[id]=true end\nelse\n  m.done2 = m.done2 or Now()\nend\n",
							conditions = 
							{
								
								{
									"d81d4c63-4c6f-b4db-b1c8-126651458845",
									true,
								},
							},
							name = "[Draw] M4S - Electrifying Witch Hunt capture hits",
							uuid = "d4cfb7fc-c9be-ed45-aefc-69d677731c44",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 38374 or eventArgs.spellID == 38367",
							dequeueIfLuaFalse = true,
							name = "Relevant mechanic event",
							uuid = "d81d4c63-4c6f-b4db-b1c8-126651458845",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 49.6,
				name = "[Draw] M4S - Electrifying Witch Hunt capture hits",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 16,
				timerStartOffset = -16,
				uuid = "aecf0c78-1c08-69ea-a07b-af1770d0d7f8",
				version = 2,
			},
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
							actionLua = "-- M4S Electrifying Witch Hunt, 1st spreads: rows R, T, M, H north to south; G1 west, G2 east, in the safe lane(s).\nlocal Ro = AnyoneCore and AnyoneCore.Roster\nif not (Ro and Ro.current() and Ro.isReady()) then return end\nlocal slot = Ro.mySlot()\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- Burst lines (38378) are N-S rects 16 wide. Side lines (|x-100| > 10) => center lane safe (\"in\");\n-- a center line => both side lanes safe (\"out\"). Returns the west (G1) and east (G2) x to stand on.\nlocal function lanes(set)\n  if not (set and set.xs and #set.xs > 0) then return nil end\n  local side, mid = false, false\n  local L, R = 80, 120\n  local cmin, cmax = 999, -999\n  for _, x in ipairs(set.xs) do\n    if math.abs(x - 100) > 10 then\n      side = true\n      if x < 100 then L = math.max(L, x + 8) else R = math.min(R, x - 8) end\n    else\n      mid = true\n      cmin = math.min(cmin, x); cmax = math.max(cmax, x)\n    end\n  end\n  if side and not mid then\n    if R - L < 10 then return nil end\n    return L + 2.5, R - 2.5, \"in\"\n  elseif mid and not side then\n    local wl, er = cmin - 8, cmax + 8\n    if wl - 80 < 4 or 120 - er < 4 then return nil end\n    return (80 + wl) / 2, (er + 120) / 2, \"out\"\n  end\n  return nil\nend\nlocal m = data.m4_ewh\nif not (m and m.t and Now() - m.t < 20000) then return end\nif m.hit1 then return end\nlocal set = m.sets and m.sets[1]\nif not (set and Now() - set.t < 12000) then return end\nlocal wx, ex = lanes(set)\nif not wx then return end\nlocal ROW = {R1 = 83, R2 = 83, T1 = 93, T2 = 93, M1 = 104, M2 = 104, H1 = 115, H2 = 115}\nlocal z = ROW[slot]\nif not z then return end\nlocal g1 = (slot == \"T1\" or slot == \"H1\" or slot == \"M1\" or slot == \"R1\")\ngo(g1 and wx or ex, z)\n",
							name = "[Draw] M4S - Electrifying Witch Hunt first spreads",
							uuid = "6640b844-8210-29e8-8918-7354c1072c6c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 49.6,
				name = "[Draw] M4S - Electrifying Witch Hunt first spreads",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 2,
				timerStartOffset = -8,
				uuid = "8056f6f6-8bfe-a709-bad4-e15c2339e431",
				version = 2,
			},
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
							actionLua = "local e=eventArgs;local b=TensorCore.mGetEntity(e.entityID)\nif not b or not b.pos or (b.pos.x==0 and b.pos.z==0) then return end\nlocal w=data.m4_spreadCannons\nif not w or Now()-w.t>10000 then w={t=Now(),lanes={}};data.m4_spreadCannons=w end\nif not w.lanes[e.entityID] then w.lanes[e.entityID]={x=b.pos.x,y=b.pos.y,z=b.pos.z,h=b.pos.h,due=Now()+6800} end\nself.used=true",
							conditions = 
							{
								
								{
									"5f0b646b-d4a9-8d86-b2bc-503361bd52fb",
									true,
								},
							},
							name = "[Capture] M4S - First spread cannon wave",
							uuid = "5e5bab60-b1e4-1018-b238-37c4bba60483",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID==13059",
							dequeueIfLuaFalse = true,
							name = "Relevant event",
							uuid = "5f0b646b-d4a9-8d86-b2bc-503361bd52fb",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 5,
				loop = true,
				mechanicTime = 49.6,
				name = "[Capture] M4S - First spread cannon wave",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 2,
				timerStartOffset = -10,
				uuid = "25613b69-c17a-0bce-bdd1-e16f59a5e174",
				version = 2,
			},
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
							actionLua = "local w=data.m4_spreadCannons;if not w then return end\nlocal d=TensorCore.getCachedDrawer(0x443333FF,0x443333FF,0xFF9999FF,0xFF000000,2)\nfor _,q in pairs(w.lanes) do if Now()<q.due then d:addRect(q.x,q.y+0.04,q.z,40,5,q.h,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end end",
							name = "[Draw] M4S - First spread cannon previews",
							uuid = "6a0c3daa-5114-fefa-a7eb-98bf429b62e1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 49.6,
				name = "[Draw] M4S - First spread cannon previews",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 2,
				timerStartOffset = -10,
				uuid = "27b72db7-c182-f830-98ab-46e6e170c431",
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
				name = "Role Draws",
				uuid = "be262c6b-45fb-269b-b83b-01c6e4ec33e2",
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
							actionLua = "-- M4S Electrifying Witch Hunt, 2nd spreads (near/far bait). Boss Marker 2970: extra 0x2F6 = near, 0x2F7 = far.\n-- Hit by the 1st spreads (Forked Lightning 587) => don't bait. Quadrants: NW T1/R1, SW H1/M1, NE T2/R2, SE H2/M2;\n-- inside the quadrant: close spot (z 94/106) or far corner spot (z 83/117), in the safe lane of the 2nd Burst set.\nlocal Ro = AnyoneCore and AnyoneCore.Roster\nif not (Ro and Ro.current() and Ro.isReady()) then return end\nlocal slot = Ro.mySlot()\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- Burst lines (38378) are N-S rects 16 wide. Side lines (|x-100| > 10) => center lane safe (\"in\");\n-- a center line => both side lanes safe (\"out\"). Returns the west (G1) and east (G2) x to stand on.\nlocal function lanes(set)\n  if not (set and set.xs and #set.xs > 0) then return nil end\n  local side, mid = false, false\n  local L, R = 80, 120\n  local cmin, cmax = 999, -999\n  for _, x in ipairs(set.xs) do\n    if math.abs(x - 100) > 10 then\n      side = true\n      if x < 100 then L = math.max(L, x + 8) else R = math.min(R, x - 8) end\n    else\n      mid = true\n      cmin = math.min(cmin, x); cmax = math.max(cmax, x)\n    end\n  end\n  if side and not mid then\n    if R - L < 10 then return nil end\n    return L + 2.5, R - 2.5, \"in\"\n  elseif mid and not side then\n    local wl, er = cmin - 8, cmax + 8\n    if wl - 80 < 0.8 or 120 - er < 0.8 then return nil end\n    return (80 + wl) / 2, (er + 120) / 2, \"out\"\n  end\n  return nil\nend\nlocal m = data.m4_ewh\nif not (m and m.t and Now() - m.t < 20000) then return end\nif m.done2 or not m.hit1 then return end\nlocal set = m.sets and m.sets[2]\nif not (set and Now() - set.t < 12000) then return end\nlocal wx, ex = lanes(set)\nif not wx then return end\n-- near/far marker (cached once read)\nlocal function kind(ent)\n  local b = ent and TensorCore.getBuff(ent, 2970)\n  local s = b and b.stacks\n  if not s then return nil end\n  if s == 0x2F6 or s % 256 == 0xF6 then return \"near\" end\n  if s == 0x2F7 or s % 256 == 0xF7 then return \"far\" end\n  return nil\nend\nif not m.bait then\n  if m.boss then m.bait = kind(TensorCore.mGetEntity(m.boss)) end\n  if not m.bait and (not m.scan or Now() - m.scan > 250) then\n    m.scan = Now()\n    local list = TensorCore.getEntityGroupList(\"ContentID\", 13057)\n    if type(list) == \"table\" then\n      for _, r in pairs(list) do\n        local ent = r\n        if type(r) == \"number\" then ent = TensorCore.mGetEntity(r) end\n        if type(ent) == \"table\" then\n          local k = kind(ent)\n          if k then m.bait = k; break end\n        end\n      end\n    end\n  end\nend\nif not m.bait then return end\n-- my Forked Lightning: present => hit; absent 1s after the first hits landed => not hit.\n-- Cached once known: the debuff is consumed by the Forked Lightning hit (38375), which lands with or just before the baits.\nif m.fk == nil then\n  if (m.firstTargets and m.firstTargets[p.id]) or TensorCore.getBuff(p, 587) then m.fk = true\n  elseif Now() - m.hit1.t >= 1000 then m.fk = false\n  else return end\nend\nlocal forked = m.fk\nlocal far = (m.bait == \"near\") == forked\nlocal north = (slot == \"T1\" or slot == \"T2\" or slot == \"R1\" or slot == \"R2\")\nlocal west = (slot == \"T1\" or slot == \"H1\" or slot == \"M1\" or slot == \"R1\")\nif not (north or slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\") then return end\nlocal z\nif north then z = far and 83 or 94 else z = far and 117 or 106 end\ngo(west and wx or ex, z)\nif not m.closeFarCalled then\n m.closeFarCalled=true\n AnyoneCore.Shotcall(far and 'Move farther from boss' or 'Move close to boss',true,5,false)\nend\n",
							name = "[Draw] M4S - Witch Hunt near/far second spreads",
							uuid = "212685ad-9203-eda9-9b6d-87bad1ffff9a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 57.6,
				name = "[Draw] M4S - Witch Hunt near/far second spreads",
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 2.5,
				timerStartOffset = -7,
				uuid = "eb2092f9-a8e3-9c64-ab14-76733524d1be",
				version = 2,
			},
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
							actionLua = "local m=data.m4_ewh\nif not m or not m.hit1 or m.done2 or not m.boss or Now()-m.t>20000 then return end\nlocal b=TensorCore.mGetEntity(m.boss);if not b or not b.pos then return end\nlocal kind=m.bait\nif not kind then local buff=TensorCore.getBuff(b,2970);local v=buff and buff.stacks and buff.stacks%256\n if v==0xF6 then kind='near' elseif v==0xF7 then kind='far' else return end\nend\nlocal now=Now();local cache=m.targetPreview\nif not cache or now-cache.t>=100 or cache.kind~=kind then\n local list={}\n for _,v in pairs(TensorCore.getEntityGroupList('Party') or {}) do\n  local e=type(v)=='number' and TensorCore.mGetEntity(v) or v\n  if e and e.pos and e.hp.current>0 then list[#list+1]={id=e.id,r=(e.pos.x-b.pos.x)^2+(e.pos.z-b.pos.z)^2} end\n end\n table.sort(list,function(a,c) if a.r==c.r then return a.id<c.id end;if kind=='near' then return a.r<c.r else return a.r>c.r end end)\n cache={t=now,kind=kind,ids={}};for i=1,math.min(4,#list) do cache.ids[i]=list[i].id end;m.targetPreview=cache\nend\nlocal yellow=TensorCore.getCachedDrawer(0x22AADDFF,0x22AADDFF,0xFF88CCFF,0xFF000000,2)\nlocal red=TensorCore.getCachedDrawer(0x443333FF,0x443333FF,0xFF3333FF,0xFF000000,2.5)\nfor _,id in ipairs(cache.ids) do\n local e=TensorCore.mGetEntity(id)\n if e and e.pos and e.hp.current>0 then\n  local bad=(m.firstTargets and m.firstTargets[id]) or TensorCore.hasBuff(e,587)\n  local d=bad and red or yellow\n  d:addCircle(e.pos.x,e.pos.y+0.05,e.pos.z,6,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n end\nend",
							name = "Live four nearest/farthest targets",
							uuid = "fd2e27bf-2333-f48d-8aa2-9caf2d8844e6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 57.6,
				name = "[Draw] M4S - Regular Witch Hunt live four baiters",
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 2.5,
				timerStartOffset = -7,
				uuid = "41a3ddac-2581-d304-a591-e43a37f84d63",
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
				name = "Role Draws",
				uuid = "e28d73ea-65a7-c847-933f-7eaea1e0b221",
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
							actionLua = "-- Narrowing/Widening Witch Hunt cast start (BossP1, 14+1s cast).\n-- 38368 Widening (95E0) = Out In Out In, 38369 Narrowing (95E1) = In Out In Out.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38368 and sp ~= 38369 then return end\nlocal cx, cz = 100, 100\nlocal b = e.entityID and TensorCore.mGetEntity(e.entityID)\nif b and b.pos and math.abs(b.pos.x - 100) < 6 and math.abs(b.pos.z - 100) < 6 then cx, cz = b.pos.x, b.pos.z end\ndata.m4_nwh = {t = Now(), firstOut = (sp == 38368), boss = e.entityID, cx = cx, cz = cz, hits = 0, lastHit = 0}\n",
							conditions = 
							{
								
								{
									"32eb7caa-4aaa-9b41-9512-d6982b12756e",
									true,
								},
							},
							name = "[Draw] M4S - Narrowing/Widening Witch Hunt capture cast",
							uuid = "3a21b054-3e50-3bec-8ec1-1afe34281ef0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 38368 or eventArgs.spellID == 38369",
							dequeueIfLuaFalse = true,
							name = "Relevant mechanic event",
							uuid = "32eb7caa-4aaa-9b41-9512-d6982b12756e",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 74.7,
				name = "[Draw] M4S - Narrowing/Widening Witch Hunt capture cast",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = 6,
				timerStartOffset = -20,
				uuid = "ef586576-6720-8ea0-b5e1-d864800e4eeb",
				version = 2,
			},
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
							actionLua = "-- Narrowing/Widening Witch Hunt: count the 4 in/out hits.\n-- 19729 LightningVortexAOE = range 10 circle (OUT safe), 19730 ThunderingAOE = 10-60 donut (IN safe).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 19729 and sp ~= 19730 and sp ~= 38372 then return end\nlocal m = data.m4_nwh\nif not (m and m.t) then return end\nlocal now = Now()\nif sp==38372 then\n if not m.lastBait or now-m.lastBait>1000 then m.baitWaves=(m.baitWaves or 0)+1;m.lastBait=now end\n return\nend\nif now - m.t > 40000 or (m.hits or 0) >= 4 then return end\nif now - (m.lastHit or 0) < 1500 then return end\nm.lastHit = now\nm.hits = (m.hits or 0) + 1\n-- the hit itself tells which pattern this step was; trust it over the cast id if they ever disagree\nlocal wasOut = (sp == 19729)\nlocal oddStep = (m.hits % 2 == 1)\nif oddStep then m.firstOut = wasOut else m.firstOut = not wasOut end\n",
							conditions = 
							{
								
								{
									"c7ff92b4-7287-a1b5-8ddd-af272ef907bf",
									true,
								},
							},
							name = "[Draw] M4S - Narrowing/Widening Witch Hunt capture in/out hits",
							uuid = "5fcf142b-1bdd-407d-b54c-f49a17270a72",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 19729 or eventArgs.spellID == 19730 or eventArgs.spellID == 38372",
							dequeueIfLuaFalse = true,
							name = "Relevant mechanic event",
							uuid = "c7ff92b4-7287-a1b5-8ddd-af272ef907bf",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 74.7,
				name = "[Draw] M4S - Narrowing/Widening Witch Hunt capture in/out hits",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = 18,
				timerStartOffset = -20,
				uuid = "43c65fa3-b58b-d461-ad51-3beb29e269cb",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nif not (Ro and Ro.current() and Ro.isReady()) then return end\nlocal slot = Ro.mySlot()\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- Narrowing/Widening Witch Hunt: modified clocks, 4 steps of in/out + 2 baits each.\n-- Bait near/far comes from status 2970 (Marker) on the boss: extra 0x2F6 = near, 0x2F7 = far, then alternates per step.\n-- Steps 1-2 supports bait (near = tanks, far = healers), steps 3-4 DPS (near = melee, far = ranged).\nlocal m = data.m4_nwh\nif not (m and m.t) then return end\nlocal now = Now()\nlocal el = now - m.t\nif el < 0 or el > 40000 then return end\nlocal hits = m.hits or 0\nif hits >= 4 then return end\nif hits == 0 and el > 24000 then return end\nif hits > 0 and now - (m.lastHit or 0) > 6000 then return end\nif m.firstNear == nil then\n  if el > 6000 then return end\n  local function rd(ent)\n    if not ent then return nil end\n    local bf = TensorCore.getBuff(ent, 2970)\n    if not (bf and bf.stacks) then return nil end\n    local s = bf.stacks % 256\n    if s == 0xF6 then return true elseif s == 0xF7 then return false end\n    return nil\n  end\n  local v = m.boss and rd(TensorCore.mGetEntity(m.boss))\n  if v == nil then\n    local l = TensorCore.entityList(\"contentid=13057\")\n    if l then\n      for _, en in pairs(l) do\n        v = rd(en)\n        if v ~= nil then break end\n      end\n    end\n  end\n  if v == nil then return end\n  m.firstNear = v\nend\nlocal step = hits + 1\nlocal odd = (step % 2 == 1)\nlocal isOut = (odd and m.firstOut) or ((not odd) and not m.firstOut)\nlocal near = (odd and m.firstNear) or ((not odd) and not m.firstNear)\nlocal s = 0.7071\nlocal DIR = {T1 = {0, -1}, T2 = {0, 1}, M1 = {-1, 0}, M2 = {1, 0}, H1 = {-s, s}, H2 = {s, s}, R1 = {-s, -s}, R2 = {s, -s}}\nlocal dv = DIR[slot]\nif not dv then return end\nlocal role = slot:sub(1, 1)\nlocal baitRole\nif step <= 2 then baitRole = near and \"T\" or \"H\" else baitRole = near and \"M\" or \"R\" end\nlocal amBait = (role == baitRole)\n-- radii from the boss: In = safe inside 10, Out = safe outside 10; bait AoE is a 6y circle on the baiter\nlocal rClose, rFar\n-- In: near baiters at 4 so the two tanks/melee (opposite sides) are 8y apart, outside each other's 6y bait; far ring 9 stays inside the 10y donut hole\nif isOut then rClose, rFar = 10.7, 18 else rClose, rFar = 4, 9.5 end\nlocal r\nif near then\n r = amBait and rClose or (isOut and 12.7 or 9.5)\nelse\n r = amBait and rFar or (isOut and 10.7 or 7.5)\nend\ngo((m.cx or 100) + dv[1] * r, (m.cz or 100) + dv[2] * r)\n",
							name = "[Draw] M4S - Narrowing/Widening Witch Hunt in/out + bait spot",
							uuid = "2a4cbddf-dd4e-ba8c-8d3a-76b2834d6d24",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 74.7,
				name = "[Draw] M4S - Narrowing/Widening Witch Hunt in/out + bait spot",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = 16,
				timerStartOffset = -20,
				uuid = "537673e3-53fd-7314-9241-12bfbeebafaf",
				version = 2,
			},
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
							actionLua = "local m=data.m4_nwh\nif not m or not m.t then return end\nlocal now=Now();local elapsed=now-m.t\nif elapsed<0 or elapsed>40000 then return end\nlocal hits=m.hits or 0;local waves=m.baitWaves or 0\nif hits>=4 and waves>=4 then return end\nif hits==0 and elapsed>24000 then return end\nif hits>0 and now-(m.lastHit or 0)>6000 then return end\nlocal b=m.boss and TensorCore.mGetEntity(m.boss)\nif not b or not b.pos then return end\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal danger=TensorCore.getCachedDrawer(0x1A3333FF,0x1A3333FF,0xCC7777FF,0xFF000000,1.5)\nif hits<4 then\n local out=(hits%2==0 and m.firstOut) or (hits%2==1 and not m.firstOut)\n if out then danger:addCircle(b.pos.x,b.pos.y+0.03,b.pos.z,10,false,flags)\n else danger:addDonut(b.pos.x,b.pos.y+0.03,b.pos.z,10,60,false,flags) end\nend\nif waves>=4 then return end\nif m.firstNear==nil then\n local bf=TensorCore.getBuff(b,2970)\n local v=bf and bf.stacks and bf.stacks%256\n if v==0xF6 then m.firstNear=true elseif v==0xF7 then m.firstNear=false else return end\nend\nlocal near=(waves%2==0 and m.firstNear) or (waves%2==1 and not m.firstNear)\nlocal cache=m.baitPreview\nif not cache or now-cache.t>=100 or cache.wave~=waves then\n local players={}\n for _,value in pairs(TensorCore.getEntityGroupList('Party') or {}) do\n  local e=type(value)=='number' and TensorCore.mGetEntity(value) or value\n  if e and e.pos and e.hp.current>0 then\n   players[#players+1]={id=e.id,r=(e.pos.x-b.pos.x)^2+(e.pos.z-b.pos.z)^2}\n  end\n end\n table.sort(players,function(a,c) if a.r==c.r then return a.id<c.id end;if near then return a.r<c.r else return a.r>c.r end end)\n cache={t=now,wave=waves,ids={}}\n for i=1,math.min(2,#players) do cache.ids[i]=players[i].id end\n m.baitPreview=cache\nend\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal ready=R and R.current() and R.isReady()\nlocal role=waves<2 and (near and 'T' or 'H') or (near and 'M' or 'R')\nlocal a,c=ready and R.idOf(role..'1'),ready and R.idOf(role..'2')\nlocal correct=TensorCore.getCachedDrawer(0x22AADDFF,0x22AADDFF,0xFF88CCFF,0xFF000000,2)\nlocal wrong=TensorCore.getCachedDrawer(0x443333FF,0x443333FF,0xFF3333FF,0xFF000000,2.5)\nfor _,id in ipairs(cache.ids) do\n local e=TensorCore.mGetEntity(id)\n if e and e.pos and e.hp.current>0 then\n  local d=(ready and id~=a and id~=c) and wrong or correct\n  d:addCircle(e.pos.x,e.pos.y+0.05,e.pos.z,6,false,flags)\n end\nend",
							name = "Live two baiters and next unsafe area",
							uuid = "5982a89d-a1b4-e4d2-8f75-13590330ccbe",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 74.7,
				name = "[Draw] M4S - Witch Hunt live bait targets and in/out",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = 16,
				timerStartOffset = -20,
				uuid = "a77fef75-dd6d-63bd-be02-663bd5728e1e",
				version = 2,
			},
		},
	},
	[16] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "1294a366-82e1-d581-9421-70a9e426fd0d",
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
							actionLua = "-- M4S EE1 capture: Witchgleam rays (38343) counted per Electromine (ContentID 17325) as a backup to the\n-- spark casts; Four Star (38352) / Eight Star (38353) mark the mechanic done\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38343 and sp ~= 38352 and sp ~= 38353 then return end\nlocal now = Now()\nlocal m = data.m4_ee1\nif not m or now - (m.t0 or 0) > 60000 then\n  if sp ~= 38343 then return end\n  m = {t0 = now, mines = {}}; data.m4_ee1 = m\nend\nif sp ~= 38343 then m.done = m.done or now; return end\nlocal ht = e.hitTargets\nif type(ht) ~= \"table\" then return end\nfor _, id in ipairs(ht) do\n  local ent = TensorCore.mGetEntity(id)\n  if ent and ent.contentid == 13060 and ent.pos then\n    local mi = m.mines[id]\n    if not mi then mi = {x = ent.pos.x, z = ent.pos.z, n = 0}; m.mines[id] = mi end\n    if not mi.spark then mi.n = mi.n + 1 end\n  end\nend\n",
							name = "[Draw] M4S - EE1 capture (Witchgleam hits + stars)",
							uuid = "6f5f6cbb-4113-045a-97c5-df06d6869693",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 109.7,
				name = "[Draw] M4S - EE1 capture (Witchgleam hits + stars)",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 32,
				timerStartOffset = -6,
				uuid = "eca6c6dd-7566-3b44-90e0-53e92f69430f",
				version = 2,
			},
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
							actionLua = "-- M4S EE1 capture: Electromine sparks (38345 = mine hit once -> 10x10, 38346 = hit twice -> 30x30)\n-- and boss Sidewise Spark (38380 = east half cleaved, 38381 = west half cleaved)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38345 and sp ~= 38346 and sp ~= 38380 and sp ~= 38381 then return end\nlocal now = Now()\nlocal m = data.m4_ee1\nif not m or now - (m.t0 or 0) > 60000 then m = {t0 = now, mines = {}}; data.m4_ee1 = m end\nif sp == 38380 or sp == 38381 then\n  m.cleave = (sp == 38380) and 1 or -1\n  m.boss = e.entityID\n  m.tc = now\n  return\nend\nlocal ent = TensorCore.mGetEntity(e.entityID)\nlocal ps = ent and ent.pos\nif not ps then return end\nm.mines[e.entityID] = {x = ps.x, z = ps.z, n = (sp == 38345) and 1 or 2, spark = true, y=ps.y, h=ps.h, due=now+(e.channelTimeMax or 6.7)*1000}\n",
							conditions = 
							{
								
								{
									"462fbddf-8d4d-b9c7-aa81-c6d6a55df00b",
									true,
								},
							},
							name = "[Draw] M4S - EE1 capture (sparks + Sidewise Spark)",
							uuid = "90379866-f2ec-09ea-b500-a30d175617fc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 38345 or eventArgs.spellID == 38346 or eventArgs.spellID == 38380 or eventArgs.spellID == 38381",
							dequeueIfLuaFalse = true,
							name = "Relevant mechanic event",
							uuid = "462fbddf-8d4d-b9c7-aa81-c6d6a55df00b",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 109.7,
				name = "[Draw] M4S - EE1 capture (sparks + Sidewise Spark)",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 32,
				timerStartOffset = -6,
				uuid = "7ada94d7-564a-b4c1-b7a4-4d7a6fad0eb5",
				version = 2,
			},
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
							actionLua = "local m=data.m4_ee1\nif not m or not m.mines then return end\nlocal now=Now();local d=TensorCore.getCachedDrawer(0x443333FF,0x443333FF,0xFF9999FF,0xFF000000,2)\nfor _,v in pairs(m.mines) do\n if v.spark and v.due and now<v.due and v.h then\n  local n=v.n==1 and 10 or 30\n  d:addRect(v.x,v.y+0.04,v.z,n,n,v.h,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n end\nend",
							name = "[Draw] M4S - Electromine Spark previews",
							uuid = "e7b623fe-bc52-ed49-b2af-be8cd7f3e2b3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 109.7,
				name = "[Draw] M4S - Electromine Spark previews",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 32,
				timerStartOffset = -6,
				uuid = "4c0f0576-7874-9567-b8ce-c74dbff5b7ff",
				version = 2,
			},
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
							actionLua = "data.m4_mineCrossUntil=Now()+(eventArgs.channelTimeMax+4.6)*1000;self.used=true",
							conditions = 
							{
								
								{
									"a1417002-babe-8277-938f-b36e2bf59fd1",
									true,
								},
							},
							name = "[Capture] M4S - Early mine Witchgleam cross",
							uuid = "33494266-e992-fba9-b7c3-5284caef1244",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID==38342",
							dequeueIfLuaFalse = true,
							name = "Relevant event",
							uuid = "a1417002-babe-8277-938f-b36e2bf59fd1",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 109.7,
				name = "[Capture] M4S - Early mine Witchgleam cross",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 17,
				timerStartOffset = -6,
				uuid = "cdaae4bf-4b33-c566-8da2-3be3e41b83a8",
				version = 2,
			},
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
							actionLua = "if not data.m4_mineCrossUntil or Now()>data.m4_mineCrossUntil then return end\nlocal d=TensorCore.getCachedDrawer(0x223333FF,0x223333FF,0xAA9999FF,0xFF000000,1.5)\nfor i=0,3 do local h=math.pi/4+i*math.pi/2;d:addRect(100,0.04,100,60,5,h,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end",
							name = "[Draw] M4S - Early mine Witchgleam cross",
							uuid = "92eae45f-4650-db64-b107-893f3c0537c6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 109.7,
				name = "[Draw] M4S - Early mine Witchgleam cross",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 17,
				timerStartOffset = -6,
				uuid = "90265f3c-1686-47df-ba39-255f232b6e7d",
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
				name = "Role Draws",
				uuid = "4071ce04-f4a9-6f0e-8033-f3f57099b152",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- [Draw] M4S Electrope Edge 1: safe quadrant = the quadrant of a once-hit Electromine that the Sidewise Spark\n-- does not cleave; 8 orbs (boss Marker 2970 extra 0x2F1) = spread, 4 orbs (extra 0x2F0) = partners.\n-- Spots are written for a SW safe quadrant and rotated (so \"left facing the boss\" stays left).\nlocal m = data.m4_ee1\nif not (m and m.cleave and m.tc and m.mines) then return end\nlocal now = Now()\nif now - m.tc > 15000 then return end\nif m.done and now - m.done > 1500 then return end\nif not m.star and m.boss then\n  local b = TensorCore.mGetEntity(m.boss)\n  local bf = b and TensorCore.getBuff(b, 2970)\n  local s = bf and bf.stacks\n  if type(s) == \"number\" then\n    s = s % 256\n    if s == 0xF0 then m.star = \"pair\" elseif s == 0xF1 then m.star = \"spread\" end\n  end\nend\nif not m.star then return end\nlocal useSpark = false\nfor _, mi in pairs(m.mines) do if mi.spark then useSpark = true end end\nlocal q, nq = nil, 0\nfor _, mi in pairs(m.mines) do\n  if mi.n == 1 and (mi.spark or not useSpark) then\n    local sx = mi.x < 100 and -1 or 1\n    local sz = mi.z < 100 and -1 or 1\n    if sx ~= m.cleave and not (q and q.sx == sx and q.sz == sz) then q = {sx = sx, sz = sz}; nq = nq + 1 end\n  end\nend\nif nq ~= 1 then return end\nlocal k = (q.sx < 0 and q.sz > 0 and 0) or (q.sx < 0 and 1) or (q.sz < 0 and 2) or 3\nlocal SPREAD = {R1 = {81.5, 101.5}, M1 = {91, 101.5}, T1 = {98.5, 101.5}, H1 = {81.5, 108.5},\n  T2 = {91, 108.5}, M2 = {98.5, 108.5}, H2 = {91.5, 118.5}, R2 = {98.5, 118.5}}\nlocal PAIR = {H1 = {83, 104.5}, R1 = {83, 104.5}, T1 = {92.5, 102.5}, M1 = {92.5, 102.5},\n  T2 = {98.5, 108}, M2 = {98.5, 108}, H2 = {95, 117}, R2 = {95, 117}}\nlocal spot = ((m.star == \"pair\") and PAIR or SPREAD)[slot]\nif not spot then return end\nlocal dx, dz = spot[1] - 100, spot[2] - 100\nfor _ = 1, k do dx, dz = -dz, dx end\ngo(100 + dx, 100 + dz)\n",
							name = "[Draw] M4S - Electrope Edge 1 safe quadrant spot",
							uuid = "317776ae-17c7-4c43-8696-65bb39fa444c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 134.4,
				name = "[Draw] M4S - Electrope Edge 1 safe quadrant spot",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = 5,
				timerStartOffset = -12,
				uuid = "1f0f0b0e-84dc-f729-911f-cdec60886782",
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
				name = "Role Draws",
				uuid = "35d969fb-e9ae-f8e9-9b5d-9e68176815d0",
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
							actionLua = "-- M4S Electrope Edge 2 capture (cast starts):\n-- 38351 Lightning Cage cell AOE (Helper, 8x8 cell): store the cell index (BossMod grid: 5x5 cells of 8y,\n--   centers 84..116, index = zRow * 8 + xCol); casts more than 4s apart start a new wave.\n-- 38380 Sidewise Spark R (east half cleave -> west safe) / 38381 L (west cleave -> east safe), caster = boss.\n-- Long/short (Electrical Condenser 3999), measured in pull 5 (applied ~157.8s, short 22s / long 42s): at the Witchgleam\n--   channel (~160.4s) long ~39s / short ~19s -> threshold 30s; at the first line (~164.5s) long ~35s / short ~15s -> 25s.\n-- 38789 (Witchgleam channel, ~160s) starts a fresh EE2 run: all per-run state is reset here so a rewound replay or a\n--   second attempt within 70s cannot carry over wave numbers, hit counts or the Sidewise Spark capture.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38351 and sp ~= 38380 and sp ~= 38381 and sp ~= 38789 then return end\nlocal now = Now()\nlocal m = data.m4_ee2\nif not m or not m.t0 or now - m.t0 > 70000 then\n  m = {t0 = now, gleams = 0}\n  data.m4_ee2 = m\nend\nif sp == 38789 then\n  m.t0 = now\n  m.gleams = 0; m.cnt = nil; m.longs = nil; m.long = nil\n  m.lblWave = nil; m.lblLast = nil; m.lblShown = nil; m.lblNext = nil\n  m.wave = nil; m.nwave = 0; m.side = nil; m.starDone = nil; m.vfx = nil\n  local p=TensorCore.mGetPlayer();local b=p and TensorCore.getBuff(p,3999)\n  if b and b.duration and b.duration > 0 then m.long=b.duration>30 end\n  local ids={}\n  for _,ent in pairs(TensorCore.getEntityGroupList(\"Party\")) do ids[#ids+1]=ent.id end\n  m.proteans={boss=e.entityID,ids=ids,due=now+(e.channelTimeMax+1.2)*1000}\n  return\nend\nif sp == 38351 then\n  local ent = e.entityID and TensorCore.mGetEntity(e.entityID)\n  local ps = ent and ent.pos\n  if not ps then return end\n  local function ci(c)\n    if c < 88 then return 0 elseif c < 96 then return 1 elseif c < 104 then return 2 elseif c < 112 then return 3 end\n    return 4\n  end\n  if not m.wave or now - m.wave.t > 4000 then\n    m.nwave = (m.nwave or 0) + 1\n    m.wave = {t = now, n = m.nwave, cells = {}}\n  end\n  m.wave.cells[ci(ps.z) * 8 + ci(ps.x)] = true\nelse\n  m.side = {t = now, boss = e.entityID, westSafe = (sp == 38380)}\nend\n",
							conditions = 
							{
								
								{
									"32fc88e3-c0f8-6d43-9e19-f4c8637063e4",
									true,
								},
							},
							name = "[Draw] M4S - Electrope Edge 2 capture casts",
							uuid = "ab1b8e08-9be8-2979-9af0-bcc2bb2dccac",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 38351 or eventArgs.spellID == 38380 or eventArgs.spellID == 38381 or eventArgs.spellID == 38789",
							dequeueIfLuaFalse = true,
							name = "Relevant mechanic event",
							uuid = "32fc88e3-c0f8-6d43-9e19-f4c8637063e4",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 157,
				name = "[Draw] M4S - Electrope Edge 2 capture casts",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = 50,
				timerStartOffset = -5,
				uuid = "f5060d54-af32-7340-8502-6549788481c8",
				version = 2,
			},
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
							actionLua = "self.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38790 and sp ~= 38351 and sp ~= 38352 and sp ~= 38353 then return end\nlocal now = Now()\nlocal m = data.m4_ee2\nif not m or not m.t0 or now - m.t0 > 70000 then\n  m = {t0 = now, gleams = 0}\n  data.m4_ee2 = m\nend\nif sp == 38790 then\n  if m.proteans and (not m.proteans.last or now-m.proteans.last>700) then\n   m.proteans.wave=(m.proteans.wave or 0)+1;m.proteans.last=now\n   m.proteans.due=now+1600\n   if m.proteans.wave>=4 then m.proteans.done=true end\n  end\n  local me = TensorCore.mGetPlayer()\n  local members = {}\n  for _, member in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n    local ent = type(member) == \"number\" and TensorCore.mGetEntity(member) or member\n    if ent and ent.id then members[ent.id] = ent end\n  end\n  if me then members[me.id] = me end\n  m.longs = m.longs or {}\n  m.cnt = m.cnt or {}\n  for id, ent in pairs(members) do\n    if m.longs[id] == nil then\n      local buff = TensorCore.getBuff(ent, 3999)\n      if buff and buff.duration and buff.duration > 0 then\n        m.longs[id] = buff.duration > 25\n      end\n    end\n  end\n  local hits = e.hitTargets\n  if hits and hits[1] then\n    for i = 1, 8 do\n      local id = hits[i]\n      if not id then break end\n      if members[id] then m.cnt[id] = (m.cnt[id] or 0) + 1 end\n    end\n  elseif e.heading then\n    -- Some replay events omit the victim list. Use the resolving helper's 60 x 5 line.\n    local caster = TensorCore.mGetEntity(e.entityID)\n    if caster and caster.pos then\n      local sx, sz = math.sin(e.heading), math.cos(e.heading)\n      for id, ent in pairs(members) do\n        if ent.alive and ent.pos then\n          local dx, dz = ent.pos.x - caster.pos.x, ent.pos.z - caster.pos.z\n          local along = dx * sx + dz * sz\n          if along >= 0 and along <= 60 and math.abs(dx * sz - dz * sx) <= 2.5 then\n            m.cnt[id] = (m.cnt[id] or 0) + 1\n          end\n        end\n      end\n    end\n  end\n  if me then\n    m.gleams = m.cnt[me.id] or 0\n    if m.longs[me.id] ~= nil then m.long = m.longs[me.id] end\n  end\nelseif sp == 38351 then\n  if m.wave and not m.wave.done then m.wave.done = now end\nelse\n  m.starDone = now\nend\n",
							conditions = 
							{
								
								{
									"aabd87ff-2c65-57ee-8a4a-535fb5272d3d",
									true,
								},
							},
							name = "[Draw] M4S - Electrope Edge 2 capture hits",
							uuid = "72c7d375-2c04-40b1-8516-ba5915d48838",
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
							eventArgOptionType = 3,
							eventArgType = 2,
							name = "Mechanic IDs",
							spellIDList = 
							{
								38790,
								38351,
								38352,
								38353,
							},
							uuid = "aabd87ff-2c65-57ee-8a4a-535fb5272d3d",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 157,
				name = "[Draw] M4S - Electrope Edge 2 capture hits",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = 50,
				timerStartOffset = -5,
				uuid = "aa490aa5-7323-6249-adaa-504de45bfdca",
				version = 2,
			},
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
							actionLua = "-- M4S Electrope Edge 2: the boss active aura becomes 2107 (Four Star = partners, VFX m0888_stlp01) or 2108\n-- (Eight Star = spread, VFX m0888_stlp02) ~0.08s before the Sidewise Spark channel starts. OnAddEntityVFX is not\n-- delivered by Minion, so the aura change is used; confirmed in the logged EE2 pulls (aura 2107 -> Four Star, 2108 -> Eight Star).\nself.used = true\nlocal mech = eventArgs.newActiveAura1 == 2107 and \"pairs\" or \"spread\"\nlocal now = Now()\nlocal m = data.m4_ee2\nif not m or not m.t0 or now - m.t0 > 70000 then\n  m = {t0 = now, gleams = 0}\n  data.m4_ee2 = m\nend\nm.vfx = {t = now, mech = mech}\n",
							conditions = 
							{
								
								{
									"8d24e44e-858b-75a2-9de5-1d65a9341454",
									true,
								},
							},
							name = "Store Sidewise Spark variant",
							uuid = "3050ea81-8c64-73e0-8022-c13f451474bb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if eventArgs.entityContentID ~= 13057 then return false end\nlocal a = eventArgs.newActiveAura1\nreturn a == 2107 or a == 2108",
							dequeueIfLuaFalse = true,
							name = "Boss aura 2107/2108",
							uuid = "8d24e44e-858b-75a2-9de5-1d65a9341454",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 25,
				loop = true,
				mechanicTime = 157,
				name = "[Draw] M4S - Electrope Edge 2 capture Sidewise aura (pairs/spread)",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = 50,
				timerStartOffset = -5,
				uuid = "aaeeb48d-9f5f-2cf6-8fb8-aac5fd234baa",
				version = 2,
			},
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "630366b0-e863-9d59-8711-a23e4cf45563",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nif not (Ro and Ro.current() and Ro.isReady()) then return end\nlocal slot = Ro.mySlot()\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Electrope Edge 2 - Witchgleam protean clock spots (4 sets of baited lines, 164.2-168.7, rect 60 x 5 from the boss\n-- at each targeted player). Raidplan 7s4WkRBX1sZn1WFb steps 1-2: tanks N/S, healers W/E, R1 NW, R2 NE, melee SW/SE,\n-- ~6y from the boss. Assumed per role: MT N, OT S, H1 W, H2 E, M1 SW, M2 SE (\"1\" = west, as on the cheatsheet clock).\nlocal C = {T1 = {100, 94}, T2 = {100, 106}, H1 = {94, 100}, H2 = {106, 100}, R1 = {94, 94}, R2 = {106, 94},\n  M1 = {94, 106}, M2 = {106, 106}}\nlocal q = C[slot]\nif not q then return end\ngo(q[1], q[2])\n",
							name = "Clock spot",
							uuid = "08baa140-f1ca-0fef-903c-52d65cd9edc7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 164.2,
				name = "[Draw] M4S - Electrope Edge 2 Witchgleam clock spot",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 3.8,
				timerStartOffset = -19.2,
				uuid = "33df3e54-4a14-1e06-8c60-89358236ae97",
				version = 2,
			},
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
							actionLua = "local m=data.m4_ee2;local w=m and m.proteans\nif not w or w.done or Now()>w.due+400 then return end\nlocal b=TensorCore.mGetEntity(w.boss);if not b or not b.pos then return end\nlocal d=TensorCore.getCachedDrawer(0x223333FF,0x223333FF,0xAA9999FF,0xFF000000,1.5)\nfor _,id in ipairs(w.ids) do\n local p=TensorCore.mGetEntity(id)\n if p and p.pos and p.hp.current>0 then d:addRect(b.pos.x,b.pos.y+0.04,b.pos.z,60,5,TensorCore.getHeadingToTarget(b.pos,p.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end\nend",
							name = "[Draw] M4S - Witchgleam bait line previews",
							uuid = "4368e065-192c-94a6-9e56-8af59b38723d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 164.2,
				name = "[Draw] M4S - Witchgleam bait line previews",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 8,
				timerStartOffset = -5,
				uuid = "a217570a-f3f2-0855-b82f-10d7afd4e7b4",
				version = 2,
			},
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
							actionLua = "local m = data.m4_ee2\nif not (m and m.cnt) then return end\nlocal now = Now()\nlocal me = TensorCore.mGetPlayer()\nlocal wv = m.wave\nif wv and wv.n and wv.n >= 2 and wv.done then return end\nif m.starDone and now - m.starDone > 12000 then return end\nif m.lblNext and now < m.lblNext then return end\nm.lblNext = now + 400\nif not (AnyoneCore and AnyoneCore.addTimedWorldTextOnEnt) then return end\nfor id, c in pairs(m.cnt) do\n  if c > 0 and m.longs and m.longs[id] ~= nil and TensorCore.getBuff(id, 3999) then\n    local long = m.longs and m.longs[id]\n    local n = c + (long and 1 or 0)\n    local mine = me and me.id == id\n    AnyoneCore.addTimedWorldTextOnEnt(450, (long and \"Long \" or \"Short \") .. n, id, mine and 0xFF00FFFF or 0xFFFFFFFF, true, mine and 1.6 or 1.1, 2.0)\n  end\nend\n",
							name = "Show Short/Long N labels",
							uuid = "f737c557-e35a-0c63-934e-be1d71422ae0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				loop = true,
				mechanicTime = 164.2,
				name = "[Draw] M4S - Electrope Edge 2 Short/Long hit labels",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 40,
				timerStartOffset = -5,
				uuid = "b8cb90e2-5d48-1c6a-bef6-7b1f82dbd5ad",
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
				name = "Role Draws",
				uuid = "d57f656f-3fc2-0632-9cf7-f25c609edde3",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nif not (Ro and Ro.current() and Ro.isReady()) then return end\nlocal slot = Ro.mySlot()\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Electrope Edge 2 - Lightning Cage spot. Cage wave 1 (channel ~173s, lands ~180s) is the shorts' wave and wave 2\n-- (~193s, lands ~200s) the longs' wave (logged pulls). The wave number replaces the old \"debuff < 12s left\" check:\n-- the short debuff has already expired when wave 1 starts, so shorts were never \"mine\".\n-- Wave owners go to their count cell, everyone else waits on the safe cell (\"north\").\n-- Count = Witchgleam lines that hit you (+1 if long), from [Draw] M4S - Electrope Edge 2 capture hits.\n-- 2 -> BossMod \"two\" cells, 3 -> \"three\" cells.\n-- Supports take the cell on the LEFT and DPS the one on the RIGHT when facing the safe cell from the center\n-- (safe north: supports west, DPS east -> DPS 2 = NE, 3 = SE).\nlocal m = data.m4_ee2\nlocal w = m and m.wave\nlocal now = Now()\nif not (w and w.cells and not w.done and now - w.t < 9000) then return end\nlocal pat = w.pat\nif not pat then\n  -- match once per wave and cache on the wave (no per-frame table building after the match)\n  local P = {\n    {cells = {0, 1, 3, 4, 10, 18, 24, 26, 28, 33, 34, 35}, safe = 2, two = {8, 12}, three = {32, 36}},\n    {cells = {1, 4, 8, 12, 16, 17, 18, 19, 24, 28, 33, 36}, safe = 20, two = {3, 35}, three = {0, 32}},\n    {cells = {1, 2, 3, 8, 10, 12, 18, 26, 32, 33, 35, 36}, safe = 34, two = {24, 28}, three = {0, 4}},\n    {cells = {0, 3, 8, 12, 17, 18, 19, 20, 24, 28, 32, 35}, safe = 16, two = {1, 33}, three = {4, 36}},\n  }\n  for _, q in ipairs(P) do\n    local set = {}\n    for _, c in ipairs(q.cells) do set[c] = true end\n    local ok, n = true, 0\n    for c in pairs(w.cells) do\n      n = n + 1\n      if not set[c] then ok = false; break end\n    end\n    if ok and n == 12 then\n      if pat then return end -- ambiguous\n      pat = q\n    end\n  end\n  if not pat then\n    local opposite={[2]=34,[16]=20,[20]=16,[34]=2}\n    local safe,anchors=nil,0\n    for blocked,other in pairs(opposite) do\n      if w.cells[blocked] then anchors=anchors+1;safe=other end\n    end\n    if anchors==1 then for _,q in ipairs(P) do if q.safe==safe then pat=q;break end end end\n  end\n  if pat then w.pat = pat end\nend\nif not pat then return end\nlocal function cc(i) return 84 + 8 * (i % 8), 84 + 8 * math.floor(i / 8) end\nlocal sx, sz = cc(pat.safe)\nlocal long = m.long\nlocal mine = long ~= nil and ((w.n == 1 and not long) or (w.n == 2 and long))\nif not mine then go(sx, sz); return end\nlocal cnt = (m.gleams or 0) + (long and 1 or 0)\nlocal pair = (cnt == 2 and pat.two) or (cnt == 3 and pat.three)\nif not pair then return end\n-- Both cells are mechanically valid; the personal arrow retains the strategy's side assignment.\nlocal areas=TensorCore.getCachedDrawer(0x2233FF33,0x2233FF33,0xAA33FF33,0xFF000000,1.5)\nfor _,cell in ipairs(pair) do\n local x,z=cc(cell);areas:addCircle(x,0.03,z,3,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nlocal sup = slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\"\nlocal dps = slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"\nif not (sup or dps) then return end\nlocal fx, fz = sx - 100, sz - 100\nfor _, i in ipairs(pair) do\n  local x, z = cc(i)\n  local left = (x - 100) * fz - (z - 100) * fx > 0\n  if left == sup then go(x, z); return end\nend\n",
							name = "[Draw] M4S - Electrope Edge 2 Lightning Cage spot",
							uuid = "82791a25-9ad4-aca0-8359-7f8bfb98fb0e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 172.1,
				name = "[Draw] M4S - Electrope Edge 2 Lightning Cage spot",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 32,
				timerStartOffset = -4,
				uuid = "0e15cbc9-4290-8bed-bf72-3df465f78d5b",
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
				name = "Role Draws",
				uuid = "2c0da2da-adc1-6db4-8935-b5d285939c38",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nif not (Ro and Ro.current() and Ro.isReady()) then return end\nlocal slot = Ro.mySlot()\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Electrope Edge 2 - Sidewise Spark 2 + Four/Eight Star spot (half-room cleave from the boss at center).\n-- Strat: \"M4S CHEATSHEET P1 - Hector\" EE2 panels (wins for P1) + raidplan 7s4WkRBX1sZn1WFb steps 5/6.\n-- Variant: boss VFX m0888_stlp01 = partners (Four Star), m0888_stlp02 = spread (Eight Star), captured by\n--   [Draw] M4S - Electrope Edge 2 capture Sidewise VFX (same signal as the Splatoon layouts). The boss status 2970\n--   (param 0x2F0 partners / 0x2F1 spread) is only a fallback: it never appeared in the logged pulls.\n-- The boss always faces north: MT stays north of the boss, OT south, M1 under the boss, M2 max melee on the safe side.\n-- Spread (west safe, cheatsheet): R1 93.2,83.9 / H1 84.6,93.1 / MT 98.5,93.4 / M2 90.7,100.3 / M1 98.5,100.4\n--   / OT 98.5,109.8 / H2 84.4,113.8 / R2 93.9,117.8. Melee/tank x 98.5 = 1.5y inside the safe half (sheet ~99.6).\n-- Spread (east safe): tanks/melee = the west spots mirrored in x; healers/ranged from raidplan step 5 (its explicit\n--   east-safe example): R2 107.1,84.6 / H2 113.3,92.3 / H1 113.2,108.5 / R1 108,114.8 (H1/R1 stay on the side to your\n--   right when facing the safe half, as on the cheatsheet; a plain x-mirror would swap them with H2/R2).\n-- Partners: east safe = mirror x.\n-- Partners (one short + one long per pair, count = hits + 1 if long), per slot, west-safe coordinates (x = 100 - d):\n--   WTFDIG ee2-partners diagram (~1y accuracy) + raidplan step 5: tanks 3 hits N / 2 hits S, healers 3 hits N / 2 hits S,\n--   melee 2 hits under boss / 3 hits max melee safe side, ranged 2 hits under boss / 3 hits out on the safe side.\nlocal m = data.m4_ee2\nlocal s = m and m.side\nlocal now = Now()\nif not (s and s.boss and now - s.t < 8500) then return end\nif m.starDone and m.starDone >= s.t then return end\nlocal boss = TensorCore.mGetEntity(s.boss)\nif not boss then return end\nlocal mech = s.mech\nif not mech then\n  local v = m.vfx\n  if v and v.t >= s.t - 3000 and v.t <= s.t + 1000 then mech = v.mech; s.mech = mech end\nend\nif not mech then\n  local bf = TensorCore.getBuff(boss, 2970)\n  if bf and type(bf.stacks) == \"number\" then\n    local v = bf.stacks % 256\n    if v == 0xF0 then mech = \"pairs\" elseif v == 0xF1 then mech = \"spread\" end\n  end\n  if not mech then return end\n  s.mech = mech\nend\nlocal x, z\nif mech == \"spread\" then\n  local S = {R1 = {93.2, 83.9}, H1 = {84.6, 93.1}, T1 = {98.5, 93.4}, M2 = {90.7, 100.3}, M1 = {98.5, 100.4},\n    T2 = {98.5, 109.8}, H2 = {84.4, 113.8}, R2 = {93.9, 117.8}}\n  if not s.westSafe then\n    S = {T1 = {98.5, 93.4}, M1 = {98.5, 100.4}, T2 = {98.5, 109.8}, M2 = {90.7, 100.3},\n      R2 = {92.9, 84.6}, H2 = {86.7, 92.3}, H1 = {86.8, 108.5}, R1 = {92, 114.8}} -- x mirrored back below\n  end\n  local q = S[slot]\n  if not q then return end\n  x, z = q[1], q[2]\nelse\n  local long = m.long\n  if long == nil then return end\n  -- sanity: longs still hold the debuff here, shorts already popped\n  local b = TensorCore.getBuff(p, 3999)\n  if (b ~= nil) ~= long then return end\n  local cnt = (m.gleams or 0) + (long and 1 or 0)\n  if cnt ~= 2 and cnt ~= 3 then return end\n  local T = {[3] = {99, 91}, [2] = {99, 108}}\n  local H = {[3] = {96, 90}, [2] = {97, 110}}\n  local M = {[2] = {99, 100}, [3] = {91, 100}}\n  local R = {[2] = {99, 100}, [3] = {89, 100}}\n  local P = {T1 = T, T2 = T, H1 = H, H2 = H, M1 = M, M2 = M, R1 = R, R2 = R}\n  local q = P[slot] and P[slot][cnt]\n  if not q then return end\n  x, z = q[1], q[2]\nend\nif not s.westSafe then x = 200 - x end\ngo(x, z)\n",
							name = "[Draw] M4S - Electrope Edge 2 spread/partners spot",
							uuid = "9e2cfffe-bc22-cf25-8d89-0c2f0ed442c2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 189.2,
				name = "[Draw] M4S - Electrope Edge 2 spread/partners spot",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 3,
				timerStartOffset = -10,
				uuid = "80c8a1e1-8816-eff2-90f7-1379875adc56",
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
				name = "Role Draws",
				uuid = "cfc8a3aa-face-d735-a154-92cf473cc651",
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
							actionLua = "-- 38354 IonClusterVisualR (Right Roll, 95D2) -> east column x110-120 survives\n-- 38355 IonClusterVisualL (Left Roll, 95D3)  -> west column x80-90 survives\n-- 36399 Stampeding Thunder finish (helper on the destroyed 30-wide area): fallback\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nlocal sp = e and e.spellID\nif sp ~= 38354 and sp ~= 38355 and sp ~= 36399 then return end\ndata.m4_ion = data.m4_ion or {}\nlocal m = data.m4_ion\nlocal now = Now()\nif sp == 38354 then\n  m.roll = {t = now, x = 115, side = \"R\"}\nelseif sp == 38355 then\n  m.roll = {t = now, x = 85, side = \"L\"}\nelse\n  if m.roll and now - m.roll.t < 30000 then return end\n  local c = TensorCore.mGetEntity(e.entityID)\n  if c and c.pos then\n    if c.pos.x < 100 then m.roll = {t = now, x = 115, side = \"R\", fb = true}\n    else m.roll = {t = now, x = 85, side = \"L\", fb = true} end\n  end\nend\n",
							name = "[Capture] M4S - Ion Cluster column (roll)",
							uuid = "2ab66305-60a4-62de-b2fd-41a6767d43c9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 230,
				name = "[Capture] M4S - Ion Cluster column (roll)",
				timeRange = true,
				timelineIndex = 38,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "89e15d57-cebb-e00d-b4ac-8dc2298d0c07",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal m = data.m4_ion\nlocal r = m and m.roll\nlocal now = Now()\nif not r or now - r.t > 25000 or now < r.t then return end\nif m.es and now >= m.es.t and now - m.es.t < 20000 then return end\ngo(r.x, 100)\n",
							name = "[Draw] M4S - Stampeding Thunder safe column",
							uuid = "9c4daa01-9027-92a2-bf85-82017871cd33",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 230,
				name = "[Draw] M4S - Stampeding Thunder safe column",
				timeRange = true,
				timelineIndex = 38,
				timerEndOffset = 17,
				timerStartOffset = -1,
				uuid = "40653e8d-2362-5462-b46c-193300030d93",
				version = 2,
			},
		},
	},
	[42] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "40caff2f-fef6-d9c7-aca6-e899e3de3875",
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
							actionLua = "-- Electron Stream boss casts: 38358 (95D6) yellow/positron N, blue/negatron S\n--                             38359 (95D7) yellow S, blue N\n-- Positron 4000 = yellow debuff -> stand in blue; Negatron 4001 = blue -> stand in yellow\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nlocal sp = e and e.spellID\nif sp ~= 38358 and sp ~= 38359 then return end\ndata.m4_ion = data.m4_ion or {}\nlocal m = data.m4_ion\nlocal side = nil\nlocal p = TensorCore.mGetPlayer()\nif p then\n  if TensorCore.hasBuff(p, 4000) then side = (sp == 38358) and 1 or -1\n  elseif TensorCore.hasBuff(p, 4001) then side = (sp == 38358) and -1 or 1 end\nend\nm.es = {t = Now(), sp = sp, boss = e.entityID, side = side}\n",
							name = "[Capture] M4S - Electron Stream casts",
							uuid = "9b2ce42a-e434-81a1-982f-095fd73a0056",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 249.2,
				name = "[Capture] M4S - Electron Stream casts",
				timeRange = true,
				timelineIndex = 42,
				timerEndOffset = 40,
				timerStartOffset = -12,
				uuid = "c69eedae-4168-f50f-9189-4e1dca605212",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal m = data.m4_ion\nlocal es = m and m.es\nif not es then return end\nlocal el = Now() - es.t\nif el < 0 or el > 13000 then return end\nlocal b = es.boss and TensorCore.mGetEntity(es.boss)\nif not (b and b.pos) then return end\nlocal bx, bz = b.pos.x, b.pos.z\nlocal tank = (slot == \"T1\" or slot == \"T2\")\nlocal sup = tank or slot == \"H1\" or slot == \"H2\"\nif el < 6300 then\n  -- stream cast: stand in the opposite colour; tank in front, others behind the tank\n  local side = nil\n  if TensorCore.hasBuff(p, 4000) then side = (es.sp == 38358) and 1 or -1\n  elseif TensorCore.hasBuff(p, 4001) then side = (es.sp == 38358) and -1 or 1 end\n  if side then es.side = side else side = es.side end\n  if not side then return end\n  if tank then go(bx, bz + side * 2.5) else go(bx, bz + side * 5) end\n  return\nend\n-- after the stream: conductor/current debuffs (DN strat) on the side we stood on\nlocal s = es.side\nif not s then s = (p.pos.z >= bz) and 1 or -1 end\nif TensorCore.hasBuff(p, 4002) or TensorCore.hasBuff(p, 4003) then\n  go(bx, bz + s * 3)\nelseif TensorCore.hasBuff(p, 4004) or TensorCore.hasBuff(p, 4005) then\n  if sup then go(bx - s * 2.9, bz + s * 2.1) else go(bx + s * 2.9, bz + s * 2.1) end\nelseif TensorCore.hasBuff(p, 4006) then\n  go(bx, bz + s * 5)\nend\n",
							name = "[Draw] M4S - Electron Stream 1 + debuff spot",
							uuid = "3fc0c117-7a31-f47a-808b-84532669671f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 249.2,
				name = "[Draw] M4S - Electron Stream 1 + debuff spot",
				timeRange = true,
				timelineIndex = 42,
				timerEndOffset = 6.5,
				timerStartOffset = -9,
				uuid = "7694e334-e11a-3c37-9cde-1f977e79dfa2",
				version = 2,
			},
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
							actionLua = "-- Tank markers only while an Electron Stream is being cast (channel 5.7s + 0.6s grace, per the logged pulls the\n-- stream lands at +5.7s and the Axe/Spinning/Collider Current debuffs follow ~5-6s later). They hide during the\n-- debuff phase and re-appear when the next stream channel starts ([Capture] M4S - Electron Stream casts resets m.es).\nlocal m=data.m4_ion\nif not m or not m.es then return end\nlocal el=Now()-m.es.t\nif el<0 or el>6300 then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not (R and R.current() and R.isReady()) then return end\nlocal slot=R.mySlot();if not slot or slot=='T1' or slot=='T2' then return end\nlocal d=TensorCore.getCachedDrawer(0x44FFAA55,0x44FFAA55,0xFFFFAA55,0xFF000000,2)\nfor _,s in ipairs({'T1','T2'}) do\n local p=R.entOf(s)\n if p and p.pos and p.hp.current>0 then d:addCircle(p.pos.x,0.05,p.pos.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end\nend",
							name = "[Draw] M4S - Ion Cluster tank identifiers",
							uuid = "b5f6589e-ed8b-d961-b1b4-a4f4ecab7239",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 249.2,
				name = "[Draw] M4S - Ion Cluster tank identifiers",
				timeRange = true,
				timelineIndex = 42,
				timerEndOffset = 31.7,
				timerStartOffset = -4.2,
				uuid = "6a268348-b1ef-7814-b5d6-349e4c99e7d9",
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
				name = "Role Draws",
				uuid = "d624baaa-a89e-1ff3-94ba-72d50bb9ac9f",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal m = data.m4_ion\nlocal es = m and m.es\nif not es then return end\nlocal el = Now() - es.t\nif el < 0 or el > 13000 then return end\nlocal b = es.boss and TensorCore.mGetEntity(es.boss)\nif not (b and b.pos) then return end\nlocal bx, bz = b.pos.x, b.pos.z\nlocal tank = (slot == \"T1\" or slot == \"T2\")\nlocal sup = tank or slot == \"H1\" or slot == \"H2\"\nif el < 6300 then\n  -- stream cast: stand in the opposite colour; tank in front, others behind the tank\n  local side = nil\n  if TensorCore.hasBuff(p, 4000) then side = (es.sp == 38358) and 1 or -1\n  elseif TensorCore.hasBuff(p, 4001) then side = (es.sp == 38358) and -1 or 1 end\n  if side then es.side = side else side = es.side end\n  if not side then return end\n  if tank then go(bx, bz + side * 2.5) else go(bx, bz + side * 5) end\n  return\nend\n-- after the stream: conductor/current debuffs (DN strat) on the side we stood on\nlocal s = es.side\nif not s then s = (p.pos.z >= bz) and 1 or -1 end\nif TensorCore.hasBuff(p, 4002) or TensorCore.hasBuff(p, 4003) then\n  go(bx, bz + s * 3)\nelseif TensorCore.hasBuff(p, 4004) or TensorCore.hasBuff(p, 4005) then\n  if sup then go(bx - s * 2.9, bz + s * 2.1) else go(bx + s * 2.9, bz + s * 2.1) end\nelseif TensorCore.hasBuff(p, 4006) then\n  go(bx, bz + s * 5)\nend\n",
							name = "[Draw] M4S - Electron Stream 2 + debuff spot",
							uuid = "1498194d-6372-b5c0-a773-02f63c12df79",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 262.3,
				name = "[Draw] M4S - Electron Stream 2 + debuff spot",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 6.5,
				timerStartOffset = -6.5,
				uuid = "65af3274-405c-50f5-b2fe-a231b01d78d6",
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
				name = "Role Draws",
				uuid = "ea2f34c0-830b-d1b6-8778-2f489e5b50fc",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal m = data.m4_ion\nlocal es = m and m.es\nif not es then return end\nlocal el = Now() - es.t\nif el < 0 or el > 13000 then return end\nlocal b = es.boss and TensorCore.mGetEntity(es.boss)\nif not (b and b.pos) then return end\nlocal bx, bz = b.pos.x, b.pos.z\nlocal tank = (slot == \"T1\" or slot == \"T2\")\nlocal sup = tank or slot == \"H1\" or slot == \"H2\"\nif el < 6300 then\n  -- stream cast: stand in the opposite colour; tank in front, others behind the tank\n  local side = nil\n  if TensorCore.hasBuff(p, 4000) then side = (es.sp == 38358) and 1 or -1\n  elseif TensorCore.hasBuff(p, 4001) then side = (es.sp == 38358) and -1 or 1 end\n  if side then es.side = side else side = es.side end\n  if not side then return end\n  if tank then go(bx, bz + side * 2.5) else go(bx, bz + side * 5) end\n  return\nend\n-- after the stream: conductor/current debuffs (DN strat) on the side we stood on\nlocal s = es.side\nif not s then s = (p.pos.z >= bz) and 1 or -1 end\nif TensorCore.hasBuff(p, 4002) or TensorCore.hasBuff(p, 4003) then\n  go(bx, bz + s * 3)\nelseif TensorCore.hasBuff(p, 4004) or TensorCore.hasBuff(p, 4005) then\n  if sup then go(bx - s * 2.9, bz + s * 2.1) else go(bx + s * 2.9, bz + s * 2.1) end\nelseif TensorCore.hasBuff(p, 4006) then\n  go(bx, bz + s * 5)\nend\n",
							name = "[Draw] M4S - Electron Stream 3 + debuff spot",
							uuid = "a047f77a-a798-236e-be41-7aba4ed3b2bf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 275.3,
				name = "[Draw] M4S - Electron Stream 3 + debuff spot",
				timeRange = true,
				timelineIndex = 46,
				timerEndOffset = 8,
				timerStartOffset = -6.5,
				uuid = "961650f8-7945-848e-8b96-6143e9bb8646",
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
				name = "Role Draws",
				uuid = "149c0489-c45c-cac6-827f-a902b428e03f",
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
							actionLua = "-- M4S transition: Fulminous Field cone cast start (37118). The 8 cones sit at heading h + k*45deg;\n-- every 3s the next set is rotated 22.5deg. Resets this iteration's state.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not (e and e.spellID == 37118) then return end\nlocal ent = TensorCore.mGetEntity(e.entityID)\nlocal h = ent and ent.pos and ent.pos.h\nif not h then return end\nlocal m = data.m4_tr\nif m and m.sets == 0 and Now() - m.t < 2000 then return end\ndata.m4_trRound=(data.m4_trRound or 0)+1\ndata.m4_tr = {round=data.m4_trRound, dir = h, t = Now(), sets = 0, lastHit = 0, cp = {}, known = true, nextAt=Now()+eventArgs.channelTimeMax*1000}\n",
							conditions = 
							{
								
								{
									"5f196052-b7eb-f870-aee1-f08a8646d7df",
									true,
								},
							},
							name = "[Draw] M4S - Transition cones capture (cast start)",
							uuid = "7dfbdf33-a26c-12c4-a150-8d843ba59dc3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 37118",
							dequeueIfLuaFalse = true,
							name = "Transition event",
							uuid = "5f196052-b7eb-f870-aee1-f08a8646d7df",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 323.9,
				name = "[Draw] M4S - Transition cones capture (cast start)",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = 50,
				timerStartOffset = -12,
				uuid = "bb28c28f-531c-b05d-bad5-1cfd67bafedb",
				version = 2,
			},
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
							actionLua = "-- M4S transition: Fulminous Field hits (37118 first / 39117 rest) rotate the next cones by 22.5deg;\n-- Conduction Point (39118) marks the 4 players hit; Forked Fissures (39119) = wild charges resolved.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 37118 and sp ~= 39117 and sp ~= 39118 and sp ~= 39119 and sp ~= 39123 then return end\nlocal now = Now()\nlocal m = data.m4_tr\nif sp==39123 then\n data.m4_trRound=0\n data.m4_tr={t=now,sets=0,cp={},known=false,staging=true}\n return\nend\nif sp == 37118 or sp == 39117 then\n  if not m or now - m.t > 5000 then\n    m = {dir = 0, t = now, sets = 0, lastHit = 0, cp = {}}\n    data.m4_tr = m\n  end\n  local h = e.heading\n  if type(h) ~= \"number\" then\n    local ent = TensorCore.mGetEntity(e.entityID)\n    h = ent and ent.pos and ent.pos.h\n  end\n  if now - (m.lastHit or 0) > 1000 then\n    m.sets = (m.sets or 0) + 1\n    m.lastHit = now\n    if h then m.dir = h + math.pi / 8 else m.dir = (m.dir or 0) + math.pi / 8 end\n    m.known = (h ~= nil) or m.known\n  elseif h then\n    m.dir = h + math.pi / 8\n  end\n  m.t = now\n  m.nextAt=now+3000\n  return\nend\nif not m or now - m.t > 8000 then return end\nif sp == 39118 then\n  if not m.cpT or now - m.cpT > 2000 then m.cp = {} end\n  m.cpT = now\n  local hits = e.hitTargets\n  if type(hits) == \"table\" and #hits > 0 then\n    for _, id in ipairs(hits) do m.cp[id] = true end\n  elseif e.targetID then\n    m.cp[e.targetID] = true\n  end\nelse\n  m.fissT = now\nend\n",
							conditions = 
							{
								
								{
									"5d12778d-9fcb-5553-87b5-64afe031864b",
									true,
								},
							},
							name = "[Draw] M4S - Transition cones + Conduction Point capture",
							uuid = "51f25d51-173d-8c48-857a-22c5d2a9a4b9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 37118 or eventArgs.spellID == 39117 or eventArgs.spellID == 39118 or eventArgs.spellID == 39119 or eventArgs.spellID == 39123",
							dequeueIfLuaFalse = true,
							name = "Transition event",
							uuid = "5d12778d-9fcb-5553-87b5-64afe031864b",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 323.9,
				name = "[Draw] M4S - Transition cones + Conduction Point capture",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = 50,
				timerStartOffset = -12,
				uuid = "d3baa155-ccc3-0ca8-aeee-68fea6496c5f",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nif not (Ro and Ro.current() and Ro.isReady()) then return end\nlocal slot = Ro.mySlot()\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Transition (Electrope Transplant): pairs dodge the 8 rotating cones at their intercard, alternating with the\n-- gap 22.5deg to the left (facing the boss). H+M north (H1/M1 NE, H2/M2 NW), T+R south (MT/R1 SE, OT/R2 SW);\n-- tanks + melee near, healers + ranged far. Conduction Point: the 4 hit players go far, their partners near\n-- (take the Forked Fissures wild charge in front). Spot = the cone gap of the NEXT set next to your intercard.\nlocal m = data.m4_tr\nif not m then\n local C={H1={1,-1},M1={1,-1},H2={-1,-1},M2={-1,-1},T1={1,1},R1={1,1},T2={-1,1},R2={-1,1}}\n local v=C[slot];if not v then return end\n local r=(slot:sub(1,1)=='H' or slot:sub(1,1)=='R') and 20 or 12.5\n go(100+v[1]*r/math.sqrt(2),100+v[2]*r/math.sqrt(2));return\nend\nlocal now = Now()\nif now - m.t > (m.staging and 15000 or 4500) or (m.sets or 0) >= 7 then return end\n\nlocal BASE = {H1 = 3, M1 = 3, H2 = -3, M2 = -3, T1 = 1, R1 = 1, T2 = -1, R2 = -1}\nlocal b = BASE[slot]\nif not b then return end\nlocal base = b * math.pi / 4\nlocal NEAR, FAR = 12.5, 20 -- cheatsheet \"INTERMISSION\": near ~12.5 (T+M), far ~20.5 (H+R, almost the corners)\nlocal far = (slot:sub(1, 1) == \"H\" or slot:sub(1, 1) == \"R\")\nif m.cpT and now - m.cpT < 5000 and not (m.fissT and m.fissT > m.cpT) then\n  far = m.cp and m.cp[p.id] and true or false\nend\n-- gaps of the next cones sit at dir + 22.5 + k*45; take the one nearest base - 11.25 (base or 22.5 clockwise)\nlocal step = math.pi / 4\nif not m.known then\n go(100+(far and FAR or NEAR)*math.sin(base),100+(far and FAR or NEAR)*math.cos(base))\n return\nend\nlocal first = m.dir + math.pi / 8\nlocal mid = base - math.pi / 16\nlocal k = math.floor((mid - first) / step + 0.5)\nlocal g = first + k * step\nlocal r = far and FAR or NEAR\ngo(100 + r * math.sin(g), 100 + r * math.cos(g))\n",
							name = "[Draw] M4S - Transition cones + wild charge spot (1)",
							uuid = "c633d56d-4f0a-0448-97c1-deab89e7a50a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 323.9,
				name = "[Draw] M4S - Transition cones + wild charge spot (1)",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = 19,
				timerStartOffset = -15.2,
				uuid = "a35f1102-15f5-5bf0-9ad6-9b8c03382225",
				version = 2,
			},
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
							actionLua = "local m=data.m4_tr\nif not m or not m.known or not m.dir or (m.sets or 0)>=7 then return end\nif not m.nextAt or Now()>m.nextAt+700 then return end\nlocal d=TensorCore.getCachedDrawer(0x443333FF,0x443333FF,0xFFBBBBFF,0xFF000000,2)\nfor i=0,7 do d:addCone(100,0.04,100,30,math.pi/6,m.dir+i*math.pi/4,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end",
							name = "Next eight cones only",
							uuid = "64db1fa6-9617-af0b-8c4c-2c6ce04a313c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 323.9,
				name = "[Draw] M4S - Next intermission cone set",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = 50,
				timerStartOffset = -12,
				uuid = "899da68e-1e67-f8f7-ab8f-5d63446aedef",
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
				name = "Role Draws",
				uuid = "1fe98cb2-a0c0-c022-b2b8-d68ca8b26ab1",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nif not (Ro and Ro.current() and Ro.isReady()) then return end\nlocal slot = Ro.mySlot()\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Transition (Electrope Transplant): pairs dodge the 8 rotating cones at their intercard, alternating with the\n-- gap 22.5deg to the left (facing the boss). H+M north (H1/M1 NE, H2/M2 NW), T+R south (MT/R1 SE, OT/R2 SW);\n-- tanks + melee near, healers + ranged far. Conduction Point: the 4 hit players go far, their partners near\n-- (take the Forked Fissures wild charge in front). Spot = the cone gap of the NEXT set next to your intercard.\nlocal m = data.m4_tr\nif not m then return end\nlocal now = Now()\nif now - m.t > (m.staging and 15000 or 4500) or (m.sets or 0) >= 7 then return end\n\nlocal BASE = {H1 = 3, M1 = 3, H2 = -3, M2 = -3, T1 = 1, R1 = 1, T2 = -1, R2 = -1}\nlocal b = BASE[slot]\nif not b then return end\nlocal base = b * math.pi / 4\nlocal NEAR, FAR = 12.5, 20 -- cheatsheet \"INTERMISSION\": near ~12.5 (T+M), far ~20.5 (H+R, almost the corners)\nlocal far = (slot:sub(1, 1) == \"H\" or slot:sub(1, 1) == \"R\")\nif m.cpT and now - m.cpT < 5000 and not (m.fissT and m.fissT > m.cpT) then\n  far = m.cp and m.cp[p.id] and true or false\nend\n-- gaps of the next cones sit at dir + 22.5 + k*45; take the one nearest base - 11.25 (base or 22.5 clockwise)\nlocal step = math.pi / 4\nif not m.known then\n go(100+(far and FAR or NEAR)*math.sin(base),100+(far and FAR or NEAR)*math.cos(base))\n return\nend\nlocal first = m.dir + math.pi / 8\nlocal mid = base - math.pi / 16\nlocal k = math.floor((mid - first) / step + 0.5)\nlocal g = first + k * step\nlocal r = far and FAR or NEAR\ngo(100 + r * math.sin(g), 100 + r * math.cos(g))\n",
							name = "[Draw] M4S - Transition cones + wild charge spot (2)",
							uuid = "45a7475b-fa00-81e1-b785-5e717517d320",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 349.9,
				name = "[Draw] M4S - Transition cones + wild charge spot (2)",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = 19,
				timerStartOffset = -9,
				uuid = "ade95213-a3be-b3f6-aac4-34b770dfe2d3",
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
				name = "Role Draws",
				uuid = "944ac816-ebab-9440-aa81-c197a529df3e",
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
							actionLua = "local m=data.m4_tr\nif not m or (m.round or 0)<2 or (m.sets or 0)<7 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos or not p.incombat or p.pos.z>123 then return end\nlocal q={x=100,y=0,z=118}\nlocal d=TensorCore.getDistance2d(p.pos,q)\nlocal g=TensorCore.getCachedDrawer(0x4433FF33,0x4433FF33,0xFF33FF33,0xFF000000,2)\nif d>0.8 then g:addArrow(p.pos.x,q.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,q),math.max(0.1,d-1),0.7,1,1.4,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end\ng:addCircle(q.x,q.y,q.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)",
							name = "South edge staging arrow",
							uuid = "7cd97f43-acb0-1197-b09f-906c247ff129",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 364.9,
				name = "[Draw] M4S - Stage at next platform edge",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = 35.3,
				uuid = "30f863db-2af4-b6e2-ad14-98e7850dce0f",
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
				name = "Role Draws",
				uuid = "d4d16b7c-47ed-b55d-9e89-685fb5b93425",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal G1 = {T1 = true, H1 = true, M1 = true, R1 = true}\nlocal G2 = {T2 = true, H2 = true, M2 = true, R2 = true}\n-- M4S p2a: Sabertail exaflares + Wicked Blaze LP stacks. G1 stacks at the west edge, G2 at the east edge,\n-- in the gap the exaflares leave on that edge until the 4 stack hits are done (first explosion + 5s).\nlocal m = data.m4_p2a\nlocal sb = m and m.sab\nif not (sb and #sb.lines >= 8) then return end\nlocal now = Now()\nif now - sb.t > 16000 or now - (sb.last or sb.t) < 300 then return end\nlocal side = G1[slot] and -1 or (G2[slot] and 1) or nil\nif not side then return end\nlocal T0 = sb.lines[1].t0\nif now > T0 + 5000 then return end\nlocal E = sb.ex\nif not E then\n  E = {}\n  local q90 = math.pi / 2\n  for _, l in ipairs(sb.lines) do\n    local h = l.h\n    local q = math.floor(h / q90 + 0.5) * q90\n    if math.abs(h - q) < 0.2 then h = q end\n    local dx, dz = math.sin(h), math.cos(h)\n    local x, z = l.x, l.z\n    for k = 0, 9 do\n      if x < 79.5 or x > 120.5 or z < 149.5 or z > 180.5 then break end\n      E[#E + 1] = {x = x, z = z, t = l.t0 + k * 700}\n      x = x + dx * 6.5; z = z + dz * 6.5\n    end\n  end\n  sb.ex = E\nend\nsb.spot = sb.spot or {}\nlocal s = sb.spot[side]\nif s == nil then\n  local edge = 100 + side * 20\n  local best, bx, bz = 0.05, nil, nil\n  for i = 0, 7 do\n    local x = edge - side * (0.3 + i * 0.5)\n    for j = 0, 58 do\n      local z = 150.5 + j * 0.5\n      local mn = 99\n      for _, ex in ipairs(E) do\n        if ex.t <= T0 + 5000 then\n          local d = math.sqrt((x - ex.x) ^ 2 + (z - ex.z) ^ 2) - 6\n          if d < mn then mn = d; if mn - 0.02 * i <= best then break end end\n        end\n      end\n      local sc = mn - 0.02 * i\n      if mn > 0.05 and sc > best then best, bx, bz = sc, x, z end\n    end\n  end\n  s = bx and {x = bx, z = bz} or false\n  sb.spot[side] = s\nend\nif s then go(s.x, s.z) end\n",
							name = "[Draw] M4S - Sabertail LP stack spot",
							uuid = "bcc4795a-faea-e90b-a3a2-a9aed1375efb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 426,
				name = "[Draw] M4S - Sabertail LP stack spot",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 8,
				timerStartOffset = -14,
				uuid = "88f1af6d-0674-41f9-8752-f298c4665f2a",
				version = 2,
			},
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
							actionLua = "-- M4S p2a capture: Sabertail exaflare starts (38389, helpers, 8s cast, r6, step 6.5 every 0.7s),\n-- Wicked Special boss cast (38416 = center AOE -> sides safe, 38418 = sides AOE -> middle safe)\n-- and its helper rects (38417 width 20 / 38419 width 15, length 40). Dedupes (windows of entries can overlap).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38389 and sp ~= 38416 and sp ~= 38418 and sp ~= 38417 and sp ~= 38419 then return end\ndata.m4_p2a = data.m4_p2a or {}\nlocal m = data.m4_p2a\nlocal now = Now()\nlocal ct = tonumber(e.channelTimeMax) or 0\nif sp == 38416 or sp == 38418 then\n  if m.ws and now - m.ws.t < 3000 then return end\n  m.ws = {t = now, te = now + ((ct > 0) and ct or 5) * 1000 + 1000, sides = (sp == 38416)}\n  return\nend\nlocal id = e.entityID\nlocal ent = id and TensorCore.mGetEntity(id)\nlocal ps = ent and ent.pos\nif not ps then return end\nif sp == 38389 then\n  if not m.sab or now - m.sab.t > 20000 then m.sab = {t = now, lines = {}, seen = {}} end\n  local sb = m.sab\n  if sb.seen[id] then return end\n  sb.seen[id] = true\n  sb.last = now\n  sb.ex = nil; sb.spot = nil\n  sb.lines[#sb.lines + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, t0 = now + ((ct > 0) and ct or 8) * 1000}\n  return\nend\nif not m.wr or now - m.wr.t > 3000 then m.wr = {t = now, list = {}, seen = {}} end\nif m.wr.seen[id] then return end\nm.wr.seen[id] = true\nm.wr.list[#m.wr.list + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, hw = (sp == 38417) and 10 or 7.5}\n",
							name = "[Draw] M4S - Sabertail/Special capture",
							uuid = "0f6a2595-698c-67e8-a55f-17eb73e510e0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 426,
				name = "[Draw] M4S - Sabertail/Special capture",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 10,
				timerStartOffset = -16,
				uuid = "1fba311b-6a5d-fd1a-ac53-9d1dd8b13d8d",
				version = 2,
			},
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
							actionLua = "local b=TensorCore.mGetEntity(eventArgs.entityID)\nif not b or not b.pos then return end\nlocal h=b.pos.h;local x,z=b.pos.x,b.pos.z;local dx,dz=math.sin(h)*6.5,math.cos(h)*6.5\nlocal w=data.m4_sabertail\nif not w or Now()-w.t>15000 then w={t=Now(),lanes={}};data.m4_sabertail=w end\nif not w.lanes[eventArgs.entityID] then w.lanes[eventArgs.entityID]={x=x,z=z,dx=dx,dz=dz,expiry=Now()+eventArgs.channelTimeMax*1000+10000} end\nself.used=true",
							conditions = 
							{
								
								{
									"d6b32e64-1606-97e9-ab54-d83f07e68a02",
									true,
								},
							},
							name = "[Capture] M4S - Sabertail lanes",
							uuid = "5c22c76f-8690-baa0-a0ae-4ebe4145a92b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID==38389",
							dequeueIfLuaFalse = true,
							name = "Relevant event",
							uuid = "d6b32e64-1606-97e9-ab54-d83f07e68a02",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 426,
				name = "[Capture] M4S - Sabertail lanes",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 19,
				timerStartOffset = -25,
				uuid = "d33f587e-fb30-2925-bad7-8eb592c4b266",
				version = 2,
			},
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
							actionLua = "self.used=true\nlocal w=data.m4_sabertail;if not w then return end\nlocal e=eventArgs;local b=TensorCore.mGetEntity(e.entityID)\nlocal x=e.castPosX or (b and b.pos.x);local z=e.castPosZ or (b and b.pos.z);if not x or not z then return end\nlocal best,dist=nil,4\nfor _,q in pairs(w.lanes) do local d=(q.x-x)^2+(q.z-z)^2;if d<dist then dist=d;best=q end end\nif best then best.x=x+best.dx;best.z=z+best.dz end",
							conditions = 
							{
								
								{
									"7aa8df58-9355-4933-9943-58d2ff1b342e",
									true,
								},
							},
							name = "[Capture] M4S - Sabertail advance",
							uuid = "20d36221-d3dc-36b5-a9db-70a5d00750c0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID==38389 or eventArgs.spellID==38390",
							dequeueIfLuaFalse = true,
							name = "Relevant event",
							uuid = "7aa8df58-9355-4933-9943-58d2ff1b342e",
							version = 3,
						},
					},
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 426,
				name = "[Capture] M4S - Sabertail advance",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 19,
				timerStartOffset = -25,
				uuid = "db86840c-2e52-24fe-abbb-45ad4931322f",
				version = 2,
			},
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
							actionLua = "-- Sabertail exaflares (38389): lines captured by [Draw] M4S - Sabertail/Special capture (data.m4_p2a.sab).\n-- Explosion k of a lane happens at t0 + k*700 ms, 6.5y apart along the (quarter-snapped) heading, k = 0..9.\n-- Only the next two UPCOMING explosions per lane are drawn; an explosion that has executed is dropped at once.\nlocal m = data.m4_p2a\nlocal sb = m and m.sab\nif not (sb and sb.lines and #sb.lines > 0) then return end\nlocal now = Now()\nif now - sb.t > 17000 then return end\nlocal first = TensorCore.getCachedDrawer(0x443333FF, 0x443333FF, 0xFF7777FF, 0xFF000000, 2)\nlocal nxt = TensorCore.getCachedDrawer(0x224499FF, 0x224499FF, 0xFF99BBFF, 0xFF000000, 1.5)\nlocal q90 = math.pi / 2\nfor _, l in ipairs(sb.lines) do\n  if now <= l.t0 + 9 * 700 then\n    local h = l.h\n    local q = math.floor(h / q90 + 0.5) * q90\n    if math.abs(h - q) < 0.2 then h = q end\n    local dx, dz = math.sin(h) * 6.5, math.cos(h) * 6.5\n    local k = 0\n    if now > l.t0 then k = math.floor((now - l.t0) / 700) + 1 end\n    for i = 0, 1 do\n      local kk = k + i\n      if kk > 9 then break end\n      local x, z = l.x + dx * kk, l.z + dz * kk\n      if x < 79.5 or x > 120.5 or z < 149.5 or z > 180.5 then break end\n      (i == 0 and first or nxt):addCircle(x, 0.04, z, 6, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    end\n  end\nend\n",
							name = "[Draw] M4S - Next two Sabertail explosions per lane",
							uuid = "0c702cc8-cd2a-3cd1-ac3a-ab993ba6f5f8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 426,
				name = "[Draw] M4S - Next two Sabertail explosions per lane",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 19,
				timerStartOffset = -25,
				uuid = "df6bd77d-adb6-c67c-a2b9-e01ca2fed041",
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
				name = "Role Draws",
				uuid = "33a7e83e-1b24-1398-a369-96cde6476a4e",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal G1 = {T1 = true, H1 = true, M1 = true, R1 = true}\nlocal G2 = {T2 = true, H2 = true, M2 = true, R2 = true}\n-- M4S p2a: Wicked Special (after exaflares). 38416 flame sword = center unsafe -> sides (x 87.5 / 112.5);\n-- 38418 lightning = sides unsafe -> middle (x 97.5 / 102.5). Stay on your current half (group side if near x 100),\n-- keep your z. Checked against the helper rects when they were captured.\nlocal CIRCLE, DELAY = false, 0\nlocal m = data.m4_p2a\nlocal ws = m and m.ws\nif not ws then return end\nlocal now = Now()\nif now - ws.t > 12000 or now > ws.te + 500 or now - ws.t < DELAY then return end\nlocal side\nif math.abs(p.pos.x - 100) > 2 then side = (p.pos.x < 100) and -1 or 1\nelseif G1[slot] then side = -1 elseif G2[slot] then side = 1 else return end\nlocal rects = (m.wr and math.abs(m.wr.t - ws.t) < 3000 and #m.wr.list > 0) and m.wr.list or nil\nlocal function zfor(x, z)\n  if CIRCLE then\n    local dx, dz = x - 100, z - 165\n    if dx * dx + dz * dz > 13.5 * 13.5 then\n      local lim = 13.5 * 13.5 - dx * dx\n      if lim < 0 then return nil end\n      local zz = math.sqrt(lim)\n      z = 165 + ((dz < 0) and -zz or zz)\n    end\n    return z\n  end\n  return math.max(151, math.min(179, z))\nend\nlocal function safe(x, z)\n  if not rects then return true end\n  for _, r in ipairs(rects) do\n    local fx, fz = math.sin(r.h), math.cos(r.h)\n    local ddx, ddz = x - r.x, z - r.z\n    local al = ddx * fx + ddz * fz\n    local lat = math.abs(-ddx * fz + ddz * fx)\n    if al > -0.5 and al < 40.5 and lat < r.hw + 0.75 then return false end\n  end\n  return true\nend\nlocal px = 100 + side * (ws.sides and 12.5 or 2.5)\nlocal maxo = CIRCLE and 13 or 19.25\nfor k = 0, 30 do\n  local off = (k % 2 == 0) and (k / 2) * 0.5 or -((k + 1) / 2) * 0.5\n  local x = px + off\n  local o = side * (x - 100)\n  if o >= 0.75 and o <= maxo then\n    local z = zfor(x, p.pos.z)\n    if z and safe(x, z) then go(x, z); return end\n  end\nend\n",
							name = "[Draw] M4S - Wicked Special spot (after exaflares)",
							uuid = "bcdc8bf6-cae7-b2c3-8fea-b960e33943d7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 437.2,
				name = "[Draw] M4S - Wicked Special spot (after exaflares)",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 4,
				timerStartOffset = -9,
				uuid = "1bdd8ceb-8dc3-2138-af38-ec82af7374f3",
				version = 2,
			},
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
							actionLua = "-- M4S p2a capture: Sabertail exaflare starts (38389, helpers, 8s cast, r6, step 6.5 every 0.7s),\n-- Wicked Special boss cast (38416 = center AOE -> sides safe, 38418 = sides AOE -> middle safe)\n-- and its helper rects (38417 width 20 / 38419 width 15, length 40). Dedupes (windows of entries can overlap).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38389 and sp ~= 38416 and sp ~= 38418 and sp ~= 38417 and sp ~= 38419 then return end\ndata.m4_p2a = data.m4_p2a or {}\nlocal m = data.m4_p2a\nlocal now = Now()\nlocal ct = tonumber(e.channelTimeMax) or 0\nif sp == 38416 or sp == 38418 then\n  if m.ws and now - m.ws.t < 3000 then return end\n  m.ws = {t = now, te = now + ((ct > 0) and ct or 5) * 1000 + 1000, sides = (sp == 38416)}\n  return\nend\nlocal id = e.entityID\nlocal ent = id and TensorCore.mGetEntity(id)\nlocal ps = ent and ent.pos\nif not ps then return end\nif sp == 38389 then\n  if not m.sab or now - m.sab.t > 20000 then m.sab = {t = now, lines = {}, seen = {}} end\n  local sb = m.sab\n  if sb.seen[id] then return end\n  sb.seen[id] = true\n  sb.last = now\n  sb.ex = nil; sb.spot = nil\n  sb.lines[#sb.lines + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, t0 = now + ((ct > 0) and ct or 8) * 1000}\n  return\nend\nif not m.wr or now - m.wr.t > 3000 then m.wr = {t = now, list = {}, seen = {}} end\nif m.wr.seen[id] then return end\nm.wr.seen[id] = true\nm.wr.list[#m.wr.list + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, hw = (sp == 38417) and 10 or 7.5}\n",
							name = "[Draw] M4S - Wicked Special capture (after exaflares)",
							uuid = "2446b694-8567-ac07-b8ac-572dd6108ef3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 437.2,
				name = "[Draw] M4S - Wicked Special capture (after exaflares)",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 5,
				timerStartOffset = -10,
				uuid = "6a89d1d8-5b55-08e7-a6b7-26b81099651f",
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
				name = "Role Draws",
				uuid = "39396068-cf08-c8f3-afbc-21e5dd3a8cfc",
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
							actionLua = "-- M4S Mustard Bomb: boss cast 38430 (8+1s) starts the mechanic\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not (e and e.spellID == 38430) then return end\ndata.m4_mb = data.m4_mb or {}\nlocal s = data.m4_mb.mb\n-- keep tethers captured just before the cast event (same mechanic), else start fresh\nif s and not s.first and not s.done and Now() - s.t < 3000 then s.cast = Now(); return end\ndata.m4_mb.mb = {t = Now(), cast = Now(), teth = {}, hit = {}}\n",
							name = "[Draw] M4S - Mustard Bomb 1 capture cast",
							uuid = "5b44c7b2-6712-aac9-a9fb-b630da60b9e6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 453.1,
				name = "[Draw] M4S - Mustard Bomb 1 capture cast",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = 2,
				timerStartOffset = -14,
				uuid = "377ea775-0285-f406-9c23-40292c6753ff",
				version = 2,
			},
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
							actionLua = "-- M4S Mustard Bomb: tether 283 (player <-> boss). Track who holds a tether until the first hit.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nif e.newTetherID ~= 283 and e.oldTetherID ~= 283 then return end\ndata.m4_mb = data.m4_mb or {}\nlocal s = data.m4_mb.mb\nif not s or s.done or Now() - s.t > 25000 then\n  s = {t = Now(), teth = {}, hit = {}}\n  data.m4_mb.mb = s\nend\nif s.first then return end\nlocal party = {}\nlocal L = TensorCore.getEntityGroupList(\"Party\")\nif type(L) == \"table\" then\n  for _, v in pairs(L) do\n    local id = (type(v) == \"table\") and v.id or v\n    if id then party[id] = true end\n  end\nend\nlocal src = e.sourceEntityID\nif e.newTetherID == 283 then\n  local h = (party[src] and src) or (party[e.newTargetID] and e.newTargetID)\n  if e.oldTetherID == 283 and party[e.oldTargetID] and e.oldTargetID ~= e.newTargetID then s.teth[e.oldTargetID] = nil end\n  if h then s.teth[h] = true end\nelse\n  local h = (party[src] and src) or (party[e.oldTargetID] and e.oldTargetID)\n  if h then s.teth[h] = nil end\nend\n",
							name = "[Draw] M4S - Mustard Bomb 1 capture tethers",
							uuid = "06fa8cdf-fea9-5423-ad36-8dd6a9f75a1e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 15,
				loop = true,
				mechanicTime = 453.1,
				name = "[Draw] M4S - Mustard Bomb 1 capture tethers",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = 2,
				timerStartOffset = -14,
				uuid = "3cc647f3-a737-c0fd-96d8-85788622c4da",
				version = 2,
			},
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
							actionLua = "-- M4S Mustard Bomb: 38431 tether hit (tanks get the Mustard Bomb debuff 4007), 38432 Kindling Cauldron spreads,\n-- 38433 second explosion (mechanic done). Anyone hit by 38431/38432 cannot take the debuff.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38431 and sp ~= 38432 and sp ~= 38433 then return end\nlocal s = data.m4_mb and data.m4_mb.mb\nif not s or Now() - s.t > 25000 then return end\nif sp == 38433 then s.done = Now(); return end\ns.first = s.first or Now()\ns.teth = {}\nlocal ht = e.hitTargets or {}\nfor _, id in ipairs(ht) do s.hit[id] = true end\nif #ht == 0 and e.targetID and e.targetID > 0 then s.hit[e.targetID] = true end\n",
							name = "[Draw] M4S - Mustard Bomb 1 capture hits",
							uuid = "e1f141a1-1766-61da-b165-1e5c9a579e5c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 453.1,
				name = "[Draw] M4S - Mustard Bomb 1 capture hits",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = 15,
				timerStartOffset = -3,
				uuid = "d68cc0e5-282c-d14a-bfd7-80e2a30bdfe4",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Mustard Bomb (strategy 45.png): row 1 (z155) M1 85 / MT 95 / OT 105 / M2 115, row 2 (z165) R1 85 / H1 95 /\n-- H2 105 / R2 115. Tethers: non-tanks holding one wait near the middle, tanks run to grab them. After the first hit the\n-- tanks (debuff 4007) pass it: MT to the leftmost safe (unhit) player, OT to the rightmost, then return to their spot.\nlocal s = data.m4_mb and data.m4_mb.mb\nif not s or s.done or Now() - s.t > 25000 then return end\nlocal SP = {M1 = {85, 155}, T1 = {95, 155}, T2 = {105, 155}, M2 = {115, 155},\n            R1 = {85, 165}, H1 = {95, 165}, H2 = {105, 165}, R2 = {115, 165}}\nlocal my = SP[slot]\nif not my then return end\nlocal tank = (slot == \"T1\" or slot == \"T2\")\nlocal TANKJOB = {[1] = true, [3] = true, [19] = true, [21] = true, [32] = true, [37] = true}\nif not s.first then\n  if s.cast and Now() - s.cast < 6500 then\n    if not tank and s.teth[p.id] then go(100, 160); return end\n    if tank and not s.teth[p.id] then\n      local best\n      for id in pairs(s.teth) do\n        local en = TensorCore.mGetEntity(id)\n        if en and en.pos and not TANKJOB[en.job or 0] then\n          if not best or (slot == \"T1\" and en.pos.x < best.pos.x) or (slot == \"T2\" and en.pos.x > best.pos.x) then best = en end\n        end\n      end\n      if best then go(best.pos.x, best.pos.z); return end\n    end\n  end\n  go(my[1], my[2])\n  return\nend\nif tank and TensorCore.hasBuff(p, 4007) then\n  local n = 0\n  for _ in pairs(s.hit) do n = n + 1 end\n  if n >= 6 then\n    local L = TensorCore.getEntityGroupList(\"Party\")\n    local best\n    if type(L) == \"table\" then\n      for _, v in pairs(L) do\n        local en = (type(v) == \"table\") and v or TensorCore.mGetEntity(v)\n        if en and en.id and en.id ~= p.id and en.pos and not s.hit[en.id] and not TensorCore.hasBuff(en, 4007) then\n          if not best or (slot == \"T1\" and en.pos.x < best.pos.x) or (slot == \"T2\" and en.pos.x > best.pos.x) then best = en end\n        end\n      end\n    end\n    if best then go(best.pos.x, best.pos.z); return end\n  end\nend\ngo(my[1], my[2])\n",
							name = "[Draw] M4S - Mustard Bomb 1 spots",
							uuid = "df50aef8-4f4d-f52d-a188-893d2ea15a20",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 453.1,
				name = "[Draw] M4S - Mustard Bomb 1 spots",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = 13,
				timerStartOffset = -11,
				uuid = "933ad706-cb49-a037-804e-a98f830dcf27",
				version = 2,
			},
		},
	},
	[87] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "90024fca-a078-b076-abb7-845ede0b6db9",
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
							actionLua = "-- M4S Aetherial Conversion (stored, 38402 fire L->R / 38403 water L->R / 38404 fire R->L / 38405 water R->L) and the\n-- Tail Thrust cast that executes it (38406 fire L / 38407 water L / 38408 fire R / 38409 water R, 5+1s)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nlocal CONV = {[38402] = {\"fire\", -1}, [38403] = {\"water\", -1}, [38404] = {\"fire\", 1}, [38405] = {\"water\", 1}}\nlocal TT = {[38406] = {\"fire\", -1}, [38407] = {\"water\", -1}, [38408] = {\"fire\", 1}, [38409] = {\"water\", 1}}\nlocal c, t = CONV[sp], TT[sp]\nif not (c or t) then return end\ndata.m4_mb = data.m4_mb or {}\nlocal M = data.m4_mb\nif c then M.conv = {t = Now(), k = c[1], s = c[2]}; return end\nif M.ac and Now() - M.ac.t < 3000 then return end\nlocal a = {t = Now(), k = t[1], s = t[2], n = 0}\nlocal cv = M.conv\nif cv and Now() - cv.t < 120000 and (cv.k ~= a.k or cv.s ~= a.s) then a.bad = true end\nM.conv = nil\nM.ac = a\n",
							name = "[Draw] M4S - Tail Thrust 1 capture casts",
							uuid = "021cfadf-aeb4-b37c-8fbb-891b0c2dbfe6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 479.8,
				name = "[Draw] M4S - Tail Thrust 1 capture casts",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = 2,
				timerStartOffset = -20,
				uuid = "755e376c-0aa2-3858-90e5-620267e2a12c",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Aetherial Conversion / Tail Thrust: two hits at (100 -/+ 10, 165), first on the side the conversion names.\n-- Fire = r18 circle: dodge along the north edge (start opposite the first circle, then cross). Water = knockback 25\n-- from the red dot: stand just inside the first dot (pushed across), then just inside the second dot.\nlocal a = data.m4_mb and data.m4_mb.ac\nif not a or a.bad or Now() - a.t > 16000 or (a.n or 0) >= 2 then return end\nlocal s = a.s\nif s ~= 1 and s ~= -1 then return end\nif a.k == \"fire\" then\n  if a.n == 0 then go(100 - 6 * s, 151) else go(100 + 6 * s, 151) end\nelseif a.k == \"water\" then\n  if a.n == 0 then go(100 + 9 * s, 165) else go(100 - 9 * s, 165) end\nend\n",
							name = "[Draw] M4S - Tail Thrust 1 fire/water spot",
							uuid = "83706833-a89a-22b6-85e5-c25c10be95cc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 479.8,
				name = "[Draw] M4S - Tail Thrust 1 fire/water spot",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = 8,
				timerStartOffset = -10,
				uuid = "0aa8bd1c-27a7-d984-a37b-282edec5aa9d",
				version = 2,
			},
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
							actionLua = "-- M4S Tail Thrust hits: 38414 Tail Thrust (fire circle r18) / 38415 Switch of Tides (water knockback 25)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nif e.spellID ~= 38414 and e.spellID ~= 38415 then return end\nlocal a = data.m4_mb and data.m4_mb.ac\nif not a or Now() - a.t > 20000 then return end\nif a.last and Now() - a.last < 1500 then return end\na.last = Now()\na.n = (a.n or 0) + 1\n",
							name = "[Draw] M4S - Tail Thrust 1 capture hits",
							uuid = "ac2b6321-b69f-0b5a-b316-d666a2a62a5d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 479.8,
				name = "[Draw] M4S - Tail Thrust 1 capture hits",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = 9,
				timerStartOffset = -3,
				uuid = "153c1b98-c607-d2da-998a-cdb634f3e209",
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
				name = "Role Draws",
				uuid = "465298d8-4bc0-4b8d-a2cd-b02fcecfee23",
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
							actionLua = "-- M4S Twilight Sabbath: replica cleave animations (PlayActionTimeline 0x11D6 1st right / 0x11D7 2nd right /\n-- 0x11D8 1st left / 0x11D9 2nd left). Stores each replica's 180-degree cleave half-plane.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal a = e.newAnimID\nif not (a == 4566 or a == 4567 or a == 4568 or a == 4569) then return end\nlocal ent = TensorCore.mGetEntity(e.entityID)\nlocal ps = ent and ent.pos\nif not ps then return end\ndata.m4_sab = data.m4_sab or {}\nlocal S = data.m4_sab\nlocal now = Now()\nif not S.tw or now - S.tw.t > 25000 then S.tw = {t = now, sets = {{}, {}}, casts = 0, last = {}} end\nlocal set = (a == 4566 or a == 4568) and 1 or 2\nlocal off = (a == 4566 or a == 4567) and -math.pi / 2 or math.pi / 2\nlocal L = S.tw.sets[set]\nfor _, c in ipairs(L) do if c.id == e.entityID then return end end\nL[#L + 1] = {id = e.entityID, x = ps.x, z = ps.z, h = (ps.h or 0) + off}\n",
							name = "[Draw] M4S - Twilight Sabbath capture (replica cleaves)",
							uuid = "68e9fe7a-a605-e969-9ef7-87b2c69f99b5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 23,
				loop = true,
				mechanicTime = 507,
				name = "[Draw] M4S - Twilight Sabbath capture (replica cleaves)",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "b63e4710-bf4a-e6fb-966f-600109b00dc3",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Twilight Sabbath: puddles center -> 1st safe quadrant -> 2nd safe quadrant (+ Wicked Special sides/middle)\nlocal S = data.m4_sab\nlocal T = S and S.tw\nif not T then return end\nlocal now = Now()\nlocal age = now - T.t\nif age < 0 or age > 18500 then return end\nlocal casts = T.casts or 0\nif casts >= 4 then return end\nlocal CX, CZ = 100, 165\nS.Q = S.Q or {{-1, -1}, {1, -1}, {-1, 1}, {1, 1}}\nlocal Q = S.Q\nlocal function hit(set, x, z, margin)\n  for _, c in ipairs(set) do\n    if (x - c.x) * math.sin(c.h) + (z - c.z) * math.cos(c.h) > -margin then return true end\n  end\n  return false\nend\nlocal function safeQ(set)\n  if not set or #set < 2 then return nil end\n  local found\n  for _, q in ipairs(Q) do\n    if not hit(set, CX + q[1] * 9.5, CZ + q[2] * 9, 0.5) then\n      if found then return nil end\n      found = q\n    end\n  end\n  return found\nend\n-- 1) drop puddles in the center\nif not (T.bait or age > 6500) then go(CX, CZ) return end\n-- 2) first safe quadrant (outside the r10 puddles) until cleave 1 and the puddles are done\nlocal c1 = casts >= 2 or age > 8800\nlocal fireDone = T.fire or age > 10000\nif not (c1 and fireDone) then\n  local q = safeQ(T.sets[1])\n  if q then go(CX + q[1] * 9.5, CZ + q[2] * 9) end\n  return\nend\n-- 3) second safe quadrant, refined by Wicked Special (center cleaved -> sides, sides cleaved -> middle)\nlocal q = safeQ(T.sets[2])\nif not q then return end\nlocal x, z = CX + q[1] * 9.5, CZ + q[2] * 9\nlocal W = S.ws\nif W and now - W.t < 10000 then\n  if W.sides then x, z = CX + q[1] * 12, CZ + q[2] * 7 else x, z = CX + q[1] * 3, CZ + q[2] * 11 end\n  if hit(T.sets[2], x, z, 1) then return end\nend\ngo(x, z)\n",
							name = "[Draw] M4S - Twilight Sabbath - your spot",
							uuid = "e8c9caaa-ec51-4e23-8d8e-c4d26e62d153",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 507,
				name = "[Draw] M4S - Twilight Sabbath - your spot",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 21,
				timerStartOffset = 1,
				uuid = "0a2d47ea-742e-d0b1-96aa-dc01a677796e",
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
				name = "Role Draws",
				uuid = "af65a842-0eee-ddd0-b1d6-c605de2f5a9a",
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
							actionLua = "-- M4S Twilight Sabbath: Wicked Fire bait (38448), puddles resolve (38449), replica Sidewise Spark (38441/38442)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif not (sp == 38448 or sp == 38449 or sp == 38441 or sp == 38442) then return end\nlocal S = data.m4_sab\nlocal T = S and S.tw\nlocal now = Now()\nif not T or now - T.t > 25000 then return end\nif sp == 38448 then T.bait = T.bait or now; return end\nif sp == 38449 then T.fire = T.fire or now; return end\nT.last = T.last or {}\nlocal id = e.entityID or 0\nif T.last[id] and now - T.last[id] < 3000 then return end\nT.last[id] = now\nT.casts = (T.casts or 0) + 1\n",
							name = "[Draw] M4S - Twilight Sabbath capture (bait / puddles / sparks)",
							uuid = "17a2a892-e369-3f93-b953-f17f8a1593b0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 518.1,
				name = "[Draw] M4S - Twilight Sabbath capture (bait / puddles / sparks)",
				timeRange = true,
				timelineIndex = 92,
				timerEndOffset = 11,
				timerStartOffset = -6,
				uuid = "2f783177-53c7-2bff-b343-1824d4c8014b",
				version = 2,
			},
		},
	},
	[93] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "3eca8013-975c-6ad2-ad17-9bc36301df5e",
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
							actionLua = "-- M4S Twilight Sabbath: Wicked Special cast start. 38416 = center cleaved (go sides), 38418 = sides cleaved (go middle)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38416 and sp ~= 38418 then return end\ndata.m4_sab = data.m4_sab or {}\ndata.m4_sab.ws = {t = Now(), sides = (sp == 38416)}\n",
							name = "[Draw] M4S - Twilight Sabbath capture (Wicked Special)",
							uuid = "b181bfe6-9d29-5eb4-9ce3-5d69ee86f801",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 526.2,
				name = "[Draw] M4S - Twilight Sabbath capture (Wicked Special)",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "f92a382a-3a74-0f22-b567-8837342c0611",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal G1 = {T1 = true, H1 = true, M1 = true, R1 = true}\nlocal G2 = {T2 = true, H2 = true, M2 = true, R2 = true}\n-- M4S p2a: Wicked Special (Twilight Sabbath). 38416 flame sword = center unsafe -> sides (x 87.5 / 112.5);\n-- 38418 lightning = sides unsafe -> middle (x 97.5 / 102.5). Stay on your current half (group side if near x 100),\n-- keep your z. Checked against the helper rects when they were captured.\nlocal CIRCLE, DELAY = true, 0\nlocal m = data.m4_p2a\nlocal ws = m and m.ws\nif not ws then return end\nlocal now = Now()\nif now - ws.t > 12000 or now > ws.te + 500 or now - ws.t < DELAY then return end\n-- Twilight: item 12 (data.m4_sab, sab_tw_draw) already draws quadrant 2 + this Wicked Special;\n-- defer to it whenever its Twilight state exists so two different arrows never show at once.\nlocal TW = data.m4_sab and data.m4_sab.tw\nif TW and now - TW.t < 25000 then return end\nlocal side\nif math.abs(p.pos.x - 100) > 2 then side = (p.pos.x < 100) and -1 or 1\nelseif G1[slot] then side = -1 elseif G2[slot] then side = 1 else return end\nlocal rects = (m.wr and math.abs(m.wr.t - ws.t) < 3000 and #m.wr.list > 0) and m.wr.list or nil\nlocal function zfor(x, z)\n  if CIRCLE then\n    local dx, dz = x - 100, z - 165\n    if dx * dx + dz * dz > 13.5 * 13.5 then\n      local lim = 13.5 * 13.5 - dx * dx\n      if lim < 0 then return nil end\n      local zz = math.sqrt(lim)\n      z = 165 + ((dz < 0) and -zz or zz)\n    end\n    return z\n  end\n  return math.max(151, math.min(179, z))\nend\nlocal function safe(x, z)\n  if not rects then return true end\n  for _, r in ipairs(rects) do\n    local fx, fz = math.sin(r.h), math.cos(r.h)\n    local ddx, ddz = x - r.x, z - r.z\n    local al = ddx * fx + ddz * fz\n    local lat = math.abs(-ddx * fz + ddz * fx)\n    if al > -0.5 and al < 40.5 and lat < r.hw + 0.75 then return false end\n  end\n  return true\nend\nlocal px = 100 + side * (ws.sides and 12.5 or 2.5)\nlocal maxo = CIRCLE and 13 or 19.25\nfor k = 0, 30 do\n  local off = (k % 2 == 0) and (k / 2) * 0.5 or -((k + 1) / 2) * 0.5\n  local x = px + off\n  local o = side * (x - 100)\n  if o >= 0.75 and o <= maxo then\n    local z = zfor(x, p.pos.z)\n    if z and safe(x, z) then go(x, z); return end\n  end\nend\n",
							name = "[Draw] M4S - Wicked Special spot (Twilight Sabbath)",
							uuid = "d4f9f7c4-caf0-7e9a-97cc-024e719c4f9e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 526.2,
				name = "[Draw] M4S - Wicked Special spot (Twilight Sabbath)",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 4,
				timerStartOffset = -9,
				uuid = "0d95ef5c-17f0-718f-bec2-671509515132",
				version = 2,
			},
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
							actionLua = "-- M4S p2a capture: Sabertail exaflare starts (38389, helpers, 8s cast, r6, step 6.5 every 0.7s),\n-- Wicked Special boss cast (38416 = center AOE -> sides safe, 38418 = sides AOE -> middle safe)\n-- and its helper rects (38417 width 20 / 38419 width 15, length 40). Dedupes (windows of entries can overlap).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38389 and sp ~= 38416 and sp ~= 38418 and sp ~= 38417 and sp ~= 38419 then return end\ndata.m4_p2a = data.m4_p2a or {}\nlocal m = data.m4_p2a\nlocal now = Now()\nlocal ct = tonumber(e.channelTimeMax) or 0\nif sp == 38416 or sp == 38418 then\n  if m.ws and now - m.ws.t < 3000 then return end\n  m.ws = {t = now, te = now + ((ct > 0) and ct or 5) * 1000 + 1000, sides = (sp == 38416)}\n  return\nend\nlocal id = e.entityID\nlocal ent = id and TensorCore.mGetEntity(id)\nlocal ps = ent and ent.pos\nif not ps then return end\nif sp == 38389 then\n  if not m.sab or now - m.sab.t > 20000 then m.sab = {t = now, lines = {}, seen = {}} end\n  local sb = m.sab\n  if sb.seen[id] then return end\n  sb.seen[id] = true\n  sb.last = now\n  sb.ex = nil; sb.spot = nil\n  sb.lines[#sb.lines + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, t0 = now + ((ct > 0) and ct or 8) * 1000}\n  return\nend\nif not m.wr or now - m.wr.t > 3000 then m.wr = {t = now, list = {}, seen = {}} end\nif m.wr.seen[id] then return end\nm.wr.seen[id] = true\nm.wr.list[#m.wr.list + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, hw = (sp == 38417) and 10 or 7.5}\n",
							name = "[Draw] M4S - Wicked Special capture (Twilight Sabbath)",
							uuid = "a7b5cefd-ba07-7019-9ca9-6a9c45de6c80",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 526.2,
				name = "[Draw] M4S - Wicked Special capture (Twilight Sabbath)",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 5,
				timerStartOffset = -10,
				uuid = "fb733c27-6948-5fcd-89d9-47a9caf2d157",
				version = 2,
			},
		},
	},
	[94] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "c9f0eca7-788a-9846-8cf0-f8d8ab3e5484",
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
							actionLua = "-- M4S Midnight Sabbath: replica animations (PlayActionTimeline 0x11D1 gun 1st / 0x11D2 gun 2nd /\n-- 0x11D3 wings 1st / 0x11D4 wings 2nd)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal a = e.newAnimID\nif not (a == 4561 or a == 4562 or a == 4563 or a == 4564) then return end\nlocal ent = TensorCore.mGetEntity(e.entityID)\nlocal ps = ent and ent.pos\nif not ps then return end\ndata.m4_sab = data.m4_sab or {}\nlocal S = data.m4_sab\nlocal now = Now()\nif not S.mn or now - S.mn.t > 25000 then S.mn = {t = now, adds = {}, casts = 0, last = {}} end\nS.mn.adds[e.entityID] = {x = ps.x, z = ps.z, set = (a == 4561 or a == 4563) and 1 or 2, wings = (a == 4563 or a == 4564)}\n",
							name = "[Draw] M4S - Midnight Sabbath capture (gun / wings adds)",
							uuid = "604f06b9-fb22-da24-95f8-8f80f5cf3610",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 23,
				loop = true,
				mechanicTime = 536.4,
				name = "[Draw] M4S - Midnight Sabbath capture (gun / wings adds)",
				timeRange = true,
				timelineIndex = 94,
				timerEndOffset = 9,
				timerStartOffset = -3,
				uuid = "4b390b4a-b3e6-2e08-acdd-b74a044f06b5",
				version = 2,
			},
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
							actionLua = "-- M4S Midnight Sabbath: 38443 Concentrated Burst (pairs -> spread) / 38444 Scattered Burst (spread -> pairs)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38443 and sp ~= 38444 then return end\ndata.m4_sab = data.m4_sab or {}\nlocal S = data.m4_sab\nlocal now = Now()\nif not S.mn or now - S.mn.t > 25000 then S.mn = {t = now, adds = {}, casts = 0, last = {}} end\nS.mn.burst = {t = now, conc = (sp == 38443)}\n",
							name = "[Draw] M4S - Midnight Sabbath capture (Concentrated / Scattered Burst)",
							uuid = "040e4f42-4e6e-2506-8ea5-48f75308eae2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 536.4,
				name = "[Draw] M4S - Midnight Sabbath capture (Concentrated / Scattered Burst)",
				timeRange = true,
				timelineIndex = 94,
				timerEndOffset = 9,
				timerStartOffset = -2,
				uuid = "f89cf16b-7b44-f95e-94b0-dfa4858a00cc",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Midnight Sabbath: wings = stand under that add, gun = go to the other adds. Pairs at intercards\n-- (T1+M1 NW, T2+M2 NE, H1+R1 SW, H2+R2 SE), rotated CCW to the cardinals (W, N, S, E) when cardinals are safe.\n-- Spread: supports left, DPS right while facing center.\nlocal S = data.m4_sab\nlocal M = S and S.mn\nif not (M and M.burst and M.adds) then return end\nlocal now = Now()\nlocal bt = now - M.burst.t\nlocal casts = M.casts or 0\nif bt < 0 or bt > 12500 or casts >= 8 then return end\nlocal phase = (casts >= 4 or bt > 7800) and 2 or 1\nlocal CX, CZ = 100, 165\nlocal function isCard(x, z)\n  local ax, az = math.abs(x - CX), math.abs(z - CZ)\n  return math.min(ax, az) < 0.414 * math.max(ax, az)\nend\n-- group (cardinal/intercard) of the set-1 adds and the gun/wings type of this phase's adds\nlocal g1, w, n1, nk = nil, nil, 0, 0\nfor _, a in pairs(M.adds) do\n  if a.set == 1 then\n    local c = isCard(a.x, a.z)\n    if g1 == nil then g1 = c elseif g1 ~= c then return end\n    n1 = n1 + 1\n  end\n  if a.set == phase then\n    if w == nil then w = a.wings elseif w ~= a.wings then return end\n    nk = nk + 1\n  end\nend\nif g1 == nil or w == nil or n1 < 2 or nk < 2 then return end\nlocal grp = g1\nif phase == 2 then grp = not g1 end\nlocal safeCard = grp\nif not w then safeCard = not grp end\nS.IC = S.IC or {T1 = {-1, -1}, M1 = {-1, -1}, T2 = {1, -1}, M2 = {1, -1}, H1 = {-1, 1}, R1 = {-1, 1}, H2 = {1, 1}, R2 = {1, 1}}\nS.CA = S.CA or {T1 = {-1, 0}, M1 = {-1, 0}, T2 = {0, -1}, M2 = {0, -1}, H1 = {0, 1}, R1 = {0, 1}, H2 = {1, 0}, R2 = {1, 0}}\nlocal IC, CA = S.IC, S.CA\nlocal d = (safeCard and CA or IC)[slot]\nif not d then return end\nlocal len = math.sqrt(d[1] * d[1] + d[2] * d[2])\nlocal ux, uz = d[1] / len, d[2] / len\n-- radius from the add in that direction (stay ~2y inside it, max 13.5)\nlocal r = 13\nfor _, a in pairs(M.adds) do\n  local dx, dz = a.x - CX, a.z - CZ\n  local R = math.sqrt(dx * dx + dz * dz)\n  if R > 1 and (dx * ux + dz * uz) / R > 0.95 then r = math.max(8, math.min(R - 2, 13.5)) end\nend\nlocal spread = (M.burst.conc and phase == 2) or ((not M.burst.conc) and phase == 1)\nlocal x, z = CX + ux * r, CZ + uz * r\nif spread then\n  local sup = (slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\")\n  local off = sup and 3 or -3\n  x, z = x - uz * off, z + ux * off\nend\ngo(x, z)\n",
							name = "[Draw] M4S - Midnight Sabbath - your spot",
							uuid = "ec47202f-938e-29d4-b11b-73652e6f6c0c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 536.4,
				name = "[Draw] M4S - Midnight Sabbath - your spot",
				timeRange = true,
				timelineIndex = 94,
				timerEndOffset = 20,
				timerStartOffset = 3,
				uuid = "c4dfcc7a-e4d6-45d9-9158-8062b539c5e6",
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
				name = "Role Draws",
				uuid = "8dae7340-8a6e-a824-8536-d288c1bbf9b3",
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
							actionLua = "-- M4S Midnight Sabbath: replica resolves (38436 Wicked Cannon / 38439 Thundering), 4 per set\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38436 and sp ~= 38439 then return end\nlocal S = data.m4_sab\nlocal M = S and S.mn\nlocal now = Now()\nif not M or now - M.t > 25000 then return end\nM.last = M.last or {}\nlocal id = e.entityID or 0\nif M.last[id] and now - M.last[id] < 2500 then return end\nM.last[id] = now\nM.casts = (M.casts or 0) + 1\n",
							name = "[Draw] M4S - Midnight Sabbath capture (add resolves)",
							uuid = "cdc772c4-c3f3-51cb-bfc0-392c29478668",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 547.5,
				name = "[Draw] M4S - Midnight Sabbath capture (add resolves)",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 8,
				timerStartOffset = -4,
				uuid = "a1773444-cb4f-a1fa-9a7c-3f63da033f59",
				version = 2,
			},
		},
	},
	[97] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "729e0b47-6cd2-d484-9bf9-86d687d709f3",
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
							actionLua = "-- M4S p2a capture: Sabertail exaflare starts (38389, helpers, 8s cast, r6, step 6.5 every 0.7s),\n-- Wicked Special boss cast (38416 = center AOE -> sides safe, 38418 = sides AOE -> middle safe)\n-- and its helper rects (38417 width 20 / 38419 width 15, length 40). Dedupes (windows of entries can overlap).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38389 and sp ~= 38416 and sp ~= 38418 and sp ~= 38417 and sp ~= 38419 then return end\ndata.m4_p2a = data.m4_p2a or {}\nlocal m = data.m4_p2a\nlocal now = Now()\nlocal ct = tonumber(e.channelTimeMax) or 0\nif sp == 38416 or sp == 38418 then\n  if m.ws and now - m.ws.t < 3000 then return end\n  m.ws = {t = now, te = now + ((ct > 0) and ct or 5) * 1000 + 1000, sides = (sp == 38416)}\n  return\nend\nlocal id = e.entityID\nlocal ent = id and TensorCore.mGetEntity(id)\nlocal ps = ent and ent.pos\nif not ps then return end\nif sp == 38389 then\n  if not m.sab or now - m.sab.t > 20000 then m.sab = {t = now, lines = {}, seen = {}} end\n  local sb = m.sab\n  if sb.seen[id] then return end\n  sb.seen[id] = true\n  sb.last = now\n  sb.ex = nil; sb.spot = nil\n  sb.lines[#sb.lines + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, t0 = now + ((ct > 0) and ct or 8) * 1000}\n  return\nend\nif not m.wr or now - m.wr.t > 3000 then m.wr = {t = now, list = {}, seen = {}} end\nif m.wr.seen[id] then return end\nm.wr.seen[id] = true\nm.wr.list[#m.wr.list + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, hw = (sp == 38417) and 10 or 7.5}\n",
							name = "[Draw] M4S - Wicked Special capture (Midnight Sabbath)",
							uuid = "8537e8e9-2209-eea9-8abc-fc5d6ea8cfe0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 556.5,
				name = "[Draw] M4S - Wicked Special capture (Midnight Sabbath)",
				timeRange = true,
				timelineIndex = 97,
				timerEndOffset = 5,
				timerStartOffset = -10,
				uuid = "f18a586f-654f-8651-b9f9-aca4f28d91cf",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal G1 = {T1 = true, H1 = true, M1 = true, R1 = true}\nlocal G2 = {T2 = true, H2 = true, M2 = true, R2 = true}\n-- M4S p2a: Wicked Special (Midnight Sabbath). 38416 flame sword = center unsafe -> sides (x 87.5 / 112.5);\n-- 38418 lightning = sides unsafe -> middle (x 97.5 / 102.5). Stay on your current half (group side if near x 100),\n-- keep your z. Checked against the helper rects when they were captured.\nlocal CIRCLE, DELAY = true, 1500\nlocal m = data.m4_p2a\nlocal ws = m and m.ws\nif not ws then return end\nlocal now = Now()\nif now - ws.t > 12000 or now > ws.te + 500 or now - ws.t < DELAY then return end\nlocal side\nif math.abs(p.pos.x - 100) > 2 then side = (p.pos.x < 100) and -1 or 1\nelseif G1[slot] then side = -1 elseif G2[slot] then side = 1 else return end\nlocal rects = (m.wr and math.abs(m.wr.t - ws.t) < 3000 and #m.wr.list > 0) and m.wr.list or nil\nlocal function zfor(x, z)\n  if CIRCLE then\n    local dx, dz = x - 100, z - 165\n    if dx * dx + dz * dz > 13.5 * 13.5 then\n      local lim = 13.5 * 13.5 - dx * dx\n      if lim < 0 then return nil end\n      local zz = math.sqrt(lim)\n      z = 165 + ((dz < 0) and -zz or zz)\n    end\n    return z\n  end\n  return math.max(151, math.min(179, z))\nend\nlocal function safe(x, z)\n  if not rects then return true end\n  for _, r in ipairs(rects) do\n    local fx, fz = math.sin(r.h), math.cos(r.h)\n    local ddx, ddz = x - r.x, z - r.z\n    local al = ddx * fx + ddz * fz\n    local lat = math.abs(-ddx * fz + ddz * fx)\n    if al > -0.5 and al < 40.5 and lat < r.hw + 0.75 then return false end\n  end\n  return true\nend\nlocal px = 100 + side * (ws.sides and 12.5 or 2.5)\nlocal maxo = CIRCLE and 13 or 19.25\nfor k = 0, 30 do\n  local off = (k % 2 == 0) and (k / 2) * 0.5 or -((k + 1) / 2) * 0.5\n  local x = px + off\n  local o = side * (x - 100)\n  if o >= 0.75 and o <= maxo then\n    local z = zfor(x, p.pos.z)\n    if z and safe(x, z) then go(x, z); return end\n  end\nend\n",
							name = "[Draw] M4S - Wicked Special spot (Midnight Sabbath)",
							uuid = "44f5c245-91a3-574c-a7a7-36c9d3ca8053",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 556.5,
				name = "[Draw] M4S - Wicked Special spot (Midnight Sabbath)",
				timeRange = true,
				timelineIndex = 97,
				timerEndOffset = 4,
				timerStartOffset = -9,
				uuid = "5461bb9a-41fa-0ed7-97fa-ff5e92484821",
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
				name = "Role Draws",
				uuid = "8afabf00-81f1-3756-b0fb-569e47e0d230",
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
							actionLua = "-- M4S Raining Swords: SerpentsTongue swords (contentid 17327 = 0x43AF) spawn\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not (e and e.entityContentID == 17327) then return end\nlocal function M()\n  local m = data.m4_cl\n  if not m or not m.t or Now() - m.t > 90000 then\n    m = {t = Now(), sw = {}, tc = {L = 0, R = 0}, sets = {L = {}, R = {}}, ex = {L = 0, R = 0}, lastT = {}}\n    data.m4_cl = m\n  end\n  return m\nend\nlocal m = M()\nm.sw[e.entityID] = true\n",
							name = "[Draw] M4S - Raining Swords capture (sword spawn)",
							uuid = "a80d8a72-ade9-29ba-a34d-fd4ed16bba2d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 5,
				loop = true,
				mechanicTime = 583.9,
				name = "[Draw] M4S - Raining Swords capture (sword spawn)",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 55,
				timerStartOffset = -20,
				uuid = "597a618f-437b-3155-ab2a-07d610bb6264",
				version = 2,
			},
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
							actionLua = "-- M4S Raining Swords / Chain Lightning: towers resolve (38423), lightning explosions (38426 first / 38427 rest)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38423 and sp ~= 38426 and sp ~= 38427 then return end\nlocal function M()\n  local m = data.m4_cl\n  if not m or not m.t or Now() - m.t > 90000 then\n    m = {t = Now(), sw = {}, tc = {L = 0, R = 0}, sets = {L = {}, R = {}}, ex = {L = 0, R = 0}, lastT = {}}\n    data.m4_cl = m\n  end\n  return m\nend\nlocal m = M()\nif sp == 38423 then\n  m.sw[e.entityID] = true\n  m.towDone = Now()\n  return\nend\nlocal x = e.castPosX\nif not x or x == 0 then\n  local en = TensorCore.mGetEntity(e.entityID)\n  x = en and en.pos and en.pos.x\nend\nif not x or math.abs(x - 100) < 1 then m.exUnk = (m.exUnk or 0) + 1; return end\nlocal side = x < 100 and \"L\" or \"R\"\nm.ex[side] = m.ex[side] + 1\n",
							name = "[Draw] M4S - Raining Swords/Chain Lightning capture (towers + explosions)",
							uuid = "9114985e-cb69-4282-9486-be24a1f865b2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 583.9,
				name = "[Draw] M4S - Raining Swords/Chain Lightning capture (towers + explosions)",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 55,
				timerStartOffset = -20,
				uuid = "e05076b5-26a8-a4ab-b7e8-8abc1eb542e9",
				version = 2,
			},
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
							actionLua = "-- M4S Chain Lightning: sword tethers 279 (sword->boss) / 280 (sword->sword); the source sword explodes.\n-- Per side: tethers come in sets of 3 (one set per safe step); the untethered sword of a set is safe.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal tid = e.newTetherID\nif tid ~= 279 and tid ~= 280 then return end\nif e.oldTetherID == tid and e.oldTargetID == e.newTargetID then return end\nlocal src = e.sourceEntityID\nlocal en = TensorCore.mGetEntity(src)\nlocal ps = en and en.pos\nif not ps then return end\nlocal function M()\n  local m = data.m4_cl\n  if not m or not m.t or Now() - m.t > 90000 then\n    m = {t = Now(), sw = {}, tc = {L = 0, R = 0}, sets = {L = {}, R = {}}, ex = {L = 0, R = 0}, lastT = {}}\n    data.m4_cl = m\n  end\n  return m\nend\nlocal m = M()\nm.sw[src] = true\nlocal key = tostring(src) .. \"_\" .. tostring(tid) .. \"_\" .. tostring(e.newTargetID)\nif m.lastT[key] and Now() - m.lastT[key] < 500 then return end\nm.lastT[key] = Now()\nlocal side = ps.x < 100 and \"L\" or \"R\"\nm.tc[side] = m.tc[side] + 1\nlocal k = math.floor((m.tc[side] - 1) / 3) + 1\nm.sets[side][k] = m.sets[side][k] or {}\nm.sets[side][k][src] = true\n",
							name = "[Draw] M4S - Chain Lightning capture (sword tethers)",
							uuid = "3faf9ca9-fb59-3b69-8cd5-8f7f83d7c6f8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 15,
				loop = true,
				mechanicTime = 583.9,
				name = "[Draw] M4S - Chain Lightning capture (sword tethers)",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 55,
				timerStartOffset = -20,
				uuid = "d0487423-c3c8-cb64-a715-06757180b2b0",
				version = 2,
			},
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
							actionLua = "-- M4S Raining Swords: tower casts (38423, cast by each of the 8 swords)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not (e and e.spellID == 38423) then return end\nlocal function M()\n  local m = data.m4_cl\n  if not m or not m.t or Now() - m.t > 90000 then\n    m = {t = Now(), sw = {}, tc = {L = 0, R = 0}, sets = {L = {}, R = {}}, ex = {L = 0, R = 0}, lastT = {}}\n    data.m4_cl = m\n  end\n  return m\nend\nlocal m = M()\nm.sw[e.entityID] = true\n",
							name = "[Draw] M4S - Raining Swords capture (tower casts)",
							uuid = "717514a8-9fbf-ee82-bfb7-54c1a799dc82",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 583.9,
				name = "[Draw] M4S - Raining Swords capture (tower casts)",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 55,
				timerStartOffset = -20,
				uuid = "e983c480-15d5-60fa-a73e-65907cdfefb6",
				version = 2,
			},
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
							actionLua = "-- M4S Aetherial Conversion (stored, 38402 fire L->R / 38403 water L->R / 38404 fire R->L / 38405 water R->L) and the\n-- Tail Thrust cast that executes it (38406 fire L / 38407 water L / 38408 fire R / 38409 water R, 5+1s)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nlocal CONV = {[38402] = {\"fire\", -1}, [38403] = {\"water\", -1}, [38404] = {\"fire\", 1}, [38405] = {\"water\", 1}}\nlocal TT = {[38406] = {\"fire\", -1}, [38407] = {\"water\", -1}, [38408] = {\"fire\", 1}, [38409] = {\"water\", 1}}\nlocal c, t = CONV[sp], TT[sp]\nif not (c or t) then return end\ndata.m4_mb = data.m4_mb or {}\nlocal M = data.m4_mb\nif c then M.conv = {t = Now(), k = c[1], s = c[2]}; return end\nif M.ac and Now() - M.ac.t < 3000 then return end\nlocal a = {t = Now(), k = t[1], s = t[2], n = 0}\nlocal cv = M.conv\nif cv and Now() - cv.t < 120000 and (cv.k ~= a.k or cv.s ~= a.s) then a.bad = true end\nM.conv = nil\nM.ac = a\n",
							name = "[Draw] M4S - Aetherial Conversion 2 capture",
							uuid = "52b2bc22-e4a5-4e75-8c10-32e3d0b077f0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 583.9,
				name = "[Draw] M4S - Aetherial Conversion 2 capture",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -4,
				timerStartOffset = -26,
				uuid = "49e1dc89-6c28-cae0-9802-69e9ab3575ee",
				version = 2,
			},
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "80ee1110-6c4f-0fe4-afe8-c42c33785ef1",
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
							actionLua = "-- M4S Raining Swords towers: G1 west column, G2 east; T, M, H, R north to south\nlocal m = data.m4_cl\nif not m or not m.t or Now() - m.t > 90000 then\n  m = {t = Now(), sw = {}, tc = {L = 0, R = 0}, sets = {L = {}, R = {}}, ex = {L = 0, R = 0}, lastT = {}}\n  data.m4_cl = m\nend\n-- fallback: swords may have spawned before the capture window; scan for them (throttled, stops at 8)\nif (m.nsw or 0) < 8 and Now() - (m.scanT or 0) > 1000 then\n  m.scanT = Now()\n  local el = TensorCore.entityList(\"contentid=17327\")\n  if el then\n    for id, en in pairs(el) do\n      local eid = (type(en) == \"table\" and en.id) or id\n      if type(eid) == \"number\" then m.sw[eid] = true end\n    end\n  end\n  local n = 0\n  for _ in pairs(m.sw) do n = n + 1 end\n  m.nsw = n\nend\nif m.towDone and Now() - m.towDone < 60000 then return end\nlocal Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal function sideList(m, left)\n  local L = {}\n  for id in pairs(m.sw) do\n    local en = TensorCore.mGetEntity(id)\n    local ps = en and en.pos\n    if ps and ((ps.x < 100) == left) then L[#L + 1] = {id = id, x = ps.x, z = ps.z} end\n  end\n  table.sort(L, function(a, b) return a.z < b.z end)\n  return L\nend\nlocal rank = ({T = 1, M = 2, H = 3, R = 4})[slot:sub(1, 1)]\nlocal grp = slot:sub(2, 2)\nif not rank or (grp ~= \"1\" and grp ~= \"2\") then return end\nlocal L = sideList(m, grp == \"1\")\nif #L ~= 4 then return end\ngo(L[rank].x, L[rank].z)\n",
							name = "[Draw] M4S - Raining Swords tower spot",
							uuid = "6089a3db-f48c-9cc5-9c4b-9c80eb213f1b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 589,
				name = "[Draw] M4S - Raining Swords tower spot",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 6,
				timerStartOffset = -8,
				uuid = "ff7dbc78-fafb-ba71-9215-5d70bdba0ad7",
				version = 2,
			},
		},
	},
	[101] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "00b65731-08d8-35b6-a54b-bf9e8b9b7205",
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
							actionLua = "-- M4S Chain Lightning: stand on the current safe (untethered) sword of your column\nlocal m = data.m4_cl\nif not (m and m.t and Now() - m.t < 90000 and m.towDone) then return end\nlocal Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal function sideList(m, left)\n  local L = {}\n  for id in pairs(m.sw) do\n    local en = TensorCore.mGetEntity(id)\n    local ps = en and en.pos\n    if ps and ((ps.x < 100) == left) then L[#L + 1] = {id = id, x = ps.x, z = ps.z} end\n  end\n  table.sort(L, function(a, b) return a.z < b.z end)\n  return L\nend\nif math.abs(p.pos.x - 100) < 4 then return end\nlocal left = p.pos.x < 100\nlocal side = left and \"L\" or \"R\"\nlocal L = sideList(m, left)\nif #L ~= 4 then return end\nlocal function safeOf(k)\n  local set = m.sets[side][k]\n  if not set then return nil end\n  local n = 0\n  for _ in pairs(set) do n = n + 1 end\n  if n ~= 3 then return nil end\n  local s\n  for i = 1, 4 do\n    if not set[L[i].id] then\n      if s then return nil end\n      s = i\n    end\n  end\n  return s\nend\nlocal step = math.floor(m.ex[side] / 3) + 1\nif step > 4 then return end\nlocal s = safeOf(step)\nif not s and step == 4 then\n  local a, b, c = safeOf(1), safeOf(2), safeOf(3)\n  if a and b and c and a ~= b and b ~= c and a ~= c then\n    for i = 1, 4 do if i ~= a and i ~= b and i ~= c then s = i end end\n  end\nend\nif not s then return end\ngo(L[s].x, L[s].z)\n",
							name = "[Draw] M4S - Chain Lightning safe sword",
							uuid = "84ce1e48-6bff-d25e-8402-e352349b4a4f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 610.1,
				name = "[Draw] M4S - Chain Lightning safe sword",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 26,
				timerStartOffset = -19,
				uuid = "83162fa6-b23e-964b-beef-651f7330a70c",
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
				name = "Role Draws",
				uuid = "209f0c90-077c-a10a-b317-4172dc95a14a",
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
							actionLua = "-- M4S Aetherial Conversion (stored, 38402 fire L->R / 38403 water L->R / 38404 fire R->L / 38405 water R->L) and the\n-- Tail Thrust cast that executes it (38406 fire L / 38407 water L / 38408 fire R / 38409 water R, 5+1s)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nlocal CONV = {[38402] = {\"fire\", -1}, [38403] = {\"water\", -1}, [38404] = {\"fire\", 1}, [38405] = {\"water\", 1}}\nlocal TT = {[38406] = {\"fire\", -1}, [38407] = {\"water\", -1}, [38408] = {\"fire\", 1}, [38409] = {\"water\", 1}}\nlocal c, t = CONV[sp], TT[sp]\nif not (c or t) then return end\ndata.m4_mb = data.m4_mb or {}\nlocal M = data.m4_mb\nif c then M.conv = {t = Now(), k = c[1], s = c[2]}; return end\nif M.ac and Now() - M.ac.t < 3000 then return end\nlocal a = {t = Now(), k = t[1], s = t[2], n = 0}\nlocal cv = M.conv\nif cv and Now() - cv.t < 120000 and (cv.k ~= a.k or cv.s ~= a.s) then a.bad = true end\nM.conv = nil\nM.ac = a\n",
							name = "[Draw] M4S - Tail Thrust 2 capture casts",
							uuid = "57a91c79-1bc1-b93c-bcd5-415ed296bb6b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 637.2,
				name = "[Draw] M4S - Tail Thrust 2 capture casts",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 2,
				timerStartOffset = -13,
				uuid = "728b797c-8b25-c847-964b-707725080077",
				version = 2,
			},
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
							actionLua = "-- M4S Tail Thrust hits: 38414 Tail Thrust (fire circle r18) / 38415 Switch of Tides (water knockback 25)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nif e.spellID ~= 38414 and e.spellID ~= 38415 then return end\nlocal a = data.m4_mb and data.m4_mb.ac\nif not a or Now() - a.t > 20000 then return end\nif a.last and Now() - a.last < 1500 then return end\na.last = Now()\na.n = (a.n or 0) + 1\n",
							name = "[Draw] M4S - Tail Thrust 2 capture hits",
							uuid = "a237e6cd-700c-c824-ab1d-ca2c341037e2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 637.2,
				name = "[Draw] M4S - Tail Thrust 2 capture hits",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 9,
				timerStartOffset = -3,
				uuid = "0828b07f-445a-8c32-85ae-194cfc8f5bee",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Aetherial Conversion / Tail Thrust: two hits at (100 -/+ 10, 165), first on the side the conversion names.\n-- Fire = r18 circle: dodge along the north edge (start opposite the first circle, then cross). Water = knockback 25\n-- from the red dot: stand just inside the first dot (pushed across), then just inside the second dot.\nlocal a = data.m4_mb and data.m4_mb.ac\nif not a or a.bad or Now() - a.t > 16000 or (a.n or 0) >= 2 then return end\nlocal s = a.s\nif s ~= 1 and s ~= -1 then return end\nif a.k == \"fire\" then\n  if a.n == 0 then go(100 - 6 * s, 151) else go(100 + 6 * s, 151) end\nelseif a.k == \"water\" then\n  if a.n == 0 then go(100 + 9 * s, 165) else go(100 - 9 * s, 165) end\nend\n",
							name = "[Draw] M4S - Tail Thrust 2 fire/water spot",
							uuid = "57e5f0c4-f428-a387-b318-9eed0624f5a4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 637.2,
				name = "[Draw] M4S - Tail Thrust 2 fire/water spot",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 8,
				timerStartOffset = -10,
				uuid = "323ee2b4-1b1a-9089-8bb5-2735540e06a2",
				version = 2,
			},
		},
	},
	[104] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "8dbb0dba-ec4c-f765-84c6-2063aed6edc4",
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
							actionLua = "-- M4S Mustard Bomb: boss cast 38430 (8+1s) starts the mechanic\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not (e and e.spellID == 38430) then return end\ndata.m4_mb = data.m4_mb or {}\nlocal s = data.m4_mb.mb\n-- keep tethers captured just before the cast event (same mechanic), else start fresh\nif s and not s.first and not s.done and Now() - s.t < 3000 then s.cast = Now(); return end\ndata.m4_mb.mb = {t = Now(), cast = Now(), teth = {}, hit = {}}\n",
							name = "[Draw] M4S - Mustard Bomb 2 capture cast",
							uuid = "4a2f3614-1913-72e6-b456-ba4767a9c20e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 653.1,
				name = "[Draw] M4S - Mustard Bomb 2 capture cast",
				timeRange = true,
				timelineIndex = 104,
				timerEndOffset = 2,
				timerStartOffset = -14,
				uuid = "5737fc2c-64c6-d698-9b35-036d52dcf729",
				version = 2,
			},
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
							actionLua = "-- M4S Mustard Bomb: tether 283 (player <-> boss). Track who holds a tether until the first hit.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nif e.newTetherID ~= 283 and e.oldTetherID ~= 283 then return end\ndata.m4_mb = data.m4_mb or {}\nlocal s = data.m4_mb.mb\nif not s or s.done or Now() - s.t > 25000 then\n  s = {t = Now(), teth = {}, hit = {}}\n  data.m4_mb.mb = s\nend\nif s.first then return end\nlocal party = {}\nlocal L = TensorCore.getEntityGroupList(\"Party\")\nif type(L) == \"table\" then\n  for _, v in pairs(L) do\n    local id = (type(v) == \"table\") and v.id or v\n    if id then party[id] = true end\n  end\nend\nlocal src = e.sourceEntityID\nif e.newTetherID == 283 then\n  local h = (party[src] and src) or (party[e.newTargetID] and e.newTargetID)\n  if e.oldTetherID == 283 and party[e.oldTargetID] and e.oldTargetID ~= e.newTargetID then s.teth[e.oldTargetID] = nil end\n  if h then s.teth[h] = true end\nelse\n  local h = (party[src] and src) or (party[e.oldTargetID] and e.oldTargetID)\n  if h then s.teth[h] = nil end\nend\n",
							name = "[Draw] M4S - Mustard Bomb 2 capture tethers",
							uuid = "1269747e-06c7-6dce-91eb-5341077300c6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 15,
				loop = true,
				mechanicTime = 653.1,
				name = "[Draw] M4S - Mustard Bomb 2 capture tethers",
				timeRange = true,
				timelineIndex = 104,
				timerEndOffset = 2,
				timerStartOffset = -14,
				uuid = "4fbb5f65-42a6-5403-80b8-d6e4db7e34ec",
				version = 2,
			},
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
							actionLua = "-- M4S Mustard Bomb: 38431 tether hit (tanks get the Mustard Bomb debuff 4007), 38432 Kindling Cauldron spreads,\n-- 38433 second explosion (mechanic done). Anyone hit by 38431/38432 cannot take the debuff.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38431 and sp ~= 38432 and sp ~= 38433 then return end\nlocal s = data.m4_mb and data.m4_mb.mb\nif not s or Now() - s.t > 25000 then return end\nif sp == 38433 then s.done = Now(); return end\ns.first = s.first or Now()\ns.teth = {}\nlocal ht = e.hitTargets or {}\nfor _, id in ipairs(ht) do s.hit[id] = true end\nif #ht == 0 and e.targetID and e.targetID > 0 then s.hit[e.targetID] = true end\n",
							name = "[Draw] M4S - Mustard Bomb 2 capture hits",
							uuid = "37f9802c-a4a0-8621-a9fe-fdcc86eb8812",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 653.1,
				name = "[Draw] M4S - Mustard Bomb 2 capture hits",
				timeRange = true,
				timelineIndex = 104,
				timerEndOffset = 15,
				timerStartOffset = -3,
				uuid = "2409267e-8799-9b9f-93b3-78ebdc236258",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Mustard Bomb (strategy 45.png): row 1 (z155) M1 85 / MT 95 / OT 105 / M2 115, row 2 (z165) R1 85 / H1 95 /\n-- H2 105 / R2 115. Tethers: non-tanks holding one wait near the middle, tanks run to grab them. After the first hit the\n-- tanks (debuff 4007) pass it: MT to the leftmost safe (unhit) player, OT to the rightmost, then return to their spot.\nlocal s = data.m4_mb and data.m4_mb.mb\nif not s or s.done or Now() - s.t > 25000 then return end\nlocal SP = {M1 = {85, 155}, T1 = {95, 155}, T2 = {105, 155}, M2 = {115, 155},\n            R1 = {85, 165}, H1 = {95, 165}, H2 = {105, 165}, R2 = {115, 165}}\nlocal my = SP[slot]\nif not my then return end\nlocal tank = (slot == \"T1\" or slot == \"T2\")\nlocal TANKJOB = {[1] = true, [3] = true, [19] = true, [21] = true, [32] = true, [37] = true}\nif not s.first then\n  if s.cast and Now() - s.cast < 6500 then\n    if not tank and s.teth[p.id] then go(100, 160); return end\n    if tank and not s.teth[p.id] then\n      local best\n      for id in pairs(s.teth) do\n        local en = TensorCore.mGetEntity(id)\n        if en and en.pos and not TANKJOB[en.job or 0] then\n          if not best or (slot == \"T1\" and en.pos.x < best.pos.x) or (slot == \"T2\" and en.pos.x > best.pos.x) then best = en end\n        end\n      end\n      if best then go(best.pos.x, best.pos.z); return end\n    end\n  end\n  go(my[1], my[2])\n  return\nend\nif tank and TensorCore.hasBuff(p, 4007) then\n  local n = 0\n  for _ in pairs(s.hit) do n = n + 1 end\n  if n >= 6 then\n    local L = TensorCore.getEntityGroupList(\"Party\")\n    local best\n    if type(L) == \"table\" then\n      for _, v in pairs(L) do\n        local en = (type(v) == \"table\") and v or TensorCore.mGetEntity(v)\n        if en and en.id and en.id ~= p.id and en.pos and not s.hit[en.id] and not TensorCore.hasBuff(en, 4007) then\n          if not best or (slot == \"T1\" and en.pos.x < best.pos.x) or (slot == \"T2\" and en.pos.x > best.pos.x) then best = en end\n        end\n      end\n    end\n    if best then go(best.pos.x, best.pos.z); return end\n  end\nend\ngo(my[1], my[2])\n",
							name = "[Draw] M4S - Mustard Bomb 2 spots",
							uuid = "8df2545f-9d45-354b-ad6a-8e39cf178210",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 653.1,
				name = "[Draw] M4S - Mustard Bomb 2 spots",
				timeRange = true,
				timelineIndex = 104,
				timerEndOffset = 13,
				timerStartOffset = -11,
				uuid = "872b257b-c2b2-7eb2-aafc-475fa1997649",
				version = 2,
			},
		},
	},
	[106] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "5e99f781-fa7c-82db-b8d9-a0fa77b24b2f",
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
							actionLua = "-- M4S Aetherial Conversion (stored, 38402 fire L->R / 38403 water L->R / 38404 fire R->L / 38405 water R->L) and the\n-- Tail Thrust cast that executes it (38406 fire L / 38407 water L / 38408 fire R / 38409 water R, 5+1s)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nlocal CONV = {[38402] = {\"fire\", -1}, [38403] = {\"water\", -1}, [38404] = {\"fire\", 1}, [38405] = {\"water\", 1}}\nlocal TT = {[38406] = {\"fire\", -1}, [38407] = {\"water\", -1}, [38408] = {\"fire\", 1}, [38409] = {\"water\", 1}}\nlocal c, t = CONV[sp], TT[sp]\nif not (c or t) then return end\ndata.m4_mb = data.m4_mb or {}\nlocal M = data.m4_mb\nif c then M.conv = {t = Now(), k = c[1], s = c[2]}; return end\nif M.ac and Now() - M.ac.t < 3000 then return end\nlocal a = {t = Now(), k = t[1], s = t[2], n = 0}\nlocal cv = M.conv\nif cv and Now() - cv.t < 120000 and (cv.k ~= a.k or cv.s ~= a.s) then a.bad = true end\nM.conv = nil\nM.ac = a\n",
							name = "[Draw] M4S - Aetherial Conversion 3 capture",
							uuid = "03c5b067-e952-6b89-96de-e38bb6f27397",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 678.6,
				name = "[Draw] M4S - Aetherial Conversion 3 capture",
				timeRange = true,
				timelineIndex = 106,
				timerEndOffset = -3,
				timerStartOffset = -22,
				uuid = "86e5b9ed-5a22-c120-8f0a-5872cffb57e5",
				version = 2,
			},
		},
	},
	[108] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "fe6ac0a7-b0bc-0755-8294-a085160557c9",
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
							actionLua = "-- M4S Sunrise Sabbath: at the Sunrise Sabbath cast start (39610 / 0x9ABA) read my Positron (4000, yellow) /\n-- Negatron (4001, blue) debuff: short (23s) = cannon first, tower second; long (38s) = tower first, cannon second.\n-- Short/long is decided against the party (longs are +15s); fallback: more than 28s left = long.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not (e and e.spellID == 39610) then return end\nlocal p = TensorCore.mGetPlayer()\nif not p then return end\nlocal function deb(ent)\n  local b = TensorCore.getBuff(ent, 4000)\n  if b then return true, b.duration end\n  b = TensorCore.getBuff(ent, 4001)\n  if b then return false, b.duration end\nend\ndata.m4_sun = {t0 = Now(), set = 1, tw = {}, cn = {}}\nlocal m = data.m4_sun\nlocal pos, dur = deb(p)\nif pos == nil or not dur then return end\nlocal mn, mx\nfor _, ent in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n  local _, d = deb(ent)\n  if d then\n    if not mn or d < mn then mn = d end\n    if not mx or d > mx then mx = d end\n  end\nend\nlocal long\nif mn and mx and mx - mn > 7.5 then long = dur > (mn + mx) / 2 else long = dur > 28 end\nm.pos = pos\nm.long = long\n",
							name = "[Capture] M4S - Sunrise Sabbath debuff (short/long, colour)",
							uuid = "776199de-84f3-5ab5-a3d4-51d6d0d3f7d9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 690.8,
				name = "[Capture] M4S - Sunrise Sabbath debuff (short/long, colour)",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = 5,
				timerStartOffset = -10,
				uuid = "ca8475e9-4467-49f5-99a3-ea96fce808ad",
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
				name = "Role Draws",
				uuid = "0d22cbdd-8313-f704-9e81-18e9f787318d",
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
							actionLua = "-- M4S Sunrise Sabbath: Wicked Special AOE (38417 / 38419) starts set 2; Soaring Soulpress towers (38440 / 39259)\n-- and Positron/Negatron Stream cannons (38437 / 38438 / 39257 / 39258) mark the current set's part as done.\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nlocal sp = e and e.spellID\nif not sp then return end\nlocal W = (sp == 38417 or sp == 38419)\nlocal T = (sp == 38440 or sp == 39259)\nlocal C = (sp == 38437 or sp == 38438 or sp == 39257 or sp == 39258)\nif not (W or T or C) then return end\nlocal m = data.m4_sun\nif not (m and m.t0 and Now() - m.t0 < 45000) then return end\nif W then\n  if m.set == 1 then m.set = 2; m.t2 = Now() end\n  return\nend\nif T and not m.tw[m.set] then m.tw[m.set] = Now() end\nif C and not m.cn[m.set] then m.cn[m.set] = Now() end\n",
							name = "[Capture] M4S - Sunrise Sabbath set / resolves",
							uuid = "6f9312fe-9c93-0776-b95c-52e2d19b8aab",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 704,
				name = "[Capture] M4S - Sunrise Sabbath set / resolves",
				timeRange = true,
				timelineIndex = 109,
				timerEndOffset = 21,
				timerStartOffset = -12,
				uuid = "2d386fd3-50bc-9f21-a83c-b19c7831286c",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- Sunrise Sabbath set 1 (towers + cannons ~704)\n-- Short debuff = cannon in set 1, tower in set 2; long = tower in set 1, cannon in set 2.\n-- Towers (2 per set) come from the \"birds\" (Wicked Replica 0x43AB on a cardinal): tower = bird + facing * 30\n-- (facing a cardinal) or * 21.21 (facing an intercard) -> the towers are N+S or E+W on the 15y circle edge.\n-- Towers: supports W/S, DPS N/E. Cannons (replicas on intercards with status 2970, extra 0x2F4 yellow /\n-- 0x2F5 blue): bait the OPPOSITE colour of your debuff (Positron/yellow -> blue). Snake prio: supports take the\n-- first of that colour from NW counter-clockwise (NW, SW, SE, NE), DPS the other one. Stand just beside the\n-- cannon on the edge, toward the cardinal WITHOUT a tower, so the beam goes into the death wall away from it.\nlocal SET = 1\nlocal m = data.m4_sun\nif not (m and m.t0 and Now() - m.t0 < 45000 and m.set == SET and m.long ~= nil and m.pos ~= nil) then return end\nlocal cannonTask = (SET == 1) ~= m.long\nif cannonTask and m.cn[SET] then return end\nif not cannonTask and m.tw[SET] then return end\nif cannonTask and SET == 2 and (not m.t2 or Now() - m.t2 < 2500) then return end -- set-2 markers land ~1.7s after the Wicked Special AOE (BossMod states)\nlocal sup = (slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\")\nlocal dps = (slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\")\nif not (sup or dps) then return end\nlocal CX, CZ = 100, 165\nlocal list = TensorCore.entityList(\"contentid=17323\")\nif not list then return end\nlocal axis, bad = nil, false\nlocal cans, ncan = {}, 0\nfor _, r in pairs(list) do\n  local ps = r.pos\n  if ps then\n    local dx, dz = ps.x - CX, ps.z - CZ\n    local ax, az = math.abs(dx), math.abs(dz)\n    local rr = math.sqrt(dx * dx + dz * dz)\n    if rr > 9 and rr < 22 then\n      local card = math.min(ax, az) < 0.414 * math.max(ax, az)\n      local mk = TensorCore.getBuff(r, 2970)\n      local st = mk and mk.stacks and (mk.stacks % 256)\n      if st == 0xF4 or st == 0xF5 then\n        if not card then\n          ncan = ncan + 1\n          local q = (dz < 0 and \"N\" or \"S\") .. (dx < 0 and \"W\" or \"E\")\n          if cans[q] then bad = true end\n          cans[q] = {x = ps.x, z = ps.z, blue = (st == 0xF5)}\n        end\n      elseif card then\n        local h = ps.h or 0\n        local k = math.floor(h / (math.pi / 4) + 0.5)\n        local L = ((k % 2) ~= 0) and 21.2132 or 30\n        local tdx, tdz = ps.x + math.sin(h) * L - CX, ps.z + math.cos(h) * L - CZ\n        local tr = math.sqrt(tdx * tdx + tdz * tdz)\n        if math.abs(tr - 15) < 4 and math.min(math.abs(tdx), math.abs(tdz)) < 4 then\n          local a = (math.abs(tdz) > math.abs(tdx)) and \"NS\" or \"EW\"\n          if axis and axis ~= a then bad = true end\n          axis = a\n        end\n      end\n    end\n  end\nend\nif bad or not axis then return end\nif not cannonTask then\n  if axis == \"NS\" then\n    if sup then go(100, 178) else go(100, 152) end\n  else\n    if sup then go(87, 165) else go(113, 165) end\n  end\n  return\nend\nif ncan ~= 4 then return end\nlocal mine, n = {}, 0\nfor q, c in pairs(cans) do if c.blue == m.pos then mine[q] = c; n = n + 1 end end\nif n ~= 2 then return end\nlocal first\nfor _, q in ipairs({\"NW\", \"SW\", \"SE\", \"NE\"}) do if mine[q] then first = q; break end end\nlocal pick\nif sup then pick = mine[first] else for q, c in pairs(mine) do if q ~= first then pick = c end end end\nif not pick then return end\nlocal cx, cz = pick.x, pick.z\nlocal dx, dz = cx - CX, cz - CZ\nlocal r = math.sqrt(dx * dx + dz * dz)\nif r < 1 then return end\nlocal ix, iz = -dx / r, -dz / r\nlocal qx, qz\nif axis == \"NS\" then qx, qz = (dx < 0) and 85 or 115, 165 else qx, qz = 100, (dz < 0) and 150 or 180 end\nlocal tx, tz = -iz, ix\nif tx * (qx - cx) + tz * (qz - cz) < 0 then tx, tz = -tx, -tz end\nlocal ux, uz = 0.985 * tx + 0.174 * ix, 0.985 * tz + 0.174 * iz\nlocal sx, sz = cx + 2.5 * ux, cz + 2.5 * uz\nlocal sdx, sdz = sx - CX, sz - CZ\nlocal sr = math.sqrt(sdx * sdx + sdz * sdz)\nif sr > 14.4 then sx, sz = CX + sdx * 14.4 / sr, CZ + sdz * 14.4 / sr end\ngo(sx, sz)\n",
							name = "[Draw] M4S - Sunrise Sabbath set 1 (cannon/tower)",
							uuid = "e6c3b26a-7880-9e9f-80ee-4cf80886c11f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 704,
				name = "[Draw] M4S - Sunrise Sabbath set 1 (cannon/tower)",
				timeRange = true,
				timelineIndex = 109,
				timerEndOffset = 2.5,
				timerStartOffset = -10,
				uuid = "a6a15e46-5834-4270-a9be-db81ebb3b300",
				version = 2,
			},
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "d43e49c6-d94e-3cad-bfb0-6c4b8601d6fd",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\nlocal G1 = {T1 = true, H1 = true, M1 = true, R1 = true}\nlocal G2 = {T2 = true, H2 = true, M2 = true, R2 = true}\n-- M4S p2a: Wicked Special (Sunrise Sabbath). 38416 flame sword = center unsafe -> sides (x 87.5 / 112.5);\n-- 38418 lightning = sides unsafe -> middle (x 97.5 / 102.5). Stay on your current half (group side if near x 100),\n-- keep your z. Checked against the helper rects when they were captured.\nlocal CIRCLE, DELAY = true, 0\nlocal m = data.m4_p2a\nlocal ws = m and m.ws\nif not ws then return end\nlocal now = Now()\nif now - ws.t > 12000 or now > ws.te + 500 or now - ws.t < DELAY then return end\nlocal side\nif math.abs(p.pos.x - 100) > 2 then side = (p.pos.x < 100) and -1 or 1\nelseif G1[slot] then side = -1 elseif G2[slot] then side = 1 else return end\nlocal rects = (m.wr and math.abs(m.wr.t - ws.t) < 3000 and #m.wr.list > 0) and m.wr.list or nil\nlocal function zfor(x, z)\n  if CIRCLE then\n    local dx, dz = x - 100, z - 165\n    if dx * dx + dz * dz > 13.5 * 13.5 then\n      local lim = 13.5 * 13.5 - dx * dx\n      if lim < 0 then return nil end\n      local zz = math.sqrt(lim)\n      z = 165 + ((dz < 0) and -zz or zz)\n    end\n    return z\n  end\n  return math.max(151, math.min(179, z))\nend\nlocal function safe(x, z)\n  if not rects then return true end\n  for _, r in ipairs(rects) do\n    local fx, fz = math.sin(r.h), math.cos(r.h)\n    local ddx, ddz = x - r.x, z - r.z\n    local al = ddx * fx + ddz * fz\n    local lat = math.abs(-ddx * fz + ddz * fx)\n    if al > -0.5 and al < 40.5 and lat < r.hw + 0.75 then return false end\n  end\n  return true\nend\nlocal px = 100 + side * (ws.sides and 12.5 or 2.5)\nlocal maxo = CIRCLE and 13 or 19.25\nfor k = 0, 30 do\n  local off = (k % 2 == 0) and (k / 2) * 0.5 or -((k + 1) / 2) * 0.5\n  local x = px + off\n  local o = side * (x - 100)\n  if o >= 0.75 and o <= maxo then\n    local z = zfor(x, p.pos.z)\n    if z and safe(x, z) then go(x, z); return end\n  end\nend\n",
							name = "[Draw] M4S - Wicked Special spot (Sunrise Sabbath)",
							uuid = "12850b09-1309-4f5b-bf11-48ff0f4039a2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 711.8,
				name = "[Draw] M4S - Wicked Special spot (Sunrise Sabbath)",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = 4,
				timerStartOffset = -9,
				uuid = "1d672247-4961-76bc-b0d4-c7da6d433d22",
				version = 2,
			},
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
							actionLua = "-- M4S p2a capture: Sabertail exaflare starts (38389, helpers, 8s cast, r6, step 6.5 every 0.7s),\n-- Wicked Special boss cast (38416 = center AOE -> sides safe, 38418 = sides AOE -> middle safe)\n-- and its helper rects (38417 width 20 / 38419 width 15, length 40). Dedupes (windows of entries can overlap).\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nif sp ~= 38389 and sp ~= 38416 and sp ~= 38418 and sp ~= 38417 and sp ~= 38419 then return end\ndata.m4_p2a = data.m4_p2a or {}\nlocal m = data.m4_p2a\nlocal now = Now()\nlocal ct = tonumber(e.channelTimeMax) or 0\nif sp == 38416 or sp == 38418 then\n  if m.ws and now - m.ws.t < 3000 then return end\n  m.ws = {t = now, te = now + ((ct > 0) and ct or 5) * 1000 + 1000, sides = (sp == 38416)}\n  return\nend\nlocal id = e.entityID\nlocal ent = id and TensorCore.mGetEntity(id)\nlocal ps = ent and ent.pos\nif not ps then return end\nif sp == 38389 then\n  if not m.sab or now - m.sab.t > 20000 then m.sab = {t = now, lines = {}, seen = {}} end\n  local sb = m.sab\n  if sb.seen[id] then return end\n  sb.seen[id] = true\n  sb.last = now\n  sb.ex = nil; sb.spot = nil\n  sb.lines[#sb.lines + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, t0 = now + ((ct > 0) and ct or 8) * 1000}\n  return\nend\nif not m.wr or now - m.wr.t > 3000 then m.wr = {t = now, list = {}, seen = {}} end\nif m.wr.seen[id] then return end\nm.wr.seen[id] = true\nm.wr.list[#m.wr.list + 1] = {x = ps.x, z = ps.z, h = ps.h or 0, hw = (sp == 38417) and 10 or 7.5}\n",
							name = "[Draw] M4S - Wicked Special capture (Sunrise Sabbath)",
							uuid = "56fdaeee-67b8-d315-8819-6ee1ad1280ae",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 711.8,
				name = "[Draw] M4S - Wicked Special capture (Sunrise Sabbath)",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = 5,
				timerStartOffset = -10,
				uuid = "4c707584-736d-aa2b-a074-7ef4e2a11c02",
				version = 2,
			},
		},
	},
	[111] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "b622c7ee-735b-199a-aa0b-5594ede726ba",
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- Sunrise Sabbath set 2 (after Wicked Special, ~720.6)\n-- Short debuff = cannon in set 1, tower in set 2; long = tower in set 1, cannon in set 2.\n-- Towers (2 per set) come from the \"birds\" (Wicked Replica 0x43AB on a cardinal): tower = bird + facing * 30\n-- (facing a cardinal) or * 21.21 (facing an intercard) -> the towers are N+S or E+W on the 15y circle edge.\n-- Towers: supports W/S, DPS N/E. Cannons (replicas on intercards with status 2970, extra 0x2F4 yellow /\n-- 0x2F5 blue): bait the OPPOSITE colour of your debuff (Positron/yellow -> blue). Snake prio: supports take the\n-- first of that colour from NW counter-clockwise (NW, SW, SE, NE), DPS the other one. Stand just beside the\n-- cannon on the edge, toward the cardinal WITHOUT a tower, so the beam goes into the death wall away from it.\nlocal SET = 2\nlocal m = data.m4_sun\nif not (m and m.t0 and Now() - m.t0 < 45000 and m.set == SET and m.long ~= nil and m.pos ~= nil) then return end\nlocal cannonTask = (SET == 1) ~= m.long\nif cannonTask and m.cn[SET] then return end\nif not cannonTask and m.tw[SET] then return end\nif cannonTask and SET == 2 and (not m.t2 or Now() - m.t2 < 2500) then return end -- set-2 markers land ~1.7s after the Wicked Special AOE (BossMod states)\nlocal sup = (slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\")\nlocal dps = (slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\")\nif not (sup or dps) then return end\nlocal CX, CZ = 100, 165\nlocal list = TensorCore.entityList(\"contentid=17323\")\nif not list then return end\nlocal axis, bad = nil, false\nlocal cans, ncan = {}, 0\nfor _, r in pairs(list) do\n  local ps = r.pos\n  if ps then\n    local dx, dz = ps.x - CX, ps.z - CZ\n    local ax, az = math.abs(dx), math.abs(dz)\n    local rr = math.sqrt(dx * dx + dz * dz)\n    if rr > 9 and rr < 22 then\n      local card = math.min(ax, az) < 0.414 * math.max(ax, az)\n      local mk = TensorCore.getBuff(r, 2970)\n      local st = mk and mk.stacks and (mk.stacks % 256)\n      if st == 0xF4 or st == 0xF5 then\n        if not card then\n          ncan = ncan + 1\n          local q = (dz < 0 and \"N\" or \"S\") .. (dx < 0 and \"W\" or \"E\")\n          if cans[q] then bad = true end\n          cans[q] = {x = ps.x, z = ps.z, blue = (st == 0xF5)}\n        end\n      elseif card then\n        local h = ps.h or 0\n        local k = math.floor(h / (math.pi / 4) + 0.5)\n        local L = ((k % 2) ~= 0) and 21.2132 or 30\n        local tdx, tdz = ps.x + math.sin(h) * L - CX, ps.z + math.cos(h) * L - CZ\n        local tr = math.sqrt(tdx * tdx + tdz * tdz)\n        if math.abs(tr - 15) < 4 and math.min(math.abs(tdx), math.abs(tdz)) < 4 then\n          local a = (math.abs(tdz) > math.abs(tdx)) and \"NS\" or \"EW\"\n          if axis and axis ~= a then bad = true end\n          axis = a\n        end\n      end\n    end\n  end\nend\nif bad or not axis then return end\nif not cannonTask then\n  if axis == \"NS\" then\n    if sup then go(100, 178) else go(100, 152) end\n  else\n    if sup then go(87, 165) else go(113, 165) end\n  end\n  return\nend\nif ncan ~= 4 then return end\nlocal mine, n = {}, 0\nfor q, c in pairs(cans) do if c.blue == m.pos then mine[q] = c; n = n + 1 end end\nif n ~= 2 then return end\nlocal first\nfor _, q in ipairs({\"NW\", \"SW\", \"SE\", \"NE\"}) do if mine[q] then first = q; break end end\nlocal pick\nif sup then pick = mine[first] else for q, c in pairs(mine) do if q ~= first then pick = c end end end\nif not pick then return end\nlocal cx, cz = pick.x, pick.z\nlocal dx, dz = cx - CX, cz - CZ\nlocal r = math.sqrt(dx * dx + dz * dz)\nif r < 1 then return end\nlocal ix, iz = -dx / r, -dz / r\nlocal qx, qz\nif axis == \"NS\" then qx, qz = (dx < 0) and 85 or 115, 165 else qx, qz = 100, (dz < 0) and 150 or 180 end\nlocal tx, tz = -iz, ix\nif tx * (qx - cx) + tz * (qz - cz) < 0 then tx, tz = -tx, -tz end\nlocal ux, uz = 0.985 * tx + 0.174 * ix, 0.985 * tz + 0.174 * iz\nlocal sx, sz = cx + 2.5 * ux, cz + 2.5 * uz\nlocal sdx, sdz = sx - CX, sz - CZ\nlocal sr = math.sqrt(sdx * sdx + sdz * sdz)\nif sr > 14.4 then sx, sz = CX + sdx * 14.4 / sr, CZ + sdz * 14.4 / sr end\ngo(sx, sz)\n",
							name = "[Draw] M4S - Sunrise Sabbath set 2 (cannon/tower)",
							uuid = "78225897-3644-8c88-aea4-98927fc72961",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 720.6,
				name = "[Draw] M4S - Sunrise Sabbath set 2 (cannon/tower)",
				timeRange = true,
				timelineIndex = 111,
				timerEndOffset = 2.5,
				timerStartOffset = -10,
				uuid = "85c32060-06b3-30da-90ff-d68c679691ab",
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
				name = "Role Draws",
				uuid = "71b34336-c8ca-184a-817d-f6519d1fe2e5",
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
							actionLua = "-- M4S Aetherial Conversion (stored, 38402 fire L->R / 38403 water L->R / 38404 fire R->L / 38405 water R->L) and the\n-- Tail Thrust cast that executes it (38406 fire L / 38407 water L / 38408 fire R / 38409 water R, 5+1s)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal sp = e.spellID\nlocal CONV = {[38402] = {\"fire\", -1}, [38403] = {\"water\", -1}, [38404] = {\"fire\", 1}, [38405] = {\"water\", 1}}\nlocal TT = {[38406] = {\"fire\", -1}, [38407] = {\"water\", -1}, [38408] = {\"fire\", 1}, [38409] = {\"water\", 1}}\nlocal c, t = CONV[sp], TT[sp]\nif not (c or t) then return end\ndata.m4_mb = data.m4_mb or {}\nlocal M = data.m4_mb\nif c then M.conv = {t = Now(), k = c[1], s = c[2]}; return end\nif M.ac and Now() - M.ac.t < 3000 then return end\nlocal a = {t = Now(), k = t[1], s = t[2], n = 0}\nlocal cv = M.conv\nif cv and Now() - cv.t < 120000 and (cv.k ~= a.k or cv.s ~= a.s) then a.bad = true end\nM.conv = nil\nM.ac = a\n",
							name = "[Draw] M4S - Tail Thrust 3 capture casts",
							uuid = "b0d8e4cb-d57c-4ad0-a09a-40780c958aef",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 727.9,
				name = "[Draw] M4S - Tail Thrust 3 capture casts",
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = 2,
				timerStartOffset = -13,
				uuid = "32e296bc-1f7d-7391-80b1-44f446b382f2",
				version = 2,
			},
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
							actionLua = "-- M4S Tail Thrust hits: 38414 Tail Thrust (fire circle r18) / 38415 Switch of Tides (water knockback 25)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nif e.spellID ~= 38414 and e.spellID ~= 38415 then return end\nlocal a = data.m4_mb and data.m4_mb.ac\nif not a or Now() - a.t > 20000 then return end\nif a.last and Now() - a.last < 1500 then return end\na.last = Now()\na.n = (a.n or 0) + 1\n",
							name = "[Draw] M4S - Tail Thrust 3 capture hits",
							uuid = "3cb8c199-c469-29d1-a6db-e05efbc38333",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 727.9,
				name = "[Draw] M4S - Tail Thrust 3 capture hits",
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = 9,
				timerStartOffset = -3,
				uuid = "798db490-a56b-ede1-8b77-5ce3ba238a29",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- M4S Aetherial Conversion / Tail Thrust: two hits at (100 -/+ 10, 165), first on the side the conversion names.\n-- Fire = r18 circle: dodge along the north edge (start opposite the first circle, then cross). Water = knockback 25\n-- from the red dot: stand just inside the first dot (pushed across), then just inside the second dot.\nlocal a = data.m4_mb and data.m4_mb.ac\nif not a or a.bad or Now() - a.t > 16000 or (a.n or 0) >= 2 then return end\nlocal s = a.s\nif s ~= 1 and s ~= -1 then return end\nif a.k == \"fire\" then\n  if a.n == 0 then go(100 - 6 * s, 151) else go(100 + 6 * s, 151) end\nelseif a.k == \"water\" then\n  if a.n == 0 then go(100 + 9 * s, 165) else go(100 - 9 * s, 165) end\nend\n",
							name = "[Draw] M4S - Tail Thrust 3 fire/water spot",
							uuid = "685338d1-5caf-8799-aa6e-0c1b4f422db3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 727.9,
				name = "[Draw] M4S - Tail Thrust 3 fire/water spot",
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = 8,
				timerStartOffset = -10,
				uuid = "87c6ea58-c6b7-35df-a4aa-4d402d9a8421",
				version = 2,
			},
		},
	},
	[114] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Role Draws",
				uuid = "a7b5ad35-f121-20aa-859d-0e788436d244",
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
							actionLua = "-- Sword Quiver fallback: the 95F9/95FA/95FB ability lands ~5.0-5.2s after its cast starts, at cast end (cactbot timeline: ability 743.1 -> Burst 751.8 = 8.7s; BossMod: Burst = cast end + 8.9s)\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal V = {[38393] = \"N\", [38394] = \"C\", [38395] = \"S\"}\nlocal v = V[e.spellID]\nif not v then return end\nlocal s = data.m4_sq\nif s and s.v == v and Now() - s.t < 10000 then return end\ndata.m4_sq = {t = Now() - 5000, v = v}\n",
							name = "[Draw] M4S - Sword Quiver capture (ability fallback)",
							uuid = "ed8394ab-8a8c-d014-baca-c157343ed717",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 743.1,
				name = "[Draw] M4S - Sword Quiver capture (ability fallback)",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 48,
				timerStartOffset = -12,
				uuid = "309a4335-8209-fc92-99ff-3169f15eceec",
				version = 2,
			},
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
							actionLua = "local Ro = AnyoneCore and AnyoneCore.Roster\nlocal slot = Ro and Ro.mySlot and Ro.mySlot()\nif not slot and GetCurrentRole then local r = GetCurrentRole(); slot = (r == \"MT\" and \"T1\") or (r == \"OT\" and \"T2\") or r end\nif not slot then return end\nlocal p = TensorCore.mGetPlayer()\nif not (p and p.pos) then return end\nlocal function go(x, z)\n  local dest = {x = x, y = 0, z = z}\n  local g = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local d = TensorCore.getDistance2d(p.pos, dest)\n  if d > 0.8 then\n    local tip = math.min(1.5, d * 0.35)\n    g:addArrow(p.pos.x, dest.y, p.pos.z, TensorCore.getHeadingToTarget(p.pos, dest), math.max(0.1, d - tip), 0.65, tip, 1.3, false, flags)\n  end\n  g:addCircle(dest.x, dest.y, dest.z, 0.65, false, flags)\nend\n-- Sword Quiver x3: partner stacks. 3 fixed 12-wide lines through (100,165) at 0 / +-118 deg, the 4th line\n-- is horizontal at z 155 (N), 165 (C) or 175 (S). Melee pairs take the northern safe set, ranged pairs the southern:\n-- N -> melee sides, ranged back; C -> melee front, ranged back; S -> melee front, ranged sides.\n-- G1 (T1 M1 / H1 R1) west, G2 east.\nlocal s = data.m4_sq\nif not (s and s.t and s.v) then return end\nlocal el = Now() - s.t\nif el < 0 or el > 16000 then return end\nlocal melee = (slot == \"T1\" or slot == \"M1\" or slot == \"T2\" or slot == \"M2\")\nlocal ranged = (slot == \"H1\" or slot == \"R1\" or slot == \"H2\" or slot == \"R2\")\nif not (melee or ranged) then return end\nlocal west = (slot == \"T1\" or slot == \"M1\" or slot == \"H1\" or slot == \"R1\")\nlocal zone\nif s.v == \"N\" then zone = melee and \"side\" or \"back\"\nelseif s.v == \"C\" then zone = melee and \"front\" or \"back\"\nelseif s.v == \"S\" then zone = melee and \"front\" or \"side\"\nelse return end\nlocal x, z\nif zone == \"side\" then x, z = 81, 165\nelseif zone == \"front\" then x, z = 91.3, 151\nelse x, z = 91.3, 179 end\nif not west then x = 200 - x end\ngo(x, z)\n",
							name = "[Draw] M4S - Sword Quiver x3 partner spot",
							uuid = "080b3bef-2bd3-1048-84d3-84c961c00e55",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 743.1,
				name = "[Draw] M4S - Sword Quiver x3 partner spot",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 48,
				timerStartOffset = -10,
				uuid = "3c902075-c0ad-9784-834b-1c2ce4141517",
				version = 2,
			},
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
							actionLua = "-- Sword Quiver: BossP2 (0x43AE) cast 38393 (95F9, horizontal line N) / 38394 (95FA, C) / 38395 (95FB, S); 5.0+1.3s cast\nself.used = true -- one run per queued event (without this TensorReactions re-runs it every tick)\nlocal e = eventArgs\nif not e then return end\nlocal V = {[38393] = \"N\", [38394] = \"C\", [38395] = \"S\"}\nlocal v = V[e.spellID]\nif not v then return end\ndata.m4_sq = {t = Now(), v = v}\n",
							name = "[Draw] M4S - Sword Quiver capture (cast start)",
							uuid = "b4f8aab3-5810-93bc-9397-95e399428beb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Role Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 743.1,
				name = "[Draw] M4S - Sword Quiver capture (cast start)",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 48,
				timerStartOffset = -12,
				uuid = "5173f639-49c7-1b12-b069-1512db50ca9e",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "r4s",
	version = "1.0.2",
}



return tbl
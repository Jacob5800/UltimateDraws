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
							conditions = 
							{
								
								{
									"d32b2746-f484-f26f-a743-2db00ce06692",
									true,
								},
							},
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
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nif not p or p.job ~= 39 or p.localmapid ~= 887 or not p.alive or not p.incombat then return false end\nlocal doll = TensorCore.mGetTarget()\nif not doll or doll.contentid ~= 9214 or not doll.targetable or not doll.hp or doll.hp.current <= 0 or doll.hp.percent >= 40 then return false end\nlocal personal\nfor _, tether in ipairs(Argus.getTethersOnEnt(p.id)) do\n    local partner = tether.partnerid and TensorCore.mGetEntity(tether.partnerid)\n    if partner and partner.contentid == 9214 then\n        if personal and personal ~= partner.id then return false end\n        personal = partner.id\n    end\nend\nif personal and personal ~= doll.id then return false end\nlocal confirmed = personal == doll.id\nfor _, tether in ipairs(Argus.getTethersOnEnt(doll.id)) do\n    if tether.partnerid then\n        if tether.partnerid ~= p.id then return false end\n        confirmed = true\n    end\nend\nif not confirmed then return false end\ndata.teaAcr3SoulGaugeDoll = doll.id\nreturn true",
							name = "Your tethered doll below 40%",
							uuid = "d32b2746-f484-f26f-a743-2db00ce06692",
							version = 3,
						},
					},
				},
				mechanicTime = 19.5,
				name = "[RPR] Disable Soul Gauge below 40% on your doll",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 46,
				timerOffset = 10,
				timerStartOffset = 11,
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
								
								{
									"be59042a-297b-74c2-810e-ce212466635d",
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
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local doll = TensorCore.mGetTarget()\nreturn not data.teaAcr3SoulGaugeDoll and doll ~= nil and doll.hp ~= nil and doll.hp.percent >= 40",
							name = "Doll HP at least 40%",
							uuid = "be59042a-297b-74c2-810e-ce212466635d",
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
	[4] = 
	{
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				execute = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 887 or not player.alive or not player.incombat then return end\nif data.tea_autosim or data.teaDollSafety then return end\n\nlocal clock = TensorReactions_CurrentCombatTimer\nif clock < 30 then return end\nlocal now = Now()\nlocal S = data.teaAcr3DollTargeting\nif not S then\n S = {nextTick = 0}\n data.teaAcr3DollTargeting = S\nend\nif now < S.nextTick then return end\nS.nextTick = now + 50\n\nlocal function logDecision(decision, intended, reason, hp, extra)\n local key = decision .. \":\" .. tostring(intended) .. \":\" .. tostring(player.targetid) .. \":\" .. reason\n if key == S.lastLog and now - S.lastLogAt < 2000 then return end\n S.lastLog, S.lastLogAt = key, now\n TensorCore.timelineLogToFile(string.format(\n  \"[TEA ACR3 Doll] role=%s job=%s decision=%s intended=%s current=%s reason=%s hp=%s cast=%s source=%s %s\",\n  tostring(S.role), tostring(player.job), decision, tostring(intended), tostring(player.targetid),\n  reason, tostring(hp), tostring(player.castinginfo and player.castinginfo.castingid), tostring(S.source), extra or \"\"))\nend\n\nlocal function selectTarget(target, reason, hp)\n if player.targetid == target.id then\n  if S.pending == target.id then logDecision(\"confirmed\", target.id, reason, hp); S.pending = nil end\n  return\n end\n if S.pending == target.id and now - S.requestAt < 250 then return end\n local accepted = Player:SetTarget(target.id)\n S.pending, S.requestAt = target.id, now\n logDecision(\"requested\", target.id, reason, hp, \"result=\"..tostring(accepted))\nend\n\nlocal function returnToLiquid(reason, hp)\n local current = TensorCore.mGetTarget()\n if S.pending and player.targetid == S.pending and current and current.contentid == 9211 then\n  selectTarget(current, reason, hp)\n end\n local cast = player.castinginfo\n local targets = cast and cast.castingtargets\n local castingOnDoll = (not targets or #targets == 0) and current and current.contentid == 9214\n for _, id in ipairs(targets or {}) do\n  local target = id == S.doll or TensorCore.mGetEntity(id)\n  if target == true or (target and target.contentid == 9214) then castingOnDoll = true break end\n end\n if castingOnDoll and cast and cast.castingid ~= 0 then\n  ActionList:StopCasting()\n  logDecision(\"stop cast\", S.doll, reason, hp)\n end\n if not current or current.contentid ~= 9214 then return end\n for id in pairs(TensorCore.entityList(\"contentid=9211\")) do\n  local boss = TensorCore.mGetEntity(id)\n  if boss and Argus.getEntityModel(id) == 11335 and boss.targetable and boss.attackable\n   and boss.hp.current > 0 and TensorCore.getDistance2d(player.pos, boss.pos) <= 30 + boss.hitradius then\n   selectTarget(boss, reason, hp)\n   return\n  end\n end\n selectTarget(player, \"Living Liquid unavailable; clear doll target\", hp)\nend\n\nlocal R = AnyoneCore and AnyoneCore.Roster\nlocal rosterReady = R and R.current() and R.isReady()\nS.role = rosterReady and R.mySlot() or nil\nif S.role and S.role ~= \"M1\" and S.role ~= \"M2\" and S.role ~= \"R1\" and S.role ~= \"R2\" then return end\n\nif clock > 65 or S.finished then\n S.finished = true\n returnToLiquid(clock > 65 and \"doll window expired\" or \"cutoff latched\")\n return\nend\n\nlocal personal\nfor _, tether in ipairs(Argus.getTethersOnEnt(player.id)) do\n local entity = tether.partnerid and TensorCore.mGetEntity(tether.partnerid)\n if entity and entity.contentid == 9214 then\n  if personal and personal ~= entity.id then\n   logDecision(\"blocked\", S.doll, \"multiple personal doll tethers\")\n   returnToLiquid(\"ambiguous personal tether\")\n   return\n  end\n  personal = entity.id\n end\nend\nif personal then S.source=\"personal tether\" end\nif personal and personal ~= S.doll then\n S.doll = personal\n logDecision(\"assigned\", personal, \"actual personal doll tether\")\nend\n\nlocal function assignQuadrant()\n  local side={M1=3,M2=2,R1=1,R2=4}\n  if side[S.role]==nil then logDecision(\"inactive\",nil,\"not a DPS slot\");return end\n  local dolls,rages={},{}\n  for id in pairs(TensorCore.entityList(\"contentid=9214\")) do\n   local e=TensorCore.mGetEntity(id)\n   if e and Argus.getEntityModel(id)==11338 and e.targetable and e.hp.current>0 then dolls[#dolls+1]=e end\n  end\n  for id in pairs(TensorCore.entityList(\"contentid=9213\")) do\n   local e=TensorCore.mGetEntity(id)\n   if e and Argus.getEntityModel(id)==11337 then rages[#rages+1]=e end\n  end\n  if #dolls~=4 or #rages~=3 then logDecision(\"waiting\",nil,\"geometry incomplete\",nil,string.format(\"dolls=%d tornadoes=%d\",#dolls,#rages));return end\n  local ax,az=0,0\n  for _,e in ipairs(rages) do ax=ax+e.pos.x/3;az=az+e.pos.z/3 end\n  local south,best\n  for _,e in ipairs(rages) do\n   local d=(e.pos.x-ax)^2+(e.pos.z-az)^2\n   if not best or d<best then south=e;best=d end\n  end\n  local sx,sz=south.pos.x-100,south.pos.z-100\n  local len=math.sqrt(sx*sx+sz*sz);if len<10 then logDecision(\"blocked\",nil,\"invalid tornado geometry\");return end\n  local nx,nz=-sx/len,-sz/len\n  -- East is clockwise from relative north in game X/Z coordinates.\n  local ex,ez=-nz,nx\n  local diagonal=math.sqrt(0.5)\n  local neX,neZ=(nx+ex)*diagonal,(nz+ez)*diagonal\n  local seX,seZ=(ex-nx)*diagonal,(ez-nz)*diagonal\n  local vectors={{neX,neZ},{seX,seZ},{-neX,-neZ},{-seX,-seZ}}\n  local chosen,used={},{}\n  for i,v in ipairs(vectors) do\n   local pick,score\n   for _,e in ipairs(dolls) do\n    local dx,dz=e.pos.x-100,e.pos.z-100\n    local dot=(dx*v[1]+dz*v[2])/math.sqrt(dx*dx+dz*dz)\n    if not score or dot>score then pick=e;score=dot end\n   end\n   if not pick or score<0.8 or used[pick.id] then logDecision(\"blocked\",nil,\"ambiguous doll geometry\");return end\n   chosen[i]=pick.id;used[pick.id]=true\n  end\n  S.doll=chosen[side[S.role]]\n  S.source=\"relative quadrant\"\n  logDecision(\"assigned\",S.doll,\"LPDU relative quadrant\")\nend\nif not personal and not rosterReady then\n returnToLiquid(\"roster unavailable\")\n logDecision(\"waiting\", S.doll, \"roster not ready and no personal tether\")\n return\nend\nif not S.doll then\n if now < (S.nextGeometryAt or 0) then return end\n S.nextGeometryAt=now+200\n assignQuadrant()\n if not S.doll then returnToLiquid(\"assignment not ready\"); return end\nend\nlocal doll = TensorCore.mGetEntity(S.doll)\nlocal hp = doll and doll.hp.percent\nif not doll or not doll.targetable or doll.hp.current <= 0 or hp <= 24.9 then\n S.finished = true\n returnToLiquid(hp and hp <= 24.9 and \"HP <= 24.9\" or \"doll removed/fed\", hp)\n return\nend\nfor _, tether in ipairs(Argus.getTethersOnEnt(doll.id)) do\n if tether.partnerid and tether.partnerid ~= player.id then\n  logDecision(\"blocked\", doll.id, \"doll tether owned by another player\", hp)\n  returnToLiquid(\"doll owned by another player\", hp)\n  return\n end\nend\nif not doll.attackable or TensorCore.getDistance2d(player.pos, doll.pos) > 30 + doll.hitradius then\n logDecision(\"blocked\", doll.id, \"doll unavailable or out of range\", hp,string.format(\"distance=%.2f\",TensorCore.getDistance2d(player.pos,doll.pos)))\n returnToLiquid(\"doll unavailable or out of range\", hp)\n return\nend\nif player.castinginfo and player.castinginfo.castingid ~= 0 and player.targetid ~= doll.id then\n logDecision(\"waiting\", doll.id, \"preserve current cast\", hp)\n return\nend\nselectTarget(doll, \"damage assigned doll\", hp)",
				executeType = 2,
				mechanicTime = 35.8,
				name = "[ACR3] TEA LPDU doll targeting",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 40,
				timerStartOffset = -5.8000001907349,
				uuid = "f9726e52-c4fa-5315-ba76-61bb6a743505",
				version = 2,
			},
		},
	},
	[5] = 
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
							conditions = 
							{
								
								{
									"debde90f-c526-4a35-be44-874a320fe10d",
									true,
								},
								
								{
									"c3033626-55fa-bc17-9e8d-e9db1a1a4349",
									true,
								},
							},
							gVar = "ACR_TensorReaper3_AOE",
							name = "Turn AoE back on",
							uuid = "a6e2f640-c38e-5419-a882-e2fdca1d1e71",
							version = 2.1,
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
							localmapid = 887,
							name = "TEA only",
							uuid = "debde90f-c526-4a35-be44-874a320fe10d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if data.tea_autosim or data.teaDollSafety then return false end\nlocal seen = data.teaAcr3AoeSeenDolls\nif not seen then\n    seen = {count = 0}\n    data.teaAcr3AoeSeenDolls = seen\nend\nlocal active = false\nfor id, doll in pairs(TensorCore.entityList(\"contentid=9214\")) do\n    if doll.targetable and doll.hp and doll.hp.current > 0 then\n        active = true\n        if not seen[id] then\n            seen[id] = true\n            seen.count = seen.count + 1\n        end\n    end\nend\nreturn seen.count >= 4 and not active",
							name = "All four dolls spawned and resolved",
							uuid = "c3033626-55fa-bc17-9e8d-e9db1a1a4349",
							version = 3,
						},
					},
				},
				mechanicTime = 36.7,
				name = "[ACR3] Enable AoE after all Jagd Dolls",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 35,
				timerStartOffset = -6,
				uuid = "b9f228d9-87a4-ba7b-ad5f-8f2a6770e36e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				execute = "local p = TensorCore.mGetPlayer()\nlocal id = data.teaAcr3SoulGaugeDoll\nif not id or not p or p.localmapid ~= 887 or p.job ~= 39 then return end\n\nlocal doll = TensorCore.mGetEntity(id)\nif doll and doll.targetable and (not doll.hp or doll.hp.current > 0) then return end\nif type(_G.ACR_TensorReaper3_SoulGauge) ~= \"boolean\" then return end\n_G.ACR_TensorReaper3_SoulGauge = true\ndata.teaAcr3SoulGaugeDoll = nil\nself.used = true",
				executeType = 2,
				mechanicTime = 36.7,
				name = "[RPR] Restore Soul Gauge after your doll resolves",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 45,
				timerStartOffset = -6,
				uuid = "4c2087c6-9c51-c844-b706-9868ed847d3f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				eventType = 9,
				execute = "local old = eventArgs.oldData\nif old and old.teaAcr3SoulGaugeDoll and type(_G.ACR_TensorReaper3_SoulGauge) == \"boolean\" then\n    _G.ACR_TensorReaper3_SoulGauge = true\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 36.7,
				name = "[RPR] Restore doll Soul Gauge guard on wipe",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 1400,
				timerStartOffset = -60,
				uuid = "80479a13-8969-fee5-8fcd-b6adb34a12ed",
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
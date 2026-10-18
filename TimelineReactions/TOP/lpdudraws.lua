local tbl = 
{
	[3] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Core",
				uuid = "94ce8429-76e0-0837-b425-d766a8daf468",
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
							actionLua = "\nif data.topLpdu then self.used=true return end\nlocal S={owned={},issued={},line={},towers={},towerSeen={},step=0}\ndata.topLpdu=S\nS.green=TensorCore.getStaticDrawer(0xB333FF33,2)\nS.red=TensorCore.getStaticDrawer(0x803333FF,2)\nS.flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nfunction S.keep(id)\n if id then S.owned[id]=Now()+180000 end\n return id\nend\nfunction S.clearGoal()\n if S.arrow then Argus.deleteTimedShape(S.arrow); S.owned[S.arrow]=nil; S.arrow=nil end\n if S.ring then Argus.deleteTimedShape(S.ring); S.owned[S.ring]=nil; S.ring=nil end\n S.goal=nil;S.ringState=nil\nend\nfunction S.ready()\n local R=AnyoneCore.Roster\n return R and R.current() and R.isReady()\nend\nfunction S.say(text,seconds) AnyoneCore.Shotcall(text,true,seconds or 3,false) end\nfunction S.go(key,pos,text,seconds,radius)\n if not S.ready() then return false end\n local p=TensorCore.mGetPlayer()\n if not p or not p.pos or not pos then return false end\n if S.issued[key] then return true end\n S.clearGoal()\n local dest={x=pos.x,y=0,z=pos.z}\n S.goal={key=key,pos=dest,expires=Now()+(seconds or 4)*1000,radius=radius or 1}\n S.issued[key]=true\n local arrowOnly=string.find(key,'loop-clear-',1,true)==1 or string.find(key,'panto-clockwise-',1,true)==1 or string.find(key,'panto-return-',1,true)==1 or key=='panto-flame-start' or string.find(key,'p6-exa-middle-',1,true)==1 or key=='p6-meteor-middle' or S.p6ArrowOnlyPending\n S.goal.arrowOnly=arrowOnly\n if not arrowOnly then\n S.ring=S.keep(S.green:addTimedCircle((seconds or 4)*1000,dest.x,dest.y,dest.z,radius or 1,0,false,true,S.flags))\n S.ringState={x=dest.x,y=dest.y,z=dest.z,radius=radius or 1,expires=S.goal.expires}\n end\n if text and text~='' then S.say(text,math.min(seconds or 4,4)) end\n return true\nend\nfunction S.polar(angle,radius)\n local p=TensorCore.mGetPlayer()\n return {x=100+math.sin(angle)*radius,y=0,z=100-math.cos(angle)*radius}\nend\nfunction S.dir(pos)\n local a=math.atan2(pos.x-100,100-pos.z)\n return math.floor((a+math.pi/4)/(math.pi/2))%4\nend\nfunction S.lineNumber(e)\n for id,n in pairs({[3004]=1,[3005]=2,[3006]=3,[3451]=4}) do\n  if TensorCore.hasBuff(e,id) then return n end\n end\nend\nfunction S.pair(priority,number)\n if S.mode=='loop' and Settings.FFXIVMINION.LPDU_TOP_AM_loop==1 then priority='M1 M2 T1 T2 R1 R2 H1 H2' end\n local R=AnyoneCore.Roster\n if not S.ready() then return end\n local found={}\n for slot in string.gmatch(priority,'%S+') do\n  local e=R.entOf(slot)\n  if e and (S.line[e.id] or S.lineNumber(e))==number then found[#found+1]=e.id end\n end\n if #found~=2 then return end\n local p=TensorCore.mGetPlayer()\n if p.id==found[1] then return 1,found[2] end\n if p.id==found[2] then return 2,found[1] end\nend\nfunction S.pantoPair(number)\n local R=AnyoneCore.Roster\n if not S.ready() then return end\n local pair={}\n for _,slot in ipairs({'T1','M1','R1','H1','T2','M2','R2','H2'}) do\n  local e=R.entOf(slot)\n  if e and (S.line[e.id] or S.lineNumber(e))==number then\n   pair[#pair+1]={id=e.id,group=(slot=='T1' or slot=='M1' or slot=='R1' or slot=='H1') and 1 or 2}\n  end\n end\n if #pair~=2 then return end\n if pair[1].group==pair[2].group then pair[1].group=3-pair[1].group end\n local id=TensorCore.mGetPlayer().id\n if id==pair[1].id then return pair[1].group,pair[2].id end\n if id==pair[2].id then return pair[2].group,pair[1].id end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"ac273533-ff2d-81fc-95f5-fe2d13ac665e",
									true,
								},
							},
							name = "[Core] LPDU personal guidance",
							uuid = "8b2a2d4a-1edc-4965-99fa-07eb267de74e",
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
							conditionLua = "return data.topLpdu==nil",
							name = "Initialize only missing state",
							uuid = "ac273533-ff2d-81fc-95f5-fe2d13ac665e",
							version = 3,
						},
					},
				},
				displayPath = "Core",
				mechanicTime = 15,
				name = "[Core] LPDU personal guidance",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "79b1cf7e-e43b-f03a-84fa-7756895c5baa",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal g=S.goal\nif not g or not S.ready() then self.used=true return end\nlocal remaining=g.expires-Now()\nif remaining<=0 then S.clearGoal(); self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then self.used=true return end\ng.pos.y=0\nlocal radius=g.radius or 1\nlocal state=S.ringState\nif S.ring and (not state or state.x~=g.pos.x or state.y~=g.pos.y or state.z~=g.pos.z or state.expires~=g.expires or state.radius~=radius) then\n local updated=S.green:updateTimedCircle(S.ring,remaining,g.pos.x,g.pos.y,g.pos.z,radius,0,false,true,S.flags)\n if not updated then\n  S.owned[S.ring]=nil\n  S.ring=S.keep(S.green:addTimedCircle(remaining,g.pos.x,g.pos.y,g.pos.z,radius,0,false,true,S.flags))\n end\n if not state then state={};S.ringState=state end\n state.x=g.pos.x;state.y=g.pos.y;state.z=g.pos.z;state.radius=radius;state.expires=g.expires\nend\nlocal distance=TensorCore.getDistance2d(p.pos,g.pos)\nif distance<0.7 then\n if S.arrow then Argus.deleteTimedShape(S.arrow); S.owned[S.arrow]=nil; S.arrow=nil end\n self.used=true return\nend\nlocal h=TensorCore.getHeadingToTarget(p.pos,g.pos)\nlocal tip=math.min(1.5,distance*0.4)\nif S.arrow then\n local updated=S.green:updateTimedArrow(S.arrow,remaining,p.pos.x,0,p.pos.z,h,math.max(0.1,distance-tip),0.6,tip,1.4,0,false,S.flags)\n if not updated then\n  S.owned[S.arrow]=nil\n  S.arrow=S.keep(S.green:addTimedArrow(remaining,p.pos.x,0,p.pos.z,h,math.max(0.1,distance-tip),0.6,tip,1.4,0,false,S.flags))\n end\nelse\n S.arrow=S.keep(S.green:addTimedArrow(remaining,p.pos.x,0,p.pos.z,h,math.max(0.1,distance-tip),0.6,tip,1.4,0,false,S.flags))\nend\nfor id,expiry in pairs(S.owned) do if Now()>expiry then S.owned[id]=nil end end\nself.used=true\n",
							conditions = 
							{
								
								{
									"b87c162e-5b19-d3fd-87dc-66585006f9b0",
									true,
								},
							},
							name = "[Core] Follow personal arrow",
							uuid = "b7a243ba-5202-761f-bbb0-803af92ead27",
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
							conditionLua = "return data.topLpdu~=nil and data.topLpdu.goal~=nil",
							name = "Matching mechanic",
							uuid = "b87c162e-5b19-d3fd-87dc-66585006f9b0",
							version = 3,
						},
					},
				},
				displayPath = "Core",
				loop = true,
				mechanicTime = 15,
				name = "[Core] Follow personal arrow",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "36ae1ebe-ebfe-3852-b0d6-7ae2044016ff",
				version = 2,
			},
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
							actionLua = "\nlocal old=eventArgs.oldData and eventArgs.oldData.topLpdu\nif old then for id in pairs(old.owned or {}) do Argus.deleteTimedShape(id) end end\ndata.topLpdu=nil\nself.used=true\n",
							name = "[Core] Clear owned draws on wipe",
							uuid = "e5e4ef47-7f13-d6ab-8482-af0bd80255e0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Core",
				eventType = 9,
				loop = true,
				mechanicTime = 15,
				name = "[Core] Clear owned draws on wipe",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "97536aa3-a478-39e6-ad87-5efe84e4e912",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.weapon then\n local W=S.weapon\n if not W.expiryGuardVersion then\n function W.active(phase)\n local list={};local first=math.huge\n for _,e in pairs(W.entries)do\n  if not W.resolved[e.id] and e.phase==phase and e.deadline>=Now()-300 then first=math.min(first,e.deadline)end\n end\n for _,e in pairs(W.entries)do\n  if not W.resolved[e.id] and e.phase==phase and e.deadline>=Now()-300 and e.deadline<=first+2100 then list[#list+1]=e end\n end\n return list\nend\n\n  W.expiryGuardVersion=1\n end\n self.used=true return\nend\nlocal W={entries={},resolved={},wave=0,expiryGuardVersion=1};S.weapon=W\nfunction W.add(e,ms,phase)\n local model=Argus.getEntityModel(e)\n local _,flags=Argus.getEntityTransforms(e)\n if flags~=16 and flags~=49 then return end\n local male=model==15714 or model==15721\n local kind=male and (flags==49 and 'donut' or 'circle') or (flags==49 and 'sides' or 'cross')\n if W.entries[e.id] then return end\n local p=e.pos\n W.entries[e.id]={id=e.id,x=p.x,y=p.y,z=p.z,h=p.h,kind=kind,deadline=Now()+ms,phase=phase}\nend\nfunction W.unsafe(x,z,entries,margin)\n margin=margin or .7\n for _,e in ipairs(entries) do\n  local dx,dz=x-e.x,z-e.z\n  local f=dx*math.sin(e.h)+dz*math.cos(e.h)\n  local a=dx*math.cos(e.h)-dz*math.sin(e.h)\n  local d=math.sqrt(dx*dx+dz*dz)\n  if e.kind=='circle' and d<10+margin then return true end\n  if e.kind=='donut' and d>10-margin then return true end\n  if e.kind=='cross' and (math.abs(f)<5+margin or math.abs(a)<5+margin) then return true end\n  if e.kind=='sides' and math.abs(a)>4-margin then return true end\n  if e.kind=='cones' then\n   local angle=math.atan2(dx,dz)-e.h\n   if math.abs(math.cos(angle))>math.cos(math.rad(60)+margin/10) then return true end\n  end\n end\n return false\nend\nfunction W.active(phase)\n local list={};local first=math.huge\n for _,e in pairs(W.entries)do\n  if not W.resolved[e.id] and e.phase==phase and e.deadline>=Now()-300 then first=math.min(first,e.deadline)end\n end\n for _,e in pairs(W.entries)do\n  if not W.resolved[e.id] and e.phase==phase and e.deadline>=Now()-300 and e.deadline<=first+2100 then list[#list+1]=e end\n end\n return list\nend\nfunction W.draw(e)\n local ms=math.max(100,e.deadline-Now()+300)\n if e.kind=='circle' then S.keep(S.red:addTimedCircle(ms,e.x,e.y,e.z,10,0,false,true,S.flags))\n elseif e.kind=='donut' then S.keep(S.red:addTimedDonut(ms,e.x,e.y,e.z,10,40,0,false,true,S.flags))\n elseif e.kind=='cross' then\n  for i=0,3 do S.keep(S.red:addTimedRect(ms,e.x,e.y,e.z,100,10,e.h+i*math.pi/2,0,false,true,S.flags)) end\n elseif e.kind=='sides' then\n  for _,sign in ipairs({-1,1}) do\n   local h=e.h+sign*math.pi/2\n   S.keep(S.red:addTimedRect(ms,e.x+4*math.sin(h),e.y,e.z+4*math.cos(h),40,80,h,0,false,true,S.flags))\n  end\n elseif e.kind=='cones' then\n  for i=0,1 do S.keep(S.red:addTimedCone(ms,e.x,e.y,e.z,100,math.rad(120),e.h+i*math.pi,0,false,true,S.flags)) end\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"3391a3cd-9a2d-1112-9714-8f27906b1416",
									true,
								},
							},
							name = "[Core] Weapon geometry solver",
							uuid = "8bbe47ed-4881-8f11-8140-cd80e98b4c40",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and (not S.weapon or not S.weapon.expiryGuardVersion)",
							name = "Initialize only missing state",
							uuid = "3391a3cd-9a2d-1112-9714-8f27906b1416",
							version = 3,
						},
					},
				},
				displayPath = "Core",
				mechanicTime = 15,
				name = "[Core] Weapon geometry solver",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "db2e043d-6bb6-c29c-909f-f2b712e10b4a",
				version = 2,
			},
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
							actionLua = "if AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.DutyHelper then\n    AnyoneCore.Settings.DutyHelper.enabled = false\nend\nself.used=true",
							conditions = 
							{
								
								{
									"f9b3d3e9-ae0b-a852-911a-0f526b6c83c5",
									true,
								},
							},
							name = "Disable Duty Helper",
							uuid = "320bd57e-c3b9-c871-9492-dcb7bf99c4fb",
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
							conditionLua = "return AnyoneCore~=nil and AnyoneCore.Settings~=nil and AnyoneCore.Settings.DutyHelper~=nil",
							dequeueIfLuaFalse = true,
							name = "Duty Helper loaded",
							uuid = "f9b3d3e9-ae0b-a852-911a-0f526b6c83c5",
							version = 3,
						},
					},
				},
				displayPath = "Core",
				mechanicTime = 15,
				name = "[Start] Disable Duty Helper once",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -10,
				timerStartOffset = -15,
				uuid = "dde031f4-60b3-5ca8-80fd-8ab5968bfdcd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P1",
				uuid = "2b89b28e-2dee-0496-b123-579119973ffc",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.clearGoal()\nS.mode=\"loop\"; S.line={}; S.step=0; S.towers={}; S.towerSeen={}; S.lastAssignment=nil\nS.pantoStarted=Now()\nself.used=true\n",
							conditions = 
							{
								
								{
									"0e24939b-ccf1-531a-9887-9ad58c0fc4b0",
									true,
								},
							},
							name = "[P1] Program Loop reset",
							uuid = "137053c0-327c-171f-8f6c-cf7f84134bb6",
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
							eventSpellID = 31491,
							name = "Matching mechanic",
							uuid = "0e24939b-ccf1-531a-9887-9ad58c0fc4b0",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 3,
				loop = true,
				mechanicTime = 15,
				name = "[P1] Program Loop reset",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 120,
				timerStartOffset = -15,
				uuid = "5e21089a-d282-4f79-a6a3-926b507d315a",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.clearGoal()\nS.mode=\"panto\"; S.line={}; S.step=0; S.towers={}; S.towerSeen={}; S.lastAssignment=nil\nS.pantoStarted=Now();S.pantoMovementAnnounced=false\nself.used=true\n\nS.pantoDirectionSample=nil;S.pantoDirectionLabel=nil;S.pantoDirection=nil\n\nS.pantoOpeningHeading=nil\n",
							conditions = 
							{
								
								{
									"6f587c7f-c203-034d-b934-b51e7818d5ea",
									true,
								},
							},
							name = "[P1] Pantokrator reset",
							uuid = "efeaa75e-ad3f-74db-beaa-c92d68ea57a4",
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
							eventSpellID = 31499,
							name = "Matching mechanic",
							uuid = "6f587c7f-c203-034d-b934-b51e7818d5ea",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 3,
				loop = true,
				mechanicTime = 15,
				name = "[P1] Pantokrator reset",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 120,
				timerStartOffset = -15,
				uuid = "d98157be-dcdb-084d-ba26-fa593fedea9b",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal n=({[3004]=1,[3005]=2,[3006]=3,[3451]=4})[eventArgs.buffID]\nS.line[eventArgs.entityID]=n\nlocal p=TensorCore.mGetPlayer()\nif p and p.id==eventArgs.entityID then\n S.say('Number '..n,3)\n AnyoneCore.addTimedWorldTextOnEnt(5000,tostring(n),p.id,0xFFFFFFFF,true,1.4,2.5)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"fb7a264d-5d89-28db-86ee-ddf63b196640",
									true,
								},
							},
							name = "[P1] Remember numbered partners",
							uuid = "50de1011-0d9c-58e4-bea3-d1c5306ab219",
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
							conditionLua = "return eventArgs.buffID==3004 or eventArgs.buffID==3005 or eventArgs.buffID==3006 or eventArgs.buffID==3451",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "fb7a264d-5d89-28db-86ee-ddf63b196640",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 8,
				loop = true,
				mechanicTime = 15,
				name = "[P1] Remember numbered partners",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 100,
				timerStartOffset = -10,
				uuid = "28f0c569-2d3f-7a83-af9a-2d619458a403",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.mode=='loop' and not S.towerSeen[eventArgs.entityID] then\n S.towerSeen[eventArgs.entityID]=true\n S.towers[#S.towers+1]={id=eventArgs.entityID,pos={x=eventArgs.x,y=eventArgs.y,z=eventArgs.z}}\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"2987aaa8-7a7a-8789-adeb-dba8014cf386",
									true,
								},
							},
							name = "[P1] Capture tower order",
							uuid = "e5fd42da-b151-940b-a265-b4d5adc9767f",
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
							conditionLua = "return eventArgs.entityContentID==2013245",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "2987aaa8-7a7a-8789-adeb-dba8014cf386",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 29,
				loop = true,
				mechanicTime = 15,
				name = "[P1] Capture tower order",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 50,
				timerStartOffset = -10,
				uuid = "1c004ef1-007b-f473-bf9a-f3478e2d8d0b",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.step=1; S.deadline=Now()+eventArgs.channelTimeMax*1000\nS.lastAssignment=nil\nself.used=true\n",
							conditions = 
							{
								
								{
									"fd9bdb63-e7da-1876-89be-3b3654b6800b",
									true,
								},
							},
							name = "[P1] First tower and tether",
							uuid = "f8ff77ca-ea70-04be-b040-d4abbc406f22",
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
							eventSpellID = 31495,
							name = "Matching mechanic",
							uuid = "fd9bdb63-e7da-1876-89be-3b3654b6800b",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 3,
				loop = true,
				mechanicTime = 15,
				name = "[P1] First tower and tether",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 18,
				timerStartOffset = -5,
				uuid = "2d5001d2-ef8b-14cc-bba8-d2a8de3330ce",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.step=(S.step or 1)+1; S.deadline=Now()+9000; S.lastAssignment=nil; S.clearGoal()\nself.used=true\n",
							conditions = 
							{
								
								{
									"ba9334f3-0adf-2e1e-b2e3-31182a4a1446",
									true,
								},
							},
							name = "[P1] Advance tower and tether",
							uuid = "24bcfa89-7738-a70d-81e2-d458d636997f",
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
							eventSpellID = 31496,
							name = "Matching mechanic",
							uuid = "ba9334f3-0adf-2e1e-b2e3-31182a4a1446",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 2,
				loop = true,
				mechanicTime = 15,
				name = "[P1] Advance tower and tether",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 50,
				timerStartOffset = 5,
				uuid = "0a8892f8-2d8e-a943-ac19-e1acdd21879c",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.step=5; S.clearGoal(); S.say('Go in',3)\nself.used=true\n",
							conditions = 
							{
								
								{
									"578f4c06-c657-f005-8b52-58277aecfc0f",
									true,
								},
							},
							name = "[P1] Towers complete",
							uuid = "f052b677-dfc0-6b8a-8de9-67b720c746ec",
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
							eventSpellID = 31497,
							name = "Matching mechanic",
							uuid = "578f4c06-c657-f005-8b52-58277aecfc0f",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 2,
				loop = true,
				mechanicTime = 15,
				name = "[P1] Towers complete",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 50,
				timerStartOffset = 25,
				uuid = "b7a6aeac-b590-4e02-bc10-b14d712ddf28",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or S.mode~='loop' or S.step<1 or S.step>4 then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal n=S.line[p.id] or S.lineNumber(p)\n-- A confirmed tether holder must not lose out-position guidance merely\n-- because its partner's original line-number record is unavailable.\nlocal nextNumber=(S.step+1)%4+1\nif n==nextNumber or not n then\n local holders,seen={},{}\n local R=AnyoneCore.Roster\n for source,list in pairs(Argus.getCurrentTethers()) do for _,t in ipairs(list) do if t.type==89 then\n  local id=R.slotOf(source) and source or t.targetid\n  local e=R.slotOf(id) and TensorCore.mGetEntity(id)\n  if e and e.pos and not seen[id] then holders[#holders+1]=e;seen[id]=true end\n end end end\n local i=(S.step-1)*2+1\n local a,b=S.towers[i],S.towers[i+1]\n if seen[p.id] and a and b and a.pos and b.pos and #holders==2 then\n  local ca,cb=S.dir(a.pos),S.dir(b.pos)\n  local free={};for d=0,3 do if d~=ca and d~=cb then free[#free+1]=d end end\n  if #free==2 then\n   table.sort(holders,function(x,y)return x.id<y.id end)\n   S.loopOwnedPlans=S.loopOwnedPlans or {}\n   local signature=S.step..':'..holders[1].id..':'..holders[2].id\n   local plan=S.loopOwnedPlans[signature]\n   if not plan then\n    local left,right=S.polar(free[1]*math.pi/2,18),S.polar(free[2]*math.pi/2,18)\n    local direct=TensorCore.getDistance2d(holders[1].pos,left)+TensorCore.getDistance2d(holders[2].pos,right)\n    local cross=TensorCore.getDistance2d(holders[1].pos,right)+TensorCore.getDistance2d(holders[2].pos,left)\n    plan={[holders[1].id]=direct<=cross and free[1] or free[2],[holders[2].id]=direct<=cross and free[2] or free[1]}\n    S.loopOwnedPlans[signature]=plan\n   end\n   local d=plan[p.id];local dest=S.polar(d*math.pi/2,18)\n   local key='loop-owned-'..signature..':'..p.id\n   local ms=math.max(200,S.deadline-Now())\n   if S.goal and S.goal.key==key then S.goal.pos=dest;S.goal.expires=Now()+ms else S.issued[key]=nil end\n   if S.loopPickupLine then Argus.deleteTimedShape(S.loopPickupLine);S.owned[S.loopPickupLine]=nil;S.loopPickupLine=nil end\n   S.go(key,dest,'Tether taken, go '..({'north','east','south','west'})[d+1],ms/1000,1.1)\n   S.loopTetherTimers=S.loopTetherTimers or {}\n   local timerKey='owned:'..S.step..':'..p.id\n   if not S.loopTetherTimers[timerKey] then\n    S.loopTetherTimers[timerKey]=true\n    AnyoneCore.addWorldTextCountdown(ms,{x=dest.x,y=p.pos.y+2,z=dest.z},0xFF33FF33,true,1.2)\n   end\n   self.used=true return\n  end\n end\nend\nif not n then self.used=true return end\nlocal group=S.pair('M1 M2 T1 T2 R1 R2 H1 H2',n)\nif not group then self.used=true return end\nlocal key='loop'..S.step..':'..n..':'..group\nif S.lastAssignment==key and n~=(S.step+1)%4+1 then\n local remaining=(S.deadline-Now())/1000\n if n==S.step and remaining>0 and remaining<=3 and S.soakNowKey~=key then\n  S.soakNowKey=key; S.say('Soak tower now',3)\n end\n self.used=true return\nend\nlocal i=(S.step-1)*2+1\nlocal a=S.towers[i]\nlocal b=S.towers[i+1]\nif not a or not b or not a.pos or not b.pos then self.used=true return end\nlocal ca,cb=S.dir(a.pos),S.dir(b.pos)\nif ca>cb then a,b=b,a; ca,cb=cb,ca end\nlocal secs=math.max(0.2,(S.deadline-Now())/1000)\nif n==S.step then\n local tower=group==1 and a or b\n if S.go(key,tower.pos,'Take '..({'north','east','south','west'})[S.dir(tower.pos)+1]..' tower, watch timer',secs+2,3) then\n  AnyoneCore.addWorldTextCountdown(math.floor(secs*1000),{x=tower.pos.x,y=tower.pos.y+2,z=tower.pos.z},0xFF33FF33,true,1.2)\n  S.lastAssignment=key\n end\nelseif n==(S.step+1)%4+1 then\n local free={}\n for d=0,3 do if d~=ca and d~=cb then free[#free+1]=d end end\n local d=free[group]\n local outer=S.polar(d*math.pi/2,18)\n local R=AnyoneCore.Roster\n local own=false\n local candidates,seen={},{}\n local partner\n for id,number in pairs(S.line) do if number==n and id~=p.id then partner=id;break end end\n for source,list in pairs(Argus.getCurrentTethers()) do for _,t in ipairs(list) do if t.type==89 then\n  local from=TensorCore.mGetEntity(source)\n  local to=TensorCore.mGetEntity(t.targetid)\n  local raid=R.slotOf(source) and from or to\n  local boss=R.slotOf(source) and to or from\n  if raid and boss and R.slotOf(raid.id) and not R.slotOf(boss.id) and not seen[raid.id] then\n   seen[raid.id]=true\n   if raid.id==p.id then own=true end\n   if raid.id~=partner then candidates[#candidates+1]={raid=raid,boss=boss} end\n  end\n end end end\n local dest,text,stage\n if own and S.loopPickupLine then Argus.deleteTimedShape(S.loopPickupLine);S.owned[S.loopPickupLine]=nil;S.loopPickupLine=nil end\n if own then dest=outer;text='Tether taken, go '..({'north','east','south','west'})[d+1];stage='out'\n else\n  if #candidates==0 then self.used=true return end\n  table.sort(candidates,function(a,b)return a.raid.id<b.raid.id end)\n  local chosen=candidates[1]\n  if #candidates==2 then\n   local first=S.polar(free[1]*math.pi/2,18)\n   local second=S.polar(free[2]*math.pi/2,18)\n   local direct=TensorCore.getDistance2d(candidates[1].raid.pos,first)+TensorCore.getDistance2d(candidates[2].raid.pos,second)\n   local cross=TensorCore.getDistance2d(candidates[1].raid.pos,second)+TensorCore.getDistance2d(candidates[2].raid.pos,first)\n   chosen=candidates[direct<=cross and group or 3-group]\n  end\n  local from,to=chosen.boss.pos,chosen.raid.pos\n  local vx,vz=to.x-from.x,to.z-from.z\n  local length=vx*vx+vz*vz\n  local t=length>0 and ((p.pos.x-from.x)*vx+(p.pos.z-from.z)*vz)/length or .75\n  t=math.max(.2,math.min(.9,t))\n  dest={x=from.x+vx*t,y=0,z=from.z+vz*t}\n  if not S.loopPickupLine or not S.green:updateTimedLine(S.loopPickupLine,2500,from.x,.15,from.z,to.x,.15,to.z,4,4,0) then\n   S.loopPickupLine=S.keep(S.green:addTimedLine(2500,from.x,.15,from.z,to.x,.15,to.z,4,4,0))\n  end\n  text='Take your tether now, then go '..({'north','east','south','west'})[d+1];stage='pickup'\n end\n local goalKey=key..'-'..stage\n if S.goal and S.goal.key==goalKey then S.goal.pos=dest;S.goal.expires=S.deadline end\n if not S.goal or S.goal.key~=goalKey then S.issued[goalKey]=nil end\n S.go(goalKey,dest,text,secs,1.1)\n S.loopTetherTimers=S.loopTetherTimers or {}\n if not S.loopTetherTimers[key] then\n  S.loopTetherTimers[key]=true\n  AnyoneCore.addWorldTextCountdown(math.floor(secs*1000),{x=outer.x,y=p.pos.y+2,z=outer.z},0xFF33FF33,true,1.2)\n end\nelse\n if S.goal and S.goal.key:match('^loop') then S.clearGoal() end\n -- Wait outside pickup corridors; south is preferred only when the path is clear.\n local baits,lines={},{}\n for d=0,3 do if d~=ca and d~=cb then\n  local q=S.polar(d*math.pi/2,18);baits[#baits+1]=q;lines[#lines+1]={a={x=100,z=100},b=q}\n end end\n local R=AnyoneCore.Roster\n for source,list in pairs(Argus.getCurrentTethers()) do for _,t in ipairs(list) do if t.type==89 then\n  local from=TensorCore.mGetEntity(source);local to=TensorCore.mGetEntity(t.targetid)\n  if from and to and from.pos and to.pos then\n   lines[#lines+1]={a=from.pos,b=to.pos}\n   local raid=R.slotOf(source) and from or to\n   if R.slotOf(raid.id) and (raid.pos.x-100)^2+(raid.pos.z-100)^2>=144 then baits[#baits+1]=raid.pos end\n  end\n end end end\n local function clearance(q)\n  for _,b in ipairs(baits) do if (q.x-b.x)^2+(q.z-b.z)^2<15.8^2 then return false end end\n  for _,tower in pairs(S.towers) do if tower.pos and (q.x-tower.pos.x)^2+(q.z-tower.pos.z)^2<3.8^2 then return false end end\n  for _,line in ipairs(lines) do\n   local a,b=line.a,line.b;local vx,vz=b.x-a.x,b.z-a.z;local length=vx*vx+vz*vz\n   local t=length>0 and math.max(0,math.min(1,((q.x-a.x)*vx+(q.z-a.z)*vz)/length)) or 0\n   if (q.x-a.x-vx*t)^2+(q.z-a.z-vz*t)^2<2.5^2 then return false end\n  end\n  return true\n end\n local function reachable(q)\n  local escaped=clearance(p.pos)\n  for j=1,16 do local t=j/16;local safe=clearance({x=p.pos.x+(q.x-p.pos.x)*t,z=p.pos.z+(q.z-p.pos.z)*t})\n   if escaped and not safe then return false end\n   if safe then escaped=true end\n  end\n  return escaped\n end\n local dest,best\n for radius=8,16 do for j=0,23 do\n  local q=S.polar(j*math.pi/12,radius)\n  if clearance(q) and reachable(q) then\n   local score=(q.x-p.pos.x)^2+(q.z-p.pos.z)^2\n   if q.z>=107 and math.abs(q.x-100)<=4 then score=score-1000 end\n   if not best or score<best then best=score;dest=q end\n  end\n end end\n if dest then\n  if S.go('loop-clear-'..S.step..':'..n,dest,'Clear outer spots, stay off tether paths',math.max(.2,secs),1) then S.lastAssignment=key end\n elseif not S.issued['loop-wait-'..S.step..':'..n] then\n  S.issued['loop-wait-'..S.step..':'..n]=true\n  S.say('Stay clear of tether paths',3)\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"cfb545d8-6d8d-ef45-8a47-1fe0fcfe7942",
									true,
								},
							},
							name = "[P1] LPDU assigned tower or tether",
							uuid = "c56c7b50-6450-3d90-9b33-bc941a152b22",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.mode=='loop' and S.step>=1 and S.step<=4)",
							name = "Relevant mechanic",
							uuid = "cfb545d8-6d8d-ef45-8a47-1fe0fcfe7942",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 15,
				name = "[P1] LPDU assigned tower or tether",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 44,
				timerStartOffset = 2,
				uuid = "1290c2ba-1ba1-9091-b21f-d7d3d712482e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.mode~='loop' or not S.ready() or not S.goal then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal n=S.line[p.id] or S.lineNumber(p)\nif n~=S.step or not S.goal.key:match('^loop') then self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif e and e.pos and TensorCore.getDistance2d(e.pos,S.goal.pos)<1 then S.clearGoal() end\nself.used=true\n",
							conditions = 
							{
								
								{
									"55da0d2d-6b09-3eb8-b2b9-ef8cf384c954",
									true,
								},
							},
							name = "[P1] Clear assigned tower on actual resolution",
							uuid = "e58dfe52-235c-e8fd-bdc1-91d5c9d55d25",
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
							conditionLua = "return eventArgs.spellID==31492 or eventArgs.spellID==31494",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "55da0d2d-6b09-3eb8-b2b9-ef8cf384c954",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 2,
				loop = true,
				mechanicTime = 15,
				name = "[P1] Clear assigned tower on actual resolution",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 50,
				timerStartOffset = 5,
				uuid = "765a41f9-3507-4333-afab-ba0f2207f132",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nS.loopDanger=S.loopDanger or {}\nS.loopDangerSeen=S.loopDangerSeen or {}\nlocal active={}\nif S.mode=='loop' then\n local R=AnyoneCore.Roster\n for source,list in pairs(Argus.getCurrentTethers()) do for _,t in ipairs(list) do if t.type==89 then\n  local raid=R.slotOf(source) and source or R.slotOf(t.targetid) and t.targetid\n  if raid then active[raid]=true;S.loopDangerSeen[raid]=Now() end\n end end end\nend\nfor id,shape in pairs(S.loopDanger) do\n if not active[id] and (S.mode~='loop' or Now()-(S.loopDangerSeen[id] or 0)>500) then Argus.deleteTimedShape(shape);S.owned[shape]=nil;S.loopDanger[id]=nil;S.loopDangerSeen[id]=nil end\nend\nfor id in pairs(active) do\n local e=TensorCore.mGetEntity(id)\n if e and e.pos then\n  local shape=S.loopDanger[id]\n  if not shape or not S.red:updateTimedCircle(shape,60000,e.pos.x,e.pos.y+.08,e.pos.z,15,0,false,true,0) then\n   S.loopDanger[id]=S.keep(S.red:addTimedCircle(60000,e.pos.x,e.pos.y+.08,e.pos.z,15,0,false,true,0))\n  end\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"234b9ae1-16ea-f994-b59d-d4c3e0bc8763",
									true,
								},
							},
							name = "[P1] Live Blaster tether danger circles",
							uuid = "c9dde5e6-30a9-f3f1-baad-5a5d210e2f9b",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.mode=='loop' or (S.loopDanger~=nil and next(S.loopDanger)~=nil))",
							name = "Relevant mechanic",
							uuid = "234b9ae1-16ea-f994-b59d-d4c3e0bc8763",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 15,
				name = "[P1] Live Blaster tether danger circles",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 48,
				timerStartOffset = -2,
				uuid = "3549bfdb-ff16-9fb6-b23f-161e5a7e5a35",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S or S.mode~='loop' then self.used=true return end\nif eventArgs.newTetherID~=89 and eventArgs.oldTetherID~=89 then self.used=true return end\nS.loopTetherEvents=S.loopTetherEvents or {}\nS.loopTetherEvents[eventArgs.sourceEntityID]=eventArgs.newTetherID==89 and eventArgs.newTargetID or false\nself.used=true\n",
							name = "Remember actual tether handoff",
							uuid = "6a770b1a-9300-7b58-a833-cf0f9b4a040e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1",
				eventType = 15,
				loop = true,
				mechanicTime = 15,
				name = "[P1] Remember Blaster tether handoffs",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 50,
				timerStartOffset = -10,
				uuid = "62719ad4-e35d-bd49-ad82-0d35c28d564c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "559aa6f5-1f6b-8f01-9355-336893c5f85f",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCone(ms,pos.x,pos.y,pos.z,65,math.rad(60),pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"ec2ea703-5dbc-e80b-8dde-032c0a26b9c6",
									true,
								},
							},
							name = "[AoE] Flamethrower",
							uuid = "bd454def-1f1a-58f1-810a-b3f7f214e827",
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
							eventSpellID = 31501,
							name = "Matching mechanic",
							uuid = "ec2ea703-5dbc-e80b-8dde-032c0a26b9c6",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 15,
				name = "[AoE] Flamethrower",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 110,
				timerStartOffset = -15,
				uuid = "67849e22-78fa-1eba-a66f-343197877a35",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCone(ms,pos.x,pos.y,pos.z,65,math.rad(60),pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"569dc1e1-b613-f6ef-ba60-f7ddf08c1ec9",
									true,
								},
							},
							name = "[AoE] Flamethrower repeat",
							uuid = "593c6176-b440-2be3-803a-5b54f05f7bbe",
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
							eventSpellID = 32368,
							name = "Matching mechanic",
							uuid = "569dc1e1-b613-f6ef-ba60-f7ddf08c1ec9",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 15,
				name = "[AoE] Flamethrower repeat",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 110,
				timerStartOffset = -15,
				uuid = "e2c0dfc3-7cd8-0ec5-8575-872a047ba9b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Orientation",
				uuid = "75ba7b15-bdcb-09c6-94f3-f413aafa4f67",
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
							actionLua = "local p=TensorCore.mGetPlayer()\nif not p or not p.pos or p.localmapid~=1122 then self.used=true return end\n-- Keep the same fixed compass through replay seeks and repeated pulls.\nif not LPDU_TOP_CompassUntil or Now()>=LPDU_TOP_CompassUntil then\n LPDU_TOP_CompassUntil=Now()+1500000\n for _,spot in ipairs({{'N',100,80},{'E',120,100},{'S',100,120},{'W',80,100}}) do\n  AnyoneCore.addTimedWorldText(1500000,spot[1],{x=spot[2],y=1,z=spot[3]},0xFFFFFFFF,true,1.8)\n end\nend\nself.used=true\n",
							name = "[Orientation] Arena edge N E S W",
							uuid = "2df23859-5386-3755-a076-a9c3e2ff0044",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				mechanicTime = 15,
				name = "[Orientation] Arena edge N E S W",
				throttleTime = 1500,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -10,
				timerStartOffset = -15,
				uuid = "9685a67c-7f1e-fd18-876e-9446cd2f0baa",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not p.pos or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=7695')) do\n if Argus.getEntityModel(e)==15708 and e.targetable and e.alive and e.targetid==p.id then boss=e; break end\nend\nif not boss or not boss.pos then self.used=true return end\nlocal error=math.abs(math.atan2(math.sin(boss.pos.h+math.pi/4),math.cos(boss.pos.h+math.pi/4)))\nlocal key='face-opening'\nif error<math.rad(20) then\n if S.goal and S.goal.key==key then S.clearGoal() end\n self.used=true return\nend\nif boss.castinginfo.channelingid~=0 then self.used=true return end\nS.go(key,{x=boss.pos.x-(boss.hitradius+1.5)/math.sqrt(2),y=boss.pos.y,z=boss.pos.z+(boss.hitradius+1.5)/math.sqrt(2)},'You have aggro, face boss southwest',3.5,0.8)\nself.used=true\n",
							name = "[Aggro] Face boss north - opening",
							uuid = "ff42f752-2fc2-13d0-926c-c6fee2f92868",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				loop = true,
				mechanicTime = 15,
				name = "[Aggro] Face boss southwest - opening",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -5,
				timerStartOffset = -12,
				uuid = "1b44c1dc-2a4b-c03b-84ae-29f8145b91cb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Settings",
				uuid = "e25d80a5-f891-05df-be11-cd12a76c0918",
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
							actionLua = "if TensorReactions_CurrentCombatTimer>=15 then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1122 then self.used=true return end\nlocal settings=Settings.FFXIVMINION\nlocal R=AnyoneCore.Roster\nlocal role=R and R.current() and R.mySlot() or nil\nlocal tank=role=='T1' or role=='T2'\nlocal healer=role=='H1' or role=='H2'\nlocal function option(label,key,default,values,help)\n GUI:Text(label);GUI:SameLine(205);GUI:PushItemWidth(205)\n local old=settings[key];if old==nil then old=default end\n local choice=GUI:Combo('##'..key,old+1,values)\n GUI:PopItemWidth();settings[key]=choice-1\n if help and GUI:IsItemHovered() then GUI:SetTooltip(help) end\nend\nlocal function mitigation(label,key,help)\n if tank then option(label,key..'_'..role,0,{'Mitigate','Use invuln'},help) end\nend\nlocal visible=GUI:Begin('TOP LPDU Settings',true,GUI.WindowFlags_AlwaysAutoResize)\nif visible then\n if GUI:CollapsingHeader('P1') then\n  option('Kyrios layout','LPDU_TOP_P1KyriosLayout',0,{'Both invuln north','Split northwest / northeast'},'Both north: both tanks stack north and invuln the cleaves. Split: MT northwest, OT northeast. Changes tank positions and party line-spread positions. Match the party layout.')\n  if tank then\n   if settings.LPDU_TOP_P1KyriosLayout==1 then\n    mitigation('Kyrios cleaves','LPDU_TOP_P1Kyrios','Your personal reminder for the split tank baits: normal mitigation or invulnerability. The split destinations remain northwest / northeast.')\n   else GUI:Text('North stack: both tanks invuln') end\n  end\n end\n if GUI:CollapsingHeader('P2') then\n  option('Opening boss groups','LPDU_TOP_P2FirewallSwap',0,{'Standard groups','NIN / SCH: swap M1 and H2'},'LPDU NIN/SCH variant: M1 starts on female, H2 starts on male. Changes the opening Firewall arrow. The later Party Synergy lineup stays THMR.')\n  if tank then\n   mitigation('Opening Solar Ray','LPDU_TOP_P2Solar','Your personal opening-buster reminder. Choose the mitigation method agreed with your party; this does not swap the opening boss assignments.')\n   mitigation('Limitless tether','LPDU_TOP_P2Tether','Your personal cleave-buster reminder. Guidance first intercepts your tether, then points clockwise out once you own it. Keep the cleave away from the party.')\n  end\n end\n if GUI:CollapsingHeader('P3 / P5 Monitors') then\n  GUI:Text('Monitor Auto-Facing');GUI:SameLine(205);GUI:PushItemWidth(205)\n  local index=GUI:Combo('##LPDUTOPMonitorAutoFacing',settings.LPDU_TOP_MonitorAutoFacing==true and 2 or 1,{'Disabled','Enabled'})\n  GUI:PopItemWidth();settings.LPDU_TOP_MonitorAutoFacing=index==2\n  if GUI:IsItemHovered() then GUI:SetTooltip('P3 and P5 Delta monitors: faces your assigned monitor in the last second. Holds through cast completion and releases 0.8 seconds after damage. Turning this off releases a lock acquired by this feature.') end\n end\n if GUI:CollapsingHeader('P5') then\n  if GUI:CollapsingHeader('Static bounce priority') then\n   GUI:Text('Set the same priority as your LPDU automarker.')\n   local slots={'T1','T2','H1','H2','M1','M2','R1','R2'}\n   local seen,valid={},true\n   for rank=1,8 do\n    option('Priority '..rank,'LPDU_TOP_BouncePriority'..rank,rank-1,slots,'Use each roster slot once. Duplicate slots fall back to standard roster order.')\n    local index=settings['LPDU_TOP_BouncePriority'..rank]\n    if seen[index] then valid=false end;seen[index]=true\n   end\n   if not valid then GUI:Text('Duplicate slot: using standard roster order.') end\n  end\n  GUI:Text('Bounce assignments');GUI:SameLine(205);GUI:PushItemWidth(205)\n  local mode=GUI:Combo('##LPDU_TOP_BounceAssignments',settings.LPDU_TOP_BounceAssignments==2 and 2 or 1,{'Auto: markers / LPDU fallback','Force LPDU static'})\n  GUI:PopItemWidth()\n  settings.LPDU_TOP_BounceAssignments=mode==2 and 2 or 0\n  if GUI:IsItemHovered() then\n   if mode==2 then\n    GUI:SetTooltip('Ignores overhead automarkers. Uses your static LPDU debuff/Dynamis assignments and configured bounce priority for Sigma and both Omega sets.')\n   else\n    GUI:SetTooltip('Waits up to 1.5 seconds for all eight unique valid LPDU overhead marks, stable for 0.5 seconds. Uses them when available; otherwise falls back to your configured static LPDU priority. Resets separately for each bounce set.')\n   end\n  end\n  if tank then\n  local labels={'Solar Ray 1 - pre Delta','Solar Ray 2 - post Delta','Solar Ray 3 - post Sigma','Solar Ray 4 - post Omega'}\n  for wave=1,4 do\n   option(labels[wave],'LPDU_TOP_SolarTankPlan'..wave,4,{'Kitchen sink / tank swap','MT invulns','OT invulns','Current tank invulns','Default: '..({'Kitchen sink','OT invulns','MT invulns','Kitchen sink'})[wave]},'Default plan: Solar Rays 1/4 kitchen sink and swap; Ray 2 OT invulns; Ray 3 MT invulns. Kitchen sink / tank swap: first tank moves counterclockwise after the hit; other tank takes that position for the second hit. Invuln plans change the aggro owner, reminders and arrows. An active invuln on the current tank prevents an unnecessary swap. Match both tanks settings.')\n  end\n  end\n end\n if GUI:CollapsingHeader('P6') then\n  option('Physical ranged role','LPDU_TOP_P6PhysicalRanged',0,{'R1 physical / R2 caster','R2 physical / R1 caster'},'Swaps the ranged destinations for Cosmo Arrow starting pairs, both Wave Cannons and meteors. Also identifies which ranged player the tank support call refers to. Tanks and ranged players must use the same assignment.')\n  if tank then\n   option('Cosmo Memory LB3','LPDU_TOP_P6MemoryLB',0,{'MT uses tank LB3','OT uses tank LB3'},'Selects which roster tank receives the tank LB3 call for the opening P6 Cosmo Memory.')\n   mitigation('Cosmo Dive 1','LPDU_TOP_P6Dive1','First Dive: use your agreed mitigation. Both tanks keep their assigned close baits; the party takes the shared hit separately.')\n   mitigation('Cosmo Dive 2','LPDU_TOP_P6Dive2','Second Dive: use your agreed mitigation. Tank bait arrows adapt to the party position.')\n   for wave=1,2 do option('Magic Number '..wave..' LB3','LPDU_TOP_P6TankLB'..wave,wave==2 and 1 or 0,{'MT uses tank LB3','OT uses tank LB3'},'Selects the tank LB3 caller for this Magic Number. Set each cast separately to match your party LB order.') end\n  end\n  if healer then\n   for wave=1,2 do option('Magic Number '..wave..' LB3','LPDU_TOP_P6HealerLB'..wave,0,{'H1 uses healer LB3','H2 uses healer LB3'},'Selects the healer LB3 caller for this Magic Number. The selected healer gets a prepare call and Use healer LB3 now after damage. Set each cast separately to match your party LB order.') end\n  end\n end\n if GUI:CollapsingHeader('TOP automarkers') then\n  GUI:Text('All default off. Skip foreign marks; never auto-clear.')\n  option('P1 Program Loop','LPDU_TOP_AM_loop',0,{'Off','On'},'Uses the shown LPDU preset. Existing foreign marks abort this set. Marker changes require a live party test.')\n  option('P1 Pantokrator','LPDU_TOP_AM_panto',0,{'Off','On'},'Uses the shown LPDU preset. Existing foreign marks abort this set. Marker changes require a live party test.')\n  option('P2 Party Synergy','LPDU_TOP_AM_synergy',0,{'Off','On'},'Uses the shown LPDU preset. Existing foreign marks abort this set. Marker changes require a live party test.')\n  option('P3 Transition','LPDU_TOP_AM_transition',0,{'Off','On'},'Uses the shown LPDU preset. Existing foreign marks abort this set. Marker changes require a live party test.')\n  option('P3 Monitors','LPDU_TOP_AM_monitor',0,{'Off','On'},'Uses the shown LPDU preset. Existing foreign marks abort this set. Marker changes require a live party test.')\n  option('P5 Delta','LPDU_TOP_AM_delta',0,{'Off','On'},'Uses the shown LPDU preset. Existing foreign marks abort this set. Marker changes require a live party test.')\n  option('P5 Sigma','LPDU_TOP_AM_sigma',0,{'Off','On'},'LPDU / Sausage assignments. Existing foreign marks abort this set.')\n  option('P5 Omega','LPDU_TOP_AM_omega',0,{'Off','On'},'LPDU / Sausage assignments. Existing foreign marks abort this set.')\n end\n\nend\nGUI:End();self.used=true\n",
							name = "[GUI] TOP LPDU Settings",
							uuid = "a36782c6-adc8-a738-8222-93b2b178e770",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Settings",
				eventType = 13,
				loop = true,
				mechanicTime = 15,
				name = "[GUI] TOP LPDU Settings",
				timeRange = true,
				timelineIndex = 3,
				timerStartOffset = -15,
				uuid = "4bef839d-2cd5-d6b1-a0f3-ef95c472e5a6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Monitors",
				uuid = "5d1ff37a-86d4-d5fa-b59b-8859d19c7d9a",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal A=TensorCore.API.TensorACR\nlocal lock=S.monitorAutoLock\nlocal function release()\n if lock and lock.owned then\n  A.setHardLockFace(false)\n  A.toggleLockFace(false)\n  lock.owned=false\n end\n S.monitorAutoLock=nil\nend\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive or p.localmapid~=1122 or Settings.FFXIVMINION.LPDU_TOP_MonitorAutoFacing~=true then\n release(); self.used=true return\nend\nif lock and lock.owned then\n if Now()>=lock.releaseAt then release() end\n self.used=true return\nend\nlocal plan=S.monitorFacing\nlocal d=S.delta\nlocal ownRight=TensorCore.hasBuff(p,3452)\nlocal ownLeft=TensorCore.hasBuff(p,3453)\nif d and d.monitorDeadline and d.monitorSafe and d.monitorDeadline>Now()-1000 and (ownRight or ownLeft) then\n local beam=math.atan2(d.monitorSafe.x,d.monitorSafe.z)\n plan={key='delta-monitor-'..d.monitorDeadline,deadline=d.monitorDeadline,heading=beam-(ownRight and -math.pi/2 or math.pi/2)}\nend\nif not plan or not (ownRight or ownLeft) or plan.key==S.monitorAutoFinished then self.used=true return end\nlocal remaining=plan.deadline-Now()\nif remaining>1000 or remaining< -200 then self.used=true return end\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nA.setLockFaceHeading(plan.heading)\nA.setHardLockFace(true)\nA.toggleLockFace(true)\nS.monitorAutoLock={owned=true,key=plan.key,deadline=plan.deadline,releaseAt=plan.deadline+2000}\nS.monitorAutoFinished=plan.key\nself.used=true\n",
							conditions = 
							{
								
								{
									"f18dc4c7-8af2-104a-ad61-43be4d75aaf9",
									true,
								},
							},
							name = "[Monitor] Last-second auto-facing",
							uuid = "bcc39065-7183-8ee0-a7a1-9aa65c09a45d",
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
							conditionLua = "local S=data.topLpdu\nif not S then return false end\nif S.monitorAutoLock and S.monitorAutoLock.owned then return true end\nif Settings.FFXIVMINION.LPDU_TOP_MonitorAutoFacing~=true then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive or p.localmapid~=1122 or not (TensorCore.hasBuff(p,3452) or TensorCore.hasBuff(p,3453)) then return false end\nlocal plan=S.monitorFacing\nif plan and plan.key~=S.monitorAutoFinished and plan.deadline>=Now()-200 and plan.deadline<=Now()+1000 then return true end\nlocal d=S.delta\nreturn d and d.monitorSafe and d.monitorDeadline and d.monitorDeadline>=Now()-200 and d.monitorDeadline<=Now()+1000 or false\n",
							name = "Monitor deadline or owned release",
							uuid = "f18dc4c7-8af2-104a-ad61-43be4d75aaf9",
							version = 3,
						},
					},
				},
				displayPath = "Monitors",
				loop = true,
				mechanicTime = 15,
				name = "[Monitor] Last-second auto-facing",
				throttleTime = 50,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "01c9ae94-9099-39e0-8f3b-6d7fa46eb786",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal lock=S.monitorAutoLock\nif lock and lock.owned then\n TensorCore.API.TensorACR.setHardLockFace(false)\n TensorCore.API.TensorACR.toggleLockFace(false)\nend\nS.monitorAutoLock=nil\nS.monitorFacing=nil\nself.used=true\n",
							name = "[Monitor] Release on death",
							uuid = "546f225e-dddf-2001-898f-faef5e44d180",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Monitors",
				eventType = 10,
				loop = true,
				mechanicTime = 15,
				name = "[Monitor] Release on death",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "f34fb026-011d-7839-a0a1-4a4d56d9d4c3",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal lock=S.monitorAutoLock\nif lock and lock.owned then\n TensorCore.API.TensorACR.setHardLockFace(false)\n TensorCore.API.TensorACR.toggleLockFace(false)\nend\nS.monitorAutoLock=nil\nS.monitorFacing=nil\nself.used=true\n",
							name = "[Monitor] Release on map",
							uuid = "c74b5145-5bba-4c30-9be9-426a92ab54cf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Monitors",
				eventType = 11,
				loop = true,
				mechanicTime = 15,
				name = "[Monitor] Release on map",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "4ec38334-bbcd-2712-a922-24148b71a7cb",
				version = 2,
			},
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
							actionLua = "\nlocal old=eventArgs.oldData and eventArgs.oldData.topLpdu\nif old and old.monitorAutoLock and old.monitorAutoLock.owned then\n TensorCore.API.TensorACR.setHardLockFace(false)\n TensorCore.API.TensorACR.toggleLockFace(false)\nend\nself.used=true\n",
							name = "[Monitor] Release on wipe",
							uuid = "dd058c34-a9b4-c55a-8852-0206ee44d5ef",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Monitors",
				eventType = 9,
				loop = true,
				mechanicTime = 15,
				name = "[Monitor] Release on wipe",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "9de4eec2-175d-8c8b-8a79-03e5f450a260",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Setup",
				uuid = "5328bf23-a3ae-c22f-94b3-aa8828d7211c",
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
							actionLua = "\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1122 then self.used=true return end\nlocal list=MoogleTelegraphs.Settings.aoeIDUserBlacklist\nlist[32362]={label='Solar Ray',source='LPDU Top Reactions'}\nlist[32363]={label='Solar Ray',source='LPDU Top Reactions'}\nlist[31526]={label='Efficient Bladework',source='LPDU Top Reactions'}\nlist[31557]={label='Laser Shower',source='LPDU Top Reactions'}\nlist[31539]={label='Optimized Sagittarius Arrow',source='LPDU Top Reactions'}\nlist[31567]={label='Wave Repeater',source='LPDU Top Reactions'}\nlist[31616]={label='Wave Cannon',source='LPDU Top Reactions'}\nlist[33197]={label='Solar Ray',source='LPDU Top Reactions'}\nlist[31651]={label='Cosmo Arrow',source='LPDU Top Reactions'}\nlist[31525]={label='Beyond Strength',source='LPDU Top Reactions'}\nlist[31533]={label='Optimized Blizzard III',source='LPDU Top Reactions'}\nlist[31631]={label='Rear Lasers',source='LPDU Top Reactions'}\nlist[31609]={label='Diffuse Wave Cannon',source='LPDU Top Reactions'}\nlist[31532]={label='Superliminal Steel',source='LPDU Top Reactions'}\nlist[32368]={label='Flamethrower',source='LPDU Top Reactions'}\nlist[31500]={label='Ballistic Impact',source='LPDU Top Reactions'}\nlist[31521]={label='Action 31521',source='LPDU Top Reactions'}\nlist[31637]={label='Action 31637',source='LPDU Top Reactions'}\nlist[31661]={label='Action 31661',source='LPDU Top Reactions'}\nlist[31663]={label='Action 31663',source='LPDU Top Reactions'}\nlist[31600]={label='Action 31600',source='LPDU Top Reactions'}\nself.used=true\n",
							name = "[Setup] LPDU TOP Moogle blacklist",
							uuid = "fef53c36-e5b4-130f-84ba-5d6e0b463672",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Setup",
				mechanicTime = 15,
				name = "[Setup] LPDU TOP Moogle blacklist",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -10,
				timerStartOffset = -15,
				uuid = "3e003713-5251-01bf-84a3-979b1f2d9cea",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Automarkers",
				uuid = "6573e133-59b6-0e5f-abac-84d2ff0142b6",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.topAMTick then self.used=true return end\nfunction S.topAMTick(key,queue,enabled)\n local w=S.p5MarkerWriter\n local p=TensorCore.mGetPlayer()\n local function restore()\n  if w and w.target and p.targetid==w.target and w.previous and w.previous~=0 then Player:SetTarget(w.previous)end\n  if w then w.target=nil;w.previous=nil end\n end\n if not enabled or not S.ready() then if w and w.key==key then restore()end;return end\n if not w then w={owned={}};S.p5MarkerWriter=w end\n if w.key~=key then restore();w.key=key;w.start=Now();w.index=1;w.pending=nil;w.done=nil;w.blocked=nil end\n if w.done or w.blocked or Now()-w.start<1800 then return end\n if not queue or #queue==0 then return end\n local seen,people={},{}\n for _,a in ipairs(queue)do if seen[a.marker] or people[a.id]then return end;seen[a.marker]=true;people[a.id]=true end\n for _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'})do\n  local e=AnyoneCore.Roster.entOf(slot)\n  local pending=w.pending and w.pending.id==e.id and w.pending.marker==e.marker\n  if e.marker and e.marker~=0 and w.owned[e.id]~=e.marker and not pending then w.blocked=true;restore();return end\n end\n if w.pending then\n  local e=TensorCore.mGetEntity(w.pending.id)\n  if e and e.marker==w.pending.marker then w.owned[e.id]=e.marker;w.pending=nil;w.index=w.index+1;restore()\n  elseif Now()-w.sent>1200 then w.blocked=true;restore()end\n  return\n end\n local nextMark=queue[w.index]\n if not nextMark then w.done=true;restore();return end\n local e=TensorCore.mGetEntity(nextMark.id)\n if not e then w.blocked=true;restore();return end\n if e.marker==nextMark.marker then w.index=w.index+1;return end\n if w.target~=e.id then w.previous=p.targetid;w.target=e.id;Player:SetTarget(e.id);return end\n if p.targetid~=e.id then w.blocked=true;restore();return end\n local commands={[1]='attack1',[2]='attack2',[3]='attack3',[4]='attack4',[5]='attack5',[6]='bind1',[7]='bind2',[8]='bind3',[9]='ignore1',[10]='ignore2',[11]='square',[12]='circle',[13]='cross',[14]='triangle'}\n SendTextCommand('/mk '..commands[nextMark.marker]..' <t>');w.pending=nextMark;w.sent=Now()\nend\nfunction S.topAMBuild(scope)\n if not S.ready() then return end\n local R=AnyoneCore.Roster\n local slots={'T1','T2','H1','H2','M1','M2','R1','R2'}\n local party={}\n for rank,slot in ipairs(slots)do local e=R.entOf(slot);party[#party+1]={id=e.id,slot=slot,e=e,rank=rank}end\n local queue,key={},scope\n S.topAMSnapshots=S.topAMSnapshots or {}\n if scope~='loop' and scope~='panto' and S.topAMSnapshots[scope] then return scope,S.topAMSnapshots[scope] end\n local function put(id,marker)queue[#queue+1]={id=id,marker=marker}end\n if scope=='loop' or scope=='panto' then\n  if S.mode~=(scope=='loop' and 'loop' or 'panto')then return end\n  local stage=scope=='loop' and math.max(1,S.step or 0) or TensorReactions_CurrentTimer<81.3 and 1 or TensorReactions_CurrentTimer<87.3 and 2 or TensorReactions_CurrentTimer<93.3 and 3 or TensorReactions_CurrentTimer<99.4 and 4 or 5\n  if stage>4 then return end\n  key=scope..stage\n  if S.topAMSnapshots[key] then return key,S.topAMSnapshots[key] end\n  local groups={{},{},{},{}}\n  local order=scope=='loop' and {'M1','M2','T1','T2','R1','R2','H1','H2'} or {'T1','M1','R1','H1','T2','M2','R2','H2'}\n  for _,slot in ipairs(order)do local e=R.entOf(slot);local n=S.line[e.id] or S.lineNumber(e);if not n then return end;groups[n][#groups[n]+1]=e.id end\n  for _,g in ipairs(groups)do if #g~=2 then return end end\n  local other=(stage+1)%4+1\n  put(groups[stage][1],scope=='loop' and 1 or 9);put(groups[stage][2],scope=='loop' and 2 or 10)\n  put(groups[other][1],scope=='loop' and 9 or 1);put(groups[other][2],scope=='loop' and 10 or 2)\n elseif scope=='synergy' then\n  local ps=S.ps;if not ps or not ps.glitch then return end\n  local rankOrder={'T1','H1','M1','R1','T2','H2','M2','R2'}\n  for number=1,4 do\n   local pair={}\n   for _,slot in ipairs(rankOrder)do local id=R.idOf(slot);if ps.marks[id]==number then pair[#pair+1]=id end end\n   if #pair~=2 then return end\n   local right=ps.glitch=='remote' and ({4,2,3,1})[number] or number\n   put(pair[1],({13,11,12,14})[number]);put(pair[2],right)\n  end\n elseif scope=='transition' or scope=='monitor' then\n  local groups=scope=='transition' and {{},{},{}} or {{},{}}\n  for _,p in ipairs(party)do\n   local category\n   if scope=='transition' then category=TensorCore.hasBuff(p.e,3425) and 1 or TensorCore.hasBuff(p.e,3426) and 2 or 3\n   else category=(TensorCore.hasBuff(p.e,3452) or TensorCore.hasBuff(p.e,3453)) and 1 or 2 end\n   groups[category][#groups[category]+1]=p\n  end\n  if scope=='transition' then if #groups[1]~=4 or #groups[2]~=2 or #groups[3]~=2 then return end\n  elseif #groups[1]~=3 then return end\n  for _,group in ipairs(groups)do table.sort(group,function(a,b)\n   local x=scope=='transition' and a.e.pos.x or a.e.pos.z;local y=scope=='transition' and b.e.pos.x or b.e.pos.z\n   if math.abs(x-y)>.1 then return x<y end;return a.rank<b.rank\n  end)end\n  if scope=='transition' then\n   S.topAMTransitionLists={{},{},{}}\n   for category,group in ipairs(groups)do for _,p in ipairs(group)do S.topAMTransitionLists[category][#S.topAMTransitionLists[category]+1]=p.id end end\n   for i,p in ipairs(groups[1])do put(p.id,i)end\n   for i,p in ipairs(groups[2])do put(p.id,5+i)end\n   for i,p in ipairs(groups[3])do put(p.id,8+i)end\n  else\n   for i,p in ipairs(groups[1])do put(p.id,5+i)end\n   for i,p in ipairs(groups[2])do put(p.id,i)end\n  end\n elseif scope=='delta' then\n  local near,far\n  for _,p in ipairs(party)do if TensorCore.hasBuff(p.e,3442)then if near then return end;near=p.id end;if TensorCore.hasBuff(p.e,3443)then if far then return end;far=p.id end end\n  if not near or not far then return end\n  put(far,13);put(near,14)\n end\n S.topAMSnapshots=S.topAMSnapshots or {}\n if not S.topAMSnapshots[key] then S.topAMSnapshots[key]=queue end\n return key,S.topAMSnapshots[key]\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"b31f5b5a-b372-4e66-a124-8ca9ba43ba0f",
									true,
								},
							},
							name = "[AM] Shared protected TOP marker writer",
							uuid = "5e263352-76e5-e6e1-b12b-9387495fc9f3",
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
							conditionLua = "local S=data.topLpdu;return S and not S.topAMTick and (Settings.FFXIVMINION.LPDU_TOP_AM_loop==1 or Settings.FFXIVMINION.LPDU_TOP_AM_panto==1 or Settings.FFXIVMINION.LPDU_TOP_AM_synergy==1 or Settings.FFXIVMINION.LPDU_TOP_AM_transition==1 or Settings.FFXIVMINION.LPDU_TOP_AM_monitor==1 or Settings.FFXIVMINION.LPDU_TOP_AM_delta==1 or Settings.FFXIVMINION.LPDU_TOP_AM_sigma==1 or Settings.FFXIVMINION.LPDU_TOP_AM_omega==1) or false",
							name = "Matching mechanic",
							uuid = "b31f5b5a-b372-4e66-a124-8ca9ba43ba0f",
							version = 3,
						},
					},
				},
				displayPath = "Automarkers",
				mechanicTime = 15,
				name = "[AM] Shared protected TOP marker writer",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 1420,
				timerStartOffset = -15,
				uuid = "3b9eaf89-f7df-b482-bb14-1dbad2bf9482",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.topAMBuild then self.used=true return end\nlocal enabled=Settings.FFXIVMINION.LPDU_TOP_AM_loop==1\nif not S.ready() then self.used=true return end\nlocal w=S.p5MarkerWriter\nif not enabled then\n if w and string.find(w.key,'loop',1,true)==1 then S.topAMTick(w.key,nil,false)end\n self.used=true return\nend\nlocal key,queue=S.topAMBuild('loop')\nif not key and w and w.target and string.find(w.key,'loop',1,true)==1 then S.topAMTick(w.key,nil,false)end\nif key and queue then S.topAMTick(key,queue,enabled)end\nself.used=true\n",
							conditions = 
							{
								
								{
									"fdc1663b-2a07-01f1-8010-bdf74d2ca0d7",
									true,
								},
							},
							name = "[AM] Optional P1 Program Loop",
							uuid = "eb669dcd-738b-89de-bcc1-620fe1c61a69",
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
							conditionLua = "local S=data.topLpdu;return S and (Settings.FFXIVMINION.LPDU_TOP_AM_loop==1 or S.p5MarkerWriter and S.p5MarkerWriter.target and string.find(S.p5MarkerWriter.key,'loop',1,true)==1) or false",
							name = "Matching mechanic",
							uuid = "fdc1663b-2a07-01f1-8010-bdf74d2ca0d7",
							version = 3,
						},
					},
				},
				displayPath = "Automarkers",
				loop = true,
				mechanicTime = 15,
				name = "[AM] Optional P1 Program Loop",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 48,
				timerStartOffset = -5,
				uuid = "5676c832-9c06-8a01-bbfa-066a0f305479",
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
				name = "Orientation",
				uuid = "40e45d78-1410-f273-a560-1d304e37e961",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not p.pos or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=7695')) do\n if Argus.getEntityModel(e)==15708 and e.targetable and e.alive and e.targetid==p.id then boss=e; break end\nend\nif not boss or not boss.pos then self.used=true return end\nlocal error=math.abs(math.atan2(math.sin(boss.pos.h+math.pi/4),math.cos(boss.pos.h+math.pi/4)))\nlocal key='face-loop-end'\nif error<math.rad(20) then\n if S.goal and S.goal.key==key then S.clearGoal() end\n self.used=true return\nend\nif boss.castinginfo.channelingid~=0 then self.used=true return end\nS.go(key,{x=boss.pos.x-(boss.hitradius+1.5)/math.sqrt(2),y=boss.pos.y,z=boss.pos.z+(boss.hitradius+1.5)/math.sqrt(2)},'You have aggro, face boss southwest',3.5,0.8)\nself.used=true\n",
							name = "[Aggro] Face boss north - loop-end",
							uuid = "daf93aa2-68cb-c75d-9cdf-9d475903b7ef",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				loop = true,
				mechanicTime = 56.1,
				name = "[Aggro] Face boss southwest - loop-end",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = 5,
				timerStartOffset = 0.5,
				uuid = "c568a11d-ca77-934d-95c9-65c94453d40b",
				version = 2,
			},
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P1",
				uuid = "e9c3010a-defb-ef3f-b9c9-98f3aca77da9",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.mode~='panto' or not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal n=S.line[p.id] or S.lineNumber(p)\nif not n then self.used=true return end\nlocal group=S.pantoPair(n)\nif not group then self.used=true return end\nS.pantoGroup=group\nS.go('panto-start',S.polar(group==1 and 0 or math.pi,12),group==1 and 'Go north' or 'Go south',4,1)\nself.used=true\n",
							conditions = 
							{
								
								{
									"84ddb293-5b2c-db9d-abff-f37b307c3eaa",
									true,
								},
							},
							name = "[P1] Pantokrator groups",
							uuid = "68df1e96-7ab5-2122-8970-b5d7757181fa",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.mode=='panto' and not S.issued['panto-start'])",
							name = "Relevant mechanic",
							uuid = "84ddb293-5b2c-db9d-abff-f37b307c3eaa",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 69.2,
				name = "[P1] Pantokrator groups",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 5,
				timerStartOffset = -3,
				uuid = "1e0ed528-353e-e85f-b788-c4a9b5c51111",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal ms=math.floor(eventArgs.duration*1000)\nif ms<=0 then self.used=true return end\nlocal pos={x=eventArgs.x,y=eventArgs.y,z=eventArgs.z}\nS.keep(S.red:addTimedCircle(ms,pos.x,pos.y,pos.z,5,0,false,true,S.flags))\nself.used=true\n",
							conditions = 
							{
								
								{
									"b91452b8-0000-e198-992d-0235a99cb557",
									true,
								},
							},
							name = "[P1] Ballistic Impact ground targets",
							uuid = "ac643fc1-78cd-424d-9f95-a2bd90808a78",
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
							conditionLua = "return eventArgs.aoeID==31500",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "b91452b8-0000-e198-992d-0235a99cb557",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 18,
				loop = true,
				mechanicTime = 69.2,
				name = "[P1] Ballistic Impact ground targets",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 40,
				timerStartOffset = -10,
				uuid = "a7687ba6-bd43-60ff-a842-527f33b9a382",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S or S.mode~='panto' then self.used=true return end\nS.pantoCasts=S.pantoCasts or {}\nS.pantoOpeningHeading=S.pantoOpeningHeading or eventArgs.heading\nS.pantoCasts[eventArgs.entityID]={started=Now(),duration=eventArgs.duration*1000,angle=math.pi-eventArgs.heading,deadline=Now()+eventArgs.duration*1000,x=eventArgs.x,y=eventArgs.y,z=eventArgs.z,heading=eventArgs.heading}\n-- Opposite cones share a deadline. Compare successive pairs modulo pi.\nlocal deadline=Now()+eventArgs.duration*1000\nlocal previous=S.pantoDirectionSample\nif not previous then\n S.pantoDirectionSample={heading=eventArgs.heading,deadline=deadline}\nelseif deadline>previous.deadline+500 then\n local d=eventArgs.heading-previous.heading\n local delta=.5*math.atan2(math.sin(2*d),math.cos(2*d))\n S.pantoDirectionSample={heading=eventArgs.heading,deadline=deadline}\n if not S.pantoDirectionLabel and math.abs(delta)>.1 and math.abs(delta)<.9 and S.ready() then\n  S.pantoDirection=delta<0 and 'CLOCKWISE' or 'COUNTERCLOCKWISE'\n  S.pantoDirectionLabel=true\n  local player=TensorCore.mGetPlayer()\n  AnyoneCore.addTimedWorldTextOnEnt(math.max(1000,30000-(Now()-S.pantoStarted)),S.pantoDirection,player.id,0xFFFFFFFF,true,1.3,2.5)\n end\nend\nif not S.ready() or not S.pantoDirection or S.pantoAngle then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal group=S.pantoGroup\nif not group then self.used=true return end\nlocal turn=S.pantoDirection=='COUNTERCLOCKWISE' and 1 or -1\nlocal a=math.pi-S.pantoOpeningHeading+turn*math.rad(34)\nlocal expected=group==1 and 0 or math.pi\nif math.cos(a-expected)<0 then a=a+math.pi end\nS.pantoAngle=a\nlocal radius=math.max(10,math.min(12,TensorCore.getDistance2d(p.pos,{x=100,y=0,z=100})))\nS.go('panto-flame-start',S.polar(a,radius),'Join your group, follow cones',3,1)\nself.used=true\n",
							conditions = 
							{
								
								{
									"dc41c76c-238f-b65b-9a79-21725e2c7d62",
									true,
								},
							},
							name = "[P1] First flamethrower safe group",
							uuid = "12345e15-afd5-8a4a-9720-80b496c29cf6",
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
							conditionLua = "return eventArgs.aoeID==31501 or eventArgs.aoeID==32368",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31501,
							name = "Matching mechanic",
							uuid = "dc41c76c-238f-b65b-9a79-21725e2c7d62",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 18,
				loop = true,
				mechanicTime = 69.2,
				name = "[P1] First flamethrower safe group",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 32,
				timerStartOffset = -6,
				uuid = "db4185a4-3b42-6305-8a64-f42dc98c24b0",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S or S.mode~='panto' or not S.ready() then self.used=true return end\nif S.pantoLastFlame and Now()-S.pantoLastFlame<500 then self.used=true return end\nlocal cast=S.pantoCasts and S.pantoCasts[eventArgs.entityID]\nif not cast then self.used=true return end\nS.pantoCasts[eventArgs.entityID]=nil\nlocal p=TensorCore.mGetPlayer()\nlocal playerAngle=math.atan2(p.pos.x-100,100-p.pos.z)\n-- The next cone is 30 degrees clockwise; stay just outside its trailing edge.\nlocal target=cast.angle-math.rad(4)\nif math.cos(target-playerAngle)<0 then target=target+math.pi end\nlocal delta=math.atan2(math.sin(target-playerAngle),math.cos(target-playerAngle))\n-- A short waypoint follows the present group instead of crossing the boss.\nlocal angle=playerAngle+math.max(0,math.min(math.rad(30),delta))\nlocal radius=math.max(10,math.min(12,TensorCore.getDistance2d(p.pos,{x=100,y=0,z=100})))\nS.pantoAngle=angle;S.pantoLastFlame=Now();S.pantoFlame=(S.pantoFlame or 0)+1\n-- Direction is shown once at the opening; keep cone state but no repeated waypoint.\nself.used=true\n",
							conditions = 
							{
								
								{
									"e881b0fa-347d-74a7-8973-350effd731db",
									true,
								},
							},
							name = "[P1] Step clockwise after flame",
							uuid = "8a23a514-3c90-36e9-961e-2718b774c27e",
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
							conditionLua = "return eventArgs.spellID==31501 or eventArgs.spellID==32368",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "e881b0fa-347d-74a7-8973-350effd731db",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 2,
				loop = true,
				mechanicTime = 69.2,
				name = "[P1] Step clockwise after flame",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 32,
				timerStartOffset = -5,
				uuid = "1244616e-d187-d0ae-bd06-b68ac63cffb1",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nif S.mode~='panto' or not S.pantoAngle or not p then self.used=true return end\nfor _,id in ipairs(eventArgs.hitTargets) do if id==p.id then\n S.pantoSpreadUntil=nil\n S.say('Return to group',3)\n S.pantoMovementAnnounced=true\n break\nend end\nself.used=true\n",
							conditions = 
							{
								
								{
									"f6bdf50d-afee-66c0-abce-8d0c6a4e97ea",
									true,
								},
							},
							name = "[P1] Return after own missile",
							uuid = "75782af3-3920-219c-a741-b19b056cee0b",
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
							eventSpellID = 31502,
							name = "Matching mechanic",
							uuid = "f6bdf50d-afee-66c0-abce-8d0c6a4e97ea",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 2,
				loop = true,
				mechanicTime = 69.2,
				name = "[P1] Return after own missile",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 32,
				timerStartOffset = -2,
				uuid = "e6568de2-3bc5-e070-887e-1bb5f96b5f13",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.pantoConeDraws=S.pantoConeDraws or {}\nlocal list,active={},{}\nfor id,cast in pairs(S.pantoCasts or {})do\n if cast.deadline>Now() and cast.x then list[#list+1]={id=id,cast=cast}end\nend\ntable.sort(list,function(a,b)return a.cast.deadline<b.cast.deadline end)\nlocal first=list[1] and list[1].cast.deadline\nif first and (not S.pantoCentreTimerDeadline or math.abs(first-S.pantoCentreTimerDeadline)>100) then\n S.pantoCentreTimerDeadline=first\n AnyoneCore.addWorldTextCountdown(math.max(100,math.floor(first-Now())),{x=100,y=1,z=100},0xFFFFFFFF,true,.85)\nend\nfor _,entry in ipairs(list)do\n local id,c=entry.id,entry.cast;active[id]=true\n local danger=c.deadline<=first+100\n local old=S.pantoConeDraws[id]\n if old and (old.danger~=danger or old.deadline~=c.deadline)then Argus.deleteTimedShape(old.id);S.owned[old.id]=nil;if old.progress then Argus.deleteTimedShape(old.progress);S.owned[old.progress]=nil end;old=nil end\n if not old then\n  local fill=danger and 0x80202080 or 0x4000AAFF\n  local border=danger and 0xFF1010CC or 0xFF00AAFF\n  local d=TensorCore.getCachedFlatDrawer(0x10000000,0x10000000,0x10000000,border,3,0,0)\n  S.pantoConeDraws[id]={id=S.keep(d:addTimedCone(math.max(100,c.deadline-Now()),c.x,c.y,c.z,65,math.rad(60),c.heading,0,false,true,0)),danger=danger,deadline=c.deadline}\n else S.pantoConeDraws[id]=old end\n local shape=S.pantoConeDraws[id]\n local started=c.started or Now()\n if not c.started then c.started=started;c.duration=math.max(1,c.deadline-started) end\n local fraction=math.max(0,math.min(1,(Now()-started)/math.max(1,c.duration or (c.deadline-started))))\n local radius=math.max(.1,65*fraction)\n local fill=danger and 0x80202080 or 0x4000AAFF\n local drawer=TensorCore.getCachedFlatDrawer(fill,fill,fill,0x00000000,1,0,0)\n local ms=math.max(100,c.deadline-Now())\n if not shape.progress or not drawer:updateTimedCone(shape.progress,ms,c.x,c.y,c.z,radius,math.rad(60),c.heading,0,false,true,0) then\n  shape.progress=S.keep(drawer:addTimedCone(ms,c.x,c.y,c.z,radius,math.rad(60),c.heading,0,false,true,0))\n end\nend\nfor id,shape in pairs(S.pantoConeDraws)do if not active[id]then Argus.deleteTimedShape(shape.id);S.owned[shape.id]=nil;if shape.progress then Argus.deleteTimedShape(shape.progress);S.owned[shape.progress]=nil end;S.pantoConeDraws[id]=nil end end\nself.used=true\n",
							conditions = 
							{
								
								{
									"42115de8-2c32-e2fa-aed4-1ca0926e9f9a",
									true,
								},
							},
							name = "[P1] Current red and upcoming amber flamethrowers",
							uuid = "d5c7b583-5857-330c-889a-81b6412edcd0",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.mode=='panto' and ((S.pantoCasts~=nil and next(S.pantoCasts)~=nil) or (S.pantoConeDraws~=nil and next(S.pantoConeDraws)~=nil))",
							name = "Matching mechanic",
							uuid = "42115de8-2c32-e2fa-aed4-1ca0926e9f9a",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 69.2,
				name = "[P1] Current red and upcoming amber flamethrowers",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 33,
				timerStartOffset = -6,
				uuid = "3ac69944-2819-3115-bcab-5ff821b56c57",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.mode~='panto' or eventArgs.duration<=0 then self.used=true return end\nS.pantoPuddles=S.pantoPuddles or {}\nS.pantoPuddles[#S.pantoPuddles+1]={x=eventArgs.x,z=eventArgs.z,radius=5,deadline=Now()+eventArgs.duration*1000+100}\nself.used=true\n",
							conditions = 
							{
								
								{
									"804a92e4-a4bd-d2e5-9756-8d05bb1fe8cf",
									true,
								},
							},
							name = "[P1] Track live Pantokrator puddle hazards",
							uuid = "1ce297cb-3a80-00ac-ba06-203b95dbe254",
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
							conditionLua = "return eventArgs.aoeID==31500",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "804a92e4-a4bd-d2e5-9756-8d05bb1fe8cf",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 18,
				loop = true,
				mechanicTime = 69.2,
				name = "[P1] Track live Pantokrator puddle hazards",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 34,
				timerStartOffset = -6,
				uuid = "988187b6-1c9e-6aa3-8ec7-62c5d5f185f6",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal now=Now()\nlocal circles={}\nfor i=#(S.pantoPuddles or {}),1,-1 do\n local a=S.pantoPuddles[i]\n if a.deadline<=now then table.remove(S.pantoPuddles,i)else circles[#circles+1]=a end\nend\nlocal function movement(g)\n return g and (g.key=='panto-flame-start' or string.find(g.key,'panto-clockwise-',1,true)==1 or string.find(g.key,'panto-return-',1,true)==1)\nend\nlocal g=S.goal\nif movement(g)then\n if not S.pantoCheckedPlan or S.pantoCheckedPlan.key~=g.key then\n  S.pantoCheckedPlan={key=g.key,pos={x=g.pos.x,y=g.pos.y,z=g.pos.z},expires=g.expires}\n end\nelseif g then S.pantoCheckedPlan=nil;self.used=true return end\nlocal plan=S.pantoCheckedPlan\nif S.mode~='panto' or not plan or plan.expires<=now or not S.ready() then S.pantoCheckedPlan=nil;self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal function safe(x,z)\n local d=(x-100)^2+(z-100)^2\n if d<8^2 or d>19^2 then return false end\n for _,a in ipairs(circles)do if (x-a.x)^2+(z-a.z)^2<(a.radius+.55)^2 then return false end end\n for _,a in pairs(S.pantoCasts or {})do if a.deadline>now and a.x then\n  local dx,dz=x-a.x,z-a.z\n  local length=math.sqrt(dx*dx+dz*dz)\n  if length>0 and length<65 and (dx*math.sin(a.angle)-dz*math.cos(a.angle))/length>math.cos(math.rad(32))then return false end\n end end\n return true\nend\nlocal function reachable(pos)\n local escaped=safe(p.pos.x,p.pos.z)\n for i=1,16 do\n  local f=i/16\n  local good=safe(p.pos.x+(pos.x-p.pos.x)*f,p.pos.z+(pos.z-p.pos.z)*f)\n  if escaped and not good then return false end\n  escaped=escaped or good\n end\n return escaped\nend\nlocal dest=plan.pos\nif not safe(dest.x,dest.z) or not reachable(dest)then\n dest=nil\n local start=math.atan2(p.pos.x-100,100-p.pos.z)\n local radius=math.sqrt((p.pos.x-100)^2+(p.pos.z-100)^2)\n local score\n for degrees=3,36,3 do for offset=-3,3,1 do\n  local r=math.max(8,math.min(16,radius+offset));local angle=start+math.rad(degrees)\n  local pos={x=100+math.sin(angle)*r,y=0,z=100-math.cos(angle)*r}\n  local distance=(pos.x-p.pos.x)^2+(pos.z-p.pos.z)^2\n  if distance<=6^2 and (not score or distance<score)and safe(pos.x,pos.z)and reachable(pos)then dest=pos;score=distance end\n end end\nend\nif dest then\n if S.goal and S.goal.key==plan.key then S.goal.pos=dest;S.goal.expires=plan.expires\n else S.issued[plan.key]=nil;S.go(plan.key,dest,nil,math.max(.1,(plan.expires-now)/1000),1)end\n S.pantoAngle=math.atan2(dest.x-100,100-dest.z)\nelseif movement(S.goal)then\n S.clearGoal()\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"aeb579b9-9385-2636-88fa-709cb9d30609",
									true,
								},
							},
							name = "[P1] Keep clockwise arrow outside live puddles",
							uuid = "5613ca27-0516-98f1-8cac-3c13baf1983d",
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
							conditionLua = "local S=data.topLpdu;return S and S.mode=='panto' and (S.pantoPuddles and next(S.pantoPuddles) or S.pantoCheckedPlan) or false",
							name = "Matching mechanic",
							uuid = "aeb579b9-9385-2636-88fa-709cb9d30609",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				enabled = false,
				loop = true,
				mechanicTime = 69.2,
				name = "[P1] Keep clockwise arrow outside live puddles",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 35,
				timerStartOffset = -6,
				uuid = "3090b9fc-d87c-71ac-879d-326f0b420bd6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "e20166cd-0117-1113-a9c8-833bec39dad2",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCircle(ms,pos.x,pos.y,pos.z,5,0,false,true,S.flags))\nself.used=true\n",
							conditions = 
							{
								
								{
									"30e5c79b-832c-0ee0-9b72-db989b5eed0c",
									true,
								},
							},
							name = "[AoE] Missile puddle",
							uuid = "2681fb1b-1dc0-b996-bae1-918775ee9728",
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
							eventSpellID = 31500,
							name = "Matching mechanic",
							uuid = "30e5c79b-832c-0ee0-9b72-db989b5eed0c",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 69.2,
				name = "[AoE] Missile puddle",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 40,
				timerStartOffset = -10,
				uuid = "58bd72f7-c7e9-186c-a948-dc1d7ee1e3b7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Automarkers",
				uuid = "59d781cc-29d1-21ba-bf0d-617a46a8e874",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.topAMBuild then self.used=true return end\nlocal enabled=Settings.FFXIVMINION.LPDU_TOP_AM_panto==1\nif not S.ready() then self.used=true return end\nlocal w=S.p5MarkerWriter\nif not enabled then\n if w and string.find(w.key,'panto',1,true)==1 then S.topAMTick(w.key,nil,false)end\n self.used=true return\nend\nlocal key,queue=S.topAMBuild('panto')\nif not key and w and w.target and string.find(w.key,'panto',1,true)==1 then S.topAMTick(w.key,nil,false)end\nif key and queue then S.topAMTick(key,queue,enabled)end\nself.used=true\n",
							conditions = 
							{
								
								{
									"14f39a4b-a434-fc6a-bea2-dbe80a0fe1a2",
									true,
								},
							},
							name = "[AM] Optional P1 Pantokrator",
							uuid = "0fb40106-8f4f-8227-b399-06440a1d913f",
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
							conditionLua = "local S=data.topLpdu;return S and (Settings.FFXIVMINION.LPDU_TOP_AM_panto==1 or S.p5MarkerWriter and S.p5MarkerWriter.target and string.find(S.p5MarkerWriter.key,'panto',1,true)==1) or false",
							name = "Matching mechanic",
							uuid = "14f39a4b-a434-fc6a-bea2-dbe80a0fe1a2",
							version = 3,
						},
					},
				},
				displayPath = "Automarkers",
				loop = true,
				mechanicTime = 69.2,
				name = "[AM] Optional P1 Pantokrator",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 32,
				timerStartOffset = -6,
				uuid = "f00dfe4f-ff9f-2393-b705-d77dc50c2244",
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
				uuid = "fbbccb9d-4c28-d1f8-ad1d-6f189d2bd6d1",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or S.mode~='panto' then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal n=S.line[p.id] or S.lineNumber(p)\nlocal key='panto-step-1'\nif S.lastAssignment==key or not n then self.used=true return end\nlocal group=S.pantoPair(n)\nif not group then self.used=true return end\nS.lastAssignment=key\nif n==1 then\n S.pantoSpreadUntil=Now()+4300;S.pantoMovementAnnounced=false\n S.clearGoal()\n S.say('Spread out',3)\n local id=S.keep(S.green:addTimedCircleOnEnt(4300,p.id,5,0,false,true,S.flags))\n AnyoneCore.addWorldTextCountdown(4300,{x=p.pos.x,y=p.pos.y+1,z=p.pos.z},0xFF33FF33,true,1.1)\nelse S.say('Stay with group',3) end\nself.used=true\n",
							name = "[P1] Missile spread 1",
							uuid = "a08ca1c1-1f15-53d4-a232-f186385445e6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 81.3,
				name = "[P1] Missile spread 1",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = -0.2,
				timerStartOffset = -4.5,
				uuid = "9ce16acc-4c63-85d7-a17d-e0ef43f326e1",
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
				name = "P1",
				uuid = "2c6d4f22-d76a-ea51-8350-9ab469a6551b",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or S.mode~='panto' then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal n=S.line[p.id] or S.lineNumber(p)\nlocal key='panto-step-2'\nif S.lastAssignment==key or not n then self.used=true return end\nlocal group=S.pantoPair(n)\nif not group then self.used=true return end\nS.lastAssignment=key\nif n==2 then\n S.pantoSpreadUntil=Now()+4300;S.pantoMovementAnnounced=false\n S.clearGoal()\n S.say('Spread out',3)\n local id=S.keep(S.green:addTimedCircleOnEnt(4300,p.id,5,0,false,true,S.flags))\n AnyoneCore.addWorldTextCountdown(4300,{x=p.pos.x,y=p.pos.y+1,z=p.pos.z},0xFF33FF33,true,1.1)\nelse S.say('Stay with group',3) end\nself.used=true\n",
							name = "[P1] Missile spread 2",
							uuid = "0bea8a9a-aa27-66b7-a48f-5f847efb7dac",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 87.3,
				name = "[P1] Missile spread 2",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 19,
				timerEndOffset = -0.2,
				timerStartOffset = -4.5,
				uuid = "7e35f03c-81f2-e137-bf37-3014c7d6650b",
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
				uuid = "d62080b2-4dc8-46e3-b6c6-31f2e3db2440",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or S.mode~='panto' then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal n=S.line[p.id] or S.lineNumber(p)\nlocal key='panto-step-3'\nif S.lastAssignment==key or not n then self.used=true return end\nlocal group=S.pantoPair(n)\nif not group then self.used=true return end\nS.lastAssignment=key\nif n==3 then\n S.pantoSpreadUntil=Now()+4300;S.pantoMovementAnnounced=false\n S.clearGoal()\n S.say('Spread out',3)\n local id=S.keep(S.green:addTimedCircleOnEnt(4300,p.id,5,0,false,true,S.flags))\n AnyoneCore.addWorldTextCountdown(4300,{x=p.pos.x,y=p.pos.y+1,z=p.pos.z},0xFF33FF33,true,1.1)\nelse S.say('Stay with group',3) end\nself.used=true\n",
							name = "[P1] Missile spread 3",
							uuid = "be1976a8-c75c-f4bd-97ba-c3b8c29feb24",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 93.3,
				name = "[P1] Missile spread 3",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.2,
				timerStartOffset = -4.5,
				uuid = "5443dba1-6e7d-cf75-b4a4-f5881250d074",
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
				name = "P1",
				uuid = "6b4cd6ad-0dd5-c196-b8e3-77877478cb27",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or S.mode~='panto' then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal n=S.line[p.id] or S.lineNumber(p)\nlocal key='panto-step-4'\nif S.lastAssignment==key or not n then self.used=true return end\nlocal group=S.pantoPair(n)\nif not group then self.used=true return end\nS.lastAssignment=key\nif n==4 then\n S.pantoSpreadUntil=Now()+4300;S.pantoMovementAnnounced=false\n S.clearGoal()\n S.say('Spread out',3)\n local id=S.keep(S.green:addTimedCircleOnEnt(4300,p.id,5,0,false,true,S.flags))\n AnyoneCore.addWorldTextCountdown(4300,{x=p.pos.x,y=p.pos.y+1,z=p.pos.z},0xFF33FF33,true,1.1)\nelse S.say('Stay with group',3) end\nself.used=true\n",
							name = "[P1] Missile spread 4",
							uuid = "8c0072b4-0e0a-d795-a7f5-67f53ad4f4a7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 99.3,
				name = "[P1] Missile spread 4",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -0.2,
				timerStartOffset = -4.5,
				uuid = "f01f6748-9475-b294-9bc5-deab8d15bf4f",
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
				name = "Core",
				uuid = "6e70c468-a855-669e-87ef-9e4cf783d082",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.markerOffset==nil then S.markerOffset=eventArgs.markerID-23 end\nself.used=true\n",
							name = "[Core] Calibrate headmarker offset",
							uuid = "dc7b9543-c6bd-66ca-92ed-2af3709bed5a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Core",
				eventType = 4,
				loop = true,
				mechanicTime = 108,
				name = "[Core] Calibrate headmarker offset",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 20,
				timerStartOffset = -15,
				uuid = "95ba9fb9-7365-742b-862b-f76491857b5a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P1",
				uuid = "ed2faf7c-8c2a-9d1c-a7a1-278bc1bdd70c",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=7695')) do\n if e.targetable and e.alive and Argus.getEntityModel(e)==15708 then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal list={}\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n if e and e.alive then list[#list+1]=e end\nend\ntable.sort(list,function(a,b)\n return (a.pos.x-boss.pos.x)^2+(a.pos.z-boss.pos.z)^2>(b.pos.x-boss.pos.x)^2+(b.pos.z-boss.pos.z)^2\nend)\n-- The mechanic targets the two furthest players, even if a non-tank misbaits it.\nif S.kyriosCones then for _,id in ipairs(S.kyriosCones) do Argus.deleteTimedShape(id) end end\nS.kyriosCones={}\nfor i=1,math.min(2,#list) do\n local h=math.atan2(list[i].pos.x-boss.pos.x,list[i].pos.z-boss.pos.z)\n local id=S.keep(S.red:addTimedCone(450,boss.pos.x,boss.pos.y,boss.pos.z,60,math.rad(120),h,0,false,true,S.flags))\n S.kyriosCones[#S.kyriosCones+1]=id\nend\n\nlocal wave=S.kyriosHits or 0\nlocal deadline=S.kyriosNextDeadline or S.kyriosFirstDeadline\nif deadline and deadline>Now() and wave<5 and S.kyriosTimerWave~=wave then\n S.kyriosTimerWave=wave\n local lastHeading\n for i=1,math.min(2,#list) do\n  local e=list[i]\n  local h=math.atan2(e.pos.x-boss.pos.x,e.pos.z-boss.pos.z)\n  -- North-stacked tanks share one readable timer; split baits get one per cone.\n  if not lastHeading or math.abs(math.atan2(math.sin(h-lastHeading),math.cos(h-lastHeading)))>math.rad(20) then\n   lastHeading=h\n   AnyoneCore.addWorldTextCountdown(math.floor(deadline-Now()),{x=boss.pos.x+(e.pos.x-boss.pos.x)*.65,y=2,z=boss.pos.z+(e.pos.z-boss.pos.z)*.65},0xFFFFFFFF,true,1.3)\n  end\n end\nend\nself.used=true\n",
							name = "[P1] Kyrios cones visible to everyone",
							uuid = "1b43e52d-bdd3-2b0c-bfa2-14b90268834a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 108,
				name = "[P1] Kyrios cones visible to everyone",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 8.3,
				timerStartOffset = -4.5,
				uuid = "cabfade2-9ba7-1044-92a9-b3bf69024547",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.markerOffset==nil then self.used=true return end\nlocal marker=eventArgs.markerID-S.markerOffset\nif marker~=23 then self.used=true return end\nif not S.kyriosFirstDeadline then S.kyriosFirstDeadline=Now()+5100 end\nlocal target=TensorCore.mGetEntity(eventArgs.entityID)\nlocal p=TensorCore.mGetPlayer()\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=7695')) do if e.targetable and e.alive and Argus.getEntityModel(e)==15708 then boss=e;break end end\nif not boss or not target then self.used=true return end\nS.keep(S.red:addTimedRectOnEnt(5500,boss.id,50,6,target.id,0,true,false,true,0,false,S.flags))\nif target.id==p.id then S.clearGoal();S.say('Line on you, spread from others',4) end\nself.used=true\n",
							name = "[P1] Marked Kyrios line danger",
							uuid = "75fdad37-c372-4c4c-9abf-bc0209e2211b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1",
				eventType = 4,
				loop = true,
				mechanicTime = 108,
				name = "[P1] Marked Kyrios line danger",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 10,
				timerStartOffset = -6,
				uuid = "3617a740-441e-5ab7-b18a-c88a3174ec92",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nlocal split=Settings.FFXIVMINION.LPDU_TOP_P1KyriosLayout==1\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=7695')) do\n if e.targetable and e.alive and Argus.getEntityModel(e)==15708 then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal pos,text\nlocal tank=slot=='T1' or slot=='T2'\nlocal radius=tank and math.min(19,boss.hitradius+2.5) or math.max(8,boss.hitradius-1)\nif tank then\n local angle=split and (slot=='T1' and -math.pi/4 or math.pi/4) or 0\n pos=S.polar(angle,radius)\n local invuln=not split or Settings.FFXIVMINION['LPDU_TOP_P1Kyrios_'..slot]==1\n text=split and (slot=='T1' and 'Bait northwest at max melee' or 'Bait northeast at max melee') or 'Stack north at max melee, invuln soon'\n if split then text=text..(invuln and ', invuln soon' or ', mitigate') end\nelse\n local degrees=split and {H2=112.5,M2=139.5,R2=166.5,R1=193.5,M1=220.5,H1=247.5} or {H1=270,M1=235,R1=198,R2=162,M2=125,H2=90}\n if not degrees[slot] then self.used=true return end\n pos=S.polar(math.rad(degrees[slot]),radius)\n text='Go to your assigned line spot inside hitbox'\nend\nif S.go('p1-final-positions',pos,text,12.9,.8) and tank and not S.kyriosTimer then\n S.kyriosTimer=true\n local p=TensorCore.mGetPlayer()\n AnyoneCore.addWorldTextCountdown(4500,{x=pos.x,y=p.pos.y+2,z=pos.z},0xFF33FF33,true,1.2)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"3aa6831f-dbbe-b099-b954-46b18432fc30",
									true,
								},
							},
							name = "[P1] LPDU final tank and line positions",
							uuid = "d188e7e4-77ea-75fb-90ef-74247242299a",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (not S.issued['p1-final-positions'])",
							name = "Relevant mechanic",
							uuid = "3aa6831f-dbbe-b099-b954-46b18432fc30",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				loop = true,
				mechanicTime = 108,
				name = "[P1] LPDU final tank and line positions",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -0.2,
				timerStartOffset = -4.5,
				uuid = "fe671d46-e64c-e318-b42c-cfd9f6288ab6",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.kyriosLastHit and Now()-S.kyriosLastHit<500 then self.used=true return end\nS.kyriosLastHit=Now();S.kyriosHits=(S.kyriosHits or 0)+1\nS.kyriosNextDeadline=S.kyriosHits<5 and Now()+2050 or nil\nself.used=true\n",
							conditions = 
							{
								
								{
									"db776bb8-26bf-463f-93aa-df14fbf01bb6",
									true,
								},
							},
							name = "[P1] Next Kyrios cone countdown",
							uuid = "907c8376-aaae-9fac-b3ef-53562e75279e",
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
							eventSpellID = 31504,
							name = "Matching mechanic",
							uuid = "db776bb8-26bf-463f-93aa-df14fbf01bb6",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				eventType = 2,
				loop = true,
				mechanicTime = 108,
				name = "[P1] Next Kyrios cone countdown",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 10,
				timerStartOffset = -1,
				uuid = "a5c8a028-a9ea-b7dc-bd44-19abd3822886",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P1\\Tanks",
				uuid = "39e942a2-3cdd-0a5f-8466-08c062bf6d14",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal slot=R.mySlot()\nif (slot=='T1' or slot=='T2') and not S.issued['kyrios-plan'] then\n S.issued['kyrios-plan']=true\n S.say(Settings.FFXIVMINION['LPDU_TOP_P1Kyrios_'..slot]==1 and 'Bait tank cones out, invuln' or 'Bait tank cones out, mitigate',4)\nend\nself.used=true\n",
							name = "[P1 Tank] Kyrios selected mitigation",
							uuid = "6d59e43c-b4bf-40b0-9036-aa8c39c6c699",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1\\Tanks",
				enabled = false,
				loop = true,
				mechanicTime = 108,
				name = "[P1 Tank] Kyrios selected mitigation",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -3.5,
				timerStartOffset = -4,
				uuid = "7c27e5e2-b466-8967-a3a9-1ecb274d402e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal role=R.mySlot()\nif role~='T1' and role~='T2' then self.used=true return end\nif S.issued['kyrios-invuln-now'] then self.used=true return end\nS.issued['kyrios-invuln-now']=true\nif Settings.FFXIVMINION.LPDU_TOP_P1KyriosLayout~=1 or Settings.FFXIVMINION['LPDU_TOP_P1Kyrios_'..role]==1 then S.say('Invuln now, hold for all five cleaves',4) end\nself.used=true\n",
							name = "[P1 Tank] Invuln just before five cleaves",
							uuid = "2d2b557f-ff52-0d0c-9854-5360bc8a97e6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P1\\Tanks",
				loop = true,
				mechanicTime = 108,
				name = "[P1 Tank] Invuln just before five cleaves",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -0.7,
				timerStartOffset = -1.1,
				uuid = "08d27c5e-b7b6-9f2d-8b68-1fef234ef685",
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
				name = "Orientation",
				uuid = "fb5492ee-ae0b-a30e-b80f-16565455655b",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not p.pos or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=7695')) do\n if Argus.getEntityModel(e)==15708 and e.targetable and e.alive and e.targetid==p.id then boss=e; break end\nend\nif not boss or not boss.pos then self.used=true return end\nlocal error=math.abs(math.atan2(math.sin(boss.pos.h+math.pi/4),math.cos(boss.pos.h+math.pi/4)))\nlocal key='face-panto-end'\nif error<math.rad(20) then\n if S.goal and S.goal.key==key then S.clearGoal() end\n self.used=true return\nend\nif boss.castinginfo.channelingid~=0 then self.used=true return end\nS.go(key,{x=boss.pos.x-(boss.hitradius+1.5)/math.sqrt(2),y=boss.pos.y,z=boss.pos.z+(boss.hitradius+1.5)/math.sqrt(2)},'You have aggro, face boss southwest',3.5,0.8)\nself.used=true\n",
							name = "[Aggro] Face boss north - panto-end",
							uuid = "2595993b-12c4-b3fa-8bb7-fc1488ad0fd6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				loop = true,
				mechanicTime = 116.8,
				name = "[Aggro] Face boss southwest - panto-end",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 4,
				timerStartOffset = 0.5,
				uuid = "265d4318-5b60-2105-893a-3a640cb5028f",
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
				name = "P2",
				uuid = "76a8de5a-4876-64f0-92ae-defdeea2fa04",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal west=slot=='T1' or slot=='H1' or slot=='M1' or slot=='R1'\nif Settings.FFXIVMINION.LPDU_TOP_P2FirewallSwap==1 and (slot=='M1' or slot=='H2') then west=not west end\nS.go('firewall',{x=west and 90 or 110,z=100},west and 'Go west, male' or 'Go east, female',5,1.5)\nself.used=true\n",
							conditions = 
							{
								
								{
									"1a195978-76af-76b3-9a46-85d655530b6b",
									true,
								},
							},
							name = "[P2] Firewall assigned boss",
							uuid = "38e29821-0dcf-1145-bbe1-7511b94e344d",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and not S.issued['firewall']",
							name = "Relevant mechanic",
							uuid = "1a195978-76af-76b3-9a46-85d655530b6b",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				mechanicTime = 206.4,
				name = "[P2] Firewall assigned boss",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 1,
				timerStartOffset = -6,
				uuid = "eada2d8c-caa0-6853-a0ff-a314ac3307ec",
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
				name = "P2\\Tanks",
				uuid = "8c2466ca-c4b7-6dac-88b7-b8d291277eeb",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif (slot=='T1' or slot=='T2') and eventArgs.targetID==p.id then\n S.say(Settings.FFXIVMINION['LPDU_TOP_P2Solar_'..slot]==1 and 'Buster on you, invuln, stay apart' or 'Buster on you, mitigate, stay apart',4)\n S.keep(S.red:addTimedCircleOnEnt(eventArgs.channelTimeMax*1000,p.id,5,0,false,true,S.flags))\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"f2f132d4-ab97-8111-ba51-a2d5d308bba1",
									true,
								},
							},
							name = "[P2 Tank] Opening Solar Ray 32362",
							uuid = "7c0dff38-3daf-a886-8b8c-b3832dec64b8",
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
							eventSpellID = 32362,
							name = "Matching mechanic",
							uuid = "f2f132d4-ab97-8111-ba51-a2d5d308bba1",
							version = 3,
						},
					},
				},
				displayPath = "P2\\Tanks",
				eventType = 3,
				loop = true,
				mechanicTime = 214.5,
				name = "[P2 Tank] Opening Solar Ray 32362",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "788d753a-f76d-8d5d-8a8a-4e54af8e08c5",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif (slot=='T1' or slot=='T2') and eventArgs.targetID==p.id then\n S.say(Settings.FFXIVMINION['LPDU_TOP_P2Solar_'..slot]==1 and 'Buster on you, invuln, stay apart' or 'Buster on you, mitigate, stay apart',4)\n S.keep(S.red:addTimedCircleOnEnt(eventArgs.channelTimeMax*1000,p.id,5,0,false,true,S.flags))\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"55c8a7d0-13e5-c481-9081-5348a2399321",
									true,
								},
							},
							name = "[P2 Tank] Opening Solar Ray 32363",
							uuid = "bc237e9f-648e-6b0a-a7a6-653d3254bbe1",
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
							eventSpellID = 32363,
							name = "Matching mechanic",
							uuid = "55c8a7d0-13e5-c481-9081-5348a2399321",
							version = 3,
						},
					},
				},
				displayPath = "P2\\Tanks",
				eventType = 3,
				loop = true,
				mechanicTime = 214.5,
				name = "[P2 Tank] Opening Solar Ray 32363",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "d620dda6-dd38-bff6-af1d-9b643110cd32",
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
				name = "P2",
				uuid = "2faf0e70-794e-2e4d-8953-19b23d9451d5",
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
							actionLua = "local S=data.topLpdu\nif not S or not S.ready() then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal ranks={T1=1,H1=2,M1=3,R1=4,T2=1,H2=2,M2=3,R2=4}\nlocal rank=ranks[slot]\nif not rank then self.used=true return end\nlocal west=slot=='T1' or slot=='H1' or slot=='M1' or slot=='R1'\nlocal boss\nfor _,e in pairs(TensorCore.entityList(west and 'contentid=7633' or 'contentid=7634')) do\n if Argus.getEntityModel(e)==(west and 15712 or 15713) and e.targetable then boss=e; break end\nend\nif not boss or not boss.pos then self.used=true return end\nlocal radius=boss.hitradius+2.5\nlocal dz=(rank-2.5)*radius*0.5\nlocal dx=math.sqrt(math.max(0,radius*radius-dz*dz))\nS.go('synergy-lineup',{x=boss.pos.x+(west and -dx or dx),y=boss.pos.y,z=boss.pos.z+dz},'Line up, stay in melee',5,0.7)\nself.used=true",
							conditions = 
							{
								
								{
									"8e2d71df-a2cb-6db7-815a-57b8b0ae55a2",
									true,
								},
							},
							name = "[P2] Party Synergy lineup",
							uuid = "742a5b46-3a69-6d5b-b1bf-7646f73ef1ae",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (not S.issued['synergy-lineup'])",
							name = "Relevant mechanic",
							uuid = "8e2d71df-a2cb-6db7-815a-57b8b0ae55a2",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				loop = true,
				mechanicTime = 230.9,
				name = "[P2] Party Synergy lineup",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 2,
				timerStartOffset = -6,
				uuid = "e15e4fec-0dac-81f2-9fde-043f8e72dadd",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.ps={marks={},stacks={},groups={},order={},glitch=nil}\nself.used=true\n",
							conditions = 
							{
								
								{
									"a06585e8-88c5-e7d7-a38b-bf21f252744f",
									true,
								},
							},
							name = "[P2] Reset Party Synergy markers",
							uuid = "b0600fa8-2c7b-3b32-9949-f45a62d3c956",
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
							eventSpellID = 31550,
							name = "Matching mechanic",
							uuid = "a06585e8-88c5-e7d7-a38b-bf21f252744f",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				eventType = 3,
				loop = true,
				mechanicTime = 230.9,
				name = "[P2] Reset Party Synergy markers",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 3,
				timerStartOffset = -6,
				uuid = "fd9010bc-e4ce-bf7e-8577-4c745c216bfc",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal ps=S.ps\nif not ps or S.markerOffset==nil then self.used=true return end\nlocal marker=eventArgs.markerID-S.markerOffset\nlocal order=({[419]=1,[418]=2,[416]=3,[417]=4})[marker]\nif order then ps.marks[eventArgs.entityID]=order end\nif marker==100 then ps.stacks[eventArgs.entityID]=true end\nself.used=true\n",
							name = "[P2] Collect Playstation and stack markers",
							uuid = "1a35c28b-72b1-766f-bea3-94b9bb072d4e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2",
				eventType = 4,
				loop = true,
				mechanicTime = 230.9,
				name = "[P2] Collect Playstation and stack markers",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 30,
				timerStartOffset = -3,
				uuid = "aae860a9-61cf-6840-baaf-9c8bd209edb2",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then if S.ps and S.ps.lastGlitchCall~=S.ps.glitch then S.say(S.ps.glitch=='mid' and 'Mid tether' or 'Far tether',3);S.ps.lastGlitchCall=S.ps.glitch end\nself.used=true return end\n\nif S.ps then S.ps.glitch=eventArgs.buffID==3427 and 'mid' or 'remote' end\nif S.ps and S.ps.lastGlitchCall~=S.ps.glitch then S.say(S.ps.glitch=='mid' and 'Mid tether' or 'Far tether',3);S.ps.lastGlitchCall=S.ps.glitch end\nself.used=true\n",
							conditions = 
							{
								
								{
									"845b3a14-7385-403e-8570-8ffd2e287db2",
									true,
								},
							},
							name = "[P2] Collect glitch distance",
							uuid = "720b2d06-5720-f5dd-aac4-683d7fb49998",
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
							conditionLua = "return eventArgs.buffID==3427 or eventArgs.buffID==3428",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "845b3a14-7385-403e-8570-8ffd2e287db2",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				eventType = 8,
				loop = true,
				mechanicTime = 230.9,
				name = "[P2] Collect glitch distance",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 15,
				timerStartOffset = -3,
				uuid = "eb00c214-a2aa-f0d7-b91c-87a0ec6adb15",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "ff44dc8e-17c0-4665-be30-4535ede573ed",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCircle(ms,pos.x,pos.y,pos.z,10,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"54c89664-76f2-ea5a-b618-75363c3e9955",
									true,
								},
							},
							name = "[AoE] Male sword",
							uuid = "5e245615-7cce-0802-af1e-5be394899970",
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
							eventSpellID = 31526,
							name = "Matching mechanic",
							uuid = "54c89664-76f2-ea5a-b618-75363c3e9955",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 230.9,
				name = "[AoE] Male sword",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 42,
				timerStartOffset = -8,
				uuid = "b2252417-5763-f209-94e4-605e8b3325aa",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedDonut(ms,pos.x,pos.y,pos.z,10,40,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"8af13377-e069-02e6-80c4-7b9ba885adb9",
									true,
								},
							},
							name = "[AoE] Male shield",
							uuid = "1dc0708f-83ab-6356-bbf6-1474ff8067f7",
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
							eventSpellID = 31525,
							name = "Matching mechanic",
							uuid = "8af13377-e069-02e6-80c4-7b9ba885adb9",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 230.9,
				name = "[AoE] Male shield",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 42,
				timerStartOffset = -8,
				uuid = "9d282c47-d35b-1f3c-b2ba-c4640a9370b5",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,100,10,pos.h,0,false,true,S.flags))\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,100,10,pos.h+1*math.pi/2,0,false,true,S.flags))\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,100,10,pos.h+2*math.pi/2,0,false,true,S.flags))\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,100,10,pos.h+3*math.pi/2,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"c712412a-ad14-ee18-8701-e05740188483",
									true,
								},
							},
							name = "[AoE] Female cross",
							uuid = "dbc8bb28-eba2-8b7a-8259-cdf2eb806138",
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
							eventSpellID = 31533,
							name = "Matching mechanic",
							uuid = "c712412a-ad14-ee18-8701-e05740188483",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 230.9,
				name = "[AoE] Female cross",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 42,
				timerStartOffset = -8,
				uuid = "973bf991-d526-e01a-a377-6b73b4884a67",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,80,36,pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"d3197f94-f8d4-4eab-acac-80b3e30543e7",
									true,
								},
							},
							name = "[AoE] Female left cleave",
							uuid = "600c6a62-681f-4d4f-bb6f-1a16e076b1a1",
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
							eventSpellID = 31531,
							name = "Matching mechanic",
							uuid = "d3197f94-f8d4-4eab-acac-80b3e30543e7",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 230.9,
				name = "[AoE] Female left cleave",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 42,
				timerStartOffset = -8,
				uuid = "05a32aca-dbe5-f031-a1e2-63358b3dd889",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,80,36,pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"defab9a9-4ef7-cd75-92bb-47d16d449e9c",
									true,
								},
							},
							name = "[AoE] Female right cleave",
							uuid = "77fee80f-06ec-f294-a20f-ec10a1ea1dbb",
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
							eventSpellID = 31532,
							name = "Matching mechanic",
							uuid = "defab9a9-4ef7-cd75-92bb-47d16d449e9c",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 230.9,
				name = "[AoE] Female right cleave",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 42,
				timerStartOffset = -8,
				uuid = "d42aa0b7-3fa2-c3eb-ac70-08bd028e4876",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Weapon predictions",
				uuid = "c51159a3-ca27-582b-91f6-1b86e92bbb1f",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.weapon then self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal model=Argus.getEntityModel(e)\nif not (model==15714 or model==15715) then self.used=true return end\nlocal d=(e.pos.x-100)^2+(e.pos.z-100)^2\nif d<80 or d>125 then self.used=true return end\nS.weapon.add(e,5100,'p2')\nself.used=true\n",
							conditions = 
							{
								
								{
									"6a8a4b8a-15c3-4924-b509-4c8fd0842a28",
									true,
								},
							},
							name = "[Weapon] Predict p2 weapons",
							uuid = "abf626ee-b546-51dc-aba1-e319ffbfdfcb",
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
							conditionLua = "return eventArgs.newAnimID==7747",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "6a8a4b8a-15c3-4924-b509-4c8fd0842a28",
							version = 3,
						},
					},
				},
				displayPath = "Weapon predictions",
				eventType = 23,
				loop = true,
				mechanicTime = 230.9,
				name = "[Weapon] Predict p2 weapons",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 15,
				timerStartOffset = -5,
				uuid = "45e4dc1b-ad40-993d-b2fc-0fc942ffb337",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal W=S.weapon\nif not W then self.used=true return end\nif eventArgs.spellID==31609 then\n local e=TensorCore.mGetEntity(eventArgs.entityID)\n if e then for id,v in pairs(W.entries) do\n  if v.kind=='cones' and math.abs(math.sin(v.h-e.pos.h))<.1 then W.resolved[id]=true end\n end end\nelse W.resolved[eventArgs.entityID]=true end\nself.used=true\n",
							conditions = 
							{
								
								{
									"9dcb7a6c-9e0d-5e1b-843f-99b20304d9f6",
									true,
								},
							},
							name = "[Weapon] Advance after weapon hit",
							uuid = "08990aea-b423-5a2b-98d6-fc7c812a7479",
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
							conditionLua = "return eventArgs.spellID==31525 or eventArgs.spellID==31526 or eventArgs.spellID==31530 or eventArgs.spellID==31533 or eventArgs.spellID==31609 or eventArgs.spellID==31532",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "9dcb7a6c-9e0d-5e1b-843f-99b20304d9f6",
							version = 3,
						},
					},
				},
				displayPath = "Weapon predictions",
				eventType = 2,
				loop = true,
				mechanicTime = 230.9,
				name = "[Weapon] Advance after weapon hit",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 730,
				timerStartOffset = -8,
				uuid = "351f12e6-5380-04bc-9aad-dbf92e7228be",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Automarkers",
				uuid = "2d54a67d-59ef-989a-b407-7cbcb0bca562",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.topAMBuild then self.used=true return end\nlocal enabled=Settings.FFXIVMINION.LPDU_TOP_AM_synergy==1\nif not S.ready() then self.used=true return end\nlocal w=S.p5MarkerWriter\nif not enabled then\n if w and string.find(w.key,'synergy',1,true)==1 then S.topAMTick(w.key,nil,false)end\n self.used=true return\nend\nlocal key,queue=S.topAMBuild('synergy')\nif not key and w and w.target and string.find(w.key,'synergy',1,true)==1 then S.topAMTick(w.key,nil,false)end\nif key and queue then S.topAMTick(key,queue,enabled)end\nself.used=true\n",
							conditions = 
							{
								
								{
									"385f1d72-f1b4-1620-9d89-a75895ba918b",
									true,
								},
							},
							name = "[AM] Optional P2 Party Synergy",
							uuid = "e807c7a3-3e79-9302-80e3-851608f47477",
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
							conditionLua = "local S=data.topLpdu;return S and (Settings.FFXIVMINION.LPDU_TOP_AM_synergy==1 or S.p5MarkerWriter and S.p5MarkerWriter.target and string.find(S.p5MarkerWriter.key,'synergy',1,true)==1) or false",
							name = "Matching mechanic",
							uuid = "385f1d72-f1b4-1620-9d89-a75895ba918b",
							version = 3,
						},
					},
				},
				displayPath = "Automarkers",
				loop = true,
				mechanicTime = 230.9,
				name = "[AM] Optional P2 Party Synergy",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 30,
				timerStartOffset = -3,
				uuid = "e8c41bed-959d-5ac1-a15a-c4e176858c44",
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
				name = "Weapon predictions",
				uuid = "1141e052-0437-b6fc-a705-2add4c81fad2",
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
							actionLua = "local S=data.topLpdu\nif not S or not S.weapon or not S.ready() or not S.ps then self.used=true return end\nlocal W,ps=S.weapon,S.ps\nlocal entries=W.active('p2')\nif #entries>0 and S.issued['p2-weapon-pair-'..entries[1].deadline] then self.used=true return end\nif #entries~=2 then self.used=true return end\nfor _,e in ipairs(entries) do if not e.drawn then e.drawn=true;W.draw(e) end end\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nlocal pair={}\nfor _,slot in ipairs({'T1','H1','M1','R1','T2','H2','M2','R2'}) do\n local id=R.idOf(slot)\n if ps.marks[p.id] and ps.marks[id]==ps.marks[p.id] then pair[#pair+1]={id=id,group=(slot=='T1' or slot=='H1' or slot=='M1' or slot=='R1') and 1 or 2} end\nend\nif #pair~=2 then self.used=true return end\nif pair[1].group==pair[2].group then pair[2].group=3-pair[1].group end\nlocal nx,nz=0,-1\nfor _,e in pairs(TensorCore.entityList('contentid=7640')) do\n if Argus.getEntityModel(e)==15716 then\n  local dx,dz=e.pos.x-100,e.pos.z-100;local length=math.sqrt(dx*dx+dz*dz)\n  if length>5 then nx,nz=dx/length,dz/length;break end\n end\nend\nlocal candidates={}\nfor cardinal=0,15 do for _,radius in ipairs({3.5,8,12,17.5}) do\n local pos=S.polar(cardinal*math.pi/8,radius)\n if not W.unsafe(pos.x,pos.z,entries,.8) then candidates[#candidates+1]=pos end\nend end\nlocal preferred={}\nfor i,member in ipairs(pair) do\n local side=member.group==1 and 1 or -1\n preferred[i]={x=100+nz*side*12,z=100-nx*side*12}\nend\nlocal selected,cost\nfor _,left in ipairs(candidates) do for _,right in ipairs(candidates) do\n local distance=TensorCore.getDistance2d(left,right)\n local legal=true -- Glitch distance resolves later, with Optimized Fire III.\n if legal then\n  local score=(left.x-preferred[1].x)^2+(left.z-preferred[1].z)^2+(right.x-preferred[2].x)^2+(right.z-preferred[2].z)^2\n  if not cost or score<cost then cost=score;selected={left,right} end\n end\nend end\nif selected then\n local pos=selected[pair[1].id==p.id and 1 or 2]\n S.go('p2-weapon-pair-'..entries[1].deadline,pos,'Dodge weapons, prepare to spread',math.max(.2,(entries[1].deadline-Now())/1000+.2),.8)\nend\nself.used=true\n",
							name = "[Weapon] p2 safe position",
							uuid = "4ef7dd06-8e6b-74a3-bf3d-a7f93c4aa04f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Weapon predictions",
				loop = true,
				mechanicTime = 241.3,
				name = "[Weapon] p2 safe position",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = -0.1,
				timerStartOffset = -7,
				uuid = "8d6fd820-2e55-432d-92a2-2343eff34956",
				version = 2,
			},
		},
	},
	[41] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2",
				uuid = "b82e1e22-3876-18f2-8bea-d77b9030c1bc",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal ps=S.ps\nif not ps or not ps.glitch or not S.ready() then self.used=true return end\nlocal count=0\nfor _ in pairs(ps.marks) do count=count+1 end\nif count~=8 then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal priority={'T1','H1','M1','R1','T2','H2','M2','R2'}\nfor number=1,4 do\n local pair={}\n for _,slot in ipairs(priority) do\n  local id=R.idOf(slot)\n  if ps.marks[id]==number then\n   pair[#pair+1]={id=id,group=(slot=='T1' or slot=='H1' or slot=='M1' or slot=='R1') and 1 or 2}\n  end\n end\n if #pair~=2 then self.used=true return end\n if pair[1].group==pair[2].group then pair[2].group=3-pair[1].group end\n for _,a in ipairs(pair) do ps.groups[a.id]=a.group; ps.order[a.id]=number end\nend\nlocal eye\nfor _,e in pairs(TensorCore.entityList('contentid=7640')) do eye=e; break end\nif not eye or not eye.pos then self.used=true return end\nlocal nx,nz=eye.pos.x-100,eye.pos.z-100\nlocal norm=math.sqrt(nx*nx+nz*nz)\nif norm<1 then self.used=true return end\nnx,nz=nx/norm,nz/norm\nps.north={x=nx,z=nz}\nlocal p=TensorCore.mGetPlayer()\nif not ps.spreadCircles then\n ps.spreadCircles=true\n local ms=math.max(100,math.floor((247.9-TensorReactions_CurrentTimer)*1000))\n local drawer=TensorCore.getCachedFlatDrawer(0x802020B0,0x802020B0,0x802020B0,0xFF1010CC,3,0,0)\n for _,slot in ipairs(priority)do\n  local e=R.entOf(slot)\n  if e and e.id~=p.id then S.keep(drawer:addTimedCircleOnEnt(ms,e.id,5,0,false,true,0)) end\n end\nend\nlocal group,order=ps.groups[p.id],ps.order[p.id]\nif not group or not order then self.used=true return end\nif group==2 and ps.glitch=='remote' then order=5-order end\nps.nsOrder=ps.nsOrder or {}; ps.nsOrder[p.id]=order\nlocal lateral=(ps.glitch=='remote' and (order==2 or order==3)) and 17.5 or 11\nlocal side=group==1 and -1 or 1\nlocal longitudinal=10*(2.5-order)\nlocal dest={x=100+nx*longitudinal-nz*side*lateral,z=100+nz*longitudinal+nx*side*lateral}\nif S.go('ps-spread',dest,'Spread to your spot',5.8,0.9) and not ps.colorDraw then\n ps.colorDraw=true\n local rgba=({{0.2,0.55,1,0.75},{0.75,0.2,1,0.75},{1,0.55,0.1,0.75},{0.2,1,0.2,0.75}})[ps.order[p.id]]\n local c=GUI:ColorConvertFloat4ToU32(unpack(rgba))\n local drawer=TensorCore.getStaticDrawer(c,3)\n if S.ring then Argus.deleteTimedShape(S.ring); S.owned[S.ring]=nil end\n S.ring=S.keep(drawer:addTimedCircle(5800,dest.x,p.pos.y,dest.z,1,0,false,true,S.flags))\n local name=({'BLUE CROSS','PURPLE SQUARE','ORANGE CIRCLE','GREEN TRIANGLE'})[ps.order[p.id]]\n AnyoneCore.addTimedWorldText(5800,name,{x=dest.x,y=p.pos.y+1.5,z=dest.z},c,true,1.1)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"e2dc73f2-2bf1-56a9-920a-05498c3d7e13",
									true,
								},
							},
							name = "[P2] BPOG personal spread",
							uuid = "8ee0840b-551b-b3f7-89b0-d3d4947a3377",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.ps~=nil and S.ps.glitch~=nil and not S.issued['ps-spread'])",
							name = "Relevant mechanic",
							uuid = "e2dc73f2-2bf1-56a9-920a-05498c3d7e13",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				loop = true,
				mechanicTime = 248,
				name = "[P2] BPOG personal spread",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -0.1,
				timerStartOffset = -6.2,
				uuid = "7c63d8e8-e8d1-16fc-8729-3b9cfe722f8e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.go('ps-middle',{x=100,z=100},'Go middle, prepare knockback',6.5,1.3)\nself.used=true\n",
							conditions = 
							{
								
								{
									"b5c97217-597e-b24a-b432-279d944e1bd1",
									true,
								},
							},
							name = "[P2] Go middle after optical laser",
							uuid = "dc9467b9-c416-5a5a-bf0f-47d5bf9e606c",
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
							eventSpellID = 31521,
							name = "Matching mechanic",
							uuid = "b5c97217-597e-b24a-b432-279d944e1bd1",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				eventType = 2,
				loop = true,
				mechanicTime = 248,
				name = "[P2] Go middle after optical laser",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "129733ac-680d-8e74-bb72-f845a53cd564",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "c123c6a6-d180-c505-8ef6-a21e70c5c5d2",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,100,16,pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"2bddf2d4-5826-0c84-8150-a5b032161a36",
									true,
								},
							},
							name = "[AoE] Eye laser",
							uuid = "0239aec7-ea23-54a8-b6d0-f51f2a3f1a05",
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
							eventSpellID = 31521,
							name = "Matching mechanic",
							uuid = "2bddf2d4-5826-0c84-8150-a5b032161a36",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 248,
				name = "[AoE] Eye laser",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 2,
				timerStartOffset = -8,
				uuid = "cd4787fa-9130-5d92-aec1-4c4290fe5532",
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
				name = "P2",
				uuid = "89947914-1ed0-7d0a-8509-cb555d97696f",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal ps=S.ps\nif not ps or not S.ready() or not ps.glitch then self.used=true return end\nlocal targets={}\nfor id in pairs(ps.stacks) do targets[#targets+1]=id end\nif #targets~=2 or not ps.groups[targets[1]] or not ps.groups[targets[2]] then self.used=true return end\nif not ps.flexChecked then\n if ps.groups[targets[1]]==ps.groups[targets[2]] then\n  local function ns(id)\n   local n=ps.order[id]\n   return ps.groups[id]==2 and ps.glitch=='remote' and 5-n or n\n  end\n  local swap=ns(targets[1])>ns(targets[2]) and targets[1] or targets[2]\n  local order=ps.order[swap]\n  for id,n in pairs(ps.order) do if n==order then ps.groups[id]=3-ps.groups[id] end end\n end\n ps.flexChecked=true\nend\nlocal source\nfor _,content in ipairs({7633,7634}) do\n for _,e in pairs(TensorCore.entityList('contentid='..content)) do\n  if e.pos and Argus.getEntityModel(e)==15713 and (e.pos.x-100)^2+(e.pos.z-100)^2>9 then source=e;break end\n end\n if source then break end\nend\nif not source or not source.pos then self.used=true return end\nlocal nx,nz=source.pos.x-100,source.pos.z-100\nlocal norm=math.sqrt(nx*nx+nz*nz)\nif norm<3 then self.used=true return end\nnx,nz=nx/norm,nz/norm\nlocal p=TensorCore.mGetPlayer()\nlocal group=ps.groups[p.id]\nlocal dx,dz\nif group==1 then dx,dz=nz,-nx\nelseif ps.glitch=='mid' then dx,dz=-nx,-nz\nelse dx,dz=-nz,nx end\nps.landing={x=100+dx*18,z=100+dz*18}\nS.go('ps-kb',{x=100+dx*5,z=100+dz*5},'',5.4,0.9)\nself.used=true\n",
							conditions = 
							{
								
								{
									"9bcb3063-8541-39d6-8efb-a9e04ed77539",
									true,
								},
							},
							name = "[P2] Personal knockback stack",
							uuid = "7cd9b7df-9fbf-9ef3-a57c-280505d24422",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.ps~=nil and S.ps.glitch~=nil and not S.issued['ps-kb'])",
							name = "Relevant mechanic",
							uuid = "9bcb3063-8541-39d6-8efb-a9e04ed77539",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				loop = true,
				mechanicTime = 254.9,
				name = "[P2] Personal knockback stack",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = -0.1,
				timerStartOffset = -5.5,
				uuid = "3d1ed843-f0a9-cbad-8e1a-1d8cbf66191b",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.ps and S.ps.landing then S.go('ps-stack',S.ps.landing,'Stack here',4.2,1.5) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"f7a3e19f-4b2d-6ae4-af57-46857e599786",
									true,
								},
							},
							name = "[P2] Stack after knockback",
							uuid = "24d397e6-69d2-3077-b245-7048da0af79b",
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
							eventSpellID = 31534,
							name = "Matching mechanic",
							uuid = "f7a3e19f-4b2d-6ae4-af57-46857e599786",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				eventType = 2,
				loop = true,
				mechanicTime = 254.9,
				name = "[P2] Stack after knockback",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 3,
				timerStartOffset = -2,
				uuid = "7132d461-7106-be5d-8093-bff3d72b43ce",
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
				name = "P2",
				uuid = "7a2804b5-389a-2de9-a598-5e3919945cef",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.go('ps-complete',{x=100,z=100},'Go in',4,1.5)\nself.used=true\n",
							conditions = 
							{
								
								{
									"d99147d4-a442-3de9-b0c0-f8825e6a2192",
									true,
								},
							},
							name = "[P2] Regroup after Synergy",
							uuid = "c0d02eca-45f0-e2a6-97a5-e918ab7f4c87",
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
							eventSpellID = 31536,
							name = "Matching mechanic",
							uuid = "d99147d4-a442-3de9-b0c0-f8825e6a2192",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				eventType = 2,
				loop = true,
				mechanicTime = 259.1,
				name = "[P2] Regroup after Synergy",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 4,
				timerStartOffset = -2,
				uuid = "b7991666-2877-a27b-8630-917b896ba2fa",
				version = 2,
			},
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2",
				uuid = "085cbf4c-8aba-87d7-ada2-01c953b5815c",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal slot=R.mySlot()\nlocal male,female\nfor _,e in pairs(TensorCore.entityList('contentid=7633')) do if Argus.getEntityModel(e)==15713 and e.targetable and e.alive then male=e;break end end\nfor _,e in pairs(TensorCore.entityList('contentid=7634')) do if Argus.getEntityModel(e)==15712 and e.targetable and e.alive then female=e;break end end\nif not male or not female then self.used=true return end\nlocal mine\nif TensorCore.hasBuff(p,3499) then mine=female\nelseif TensorCore.hasBuff(p,3500) then mine=male\nelse mine=({T1=true,H1=true,M1=true,R1=true})[slot] and male or female end\nlocal pos,text\nif female.targetid==p.id and (slot=='T1' or slot=='T2') then\n pos={x=female.pos.x,y=0,z=female.pos.z+female.hitradius+1};text='Face female south'\nelseif male.targetid==p.id and (slot=='T1' or slot=='T2') then\n local dx,dz=female.pos.x-male.pos.x,female.pos.z-male.pos.z\n local n=math.sqrt(dx*dx+dz*dz)\n if n<1 then self.used=true return end\n dx,dz=dx/n,dz/n\n local offset=math.max(3,male.hitradius+1-5)\n pos={x=female.pos.x+dx*offset,y=0,z=female.pos.z+dz*offset};text='Bring Male toward Female'\nelse\n pos={x=mine.pos.x-math.sin(mine.pos.h)*math.max(1,mine.hitradius-1),y=0,z=mine.pos.z-math.cos(mine.pos.h)*math.max(1,mine.hitradius-1)}\n text=mine==male and 'Return to male' or 'Return to female'\nend\nS.go('p2-second-uptime-'..mine.id,pos,text,9,1.5)\nself.used=true\n",
							name = "[P2] Return to Firewall boss after Synergy",
							uuid = "02010492-b7ae-d662-b532-53b041141c62",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2",
				loop = true,
				mechanicTime = 272.2,
				name = "[P2] Return to Firewall boss after Synergy",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 47,
				timerStartOffset = -10,
				uuid = "65745ab2-2b85-3bc3-b7c6-6fe620bf0f96",
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
				uuid = "ff4ed05d-1c37-bb4b-a0ef-8c402ac301a7",
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
							actionLua = "local S=data.topLpdu\nif not S or not S.ready() or S.limitlessArrowStarted then self.used=true return end\nfor _,boss in pairs(TensorCore.entityList('contentid=7633')) do\n if Argus.getEntityModel(boss)==15713 and boss.alive and boss.targetable then\n  local pos={x=boss.pos.x,y=0,z=boss.pos.z+boss.hitradius+2}\n  S.go('limitless-bait',pos,'Stack south of male, bait arrow',6,1.5)\n  break\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"84d9260f-4008-d5d0-8255-8493b939a8eb",
									true,
								},
							},
							name = "[P2] Limitless arrow bait",
							uuid = "5e7bf966-8af8-884d-9822-13cf3d8f58ef",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (not S.limitlessArrowStarted and not S.issued['limitless-bait'])",
							name = "Relevant mechanic",
							uuid = "84d9260f-4008-d5d0-8255-8493b939a8eb",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				loop = true,
				mechanicTime = 282.4,
				name = "[P2] Limitless arrow bait",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 8,
				timerStartOffset = -2,
				uuid = "ba8c7295-3af4-c80c-9c29-b6adc7fd834f",
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
				name = "P2\\Tanks",
				uuid = "0959980d-2ae2-a639-95b7-945eb4d98bfd",
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
							actionLua = "local S=data.topLpdu\nif not S or not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal slot=R.mySlot()\nlocal candidates,seen={},{}\nS.p2CleaveDraws=S.p2CleaveDraws or {}\nfor source,list in pairs(Argus.getCurrentTethers()) do\n for _,t in ipairs(list) do\n  if t.type==84 then\n   local from=TensorCore.mGetEntity(source)\n   local to=TensorCore.mGetEntity(t.targetid)\n   local fromRole=R.slotOf(source)\n   local clone=fromRole and to or from\n   local holder=fromRole and from or to\n   if clone and holder and clone.pos and holder.pos and R.slotOf(holder.id) and not R.slotOf(clone.id) and not seen[clone.id] then\n    seen[clone.id]=true\n    candidates[#candidates+1]={clone=clone,holder=holder,angle=math.atan2(clone.pos.x-100,100-clone.pos.z)%(2*math.pi)}\n    local d=S.p2CleaveDraws[clone.id]\n    if holder.id~=p.id then\n     if d then Argus.deleteTimedShape(d.uuid);S.owned[d.uuid]=nil;S.p2CleaveDraws[clone.id]=nil end\n    elseif not d then\n     d={target=holder.id,deadline=Now()+8500}\n     d.uuid=S.keep(S.red:addTimedConeOnEnt(8500,clone.id,100,math.pi/2,holder.id,0,false,true,0,false,S.flags))\n     S.p2CleaveDraws[clone.id]=d\n    elseif d.target~=holder.id then\n     d.target=holder.id\n     S.red:updateTimedConeOnEnt(d.uuid,math.max(1,d.deadline-Now()),clone.id,100,math.pi/2,holder.id,0,false,true,0,false,S.flags)\n    end\n   end\n  end\n end\nend\nfor id,d in pairs(S.p2CleaveDraws) do\n if not seen[id] then if d.uuid then Argus.deleteTimedShape(d.uuid);S.owned[d.uuid]=nil end;S.p2CleaveDraws[id]=nil end\nend\nif slot~='T1' and slot~='T2' then self.used=true return end\nif #candidates~=2 then self.used=true return end\ntable.sort(candidates,function(a,b) if a.angle==b.angle then return a.clone.id<b.clone.id end return a.angle<b.angle end)\nlocal selected\nfor _,c in ipairs(candidates) do if c.holder.id==p.id then selected=c;break end end\nif not selected then\n local desired=candidates[slot=='T1' and 1 or 2]\n local other=R.idOf(slot=='T1' and 'T2' or 'T1')\n if desired.holder.id==other then desired=candidates[slot=='T1' and 2 or 1] end\n selected=desired\nend\nlocal own=selected.holder.id==p.id\nlocal pos,text,key\nif own then\n pos=S.polar(selected.angle+math.rad(20),19)\n text=Settings.FFXIVMINION['LPDU_TOP_P2Tether_'..slot]==1 and 'Tether taken, go clockwise, invuln' or 'Tether taken, go clockwise, mitigate'\n key='limitless-out-'..selected.clone.id\nelse\n local e,h=selected.clone,selected.holder\n pos={x=h.pos.x*.75+e.pos.x*.25,y=p.pos.y,z=h.pos.z*.75+e.pos.z*.25}\n text='Take your cleave tether now'\n key='limitless-pickup-'..selected.clone.id\nend\nif not S.goal or S.goal.key~=key then S.issued[key]=nil end\nif S.goal and S.goal.key==key then S.goal.pos=pos end\nS.go(key,pos,text,8,.8)\nself.used=true\n",
							name = "[P2 Tank] Take assigned cleave tether",
							uuid = "797b0999-0ce9-2a6d-a0c3-5c52e400041d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2\\Tanks",
				loop = true,
				mechanicTime = 295.6,
				name = "[P2 Tank] Take assigned cleave tether",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = -0.2,
				timerStartOffset = -11,
				uuid = "73df8b51-d84b-f97a-8bde-35faf67d5338",
				version = 2,
			},
		},
	},
	[53] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2",
				uuid = "ea767118-0940-3a2c-8c3e-3b54c70254d3",
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
							actionLua = "local S=data.topLpdu\nif not S or not S.ready() then self.used=true return end\nS.limitlessArrowStarted=true\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~='T1' and slot~='T2' then\n for _,boss in pairs(TensorCore.entityList('contentid=7633')) do\n  if Argus.getEntityModel(boss)==15713 and boss.alive and boss.targetable then\n   S.go('sagittarius-in',{x=boss.pos.x,y=0,z=boss.pos.z+math.max(1,boss.hitradius-1)},'Arrow baited, move in on male',7,1.5)\n   break\n  end\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"501d0562-1f97-629f-a2fe-c3c3c83292db",
									true,
								},
							},
							name = "[P2] Dodge Sagittarius Arrow",
							uuid = "6e05de38-ca0d-4878-bde5-bfc4a32c7c62",
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
							eventSpellID = 31539,
							name = "Sagittarius cast only",
							uuid = "501d0562-1f97-629f-a2fe-c3c3c83292db",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				eventType = 3,
				loop = true,
				mechanicTime = 295.7,
				name = "[P2] Dodge Sagittarius Arrow",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 2,
				timerStartOffset = -12,
				uuid = "cdf7d113-928a-4551-9e04-c3316785daa0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "5c0eaa26-0fa5-1eb4-b648-a8e3608e3a45",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nlocal ms=math.floor(eventArgs.duration*1000)\nif ms<=0 then self.used=true return end\nS.keep(S.red:addTimedRect(ms,eventArgs.x,eventArgs.y,eventArgs.z,eventArgs.aoeLength,eventArgs.aoeWidth,eventArgs.heading,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=eventArgs.x,y=eventArgs.y+2,z=eventArgs.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"9ccad472-9081-88e5-926c-9102e67f34da",
									true,
								},
							},
							name = "[AoE] Sagittarius Arrow",
							uuid = "9d682750-1b63-0ffa-96a6-61c90b228ce1",
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
							conditionLua = "return eventArgs.aoeID==31539",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31539,
							name = "Matching mechanic",
							uuid = "9ccad472-9081-88e5-926c-9102e67f34da",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 18,
				loop = true,
				mechanicTime = 295.7,
				name = "[AoE] Sagittarius Arrow",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 2,
				timerStartOffset = -8,
				uuid = "cd3fe155-6f5b-68a8-98ef-4ff061a335a3",
				version = 2,
			},
		},
	},
	[54] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2",
				uuid = "4f653bdb-f612-4e7d-a0ca-13900ce00c5d",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nlocal clone=TensorCore.mGetEntity(eventArgs.entityID)\nif not clone then self.used=true return end\nlocal dx,dz=clone.pos.x-100,clone.pos.z-100\nlocal norm=math.sqrt(dx*dx+dz*dz)\ndx,dz=dx/norm,dz/norm\nif slot=='T1' or slot=='T2' then\n local a={x=100+dx*7-dz*3,y=0,z=100+dz*7+dx*3}\n local b={x=100+dx*7+dz*3,y=0,z=100+dz*7-dx*3}\n local one,two=R.entOf('T1'),R.entOf('T2')\n local direct=TensorCore.getDistance2d(one.pos,a)+TensorCore.getDistance2d(two.pos,b)\n local cross=TensorCore.getDistance2d(one.pos,b)+TensorCore.getDistance2d(two.pos,a)\n local first=direct<=cross and a or b\n local second=direct<=cross and b or a\n for _,pos in ipairs({a,b}) do S.keep(S.green:addTimedCircle(5000,pos.x,0,pos.z,.9,0,false,true,0)) end\n S.go('beyond-bait',slot=='T1' and first or second,'Bait jump, stay apart',5.8,0.8)\nelse\n S.go('beyond-party',{x=100-dx*2,z=100-dz*2},'Stack middle',5.8,1.5)\nend\nfor _,tank in ipairs({'T1','T2'}) do S.keep(S.red:addTimedCircleOnEnt(5000,R.idOf(tank),5,0,false,true,0)) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"d5e9a9a8-f953-0125-8c13-aa9ab211082e",
									true,
								},
							},
							name = "[P2] Tanks bait Beyond Defense",
							uuid = "238d8ea9-047b-e9b4-b8f6-7aae60fee2b5",
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
							eventSpellID = 31527,
							name = "Beyond Defense",
							uuid = "d5e9a9a8-f953-0125-8c13-aa9ab211082e",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				eventType = 3,
				loop = true,
				mechanicTime = 306.7,
				name = "[P2] Tanks bait Beyond Defense",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 54,
				timerEndOffset = -0.2,
				timerStartOffset = -6.5,
				uuid = "6d5f4a33-0f60-9806-8433-7abc81b1e85c",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal hit=false\nfor _,id in ipairs(eventArgs.hitTargets) do if id==p.id then hit=true end end\nif hit then\n S.clearGoal(); S.say('Stay out of stack',3)\n S.keep(S.red:addTimedCircleOnEnt(3200,p.id,5,0,false,true,S.flags))\nelse\n S.go('pile-pitch',{x=100,z=100},'Stack middle',3.1,2)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"f1ea5d45-5675-f165-bb31-d8e0cb5a870d",
									true,
								},
							},
							name = "[P2] Jump target leaves stack",
							uuid = "73be9ebc-5eab-7b9b-abba-ea767ae3273b",
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
							eventSpellID = 31528,
							name = "Matching mechanic",
							uuid = "f1ea5d45-5675-f165-bb31-d8e0cb5a870d",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				eventType = 2,
				loop = true,
				mechanicTime = 306.7,
				name = "[P2] Jump target leaves stack",
				timeRange = true,
				timelineIndex = 54,
				timerEndOffset = 4,
				timerStartOffset = -2,
				uuid = "d8225140-e5aa-3b25-8355-f86f1d06a979",
				version = 2,
			},
		},
	},
	[58] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P3\\Transition",
				uuid = "a6dbf340-17a1-3434-9d63-6eda04502aa5",
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
							actionLua = "local S=data.topLpdu\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not S or not e then self.used=true return end\nS.p2Defeated=S.p2Defeated or {}\nS.p2Defeated[Argus.getEntityModel(e)]=true\nif not S.p2Defeated[15712] or not S.p2Defeated[15713] then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal order={'R1','M1','T1','H1','H2','T2','M2','R2'}\nfor rank,role in ipairs(order) do if slot==role then\n S.go('p3-south-lineup',{x=100+(rank-4.5)*2.6,z=114},'Go south, line up for transition',12,.7)\n break\nend end\nself.used=true\n",
							conditions = 
							{
								
								{
									"9b5479ff-9624-d0fe-b45a-c70baf615a8d",
									true,
								},
								
								{
									"7082350b-bf5d-e584-8f68-db11b6e60dd5",
									true,
								},
							},
							name = "South transition slot",
							uuid = "7d0f0c81-68a4-12ee-9783-d9af1e3e5041",
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
							conditionLua = "return eventArgs.isTargetable==false and (eventArgs.entityContentID==7633 or eventArgs.entityContentID==7634)",
							dequeueIfLuaFalse = true,
							name = "Boss becomes untargetable",
							uuid = "9b5479ff-9624-d0fe-b45a-c70baf615a8d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.topLpdu\nif not S or not S.ready() then return false end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then return false end\nlocal model=Argus.getEntityModel(e)\nreturn (model==15712 or model==15713) and (not e.alive or (e.hp~=nil and e.hp.current<=1))",
							name = "Defeated and roster ready",
							uuid = "7082350b-bf5d-e584-8f68-db11b6e60dd5",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Transition",
				eventType = 26,
				loop = true,
				mechanicTime = 347.4,
				name = "[P3] South lineup after both P2 bosses fall",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 60,
				timerStartOffset = -60,
				uuid = "c050f6e7-a68a-2430-a654-1216075b7114",
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
				name = "Ring dodges",
				uuid = "72c4cbfc-c612-5c63-980c-bad3fe766266",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nS.rings=S.rings or {generation=0}\nS.rings.generation=S.rings.generation+1\nS.rings.center={x=e.pos.x,y=e.pos.y,z=e.pos.z}\nS.keep(S.red:addTimedCircle(ms,e.pos.x,e.pos.y,e.pos.z,6,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=e.pos.x,y=e.pos.y+2,z=e.pos.z},0xFFFFFFFF,true,1.2)\nself.used=true\n",
							conditions = 
							{
								
								{
									"c23e78e2-d8b8-b003-8fe0-0241b44045ee",
									true,
								},
							},
							name = "[P3 P4] Ring cast countdown",
							uuid = "25e8e1f5-5f03-2711-a775-bd0ca3738c53",
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
							eventSpellID = 31567,
							name = "Matching mechanic",
							uuid = "c23e78e2-d8b8-b003-8fe0-0241b44045ee",
							version = 3,
						},
					},
				},
				displayPath = "Ring dodges",
				eventType = 3,
				loop = true,
				mechanicTime = 414.3,
				name = "[P3 P4] Ring cast countdown",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 248,
				timerStartOffset = -8,
				uuid = "dd46d9f4-678c-c396-880c-cdea771866aa",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nS.keep(S.red:addTimedDonut(2050,e.pos.x,e.pos.y,e.pos.z,6,12,0,false,true,S.flags))\nlocal p=TensorCore.mGetPlayer()\nlocal dx,dz=p.pos.x-e.pos.x,p.pos.z-e.pos.z\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length<.01 then dx,dz,length=0,1,1 end\nAnyoneCore.addWorldTextCountdown(2050,{x=e.pos.x+dx/length*9,y=e.pos.y+.6,z=e.pos.z+dz/length*9},0xFFFFFFFF,true,1.1)\nself.used=true\n",
							conditions = 
							{
								
								{
									"96c0b7a1-f067-18f0-a6df-35cea882d91d",
									true,
								},
							},
							name = "[P3 P4] Next ring 6",
							uuid = "f1cb4d4a-ffcd-c0c9-b5a5-93e956bf4be0",
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
							eventSpellID = 31567,
							name = "Matching mechanic",
							uuid = "96c0b7a1-f067-18f0-a6df-35cea882d91d",
							version = 3,
						},
					},
				},
				displayPath = "Ring dodges",
				eventType = 2,
				loop = true,
				mechanicTime = 414.3,
				name = "[P3 P4] Next ring 6",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 248,
				timerStartOffset = -8,
				uuid = "9e93a6bf-6284-c34a-af82-3c48c7cabfd4",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nS.keep(S.red:addTimedDonut(2050,e.pos.x,e.pos.y,e.pos.z,12,18,0,false,true,S.flags))\nlocal p=TensorCore.mGetPlayer()\nlocal dx,dz=p.pos.x-e.pos.x,p.pos.z-e.pos.z\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length<.01 then dx,dz,length=0,1,1 end\nAnyoneCore.addWorldTextCountdown(2050,{x=e.pos.x+dx/length*15,y=e.pos.y+.6,z=e.pos.z+dz/length*15},0xFFFFFFFF,true,1.1)\nself.used=true\n",
							conditions = 
							{
								
								{
									"2ff89ffa-d6ae-dc51-b582-d5fa5208dc19",
									true,
								},
							},
							name = "[P3 P4] Next ring 12",
							uuid = "50e3f014-2213-ebf2-ba53-1bce0e91132d",
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
							eventSpellID = 31568,
							name = "Matching mechanic",
							uuid = "2ff89ffa-d6ae-dc51-b582-d5fa5208dc19",
							version = 3,
						},
					},
				},
				displayPath = "Ring dodges",
				eventType = 2,
				loop = true,
				mechanicTime = 414.3,
				name = "[P3 P4] Next ring 12",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 248,
				timerStartOffset = -8,
				uuid = "8e7eb3c6-7a5f-654d-9425-d3504b2ffcd0",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nS.keep(S.red:addTimedDonut(2050,e.pos.x,e.pos.y,e.pos.z,18,24,0,false,true,S.flags))\nlocal p=TensorCore.mGetPlayer()\nlocal dx,dz=p.pos.x-e.pos.x,p.pos.z-e.pos.z\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length<.01 then dx,dz,length=0,1,1 end\nAnyoneCore.addWorldTextCountdown(2050,{x=e.pos.x+dx/length*21,y=e.pos.y+.6,z=e.pos.z+dz/length*21},0xFFFFFFFF,true,1.1)\nself.used=true\n",
							conditions = 
							{
								
								{
									"27a92b4d-5f5e-8424-ba7c-eaddd7754099",
									true,
								},
							},
							name = "[P3 P4] Next ring 18",
							uuid = "e4b32076-90ca-f408-9596-fec235b08553",
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
							eventSpellID = 31569,
							name = "Matching mechanic",
							uuid = "27a92b4d-5f5e-8424-ba7c-eaddd7754099",
							version = 3,
						},
					},
				},
				displayPath = "Ring dodges",
				eventType = 2,
				loop = true,
				mechanicTime = 414.3,
				name = "[P3 P4] Next ring 18",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 248,
				timerStartOffset = -8,
				uuid = "d5cf5383-91cf-52a7-b714-3715ef12a5ac",
				version = 2,
			},
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "5ae8eef9-b34c-d55b-8cb2-f6ad72bf1477",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCircle(ms,pos.x,pos.y,pos.z,11,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"4b4e4675-a7ba-7dd9-ab63-6d465df44a65",
									true,
								},
							},
							name = "[AoE] Arm slam",
							uuid = "4b193f17-9ee3-358e-a293-212f1ed0d8e3",
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
							eventSpellID = 31566,
							name = "Matching mechanic",
							uuid = "4b4e4675-a7ba-7dd9-ab63-6d465df44a65",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 426.4,
				name = "[AoE] Arm slam",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 8,
				timerStartOffset = -16,
				uuid = "cd801b78-e97f-cea0-b652-ddc50ab85dc7",
				version = 2,
			},
		},
	},
	[70] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P3\\Transition",
				uuid = "8a777724-1d95-5639-a837-130a8d5a1beb",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal lists={{},{},{}}\nfor slot in string.gmatch('R1 M1 T1 H1 H2 T2 M2 R2','%S+') do\n local e=R.entOf(slot)\n local category=TensorCore.hasBuff(e,3425) and 1 or TensorCore.hasBuff(e,3426) and 2 or 3\n lists[category][#lists[category]+1]=e.id\nend\nif Settings.FFXIVMINION.LPDU_TOP_AM_transition==1 and S.topAMBuild then\n S.topAMBuild('transition')\n if S.topAMTransitionLists then lists=S.topAMTransitionLists end\nend\nS.sniperCircles=S.sniperCircles or {}\nlocal me=TensorCore.mGetPlayer()\nlocal spread=TensorCore.hasBuff(me,3425)\nlocal assignedStack\nfor rank,id in ipairs(lists[2]) do if id==me.id then assignedStack=id end end\nfor rank,id in ipairs(lists[3]) do if id==me.id then assignedStack=lists[2][rank] end end\nif TensorReactions_CurrentTimer>=421.0 then\nfor category=1,2 do for _,id in ipairs(lists[category]) do\n local e=TensorCore.mGetEntity(id)\n local safe=category==2 and id==assignedStack\n local d=TensorCore.getCachedFlatDrawer(safe and 0x5033FF33 or 0x503333FF,safe and 0x5033FF33 or 0x503333FF,safe and 0x5033FF33 or 0x503333FF,safe and 0xFF33FF33 or 0xFF3333FF,3,0,0)\n local old=S.sniperCircles[id]\n if old and old.safe~=safe then Argus.deleteTimedShape(old.id);S.owned[old.id]=nil;old=nil end\n local seconds=(category==1 and 428.4 or 427.3)-TensorReactions_CurrentTimer\n if e and e.pos and not old and seconds>0 then\n  S.sniperCircles[id]={id=S.keep(d:addTimedCircleOnEnt(math.floor(seconds*1000),id,6,0,false,true,0)),safe=safe}\n end\nend end\nend\nif #lists[1]~=4 or #lists[2]~=2 or #lists[3]~=2 then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal angles={[-1]=0}\nfor category,list in ipairs(lists) do\n for rank,id in ipairs(list) do\n  if id==p.id then\n   local angle=category==1 and ({-math.pi/2,-3*math.pi/4,3*math.pi/4,math.pi/2})[rank] or (rank==1 and -math.pi/4 or math.pi/4)\n   S.sniperAngle=angle\n   S.go('sniper',S.polar(angle,19),category==1 and 'Spread here' or 'Pair stack north',10,1)\n  end\n end\nend\nself.used=true\n",
							name = "[P3] Personal transition spread or pair",
							uuid = "06a68062-9828-2424-ba07-01f5955041b4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3\\Transition",
				loop = true,
				mechanicTime = 427.3,
				name = "[P3] Personal transition spread or pair",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = -0.2,
				timerStartOffset = -20,
				uuid = "cb45a7aa-3489-5f59-b19a-545300bbaa5d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Automarkers",
				uuid = "33c658db-803b-b1b3-a452-1bc118018d08",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.topAMBuild then self.used=true return end\nlocal enabled=Settings.FFXIVMINION.LPDU_TOP_AM_transition==1\nif not S.ready() then self.used=true return end\nlocal w=S.p5MarkerWriter\nif not enabled then\n if w and string.find(w.key,'transition',1,true)==1 then S.topAMTick(w.key,nil,false)end\n self.used=true return\nend\nlocal key,queue=S.topAMBuild('transition')\nif not key and w and w.target and string.find(w.key,'transition',1,true)==1 then S.topAMTick(w.key,nil,false)end\nif key and queue then S.topAMTick(key,queue,enabled)end\nself.used=true\n",
							conditions = 
							{
								
								{
									"288dd288-85a9-5bc8-8807-99317f9da9f0",
									true,
								},
							},
							name = "[AM] Optional P3 Transition",
							uuid = "51a2d019-ba9f-4ed2-ac6b-2f983c6d61e7",
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
							conditionLua = "local S=data.topLpdu;return S and (Settings.FFXIVMINION.LPDU_TOP_AM_transition==1 or S.p5MarkerWriter and S.p5MarkerWriter.target and string.find(S.p5MarkerWriter.key,'transition',1,true)==1) or false",
							name = "Matching mechanic",
							uuid = "288dd288-85a9-5bc8-8807-99317f9da9f0",
							version = 3,
						},
					},
				},
				displayPath = "Automarkers",
				loop = true,
				mechanicTime = 427.3,
				name = "[AM] Optional P3 Transition",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 70,
				timerStartOffset = -20,
				uuid = "c6495f66-32d7-af12-baf2-abe45893aff9",
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
				name = "P3\\Hello World",
				uuid = "a4b04b0d-edd5-2bd8-8fef-847f2fe5d15a",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal degrees={T1=0,T2=45,H2=90,R2=135,M2=180,M1=225,R1=270,H1=315}\nlocal a=degrees[slot]\nif a then\n local seconds=math.max(.1,440.8-TensorReactions_CurrentTimer)\n S.go('hw-precast-clock',S.polar(math.rad(a),9),'Loose clock spread for Hello World',seconds,.8)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"6855451c-3e0f-1b22-af0a-5b852bedd00f",
									true,
								},
							},
							name = "[P3] Loose clock spread before Hello World",
							uuid = "6074ca5a-2717-a95a-8244-0b1022e6f685",
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
							conditionLua = "return data.topLpdu and not data.topLpdu.issued['hw-precast-clock']",
							name = "Matching mechanic",
							uuid = "6855451c-3e0f-1b22-af0a-5b852bedd00f",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				loop = true,
				mechanicTime = 432.3,
				name = "[P3] Loose clock spread before Hello World",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 8.5,
				timerStartOffset = 0.3,
				uuid = "332c448d-6cc6-fc40-896b-d9a236ce8353",
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
				name = "P3\\Hello World",
				uuid = "68d4bec9-bac7-ac52-8f6b-878b60433615",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nS.hw=S.hw or {roles={},colors={},towers={},wave=0,sides={},dest={},patches=0}\nself.used=true\n",
							conditions = 
							{
								
								{
									"ee920385-4efd-7da8-9a5b-0de2303dfde6",
									true,
								},
							},
							name = "[P3] Reset Hello World",
							uuid = "840b9add-abe1-717c-afcc-1ab743087a1e",
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
							conditionLua = "return true",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31573,
							name = "Matching mechanic",
							uuid = "ee920385-4efd-7da8-9a5b-0de2303dfde6",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				mechanicTime = 441.3,
				name = "[P3] Reset Hello World",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 2,
				timerStartOffset = -8,
				uuid = "20367cc3-9649-0128-b90d-3390a9960295",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.hw=S.hw or {roles={},colors={},towers={},wave=0,sides={},dest={},patches=0}\nlocal hw=S.hw\nif not hw then self.used=true return end\nlocal id,b=eventArgs.entityID,eventArgs.buffID\nif b==3436 then hw.roles[id]=2\nelseif b==3437 then hw.roles[id]=0\nelseif b==3438 then hw.colors[id]='red'\nelseif b==3439 then hw.colors[id]='blue'\nelseif eventArgs.buffDuration<30 then\n if b==3503 then hw.roles[id]=3 elseif b==3441 then hw.roles[id]=1 end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"2020be46-884f-ef6b-a5ef-e8c2684fc16e",
									true,
								},
							},
							name = "[P3] Hello World initial roles",
							uuid = "6828be16-873a-9c02-9f8b-47ca7dad426e",
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
							conditionLua = "local S=data.topLpdu\nif not S then return false end\nlocal hw=S.hw\nlocal id,b=eventArgs.entityID,eventArgs.buffID\nif b==3438 or b==3439 then return not hw or hw.colors[id]==nil end\nif b==3436 or b==3437 then return not hw or hw.roles[id]==nil end\nif b==3503 or b==3441 then return eventArgs.buffDuration<30 and (not hw or hw.roles[id]==nil) end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Only missing initial role or rot color",
							uuid = "2020be46-884f-ef6b-a5ef-e8c2684fc16e",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				eventType = 8,
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Hello World initial roles",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 10,
				timerStartOffset = -4,
				uuid = "a695c39b-9451-edae-89c9-40e94185c432",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.hw=S.hw or {roles={},colors={},towers={},wave=0,sides={},dest={},patches=0}\nlocal hw=S.hw\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not hw or not e or not e.pos then self.used=true return end\nif not hw.lastTower or Now()-hw.lastTower>3000 then\n hw.wave=hw.wave+1; hw.towers={}; hw.dest={}; hw.resolved=nil; hw.transferred=nil\nend\nhw.lastTower=Now()\nhw.towers[e.id]={pos={x=e.pos.x,y=e.pos.y,z=e.pos.z},color=eventArgs.spellID==31583 and 'red' or 'blue',expires=Now()+eventArgs.channelTimeMax*1000}\nself.used=true\n",
							conditions = 
							{
								
								{
									"e7f1635b-b299-cd34-83cd-f795f77ca67a",
									true,
								},
							},
							name = "[P3] Read red and blue towers",
							uuid = "22ca4c89-f45e-3ba3-b17c-eaeff926ed87",
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
							conditionLua = "return eventArgs.spellID==31583 or eventArgs.spellID==31584",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "e7f1635b-b299-cd34-83cd-f795f77ca67a",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				eventType = 3,
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Read red and blue towers",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 90,
				uuid = "f32ec4be-23d2-d1f1-9a66-b54807f46e4b",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.hw=S.hw or {roles={},colors={},towers={},wave=0,sides={},dest={},patches=0}\nlocal hw=S.hw\nLPDU_TOP_HWDebug={time=TensorReactions_CurrentTimer,wave=hw.wave,resolved=hw.resolved,ready=S.ready(),roles=hw.roles,colors=hw.colors,towers=hw.towers}\nif not S.ready() or hw.resolved then self.used=true return end\n-- Replay snapshots may restore statuses without firing their original gain event.\n-- Recover initial roles while their preparation statuses are still present.\nif hw.wave<=1 then\n for _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n  local e=AnyoneCore.Roster.entOf(slot)\n  if hw.roles[e.id]==nil then\n   if (TensorCore.hasBuff(e,3436) or TensorCore.hasBuff(e,3524)) then hw.roles[e.id]=2\n   elseif (TensorCore.hasBuff(e,3437) or TensorCore.hasBuff(e,3525)) then hw.roles[e.id]=0\n   else\n    local localBuff=TensorCore.getBuff(e,3503)\n    local remoteBuff=TensorCore.getBuff(e,3441)\n    if TensorCore.hasBuff(e,3529) or (localBuff and localBuff.duration<30) then hw.roles[e.id]=3\n    elseif TensorCore.hasBuff(e,3530) or (remoteBuff and remoteBuff.duration<30) then hw.roles[e.id]=1 end\n   end\n  end\n  if (TensorCore.hasBuff(e,3438) or TensorCore.hasBuff(e,3526)) then hw.colors[e.id]='red'\n  elseif (TensorCore.hasBuff(e,3439) or TensorCore.hasBuff(e,3429)) then hw.colors[e.id]='blue' end\n end\nend\nlocal count,defamColor=0,nil\nfor id,role in pairs(hw.roles) do\n count=count+1\n if role==0 and hw.colors[id] then defamColor=hw.colors[id] end\nend\nlocal player=TensorCore.mGetPlayer()\nif not defamColor then\n for id,role in pairs(hw.roles) do\n  if role==2 and hw.colors[id] then defamColor=hw.colors[id]=='red' and 'blue' or 'red';break end\n end\nend\nLPDU_TOP_HWDebug.roleCount=count;LPDU_TOP_HWDebug.defamColor=defamColor\nif hw.roles[player.id]==nil or not defamColor then LPDU_TOP_HWDebug.waiting='player role or defamation color';self.used=true return end\nlocal n,mx,mz,deadline=0,0,0,nil\nfor _,t in pairs(hw.towers) do\n n=n+1; deadline=t.expires\n if t.color==defamColor then mx=mx+t.pos.x-100; mz=mz+t.pos.z-100 end\nend\nLPDU_TOP_HWDebug.towerCount=n;LPDU_TOP_HWDebug.deadline=deadline\nif n~=4 or not deadline or deadline<=Now() then LPDU_TOP_HWDebug.waiting='four active towers';self.used=true return end\nlocal a=math.atan2(mx,-mz)\nhw.angle=a\nlocal function spot(role,side)\n if role==0 then return S.polar(a+side*math.pi/4,15.5)\n elseif role==1 then return S.polar(a+math.pi+side*math.rad(12),12.5)\n elseif role==2 then return S.polar(a+math.pi+side*math.rad(25),12.5)\n elseif hw.wave<4 then return S.polar(a+side*math.rad(75),15.5)\n else return S.polar(a+math.pi+side*math.rad(12),12.5) end\nend\nlocal R=AnyoneCore.Roster\nfor initial=0,3 do\n local pair={}\n for slot in string.gmatch('R1 M1 T1 H1 H2 T2 M2 R2','%S+') do\n  local e=R.entOf(slot)\n  if hw.roles[e.id]==initial then pair[#pair+1]=e end\n end\n if #pair~=2 then LPDU_TOP_HWDebug.waiting='same role partner';self.used=true return end\n local role=(initial+hw.wave-1)%4\n -- Snapshot this wave's split once, including Alninio's front/behind rule.\n hw.sidePlans=hw.sidePlans or {}\n local plan=hw.sidePlans[initial]\n if not plan or plan.wave~=hw.wave then\n  local left,right=spot(role,-1),spot(role,1)\n  local d1=TensorCore.getDistance2d(pair[1].pos,left)\n  local d2=TensorCore.getDistance2d(pair[2].pos,right)\n  local c1=TensorCore.getDistance2d(pair[1].pos,right)\n  local c2=TensorCore.getDistance2d(pair[2].pos,left)\n  plan={wave=hw.wave,first=c1+c2+1<d1+d2 and 1 or -1}\n  if role==0 or role==2 then\n   -- Find the actual two eligible tower centers, not screen north/south.\n   local color=role==0 and defamColor or (defamColor=='red' and 'blue' or 'red')\n   local lt,rt,ld,rd\n   for _,tower in pairs(hw.towers) do if tower.color==color then\n    local dl=TensorCore.getDistance2d(tower.pos,left)\n    local dr=TensorCore.getDistance2d(tower.pos,right)\n    if not ld or dl<ld then lt=tower.pos;ld=dl end\n    if not rd or dr<rd then rt=tower.pos;rd=dr end\n   end end\n   if lt and rt and TensorCore.getDistance2d(lt,rt)>1 then\n    local a=TensorCore.getDistance2d(pair[1].pos,lt)\n    local b=TensorCore.getDistance2d(pair[1].pos,rt)\n    local c=TensorCore.getDistance2d(pair[2].pos,lt)\n    local d=TensorCore.getDistance2d(pair[2].pos,rt)\n    local firstSide=a<=b and -1 or 1\n    local secondSide=c<=d and -1 or 1\n    if firstSide~=secondSide then\n     plan.first=firstSide\n    else\n     local firstDistance=firstSide==-1 and a or b\n     local secondDistance=firstSide==-1 and c or d\n     -- Ahead on the approach = closer to their common first tower.\n     -- That player continues; the trailing player keeps this tower.\n     if math.abs(firstDistance-secondDistance)>.5 then\n      plan.front=firstDistance<secondDistance and pair[1].id or pair[2].id\n      plan.first=plan.front==pair[1].id and -firstSide or firstSide\n      plan.commonSide=firstSide\n     end\n    end\n   end\n  end\n  hw.sidePlans[initial]=plan\n end\n hw.sides[pair[1].id]=plan.first\n hw.sides[pair[2].id]=-plan.first\n for _,e in ipairs(pair) do hw.dest[e.id]=spot(role,hw.sides[e.id]) end\nend\nlocal p=TensorCore.mGetPlayer()\nlocal role=(hw.roles[p.id]+hw.wave-1)%4\nfor _,shape in pairs(hw.roleCircles or {})do Argus.deleteTimedShape(shape.id);S.owned[shape.id]=nil end\nhw.roleCircles=nil\nLPDU_TOP_HWDebug.waiting=nil;LPDU_TOP_HWDebug.destination=hw.dest[p.id]\n-- Only the assigned stack-tower soaker sees this tower boundary.\nlocal chosen,nearest\nif role==2 then\n local assigned=hw.dest[p.id]\n for id,tower in pairs(hw.towers) do if tower.color~=defamColor then\n  local d=(tower.pos.x-assigned.x)^2+(tower.pos.z-assigned.z)^2\n  if not nearest or d<nearest then nearest=d;chosen=tower end\n end end\nend\nif chosen then\n local drawer=TensorCore.getCachedFlatDrawer(0x1833FF33,0x1833FF33,0x1833FF33,0xFF33FF33,3,0,0)\n local ms=math.max(100,deadline-Now())\n local old=hw.assignedStackTower\n if old and (old.wave~=hw.wave or old.x~=chosen.pos.x or old.z~=chosen.pos.z) then\n  Argus.deleteTimedShape(old.id);S.owned[old.id]=nil;old=nil\n end\n if not old or not drawer:updateTimedCircle(old.id,ms,chosen.pos.x,chosen.pos.y+.08,chosen.pos.z,6,0,false,true,0) then\n  old={id=S.keep(drawer:addTimedCircle(ms,chosen.pos.x,chosen.pos.y+.08,chosen.pos.z,6,0,false,true,0)),wave=hw.wave,x=chosen.pos.x,z=chosen.pos.z}\n end\n hw.assignedStackTower=old\nelseif hw.assignedStackTower then\n Argus.deleteTimedShape(hw.assignedStackTower.id);S.owned[hw.assignedStackTower.id]=nil;hw.assignedStackTower=nil\nend\nlocal text=({'ROT: outer lane, max-melee tower','BLUE TETHER: inside lane, share stack','ROT: outer lane, inner edge of tower','RG TETHER: keep clear of rot holders'})[role+1]\nif role==3 and hw.wave==4 then text='FINAL RG: join stack, tether pops first' end\nlocal plan=hw.sidePlans and hw.sidePlans[hw.roles[p.id]]\nif plan and plan.wave==hw.wave and plan.front==p.id then text='ROT: outer lane, continue to other tower' end\nlocal seconds=(deadline-Now())/1000\nlocal destination=hw.dest[p.id]\nlocal staging=false\nif role==3 and hw.wave<4 then\n local donor\n for id,initial in pairs(hw.roles) do\n  if (initial+hw.wave-1)%4==0 and hw.sides[id]==hw.sides[p.id] then donor=TensorCore.mGetEntity(id);break end\n end\n local settled=donor and donor.pos and hw.dest[donor.id] and TensorCore.getDistance2d(donor.pos,hw.dest[donor.id])<=3\n if not settled and (p.pos.x-100)^2+(p.pos.z-100)^2<14^2 and seconds>2 then\n  staging=true;destination=S.polar(a+hw.sides[p.id]*math.rad(75),10)\n  text='RG TETHER: wait inside, let rot pass'\n elseif settled then text='RG TETHER: rot settled, move out and stretch' end\nend\nlocal goalKey='hw-tower-'..hw.wave..(staging and '-wait-inside' or '')\nif S.goal and S.goal.key==goalKey then S.goal.pos=destination;S.goal.expires=deadline end\nif S.go(goalKey,destination,text,seconds,0.9) and not staging and hw.countdown~=hw.wave then\n hw.countdown=hw.wave\n local pos=hw.dest[p.id]\n AnyoneCore.addWorldTextCountdown(math.floor(seconds*1000),{x=pos.x,y=pos.y+2,z=pos.z},0xFF33FF33,true,1.2)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"c09cb0a8-c83c-fe20-b20f-71cb71489963",
									true,
								},
							},
							name = "[P3] Hello World personal tower step",
							uuid = "4ec5cecc-d59d-92b7-b06a-c95dc060d269",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.hw~=nil and not S.hw.resolved)",
							name = "Relevant mechanic",
							uuid = "c09cb0a8-c83c-fe20-b20f-71cb71489963",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Hello World personal tower step",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 90,
				timerStartOffset = 8,
				uuid = "687acdaf-57a3-924b-be85-03ecbfc20a91",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal hw=S.hw\nif hw and not hw.resolved then hw.resolved=Now(); hw.countdown=nil; S.clearGoal() end\nself.used=true\n",
							conditions = 
							{
								
								{
									"abf9eeb4-7148-6b02-8e61-a991b4822018",
									true,
								},
							},
							name = "[P3] Towers resolved",
							uuid = "535bc454-28d2-bf6a-afe4-16af8d458bc0",
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
							conditionLua = "return eventArgs.spellID==31583 or eventArgs.spellID==31584",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "abf9eeb4-7148-6b02-8e61-a991b4822018",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				eventType = 2,
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Towers resolved",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 95,
				timerStartOffset = 10,
				uuid = "448196ee-944c-bb71-8eb1-11f8e789b769",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal hw=S.hw\n-- Confirm the actual rot gain before telling the donor/receiver to separate.\nif hw and hw.passWatch and hw.passWatch.wave==hw.wave and not hw.passWatch.done and S.ready() then\n local watch=hw.passWatch\n local receiver=TensorCore.mGetEntity(watch.receiver)\n if receiver and TensorCore.hasBuff(receiver,watch.buff) then\n  watch.done=true\n  local player=TensorCore.mGetPlayer()\n  if S.goal and (S.goal.key=='hw-pass-'..hw.wave or S.goal.key=='hw-receive-'..hw.wave) then S.clearGoal() end\n  if player.id==watch.receiver then\n   S.say('ROT TAKEN: leave soaker, wait for tether call',3)\n  else\n   S.say('ROT PASSED: spread, keep away until AoE',3)\n  end\n end\nend\nif not hw or not hw.resolved or hw.transferred or Now()-hw.resolved<400 or not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal initial=hw.roles[p.id]\nif initial==nil then self.used=true return end\nlocal role=(initial+hw.wave-1)%4\nif hw.wave==4 then\n S.say('FINAL: rot spread; blue tether waits for vuln',3); hw.transferred=true; self.used=true return\nend\nif role==0 or role==2 then\n local receiverRole=role==0 and 3 or 1\n local buff=TensorCore.hasBuff(p,3526) and 3526 or TensorCore.hasBuff(p,3429) and 3429 or nil\n for id,r in pairs(hw.roles) do\n  if buff and (r+hw.wave-1)%4==receiverRole and hw.sides[id]==hw.sides[p.id] then\n   hw.passWatch={wave=hw.wave,receiver=id,buff=buff};break\n  end\n end\n S.go('hw-pass-'..hw.wave,hw.dest[p.id],'ROT: hold position, let tether partner come',3,1)\nelse\n local donorRole=role==1 and 2 or 0\n -- Use exactly the same priority side as the tower assignment.\n local side=hw.sides[p.id]\n if not side then self.used=true return end\n local target\n for id,r in pairs(hw.roles) do\n  if (r+hw.wave-1)%4==donorRole and hw.sides[id]==side then\n   target=TensorCore.mGetEntity(id);break\n  end\n end\n if not target or not target.pos then self.used=true return end\n local buff=TensorCore.hasBuff(target,3526) and 3526 or TensorCore.hasBuff(target,3429) and 3429 or nil\n if buff then hw.passWatch={wave=hw.wave,receiver=p.id,buff=buff} end\n S.go('hw-receive-'..hw.wave,target.pos,'TAKE ROT: walk to your assigned soaker',4,0.8)\nend\nhw.transferred=true\nself.used=true\n",
							conditions = 
							{
								
								{
									"13f8bd8e-4d4a-5dc0-a997-c4a5acaa0889",
									true,
								},
							},
							name = "[P3] Personal rot transfer",
							uuid = "1aaa9bd8-56ca-da65-88f0-1c5229438e69",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.hw~=nil and S.hw.resolved~=nil and not S.hw.transferred and Now()-S.hw.resolved>=400)",
							name = "Relevant mechanic",
							uuid = "13f8bd8e-4d4a-5dc0-a997-c4a5acaa0889",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Personal rot transfer",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 94,
				timerStartOffset = 10,
				uuid = "6cf4c9b7-29b2-cf99-8b94-588c9617a0c8",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nif S.hw and p and eventArgs.entityID==p.id and (not S.hw.lastPatch or Now()-S.hw.lastPatch>700) then\n S.hw.patches=S.hw.patches+1; S.hw.lastPatch=Now()\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"d2ac8637-582d-1d20-a732-81acf7867c16",
									true,
								},
							},
							name = "[P3] Track tether break order",
							uuid = "56c25534-1d40-b112-a237-5b21d87dd78b",
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
							eventBuffID = 3516,
							name = "Matching mechanic",
							uuid = "d2ac8637-582d-1d20-a732-81acf7867c16",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				eventType = 8,
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Track tether break order",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 98,
				timerStartOffset = 5,
				uuid = "00849302-7825-73cd-a5fe-44d23d95e7a2",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal hw=S.hw\nif not hw or not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nif TensorCore.hasBuff(p,3516) then self.used=true return end\nlocal blue=TensorCore.getBuff(p,3530)\nlocal green=TensorCore.getBuff(p,3529)\nlocal count=hw.patches\nlocal canBlue=blue and blue.duration<=6 and ((count%2==0 and count~=6) or count==7)\nlocal canGreen=green and green.duration<=6 and (count%2==1 or count==6)\nif not canBlue and not canGreen then self.used=true return end\nlocal kind=canBlue and 'blue' or 'green'\nlocal key='hw-break-'..hw.wave..kind\nif S.issued[key] then self.used=true return end\nlocal partner\nfor _,t in ipairs(Argus.getTethersOnEnt(p.id)) do\n if t.type==(canBlue and 225 or 224) then partner=TensorCore.mGetEntity(t.partnerid); break end\nend\nif not partner then self.used=true return end\nlocal dest\nif canGreen then dest={x=(p.pos.x+partner.pos.x)/2,z=(p.pos.z+partner.pos.z)/2}\nelse\n local a=math.atan2(p.pos.x-100,100-p.pos.z)\n dest=S.polar(a,19)\nend\nS.go(key,dest,canGreen and 'VULN CLEAR: meet tether partner, break RG' or 'VULN CLEAR: move apart, break blue',(canBlue and blue.duration or green.duration)+.5,1)\nself.used=true\n",
							name = "[P3] Break personal tether safely",
							uuid = "cd06afd7-7f5e-7f29-9c94-4a60bf5cc521",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3\\Hello World",
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Break personal tether safely",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 96,
				timerStartOffset = 10,
				uuid = "8770f119-5554-341d-9a60-80115d674147",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal hw=S.hw\nif not hw or not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal b=TensorCore.getBuff(p,3429) or TensorCore.getBuff(p,3526)\nif b and b.duration<=3 then\n local key='hw-rot-'..hw.wave\n if not S.issued[key] then\n  S.issued[key]=true; S.clearGoal(); S.say('Spread away',3)\n  S.keep(S.red:addTimedCircleOnEnt(b.duration*1000,p.id,5,0,false,true,S.flags))\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"5b8529f1-bcb7-3388-817f-d21f3f3896e2",
									true,
								},
							},
							name = "[P3] Rot expiry spread",
							uuid = "ba88352e-fa73-bf78-9ef0-0bbb8c41c55d",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.hw~=nil)",
							name = "Relevant mechanic",
							uuid = "5b8529f1-bcb7-3388-817f-d21f3f3896e2",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Rot expiry spread",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 97,
				timerStartOffset = 10,
				uuid = "c0ba7437-1273-04da-9868-0c75732d029b",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S or not S.hw or not S.ready() then self.used=true return end\nlocal hw=S.hw;hw.finalDangerCircles=hw.finalDangerCircles or {}\nlocal circles=hw.finalDangerCircles;local active={}\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n if e and e.alive then\n  local b=TensorCore.getBuff(e,3529) or TensorCore.getBuff(e,3530)\n  if b and b.duration>0 then\n   active[e.id]=true;local ms=b.duration*1000;local h=circles[e.id]\n   if not h or not S.red:updateTimedCircleOnEnt(h,ms,e.id,5,0,false,true,S.flags) then\n    if h then S.owned[h]=nil end\n    h=S.red:addTimedCircleOnEnt(ms,e.id,5,0,false,true,S.flags)\n    if h then S.keep(h);circles[e.id]=h end\n   end\n  end\n end\nend\nfor id,h in pairs(circles) do\n if not active[id] then Argus.deleteTimedShape(h);S.owned[h]=nil;circles[id]=nil end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"b00c7c87-2587-a92d-bd0f-04fa352daf44",
									true,
								},
							},
							name = "Show unresolved tether explosions",
							uuid = "bab7a392-a56b-5d79-811a-2caa8aa3249c",
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
							conditionLua = "local S=data.topLpdu;return S~=nil and S.hw~=nil and S.hw.wave==4 and S.hw.resolved~=nil",
							dequeueIfLuaFalse = true,
							name = "Final towers resolved",
							uuid = "b00c7c87-2587-a92d-bd0f-04fa352daf44",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Hello World",
				loop = true,
				mechanicTime = 441.3,
				name = "[P3] Final tether explosion circles",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 110,
				timerStartOffset = 70,
				uuid = "abdad240-4291-cf31-a2e4-2e8d2a667584",
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
				name = "Orientation",
				uuid = "c7aac05b-8dbb-d07a-b5ce-382ce54b1029",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not p.pos or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=7636')) do\n if Argus.getEntityModel(e)==15717 and e.targetable and e.alive and e.targetid==p.id then boss=e; break end\nend\nif not boss or not boss.pos then self.used=true return end\nlocal error=math.abs(math.atan2(math.sin(boss.pos.h-math.pi),math.cos(boss.pos.h-math.pi)))\nlocal key='face-hw-end'\nif error<math.rad(20) then\n if S.goal and S.goal.key==key then S.clearGoal() end\n self.used=true return\nend\nif boss.castinginfo.channelingid~=0 then self.used=true return end\nS.go(key,{x=boss.pos.x,y=boss.pos.y,z=boss.pos.z-boss.hitradius-1.5},'You have aggro, face boss north',3.5,0.8)\nself.used=true\n",
							name = "[Aggro] Face boss north - hw-end",
							uuid = "6686c03f-4867-4edc-83f5-161cc32d88c1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				enabled = false,
				loop = true,
				mechanicTime = 533.5,
				name = "[Aggro] Face boss north - hw-end",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = 7,
				timerStartOffset = 1,
				uuid = "5f45cbd5-1234-5027-990b-bb18c4f5f350",
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
				name = "P3\\Monitors",
				uuid = "43d8e2ca-db38-b31b-bf66-9209c6ddcdaf",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal order={R1=1,M1=2,T1=3,H1=4,H2=5,T2=6,M2=7,R2=8}\nlocal rank=order[slot]\nif rank then S.go('monitor-conga',{x=88,z=100+(rank-4.5)*2},'Line up west',math.max(1,562.4-TensorReactions_CurrentTimer),0.7) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"473ba345-5540-396e-afab-35337b5d85c2",
									true,
								},
							},
							name = "[P3] LPDU monitor conga",
							uuid = "59f1a424-59ab-6227-9e09-ce8a09f359ea",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and not S.issued['monitor-conga']",
							name = "Relevant mechanic",
							uuid = "473ba345-5540-396e-afab-35337b5d85c2",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Monitors",
				mechanicTime = 571.4,
				name = "[P3] LPDU monitor conga",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = -11,
				timerStartOffset = -17,
				uuid = "01088d71-fc3d-7d55-9611-59ac82b02edb",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nS.p3MonitorResolved=nil\nS.monitorBoss=eventArgs.spellID==31595 and 1 or -1\nS.monitorDeadline=Now()+eventArgs.channelTimeMax*1000\nlocal R=AnyoneCore.Roster\nif S.ready() then\n local order={}\n for _,role in ipairs({'R1','M1','T1','H1','H2','T2','M2','R2'}) do\n  local e=R.entOf(role);order[#order+1]={id=e.id,z=e.pos.z,rank=#order+1}\n end\n table.sort(order,function(a,b)if math.abs(a.z-b.z)>.1 then return a.z<b.z end return a.rank<b.rank end)\n S.monitorOrder={}\n for _,entry in ipairs(order) do S.monitorOrder[#S.monitorOrder+1]=entry.id end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"e76efd45-74e7-d64b-9e14-6b32a8d0c836",
									true,
								},
							},
							name = "[P3] Read boss monitor side",
							uuid = "992837b2-5118-a4b0-a897-eb8a12620301",
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
							conditionLua = "return eventArgs.spellID==31595 or eventArgs.spellID==31596",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "e76efd45-74e7-d64b-9e14-6b32a8d0c836",
							version = 3,
						},
					},
				},
				displayPath = "P3\\Monitors",
				eventType = 3,
				loop = true,
				mechanicTime = 571.4,
				name = "[P3] Read boss monitor side",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 2,
				timerStartOffset = -12,
				uuid = "8d37cdd9-e7b8-e411-86cc-e3b1fcd7062e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or not S.monitorBoss or not S.monitorDeadline then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal monitors,normal={},{}\nif not S.monitorOrder then self.used=true return end\nfor _,id in ipairs(S.monitorOrder) do\n local e=TensorCore.mGetEntity(id)\n local buff=TensorCore.hasBuff(e,3452) or TensorCore.hasBuff(e,3453)\n local list=buff and monitors or normal\n list[#list+1]=e.id\nend\nif #monitors~=3 or #normal~=5 then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal boss=S.monitorBoss\nlocal seconds=(S.monitorDeadline-Now())/1000\nif seconds<=0 then self.used=true return end\nlocal mSpots={{-boss*10,-11},{boss*11,-9},{boss*11,9}}\nlocal nSpots={{-boss,-15},{-boss*15,-4},{-boss*15,4},{-boss*10,11},{-boss,15}}\nfor kind,list in ipairs({monitors,normal}) do\n for rank,id in ipairs(list) do if id==p.id then\n  local pos=(kind==1 and mSpots or nSpots)[rank]\n  local text=kind==1 and 'Monitor '..rank or 'No monitor '..rank\n  if kind==1 then\n   local right=TensorCore.hasBuff(p,3452)\n   local beam=rank==1 and 0 or -boss*math.pi/2\n   local heading=beam+(right and math.pi/2 or -math.pi/2)\n   heading=math.atan2(math.sin(heading),math.cos(heading))\n   local face=math.cos(heading)>.7 and 'south' or math.cos(heading)<-.7 and 'north' or math.sin(heading)>0 and 'east' or 'west'\n   text=text..', face '..face\n   local headings={north=math.pi,east=math.pi/2,south=0,west=-math.pi/2}\n   S.monitorFacing={key='p3-monitor-'..S.monitorDeadline,deadline=S.monitorDeadline,heading=headings[face]}\n  end\n  local goalKey='monitor-assigned-'..kind..'-'..rank..'-'..boss\n  S.go(goalKey,{x=100+pos[1],z=100+pos[2]},text,seconds,0.7)\n  if S.monitorLabel~=goalKey then\n   S.monitorLabel=goalKey\n   AnyoneCore.addTimedWorldTextOnEnt(seconds*1000,text,p.id,0xFF33FF33,true,1.2,2.5)\n  end\n end end\nend\nself.used=true\n",
							name = "[P3] Personal monitor position and facing",
							uuid = "b620d2cf-4202-f840-882d-3e6427463d56",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3\\Monitors",
				loop = true,
				mechanicTime = 571.4,
				name = "[P3] Personal monitor position and facing",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 93,
				timerStartOffset = -10,
				uuid = "7f261334-1fe7-8887-9dd0-4c042044bdd1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Orientation",
				uuid = "cf43b4ba-ed1c-3590-b1ff-cef3ca6e807f",
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
							actionLua = "local S=data.topLpdu\nif not S or not S.p3MonitorResolved then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not p.pos or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=7636'))do\n if Argus.getEntityModel(e)==15717 and e.targetable and e.alive and e.targetid==p.id then boss=e;break end\nend\nif not boss or not boss.pos or boss.castinginfo.channelingid~=0 then self.used=true return end\nlocal dx,dz=p.pos.x-boss.pos.x,p.pos.z-boss.pos.z\nlocal n=math.sqrt(dx*dx+dz*dz)\nif n<.5 then self.used=true return end\ndx,dz=dx/n,dz/n\nlocal a=math.atan2(dx,dz)\nS.go('face-monitors-end',{x=100+math.sin(a)*19,y=p.pos.y,z=100+math.cos(a)*19},'Pull boss to wall after monitors',5,0.8)\nself.used=true\n",
							name = "[Aggro] Face boss north - monitors-end",
							uuid = "6876847f-2fe6-dbe0-a8c2-844d3fbe932f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				loop = true,
				mechanicTime = 571.4,
				name = "[P3] Pull surviving boss after monitors",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 6,
				timerStartOffset = 0.5,
				uuid = "2d6b4be8-b0a7-87d6-bd83-4959e366ef43",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Monitors",
				uuid = "f2700710-f696-1e8b-ac47-671a1453c630",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.p3MonitorResolved=Now()\nlocal lock=S.monitorAutoLock\nif lock and lock.owned then lock.releaseAt=Now()+800 end\nself.used=true\n",
							conditions = 
							{
								
								{
									"9b6222dc-c90d-324d-b62e-ede827820c31",
									true,
								},
							},
							name = "[Monitor] Hold facing after damage",
							uuid = "bc73d5b6-5a57-62bd-b2bb-fc1ea957086c",
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
							eventSpellID = 31597,
							name = "Matching mechanic",
							uuid = "9b6222dc-c90d-324d-b62e-ede827820c31",
							version = 3,
						},
					},
				},
				displayPath = "Monitors",
				eventType = 2,
				loop = true,
				mechanicTime = 571.4,
				name = "[Monitor] Hold facing after damage",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 215,
				timerStartOffset = -12,
				uuid = "7f1defde-efd0-1c15-8d53-7c008a40d29d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Automarkers",
				uuid = "56c1e7c8-f1db-56aa-8220-61c4f8332926",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.topAMBuild then self.used=true return end\nlocal enabled=Settings.FFXIVMINION.LPDU_TOP_AM_monitor==1\nif not S.ready() then self.used=true return end\nlocal w=S.p5MarkerWriter\nif not enabled then\n if w and string.find(w.key,'monitor',1,true)==1 then S.topAMTick(w.key,nil,false)end\n self.used=true return\nend\nlocal key,queue=S.topAMBuild('monitor')\nif not key and w and w.target and string.find(w.key,'monitor',1,true)==1 then S.topAMTick(w.key,nil,false)end\nif key and queue then S.topAMTick(key,queue,enabled)end\nself.used=true\n",
							conditions = 
							{
								
								{
									"c951ca43-17df-0a21-a53a-f8f6a3076077",
									true,
								},
							},
							name = "[AM] Optional P3 Monitors",
							uuid = "a6431d68-dc34-2f60-83e0-a58e9fcbe1c1",
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
							conditionLua = "local S=data.topLpdu;return S and (Settings.FFXIVMINION.LPDU_TOP_AM_monitor==1 or S.p5MarkerWriter and S.p5MarkerWriter.target and string.find(S.p5MarkerWriter.key,'monitor',1,true)==1) or false",
							name = "Matching mechanic",
							uuid = "c951ca43-17df-0a21-a53a-f8f6a3076077",
							version = 3,
						},
					},
				},
				displayPath = "Automarkers",
				loop = true,
				mechanicTime = 571.4,
				name = "[AM] Optional P3 Monitors",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "1e74a2b7-ff7a-3ed8-aa02-d2fd82cb2864",
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
				name = "Cast AoEs",
				uuid = "8e891178-7751-f561-b32d-14c3e5bfef89",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,100,6,pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"389b093c-1567-3724-938f-ac65b1914271",
									true,
								},
							},
							name = "[AoE] Protean repeat",
							uuid = "f7a23844-75e9-9b7c-85e3-ba538b321e09",
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
							eventSpellID = 31616,
							name = "Matching mechanic",
							uuid = "389b093c-1567-3724-938f-ac65b1914271",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 621.4,
				name = "[AoE] Protean repeat",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "ed7c0721-50c6-8d50-bcd3-4a45b29f039e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P4",
				uuid = "7fb0b540-3749-c8ea-8b63-d7f82b52b3e1",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.p4 then S.p4={wave=1,targets={},lastProtean=0,lastStack=0} end\nself.used=true\n",
							conditions = 
							{
								
								{
									"9df7ade7-7ca0-e280-b442-24a166efd9bf",
									true,
								},
							},
							name = "[P4] Start wave assignments",
							uuid = "74faab8a-16ec-8bdc-aace-c3a5cbe758dd",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.p4==nil",
							name = "Relevant mechanic",
							uuid = "9df7ade7-7ca0-e280-b442-24a166efd9bf",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				mechanicTime = 621.4,
				name = "[P4] Start wave assignments",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = -2,
				timerStartOffset = -12,
				uuid = "92a84b0a-0f24-e19c-a1c9-33971098e44b",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal state=S.p4\nif state then state.targets[eventArgs.targetID]=true end\nself.used=true\n",
							conditions = 
							{
								
								{
									"be5368ad-9b07-061b-8d6f-f84e25a55408",
									true,
								},
							},
							name = "[P4] Collect line stack targets",
							uuid = "aa051816-7b49-06ab-8090-963629c12e4a",
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
							eventSpellID = 22393,
							name = "Matching mechanic",
							uuid = "be5368ad-9b07-061b-8d6f-f84e25a55408",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				eventType = 2,
				loop = true,
				mechanicTime = 621.4,
				name = "[P4] Collect line stack targets",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 29,
				timerStartOffset = -12,
				uuid = "a1ae9e1b-b593-96c1-bf48-2cb392a643ce",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or not S.p4 or S.p4.wave~=1 then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal angle=({T1=-67.5,R1=-90,H1=-112.5,M1=-135,T2=67.5,R2=90,H2=112.5,M2=135})[slot]\nif not angle then self.used=true return end\nS.go('p4-protean-1',S.polar(math.rad(angle),17),'Go to protean spot',math.max(.1,621.3-TensorReactions_CurrentTimer),0.8)\nself.used=true\n",
							conditions = 
							{
								
								{
									"d4062199-262d-7abe-9b6d-fc43f74404d5",
									true,
								},
							},
							name = "[P4] Assigned protean 1",
							uuid = "20a0d98a-f4d8-dc4f-b8b4-bc8d52a72dd9",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and S.p4~=nil and S.p4.wave==1 and not S.issued['p4-protean-1']",
							name = "Relevant mechanic",
							uuid = "d4062199-262d-7abe-9b6d-fc43f74404d5",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				mechanicTime = 621.4,
				name = "[P4] Assigned protean 1",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = -0.1,
				timerStartOffset = -11.4,
				uuid = "0d546717-05b9-6bfc-93aa-15752e831784",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal state=S.p4\nif not state or not S.ready() or Now()-state.lastProtean<1000 then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal ranks={T1=1,R1=2,H1=3,M1=4,T2=1,R2=2,H2=3,M2=4}\nlocal westSlots={T1=true,R1=true,H1=true,M1=true}\nlocal targets={}\nfor id in pairs(state.targets) do\n local slot=R.slotOf(id)\n if slot then targets[#targets+1]={id=id,slot=slot,west=westSlots[slot] or false,rank=ranks[slot]} end\nend\nif #targets~=2 then self.used=true return end\nstate.lastProtean=Now()\nlocal groups={}\nfor slot in pairs(ranks) do groups[slot]=westSlots[slot] or false end\nlocal flex=false\nif targets[1].west==targets[2].west then\n local mover=targets[1].rank>targets[2].rank and targets[1] or targets[2]\n local otherMelee=mover.west and 'M2' or 'M1'\n groups[mover.slot]=not groups[mover.slot]\n groups[otherMelee]=not groups[otherMelee]\n local mySlot=R.mySlot()\n flex=mySlot==mover.slot or mySlot==otherMelee\nend\nlocal mine=R.mySlot()\nlocal angle=groups[mine] and -157.5 or 157.5\nlocal radius=state.wave==2 and 12 or 14\nS.go('p4-stack-'..state.wave,S.polar(math.rad(angle),radius),flex and 'Swap sides, stack south' or 'Stack south',4.8,1)\nstate.stackWest=groups[mine]\nself.used=true\n",
							conditions = 
							{
								
								{
									"30928939-e1ab-ba72-ae39-52d999d5fc80",
									true,
								},
							},
							name = "[P4] Move to personal line stack",
							uuid = "32f3f4d6-bd42-17ab-b79e-52b0cf3037b8",
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
							eventSpellID = 31614,
							name = "Matching mechanic",
							uuid = "30928939-e1ab-ba72-ae39-52d999d5fc80",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				eventType = 2,
				loop = true,
				mechanicTime = 621.4,
				name = "[P4] Move to personal line stack",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 30,
				timerStartOffset = -1,
				uuid = "48e0c79c-7791-1b5a-a44d-c3449453542e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or not S.p4 or not S.goal then self.used=true return end\nlocal key=S.goal.key\nlocal protean=string.find(key,'p4%-protean%-')\nlocal stack=string.find(key,'p4%-stack%-')\nif not stack then\n for name,id in pairs(S.p4LaneDraws or {}) do Argus.deleteTimedShape(id);S.owned[id]=nil end\n S.p4LaneDraws={}\n self.used=true return\nend\nlocal good=TensorCore.getCachedFlatDrawer(0x5033FF33,0x5033FF33,0x5033FF33,0xFF33FF33,3,0,0)\nlocal bad=TensorCore.getCachedFlatDrawer(0x503333FF,0x503333FF,0x503333FF,0xFF3333FF,3,0,0)\nS.p4LaneDraws=S.p4LaneDraws or {}\nlocal targets={}\nif protean then local p=TensorCore.mGetPlayer();targets[p.id]=p\nelse for id in pairs(S.p4.targets)do local e=TensorCore.mGetEntity(id);if e then targets[id]=e end end end\nlocal active={}\nfor id,e in pairs(targets) do\n local h=math.atan2(e.pos.x-100,e.pos.z-100)\n local safe=protean or (S.p4.stackWest~=nil and ((e.pos.x<100)==S.p4.stackWest))\n local d=safe and good or bad\n local name=key..':'..id..':'..tostring(not not safe);active[name]=true\n local old=S.p4LaneDraws[name]\n if not old or not d:updateTimedRect(old,1000,100,0,100,100,6,h,0,false,true,0) then\n  S.p4LaneDraws[name]=S.keep(d:addTimedRect(1000,100,0,100,100,6,h,0,false,true,0))\n end\nend\nfor name,id in pairs(S.p4LaneDraws) do if not active[name]then Argus.deleteTimedShape(id);S.owned[id]=nil;S.p4LaneDraws[name]=nil end end\nself.used=true\n",
							conditions = 
							{
								
								{
									"6e5e0bba-b752-99ac-814f-680790e66f4e",
									true,
								},
							},
							name = "[P4] Personal protean and both stack lanes",
							uuid = "6cdad62f-c221-6e97-b7e9-b764eddf86fa",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and S.p4~=nil and (S.goal~=nil or (S.p4LaneDraws~=nil and next(S.p4LaneDraws)~=nil))",
							name = "Relevant mechanic",
							uuid = "6e5e0bba-b752-99ac-814f-680790e66f4e",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				loop = true,
				mechanicTime = 621.4,
				name = "[P4] Personal protean and both stack lanes",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 30,
				timerStartOffset = -6,
				uuid = "ff2146c4-a001-280c-a87b-02354fd98089",
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
				name = "P4",
				uuid = "f69da037-f7f1-d5d8-878c-9cd397d9974c",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal state=S.p4\nif not state or Now()-state.lastStack<1000 then self.used=true return end\nstate.lastStack=Now()\nstate.wave=state.wave+1\nstate.targets={}\nif state.wave<=3 then\n -- Do not delete the next round's protean arrow if it was issued on this pulse.\n local nextKey='p4-protean-'..state.wave\n if S.goal and S.goal.key~=nextKey then S.clearGoal() end\nelse\n S.clearGoal(); S.say('Dodge rings, go in',3)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"3dabe337-6f5e-ae84-ad8c-465745a10aa7",
									true,
								},
							},
							name = "[P4] Next protean step",
							uuid = "6c662ce6-40cb-2ff9-9922-f2c1d7c8ffd3",
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
							eventSpellID = 31615,
							name = "Matching mechanic",
							uuid = "3dabe337-6f5e-ae84-ad8c-465745a10aa7",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				eventType = 2,
				loop = true,
				mechanicTime = 627,
				name = "[P4] Next protean step",
				timeRange = true,
				timelineIndex = 104,
				timerEndOffset = 28,
				timerStartOffset = -1,
				uuid = "1212145b-49ca-20ac-88ba-a88ce7b0e954",
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
				name = "P4",
				uuid = "964e9a04-9c4c-092b-b79d-2aa3865650a6",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or not S.p4 then self.used=true return end\nS.ringDodgeStep=(S.ringDodgeStep or 0)+1\nif S.ringDodgeStep==1 then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal a\nif S.goal then a=math.atan2(S.goal.pos.x-100,100-S.goal.pos.z)\nelse a=math.atan2(p.pos.x-100,100-p.pos.z) end\n\nS.go('p4-ring-in-'..S.ringDodgeStep,S.polar(a,10),'Go in, dodge ring',1.8,0.8)\nself.used=true\n",
							conditions = 
							{
								
								{
									"e61bbd20-eccf-0d55-bcea-fa6af0d6bf45",
									true,
								},
							},
							name = "[P4] Step inside second ring",
							uuid = "036cbcf1-4a79-a9fd-86c4-26b5a259e179",
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
							eventSpellID = 31568,
							name = "Matching mechanic",
							uuid = "e61bbd20-eccf-0d55-bcea-fa6af0d6bf45",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				eventType = 2,
				loop = true,
				mechanicTime = 629.4,
				name = "[P4] Step inside second ring",
				timeRange = true,
				timelineIndex = 106,
				timerEndOffset = 22,
				timerStartOffset = -1,
				uuid = "935e30b4-246b-fa36-b5ce-688db123698e",
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
				name = "P4",
				uuid = "b2f53c6f-6ce4-e19b-8863-42335e2a7a34",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or not S.p4 or S.p4.wave~=2 then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal angle=({T1=-67.5,R1=-90,H1=-112.5,M1=-135,T2=67.5,R2=90,H2=112.5,M2=135})[slot]\nif not angle then self.used=true return end\nS.go('p4-protean-2',S.polar(math.rad(angle),17),'Go to protean spot',5.4,0.8)\nself.used=true\n",
							conditions = 
							{
								
								{
									"b09e30e4-2705-aba8-80ff-7a253e1af997",
									true,
								},
							},
							name = "[P4] Assigned protean 2",
							uuid = "614035bf-77f4-a377-8f78-ce1530f66024",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and S.p4~=nil and S.p4.wave==2 and not S.issued['p4-protean-2']",
							name = "Relevant mechanic",
							uuid = "b09e30e4-2705-aba8-80ff-7a253e1af997",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				mechanicTime = 631.5,
				name = "[P4] Assigned protean 2",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = -0.10000000149012,
				timerStartOffset = -5.5,
				uuid = "306ede32-1b81-482d-8797-0f5f117f0a4e",
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
				name = "P4",
				uuid = "09cfe08a-6b9b-2a5e-8dc0-76ec16f27314",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() or not S.p4 or S.p4.wave~=3 then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal angle=({T1=-67.5,R1=-90,H1=-112.5,M1=-135,T2=67.5,R2=90,H2=112.5,M2=135})[slot]\nif not angle then self.used=true return end\nS.go('p4-protean-3',S.polar(math.rad(angle),17),'Go to protean spot',5.4,0.8)\nself.used=true\n",
							conditions = 
							{
								
								{
									"1b6f2cbd-fc30-3512-9715-fa6215fdf768",
									true,
								},
							},
							name = "[P4] Assigned protean 3",
							uuid = "fabaf5db-a204-dd76-b31a-0bbb8fc3510a",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and S.p4~=nil and S.p4.wave==3 and not S.issued['p4-protean-3']",
							name = "Relevant mechanic",
							uuid = "1b6f2cbd-fc30-3512-9715-fa6215fdf768",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				mechanicTime = 641.6,
				name = "[P4] Assigned protean 3",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -0.10000000149012,
				timerStartOffset = -5.5,
				uuid = "5c10d963-0eeb-3679-b519-f42d4ecb87f2",
				version = 2,
			},
		},
	},
	[120] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P4",
				uuid = "cb6ee664-9622-1f59-837d-d881e64f521c",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal role=R.mySlot()\nif role~='T1' and role~='T2' then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nfor _,boss in pairs(TensorCore.entityList('contentid=7636')) do\n if Argus.getEntityModel(boss)==15717 and boss.targetable and boss.alive and boss.targetid==p.id then\n  S.go('p4-final-ring-north',{x=boss.pos.x,y=0,z=boss.pos.z-boss.hitradius-.5},'Go north, keep boss facing away',5,1)\n  break\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"73a31ecb-8974-6163-92cc-9398acb29427",
									true,
								},
							},
							name = "[P4 Tank] North position after final ring",
							uuid = "af9672a4-6fc5-aaba-bf62-45b71d45f613",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.p4~=nil)",
							name = "Relevant mechanic",
							uuid = "73a31ecb-8974-6163-92cc-9398acb29427",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				loop = true,
				mechanicTime = 652.6,
				name = "[P4 Tank] North position after final ring",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = 5,
				timerStartOffset = 0.1,
				uuid = "a7bdb73a-19c1-92bd-9827-17419a12b889",
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
				name = "P5\\Tanks",
				uuid = "8bad9acb-a758-293a-b433-1a108ef98817",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.solarWave=1\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal slot=R.mySlot()\nif (slot~='T1' and slot~='T2') or S.issued['solar-prep-1'] then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12257')) do\n if e.targetable and e.alive then boss=e; break end\nend\nif not boss then\n for _,e in pairs(TensorCore.entityList('contentid=12258')) do if e.targetable and e.alive then boss=e; break end end\nend\nif boss then\n S.issued['solar-prep-1']=true\n local plan=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\n if plan==nil or plan==4 then\n local waveDefault=1\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\n local holder=TensorCore.mGetEntity(boss.targetid)\n local active=false\n if holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then active=true end end end\n local owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or boss.targetid\n if active then owner=boss.targetid end\n if plan~=0 or active then\n  if p.id==owner then S.say(boss.targetid==p.id and 'Keep aggro, invuln both hits' or 'Provoke, invuln both hits',4)\n  else S.say('Other tank invulns, stay apart',3) end\n elseif slot=='T1' then\n  S.say(boss.targetid==p.id and 'Keep boss, prepare buster' or 'Provoke, take boss',3)\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"265c4d0c-becd-ba40-884b-e7e4c5ca6c4e",
									true,
								},
							},
							name = "[P5 Tank] MT establish aggro 1",
							uuid = "19790c81-65f7-d3bb-b60d-1d271d9ed2b2",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and not S.issued['solar-prep-1']",
							name = "Relevant mechanic",
							uuid = "265c4d0c-becd-ba40-884b-e7e4c5ca6c4e",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Tanks",
				loop = true,
				mechanicTime = 723.6,
				name = "[P5 Tank] MT establish aggro 1",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = -5.0999999046326,
				timerStartOffset = -8,
				uuid = "72182ef4-ce1b-ffb2-b030-cd1b1afeb59e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal slot=R.mySlot()\nlocal target=eventArgs.targetID\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nlocal wave=S.solarWave or 1\nlocal plan=Settings.FFXIVMINION['LPDU_TOP_SolarTankPlan'..wave]\nif plan==nil or plan==4 then\n local waveDefault=wave\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\nlocal holder=TensorCore.mGetEntity(target)\nlocal active=false\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then active=true end end end\nlocal owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or target\nif active then owner=target end\nif slot=='T1' or slot=='T2' then\n if plan~=0 or active then\n  if p.id==owner then S.say(target==p.id and 'Invuln both hits, keep aggro' or 'Provoke for second hit, invuln',4)\n  elseif target==p.id then S.say('Mitigate first hit, pass to invuln tank',4)\n  else S.say('Other tank invulns, stay apart',4) end\n elseif target~=p.id then S.say('Provoke only if partner is not invulning',4)\n else S.say('Mitigate, pass aggro if not invulning',4) end\nend\nif slot=='T1' or slot=='T2' then\n S.keep(S.red:addTimedCircleOnEnt(ms+3300,target,5,0,false,true,S.flags))\n local e=TensorCore.mGetEntity(target)\n if e and e.pos then AnyoneCore.addWorldTextCountdown(ms,{x=e.pos.x,y=e.pos.y+2,z=e.pos.z},0xFFFFFFFF,true,1.25) end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"3f602dc7-925e-8082-a136-7808e8a44926",
									true,
								},
							},
							name = "[P5 Tank] Male Solar Ray",
							uuid = "ef22d2a9-6b1a-16d7-9d4c-d61d40395471",
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
							eventSpellID = 33196,
							name = "Matching mechanic",
							uuid = "3f602dc7-925e-8082-a136-7808e8a44926",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Tanks",
				eventType = 3,
				loop = true,
				mechanicTime = 723.6,
				name = "[P5 Tank] Male Solar Ray",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 260,
				timerStartOffset = -8,
				uuid = "2a0dcd52-30cd-e7f1-b70e-1b0057b791d2",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal slot=R.mySlot()\nlocal target=eventArgs.targetID\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nlocal wave=S.solarWave or 1\nlocal plan=Settings.FFXIVMINION['LPDU_TOP_SolarTankPlan'..wave]\nif plan==nil or plan==4 then\n local waveDefault=wave\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\nlocal holder=TensorCore.mGetEntity(target)\nlocal active=false\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then active=true end end end\nlocal owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or target\nif active then owner=target end\nif slot=='T1' or slot=='T2' then\n if plan~=0 or active then\n  if p.id==owner then S.say(target==p.id and 'Invuln both hits, keep aggro' or 'Provoke for second hit, invuln',4)\n  elseif target==p.id then S.say('Mitigate first hit, pass to invuln tank',4)\n  else S.say('Other tank invulns, stay apart',4) end\n elseif target~=p.id then S.say('Provoke only if partner is not invulning',4)\n else S.say('Mitigate, pass aggro if not invulning',4) end\nend\nif slot=='T1' or slot=='T2' then\n S.keep(S.red:addTimedCircleOnEnt(ms+3300,target,5,0,false,true,S.flags))\n local e=TensorCore.mGetEntity(target)\n if e and e.pos then AnyoneCore.addWorldTextCountdown(ms,{x=e.pos.x,y=e.pos.y+2,z=e.pos.z},0xFFFFFFFF,true,1.25) end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"f9c6239b-98e3-70c1-8d17-03b27388bad1",
									true,
								},
							},
							name = "[P5 Tank] Female Solar Ray",
							uuid = "13829029-32cb-6aeb-9ef5-e9cea4dae398",
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
							eventSpellID = 33197,
							name = "Matching mechanic",
							uuid = "f9c6239b-98e3-70c1-8d17-03b27388bad1",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Tanks",
				eventType = 3,
				loop = true,
				mechanicTime = 723.6,
				name = "[P5 Tank] Female Solar Ray",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 260,
				timerStartOffset = -8,
				uuid = "80f5acaf-08d0-d8c6-b404-79ead949d6ed",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,content in ipairs({12257,12258}) do for _,e in pairs(TensorCore.entityList('contentid='..content)) do\n if Argus.getEntityModel(e)==15720 and e.targetable and e.alive then boss=e;break end\nend;if boss then break end end\nif not boss then self.used=true return end\nlocal plan=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\nif plan==nil or plan==4 then\n local waveDefault=1\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\nlocal owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or plan==3 and boss.targetid or R.idOf('T1')\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then plan=3;owner=boss.targetid;break end end end\nS.solarPlaces=S.solarPlaces or {}\nlocal place=S.solarPlaces[1]\nif not place then\n local nx,nz=0,-1\n if plan~=0 and 1~=4 then\n  local sx,sz=0,0\n  for _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do local e=R.entOf(role);sx=sx+e.pos.x-100;sz=sz+e.pos.z-100 end\n  local length=math.sqrt(sx*sx+sz*sz)\n  if length>3 then nx=-sx/length;nz=-sz/length end\n end\n local radius=10\n local a=math.atan2(nx,-nz)\n place={first={x=100+nx*radius,z=100+nz*radius},after=S.polar(a-math.pi/4,radius),owner=owner,plan=plan}\n S.solarPlaces[1]=place\nend\nlocal p=TensorCore.mGetPlayer()\nlocal pos,text\nif p.id==place.owner then\n pos=place.first;text=place.plan==0 and (1==4 and 'Pull south before buster' or 'Take boss north, prepare swap') or 'Opposite party, invuln both hits'\nelseif place.plan~=0 then pos={x=100-(place.first.x-100)*.35,z=100-(place.first.z-100)*.35};text='Stay with party, other tank invulns'\nelse pos={x=place.first.x+7,z=place.first.z+3};text='Prepare to provoke, stay apart' end\nS.go('p5-tank-prep-1',pos,text,7.5,1)\nself.used=true\n",
							name = "[P5 Tank] Buster 1 positions from plan",
							uuid = "3c8587c1-0a5e-d1ef-92d6-32fcf6de6b7f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P5\\Tanks",
				loop = true,
				mechanicTime = 723.6,
				name = "[P5 Tank] Buster 1 positions from plan",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = -5.1,
				timerStartOffset = -7.8,
				uuid = "986e0e54-c9e9-f3aa-9edc-aa43e1a197cf",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal wave=S.solarWave\nlocal place=S.solarPlaces and S.solarPlaces[wave]\nif not place or not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal target=TensorCore.mGetEntity(eventArgs.targetID)\nlocal active=false\nif target then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(target,id) then active=true end end end\nif place.plan~=0 or active then self.used=true return end\nlocal role=AnyoneCore.Roster.mySlot()\nif role~='T1' and role~='T2' then self.used=true return end\nif target and target.pos then\n local boss\n for _,content in ipairs({12257,12258}) do for _,e in pairs(TensorCore.entityList('contentid='..content)) do\n  if Argus.getEntityModel(e)==15720 and e.targetable and e.alive then boss=e;break end\n end;if boss then break end end\n if boss then\n  local dx,dz=target.pos.x-boss.pos.x,target.pos.z-boss.pos.z\n  local angle=math.atan2(dx,-dz)-math.pi/4\n  local radius=math.max(5,math.sqrt(dx*dx+dz*dz))\n  local x,z=boss.pos.x+math.sin(angle)*radius,boss.pos.z-math.cos(angle)*radius\n  local r=math.sqrt((x-100)^2+(z-100)^2)\n  if r>19.2 then x=100+(x-100)*19.2/r;z=100+(z-100)*19.2/r end\n  place.first={x=target.pos.x,z=target.pos.z};place.after={x=x,z=z}\n end\nend\nif eventArgs.targetID==p.id then S.go('p5-first-hit-move-'..wave,place.after,'First hit done, move counterclockwise',3.3,1)\nelse S.go('p5-second-hit-position-'..wave,place.first,'Take first tank position for second hit',3.3,1) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"4d377971-4f0a-3321-ac52-f74e92d176ee",
									true,
								},
							},
							name = "[P5 Tank] Move after first Solar Ray hit",
							uuid = "22341498-124d-52fc-ac6c-64f36ecabc70",
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
							conditionLua = "return eventArgs.spellID==33196 or eventArgs.spellID==33197",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "4d377971-4f0a-3321-ac52-f74e92d176ee",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Tanks",
				eventType = 2,
				loop = true,
				mechanicTime = 723.6,
				name = "[P5 Tank] Move after first Solar Ray hit",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 260,
				timerStartOffset = -1,
				uuid = "a7c7086d-71ac-50b4-ab1b-09ea8b833154",
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
				name = "P5\\Tanks",
				uuid = "da1da6e3-0fc0-ca92-9a5a-46bc6b90024a",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,content in ipairs({12257,12258}) do for _,e in pairs(TensorCore.entityList('contentid='..content)) do\n if Argus.getEntityModel(e)==15720 and e.targetable and e.alive and e.targetid==p.id then boss=e;break end\nend;if boss then break end end\nif boss then\n local pos={x=100+19*math.sin(boss.pos.h),z=100+19*math.cos(boss.pos.h)}\n S.go('p5-pull-after-'..(S.solarWave or 0),pos,'Pull boss out in its facing direction',3.5,1)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"7656656a-93cd-9a6d-aa7b-7ec04b062a36",
									true,
								},
							},
							name = "[P5 Tank] Aggro holder pulls out after second hit",
							uuid = "85c675a9-4c0c-fc8a-b5d3-b612faa101ac",
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
							conditionLua = "return eventArgs.spellID==31489 or eventArgs.spellID==31490",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "7656656a-93cd-9a6d-aa7b-7ec04b062a36",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Tanks",
				eventType = 2,
				loop = true,
				mechanicTime = 726.8,
				name = "[P5 Tank] Aggro holder pulls out after second hit",
				timeRange = true,
				timelineIndex = 128,
				timerEndOffset = 260,
				timerStartOffset = -1,
				uuid = "edcccadb-7e0c-5be9-8f6f-913e8045f626",
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
				name = "P5\\Delta",
				uuid = "98aa9605-7017-d3b1-8a26-655c8278de71",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.clearGoal()\nS.delta={players={},pairs={},punches={},rotations={},broken=0,stage=0,generation=0}\nself.used=true\n",
							conditions = 
							{
								
								{
									"2bd784a2-ae23-74a7-87e9-edb1b140b804",
									true,
								},
							},
							name = "[P5 Delta] Reset sequence",
							uuid = "2f868c9b-63de-9dc2-8a3b-fc8da1889943",
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
							eventSpellID = 31624,
							name = "Matching mechanic",
							uuid = "2bd784a2-ae23-74a7-87e9-edb1b140b804",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 3,
				loop = true,
				mechanicTime = 740,
				name = "[P5 Delta] Reset sequence",
				timeRange = true,
				timelineIndex = 130,
				timerEndOffset = 1,
				timerStartOffset = -7,
				uuid = "1fbfed88-a944-6190-aecd-4fd1cc1bb884",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal d=S.delta\nlocal R=AnyoneCore.Roster\nif not d or not R or not R.current() then self.used=true return end\nlocal a,b=eventArgs.sourceEntityID,eventArgs.newTargetID\nif not R.slotOf(a) then self.used=true return end\nlocal kind=eventArgs.newTetherID\nif kind==200 or kind==201 then\n if not R.slotOf(b) then self.used=true return end\n if not d.players[a] then\n  d.players[a]={partner=b,green=kind==200}; d.players[b]={partner=a,green=kind==200}\n  d.pairs[#d.pairs+1]={a,b,green=kind==200}\n end\nelseif kind==224 or kind==225 then d.active=true\nelseif kind==0 and (eventArgs.oldTetherID==224 or eventArgs.oldTetherID==225) then\n local state=d.players[a]\n if state and not state.broken then\n  state.broken=true\n  if d.players[state.partner] then d.players[state.partner].broken=true end\n  d.broken=d.broken+1; d.generation=d.generation+1\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"544c2e81-dcf1-e620-8c3e-0d4b20e846ba",
									true,
								},
							},
							name = "[P5 Delta] Track tether pairs and breaks",
							uuid = "39056b44-a9a2-b099-ae50-f0deae98a7c9",
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
							conditionLua = "return eventArgs.newTetherID==200 or eventArgs.newTetherID==201 or eventArgs.newTetherID==224 or eventArgs.newTetherID==225 or eventArgs.oldTetherID==224 or eventArgs.oldTetherID==225",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "544c2e81-dcf1-e620-8c3e-0d4b20e846ba",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 15,
				loop = true,
				mechanicTime = 740,
				name = "[P5 Delta] Track tether pairs and breaks",
				timeRange = true,
				timelineIndex = 130,
				timerEndOffset = 50,
				timerStartOffset = -3,
				uuid = "95f5ec78-4b53-7122-8532-9779a17ef9f1",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal d=S.delta\nif not d or not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal mine=d.players[p.id]\nif not mine or #d.pairs~=4 then self.used=true return end\nlocal beetle\nfor _,e in pairs(TensorCore.entityList('contentid=7695')) do\n if Argus.getEntityModel(e)==15724 and e.pos then beetle=e; break end\nend\nif not beetle then self.used=true return end\nlocal bx,bz=beetle.pos.x-100,beetle.pos.z-100\nlocal length=math.sqrt(bx*bx+bz*bz)\nif length<10 then self.used=true return end\nlocal nx,nz=-bz/length,bx/length\nlocal function transform(x,z) return {x=100-nz*x-nx*z,y=p.pos.y,z=100+nx*x-nz*z} end\nlocal function north(e) return (e.pos.x-100)*nx+(e.pos.z-100)*nz end\nlocal function east(e) return -(e.pos.x-100)*nz+(e.pos.z-100)*nx end\nlocal punches=0\nfor _ in pairs(d.punches) do punches=punches+1 end\nif not d.assigned and punches==8 then\n local outer={}\n for _,pair in ipairs(d.pairs) do\n  local a,b=TensorCore.mGetEntity(pair[1]),TensorCore.mGetEntity(pair[2])\n  if not a or not b or not d.players[a.id].fist or not d.players[b.id].fist then self.used=true return end\n  local color=pair.green and 'green' or 'blue'\n  local score=math.abs(east(a)+east(b))\n  if not outer[color] or score>outer[color].score then outer[color]={pair=pair,score=score} end\n  d.players[a.id].side=north(a)>north(b) and -1 or 1\n  d.players[b.id].side=-d.players[a.id].side\n end\n for id,state in pairs(d.players) do\n  local pair=outer[state.green and 'green' or 'blue'].pair\n  state.outer=id==pair[1] or id==pair[2]\n end\n local swap={}\n for id,state in pairs(d.players) do if not state.outer then\n  for _,other in pairs(d.players) do\n   if other.outer and other.green==state.green and other.side==state.side and other.fist==state.fist then swap[id]=true end\n  end\n end end\n for id in pairs(swap) do d.players[id].side=-d.players[id].side end\n d.assigned=true\nend\nif TensorCore.hasBuff(p,3442) then d.nearWorld=p.id end\nif TensorCore.hasBuff(p,3443) then d.distantWorld=p.id end\nlocal key='delta-'..d.stage..'-'..d.generation\nif S.issued[key] then self.used=true return end\nlocal pos,text\nif not d.assigned then\n local list={}\n for _,pair in ipairs(d.pairs) do if pair.green==mine.green then list[#list+1]=pair end end\n table.sort(list,function(a,b)\n  local a1,a2=TensorCore.mGetEntity(a[1]),TensorCore.mGetEntity(a[2])\n  local b1,b2=TensorCore.mGetEntity(b[1]),TensorCore.mGetEntity(b[2])\n  return math.abs(east(a1)+east(a2))<math.abs(east(b1)+east(b2))\n end)\n local outer=list[2] and (p.id==list[2][1] or p.id==list[2][2])\n local partner=TensorCore.mGetEntity(mine.partner)\n if not partner then self.used=true return end\n local side=north(p)>north(partner) and -1 or 1\n pos=mine.green and transform(outer and 13 or 9,side*11) or transform(outer and -13 or -9,side*(outer and 4 or 8))\n text=mine.green and 'Green tether, go final side' or 'Blue tether, go beetle side'\nelseif d.stage==0 then\n pos=mine.green and transform(11,11*mine.side) or transform(-13,((not mine.outer and d.broken==0) and 8 or 4)*mine.side)\n text=mine.green and 'Stack with fist partner' or 'Hold blue tether position'\nelseif d.stage==1 then\n local armIndex\n if mine.green then armIndex=mine.outer and (mine.side>0 and 4 or 5) or (mine.side>0 and 3 or 0)\n elseif not mine.outer then pos=transform(0,5*mine.side);text='Bait jump in middle'\n else armIndex=mine.side>0 and 2 or 1 end\n if armIndex then\n  local a=math.atan2(nx,-nz)-armIndex*math.pi/3\n  local expected=S.polar(a,20)\n  local rotation\n  for _,arm in pairs(d.rotations) do\n   if (arm.pos.x-expected.x)^2+(arm.pos.z-expected.z)^2<16 then rotation=arm.cw and -1 or 1; break end\n  end\n  if not rotation then self.used=true return end\n  pos=S.polar(a+rotation*math.rad(3),19)\n  text='Bait arm, then move'\n end\nelseif d.stage==2 then\n if mine.green then pos=transform(mine.outer and 7 or -7,13*mine.side);text='Go to monitor soak'\n elseif d.monitorSafe then\n  local monitor=TensorCore.hasBuff(p,3452) or TensorCore.hasBuff(p,3453)\n  local distance=monitor and 5 or 2.5\n  pos={x=100+d.monitorSafe.x*distance,y=p.pos.y,z=100+d.monitorSafe.z*distance}\n  text='Stack on safe side'\n  if p.id==d.jump then\n   local x1=transform(15,0);local x2=transform(-15,0)\n   local a={x=pos.x+x1.x-100,y=p.pos.y,z=pos.z+x1.z-100}\n   local b={x=pos.x+x2.x-100,y=p.pos.y,z=pos.z+x2.z-100}\n   pos=TensorCore.getDistance2d(p.pos,a)<TensorCore.getDistance2d(p.pos,b) and a or b\n   text='Jump hit you, stay out of stack'\n  elseif monitor then text='Aim monitor away from boss monitor' end\n end\nelseif d.swivelSafe then\n local northSafe=d.swivelSafe.x*nx+d.swivelSafe.z*nz>0\n local safe=northSafe and -1 or 1\n if mine.green then\n  local fromSafe=(mine.side==-1)==northSafe\n  if not mine.outer then pos=transform(-10,(fromSafe and 12 or 6)*safe);text='Break green tether, take bounce'\n  elseif fromSafe then pos=transform(15,11*safe);text='Hold, take bounce'\n  else pos=transform(-18,2*safe);text='Move to safe side, hold tether' end\n elseif d.distantWorld==p.id then pos=transform(0,19*safe);text='Distant world, go to wall'\n elseif d.nearWorld==p.id then pos=transform(0,6*safe);text='Near world, go middle'\n else pos=transform(9,15*safe);text='Go to bounce spot' end\nend\nif pos then S.go(key,pos,text,d.stage==3 and 16 or ((text=='Blue tether, go beetle side' or text=='Green tether, go final side') and 6 or 5),0.9) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"d15da726-895b-3c0b-9dd6-efbb385b4e6a",
									true,
								},
							},
							name = "[P5 Delta] Personal movement steps",
							uuid = "1eace450-8e6f-29ea-8009-1eec30de1493",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.delta~=nil)",
							name = "Relevant mechanic",
							uuid = "d15da726-895b-3c0b-9dd6-efbb385b4e6a",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				loop = true,
				mechanicTime = 740,
				name = "[P5 Delta] Personal movement steps",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 130,
				timerEndOffset = 50,
				timerStartOffset = -1,
				uuid = "132a97ce-d355-cc80-a7bb-7e485064076d",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal d=S.delta\nif d then\n if eventArgs.buffID==3442 then d.nearWorld=eventArgs.entityID\n else d.distantWorld=eventArgs.entityID end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"412b3d00-e860-05d0-8933-fe88d73f76bf",
									true,
								},
							},
							name = "[P5 Delta] Retain near and distant assignments",
							uuid = "b3fc981f-12d3-fea4-aa30-79902df6eb28",
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
							conditionLua = "return eventArgs.buffID==3442 or eventArgs.buffID==3443",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "412b3d00-e860-05d0-8933-fe88d73f76bf",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 8,
				loop = true,
				mechanicTime = 740,
				name = "[P5 Delta] Retain near and distant assignments",
				timeRange = true,
				timelineIndex = 130,
				timerEndOffset = 50,
				timerStartOffset = -6,
				uuid = "639421f9-277b-a03e-bde5-3c6f7932c2bf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Automarkers",
				uuid = "e4d74861-57dc-57fa-8a3b-87016720c297",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.topAMBuild then self.used=true return end\nlocal enabled=Settings.FFXIVMINION.LPDU_TOP_AM_delta==1\nif not S.ready() then self.used=true return end\nlocal w=S.p5MarkerWriter\nif not enabled then\n if w and string.find(w.key,'delta',1,true)==1 then S.topAMTick(w.key,nil,false)end\n self.used=true return\nend\nlocal key,queue=S.topAMBuild('delta')\nif not key and w and w.target and string.find(w.key,'delta',1,true)==1 then S.topAMTick(w.key,nil,false)end\nif key and queue then S.topAMTick(key,queue,enabled)end\nself.used=true\n",
							conditions = 
							{
								
								{
									"cc2dbcdd-bc1c-d70c-9a80-ddedbe184df2",
									true,
								},
							},
							name = "[AM] Optional P5 Delta",
							uuid = "e6d2142e-5c80-fdf0-aa69-3f3e8d13968c",
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
							conditionLua = "local S=data.topLpdu;return S and (Settings.FFXIVMINION.LPDU_TOP_AM_delta==1 or S.p5MarkerWriter and S.p5MarkerWriter.target and string.find(S.p5MarkerWriter.key,'delta',1,true)==1) or false",
							name = "Matching mechanic",
							uuid = "cc2dbcdd-bc1c-d70c-9a80-ddedbe184df2",
							version = 3,
						},
					},
				},
				displayPath = "Automarkers",
				loop = true,
				mechanicTime = 740,
				name = "[AM] Optional P5 Delta",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 130,
				timerEndOffset = 40,
				timerStartOffset = -4,
				uuid = "947cb2b6-2e4f-e6c5-b904-cdc8724eea8e",
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
				name = "P5\\Delta",
				uuid = "df7119d2-6a8e-c06e-a8e9-18aafd87fcf0",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal d=S.delta\nif not d or not S.ready() or d.punches[eventArgs.entityID] then self.used=true return end\nlocal fist=TensorCore.mGetEntity(eventArgs.entityID)\nif not fist or not fist.pos then self.used=true return end\nlocal closest,best\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n local distance=TensorCore.getDistance2d(e.pos,fist.pos)\n if not best or distance<best then closest=e.id; best=distance end\nend\nif closest and d.players[closest] then\n d.players[closest].fist=Argus.getEntityModel(fist)\n d.punches[eventArgs.entityID]=true\n d.generation=d.generation+1\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"5176f266-ca46-60e8-8dea-9a3cc84ff94c",
									true,
								},
							},
							name = "[P5 Delta] Record personal fist colors",
							uuid = "2028336c-328a-8d74-ae48-d4235aed25dd",
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
							conditionLua = "return eventArgs.entityContentID==7696 or eventArgs.entityContentID==7697",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "5176f266-ca46-60e8-8dea-9a3cc84ff94c",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 5,
				loop = true,
				mechanicTime = 750.2,
				name = "[P5 Delta] Record personal fist colors",
				timeRange = true,
				timelineIndex = 132,
				timerEndOffset = 6,
				timerStartOffset = -5,
				uuid = "86107066-c82a-4a33-9efa-8d6c004768ec",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal d=S.delta\nif not d or S.markerOffset==nil then self.used=true return end\nlocal marker=eventArgs.markerID-S.markerOffset\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nd.rotations[e.id]={pos={x=e.pos.x,z=e.pos.z},cw=marker==156}\nd.generation=d.generation+1\nself.used=true\n",
							conditions = 
							{
								
								{
									"0538098a-1f10-6545-aaf6-f2df7d2a722e",
									true,
								},
							},
							name = "[P5 Delta] Read arm rotation",
							uuid = "6ed7dbe7-1c74-0269-9a72-9a19728787d5",
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
							conditionLua = "return (eventArgs.entityContentID==7637 or eventArgs.entityContentID==7638) and data.topLpdu~=nil and data.topLpdu.markerOffset~=nil and (eventArgs.markerID-data.topLpdu.markerOffset==156 or eventArgs.markerID-data.topLpdu.markerOffset==157)",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "0538098a-1f10-6545-aaf6-f2df7d2a722e",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 4,
				loop = true,
				mechanicTime = 750.2,
				name = "[P5 Delta] Read arm rotation",
				timeRange = true,
				timelineIndex = 132,
				timerEndOffset = 21,
				timerStartOffset = -3,
				uuid = "9fa5b51a-68de-d464-87be-a1dd39989653",
				version = 2,
			},
		},
	},
	[136] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "8fbe1d88-49fc-a93e-99f4-a3065185f6b9",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCircle(ms,pos.x,pos.y,pos.z,3,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"2965e5ac-d7a5-f9f9-942f-928d3b07da39",
									true,
								},
							},
							name = "[AoE] Delta puddle",
							uuid = "7594ec15-8493-6e0f-95bb-eb149727fe43",
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
							eventSpellID = 31482,
							name = "Matching mechanic",
							uuid = "2965e5ac-d7a5-f9f9-942f-928d3b07da39",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 764.9,
				name = "[AoE] Delta puddle",
				timeRange = true,
				timelineIndex = 136,
				timerEndOffset = 3,
				timerStartOffset = -8,
				uuid = "871bce20-d199-2a49-983a-d5317bf23e8e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Delta",
				uuid = "d5d2561f-8b59-84ff-9e68-ca6631ed28c4",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.delta and S.delta.stage<1 then S.delta.stage=1; S.delta.generation=S.delta.generation+1 end\nself.used=true\n",
							conditions = 
							{
								
								{
									"1bb186e5-1e24-970f-bb58-d2f44586181c",
									true,
								},
							},
							name = "[P5 Delta] Fist bait locked",
							uuid = "c5a5a7d7-180f-ada6-8292-9315eb98ec60",
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
							eventSpellID = 31482,
							name = "Matching mechanic",
							uuid = "1bb186e5-1e24-970f-bb58-d2f44586181c",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 3,
				loop = true,
				mechanicTime = 764.9,
				name = "[P5 Delta] Fist bait locked",
				timeRange = true,
				timelineIndex = 136,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "a83280b4-1763-57d1-aa6b-82588fc4b6b2",
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
				name = "P5\\Delta",
				uuid = "67b2f7ae-58ce-abe2-b4c7-2a5b59410bff",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.delta then S.delta.jump=eventArgs.targetID; S.delta.stage=2; S.delta.generation=S.delta.generation+1 end\nself.used=true\n",
							conditions = 
							{
								
								{
									"a714c4c5-c907-4ad0-97b5-ca3226bf4407",
									true,
								},
							},
							name = "[P5 Delta] Remember jump target",
							uuid = "e4a9a519-fb76-20f1-a1c0-662ea493849f",
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
							eventSpellID = 31528,
							name = "Matching mechanic",
							uuid = "a714c4c5-c907-4ad0-97b5-ca3226bf4407",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 2,
				loop = true,
				mechanicTime = 768.5,
				name = "[P5 Delta] Remember jump target",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 3,
				timerStartOffset = -3,
				uuid = "166b76bf-0540-fb1e-becf-94dfd4a25499",
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
				name = "Cast AoEs",
				uuid = "1d9e4236-c497-75be-8fc2-55c90f4d0579",
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
							actionLua = "local S=data.topLpdu\nif not S or not S.delta then self.used=true return end\nlocal ms=math.floor(eventArgs.duration*1000)\nif ms<=0 then self.used=true return end\nlocal d=S.delta\nd.hyperLocks=d.hyperLocks or {}\nd.hyperLocks[eventArgs.entityID]={x=eventArgs.x,y=eventArgs.y,z=eventArgs.z,h=eventArgs.heading,deadline=Now()+ms}\nAnyoneCore.addWorldTextCountdown(ms,{x=eventArgs.x,y=eventArgs.y+2,z=eventArgs.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"a576d6aa-b9a5-df72-9980-46d7b0b211e0",
									true,
								},
							},
							name = "[AoE] Delta first laser",
							uuid = "de44cccf-9f16-a4db-8a47-f0067fa8c492",
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
							conditionLua = "return eventArgs.aoeID==31600",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31600,
							name = "Matching mechanic",
							uuid = "a576d6aa-b9a5-df72-9980-46d7b0b211e0",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 18,
				loop = true,
				mechanicTime = 771.1,
				name = "[AoE] Delta first laser",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 4,
				timerStartOffset = -8,
				uuid = "5e7fcc01-27eb-715d-a2aa-8060a4503683",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Delta",
				uuid = "e861fd3f-4070-6a02-9244-2790cbc3aa5f",
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
							actionLua = "local S=data.topLpdu\nlocal d=S.delta\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nd.armBaitDraws=d.armBaitDraws or {}\nlocal active={}\nlocal amber=TensorCore.getStaticDrawer(0x3000AAFF,2)\nlocal future=TensorCore.getStaticDrawer(0x1800AAFF,1)\nfor id,arm in pairs(d.rotations) do\n local locked=d.hyperLocks and d.hyperLocks[id]\n local x,y,z,h,deadline\n local rotation=arm.cw and -math.rad(20) or math.rad(20)\n local mine=false\n if locked then\n  x,y,z,h,deadline=locked.x,locked.y,locked.z,locked.h,locked.deadline\n elseif d.stage==1 then\n  x,y,z=arm.pos.x,0,arm.pos.z\n  local nearest,distance\n  for _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n   local e=R.entOf(slot)\n   if e and e.alive and e.pos then\n    local ds=(e.pos.x-x)^2+(e.pos.z-z)^2\n    if not distance or ds<distance or (ds==distance and e.id<nearest.id) then nearest=e;distance=ds end\n   end\n  end\n  mine=nearest~=nil and nearest.id==p.id\n  if mine then h=math.atan2(p.pos.x-x,p.pos.z-z) end\n end\n if locked or mine then\n  local first=true\n  for i=0,5 do\n   local hit=locked and deadline+i*600 or Now()+500\n   if hit>Now() then\n    local key=tostring(id)..':'..i;active[key]=true\n    local danger=locked~=nil and first\n    local drawer=danger and S.red or locked and future or amber\n    local style=locked and (danger and 'danger' or 'fixed') or 'bait'\n    local old=d.armBaitDraws[key]\n    if old and old.style~=style then Argus.deleteTimedShape(old.id);S.owned[old.id]=nil;old=nil end\n    local ms=math.max(100,hit-Now())\n    local angle=h+i*rotation\n    if not old or not drawer:updateTimedRect(old.id,ms,x,y,z,100,8,angle,0,false,true,0) then\n     old={id=S.keep(drawer:addTimedRect(ms,x,y,z,100,8,angle,0,false,true,0)),style=style}\n    end\n    d.armBaitDraws[key]=old;first=false\n   end\n  end\n end\nend\nfor key,shape in pairs(d.armBaitDraws) do if not active[key] then\n Argus.deleteTimedShape(shape.id);S.owned[shape.id]=nil;d.armBaitDraws[key]=nil\nend end\nself.used=true\n",
							conditions = 
							{
								
								{
									"958977f3-3c87-7d33-be06-7686c4613926",
									true,
								},
							},
							name = "Preview then lock arm aim",
							uuid = "39437214-501f-dbf4-8ff3-51f85dd1d9d8",
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
							conditionLua = "local S=data.topLpdu\nlocal d=S and S.delta\nif not d or not S.ready() then return false end\nif d.armBaitDraws and next(d.armBaitDraws) then return true end\nif d.stage==1 and next(d.rotations)~=nil then return true end\nfor _,arm in pairs(d.hyperLocks or {}) do if arm.deadline+3000>Now() then return true end end\nreturn false",
							name = "Arm bait or locked shots",
							uuid = "958977f3-3c87-7d33-be06-7686c4613926",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				loop = true,
				mechanicTime = 771.1,
				name = "[P5 Delta] Arm bait preview and locked sequence",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 4.5,
				timerStartOffset = -6.2,
				uuid = "76fb6316-f67e-ee47-a9ad-1108f9dfe810",
				version = 2,
			},
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Delta",
				uuid = "07f9f65f-8628-b0d9-a277-697348ff0044",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal d=S.delta\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif d and e and e.pos then\n d.monitorDeadline=Now()+eventArgs.channelTimeMax*1000\n local off=eventArgs.spellID==31638 and -math.pi/2 or math.pi/2\n d.monitorSafe={x=-math.sin(e.pos.h+off),z=-math.cos(e.pos.h+off)}\n d.generation=d.generation+1\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"322d41a4-fd4c-bdcf-b8f5-1fd0c7853211",
									true,
								},
							},
							name = "[P5 Delta] Monitor safe side 31638",
							uuid = "bc4b3734-9ce4-376d-8d16-a659f27c39c9",
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
							eventSpellID = 31638,
							name = "Matching mechanic",
							uuid = "322d41a4-fd4c-bdcf-b8f5-1fd0c7853211",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 3,
				loop = true,
				mechanicTime = 773.6,
				name = "[P5 Delta] Monitor safe side 31638",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "718ed599-06c5-f720-8f0e-eeff0410bb4a",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal d=S.delta\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif d and e and e.pos then\n d.monitorDeadline=Now()+eventArgs.channelTimeMax*1000\n local off=eventArgs.spellID==31638 and -math.pi/2 or math.pi/2\n d.monitorSafe={x=-math.sin(e.pos.h+off),z=-math.cos(e.pos.h+off)}\n d.generation=d.generation+1\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"d5d7ffec-e051-6af3-ad55-3dabb3910847",
									true,
								},
							},
							name = "[P5 Delta] Monitor safe side 31639",
							uuid = "c5f20ae5-f19c-98b2-ac20-5941960fce0f",
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
							eventSpellID = 31639,
							name = "Matching mechanic",
							uuid = "d5d7ffec-e051-6af3-ad55-3dabb3910847",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 3,
				loop = true,
				mechanicTime = 773.6,
				name = "[P5 Delta] Monitor safe side 31639",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "abfc641d-d7d7-9134-8862-54a9835737bd",
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
				name = "Cast AoEs",
				uuid = "429c88e2-83c9-1a9e-8e37-6f0cdb6720a5",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nlocal e=eventArgs\nlocal ms=math.floor(e.duration*1000)\nif ms<=0 then self.used=true return end\nS.keep(S.red:addTimedCone(ms,e.x,e.y,e.z,60,math.rad(210),e.heading,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+2,z=e.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"7b971922-400d-9573-8d01-a0b1fdcef016",
									true,
								},
							},
							name = "[AoE] Swivel right",
							uuid = "e0abc40e-32c9-2db5-9edc-6074ad972a6d",
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
							conditionLua = "return eventArgs.aoeID==31636",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31636,
							name = "Matching mechanic",
							uuid = "7b971922-400d-9573-8d01-a0b1fdcef016",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 18,
				loop = true,
				mechanicTime = 786.4,
				name = "[AoE] Swivel right",
				timeRange = true,
				timelineIndex = 149,
				timerEndOffset = 2,
				timerStartOffset = -12,
				uuid = "04e26b89-a25b-fb20-9230-68a5a6a7854c",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nlocal e=eventArgs\nlocal ms=math.floor(e.duration*1000)\nif ms<=0 then self.used=true return end\nS.keep(S.red:addTimedCone(ms,e.x,e.y,e.z,60,math.rad(210),e.heading,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+2,z=e.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"dab254a5-d6cd-c557-b29c-db11c90bfe83",
									true,
								},
							},
							name = "[AoE] Swivel left",
							uuid = "05f57a7c-0db6-593f-b779-3dbca3ec5c99",
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
							conditionLua = "return eventArgs.aoeID==31637",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31637,
							name = "Matching mechanic",
							uuid = "dab254a5-d6cd-c557-b29c-db11c90bfe83",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 18,
				loop = true,
				mechanicTime = 786.4,
				name = "[AoE] Swivel left",
				timeRange = true,
				timelineIndex = 149,
				timerEndOffset = 2,
				timerStartOffset = -12,
				uuid = "b9f90f20-c665-e86f-9e26-6fcd12b3636a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Delta",
				uuid = "b3086a13-0a3b-3bce-919b-9307e682d22a",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nlocal d=S.delta\nif d then\n d.swivelSafe={x=-math.sin(eventArgs.heading),z=-math.cos(eventArgs.heading)}\n d.stage=3;d.generation=d.generation+1\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"f58f9020-77ba-1734-8d63-a2ccccf84245",
									true,
								},
							},
							name = "[P5 Delta] Swivel safe side 31636",
							uuid = "f1099721-8b25-ab84-afed-6b7af17b8f63",
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
							conditionLua = "return eventArgs.aoeID==31636",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31636,
							name = "Matching mechanic",
							uuid = "f58f9020-77ba-1734-8d63-a2ccccf84245",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 18,
				loop = true,
				mechanicTime = 786.4,
				name = "[P5 Delta] Swivel safe side 31636",
				timeRange = true,
				timelineIndex = 149,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "046194a7-671f-7464-87f0-d654088502a6",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nlocal d=S.delta\nif d then\n d.swivelSafe={x=-math.sin(eventArgs.heading),z=-math.cos(eventArgs.heading)}\n d.stage=3;d.generation=d.generation+1\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"33f8d798-89ca-3f7a-80b1-4fbf76a4d1ae",
									true,
								},
							},
							name = "[P5 Delta] Swivel safe side 31637",
							uuid = "c1215a3a-5e08-c7a0-800d-e23ae4624f9a",
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
							conditionLua = "return eventArgs.aoeID==31637",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31637,
							name = "Matching mechanic",
							uuid = "33f8d798-89ca-3f7a-80b1-4fbf76a4d1ae",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				eventType = 18,
				loop = true,
				mechanicTime = 786.4,
				name = "[P5 Delta] Swivel safe side 31637",
				timeRange = true,
				timelineIndex = 149,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "f48121f4-45eb-49cf-b395-b47395c8b003",
				version = 2,
			},
		},
	},
	[155] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Delta",
				uuid = "5381dd19-4108-2727-969f-85094ddea139",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal d=S.delta\nif not d or not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal mine=d.players[p.id]\nif mine and mine.green and not mine.broken then\n local buff=TensorCore.getBuff(p,3529)\n if not buff or buff.duration>3 then self.used=true return end\n local partner=TensorCore.mGetEntity(mine.partner)\n if partner then S.go('delta-final-break',{x=(p.pos.x+partner.pos.x)/2,z=(p.pos.z+partner.pos.z)/2},'Break final tether',3,1) end\nelse S.go('delta-return',{x=100,z=100},'Go in',5,1.5) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"6290fefb-1eb7-4fe5-82bc-325f16070fbb",
									true,
								},
							},
							name = "[P5 Delta] Return and finish tether",
							uuid = "32f0d175-a138-934f-a217-051c0e66d820",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.delta~=nil)",
							name = "Relevant mechanic",
							uuid = "6290fefb-1eb7-4fe5-82bc-325f16070fbb",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Delta",
				loop = true,
				mechanicTime = 789,
				name = "[P5 Delta] Return and finish tether",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 155,
				timerEndOffset = 8,
				timerStartOffset = 0.3,
				uuid = "25709b33-30e2-d203-be44-c0b3708e3262",
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
				name = "Orientation",
				uuid = "525402c9-0269-ecf7-88e1-c84c6bedcc12",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not p.pos or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12257')) do\n if Argus.getEntityModel(e)==15720 and e.targetable and e.alive and e.targetid==p.id then boss=e; break end\nend\nif not boss or not boss.pos then self.used=true return end\nlocal error=math.abs(math.atan2(math.sin(boss.pos.h-math.pi),math.cos(boss.pos.h-math.pi)))\nlocal key='face-delta-end'\nif error<math.rad(20) then\n if S.goal and S.goal.key==key then S.clearGoal() end\n self.used=true return\nend\nif boss.castinginfo.channelingid~=0 then self.used=true return end\nS.go(key,{x=boss.pos.x,y=boss.pos.y,z=boss.pos.z-boss.hitradius-1.5},'You have aggro, face boss north',3.5,0.8)\nself.used=true\n",
							name = "[Aggro] Face boss north - delta-end",
							uuid = "13dbd001-4a1b-44f9-b846-eeb4139ca9c8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				enabled = false,
				loop = true,
				mechanicTime = 791.1,
				name = "[Aggro] Face boss north - delta-end",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 5,
				uuid = "276aea45-ba9e-3a55-ac88-be93ed9202ca",
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
				name = "P5\\Tanks",
				uuid = "1596d5fd-396d-64e4-9e59-1acd23332998",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.solarWave=2\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal slot=R.mySlot()\nif (slot~='T1' and slot~='T2') or S.issued['solar-prep-2'] then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12257')) do\n if e.targetable and e.alive then boss=e; break end\nend\nif not boss then\n for _,e in pairs(TensorCore.entityList('contentid=12258')) do if e.targetable and e.alive then boss=e; break end end\nend\nif boss then\n S.issued['solar-prep-2']=true\n local plan=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\n if plan==nil or plan==4 then\n local waveDefault=2\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\n local holder=TensorCore.mGetEntity(boss.targetid)\n local active=false\n if holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then active=true end end end\n local owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or boss.targetid\n if active then owner=boss.targetid end\n if plan~=0 or active then\n  if p.id==owner then S.say(boss.targetid==p.id and 'Keep aggro, invuln both hits' or 'Provoke, invuln both hits',4)\n  else S.say('Other tank invulns, stay apart',3) end\n elseif slot=='T1' then\n  S.say(boss.targetid==p.id and 'Keep boss, prepare buster' or 'Provoke, take boss',3)\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"3031bc46-d2cc-ab2f-8249-f83629bbd9f2",
									true,
								},
							},
							name = "[P5 Tank] MT establish aggro 2",
							uuid = "f7748166-346b-50af-b984-9e369422f6e7",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and not S.issued['solar-prep-2']",
							name = "Relevant mechanic",
							uuid = "3031bc46-d2cc-ab2f-8249-f83629bbd9f2",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Tanks",
				loop = true,
				mechanicTime = 805.2,
				name = "[P5 Tank] MT establish aggro 2",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -5.1,
				timerStartOffset = -8,
				uuid = "02ffe05a-5ac2-5358-abf6-2f9e182794a7",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,content in ipairs({12257,12258}) do for _,e in pairs(TensorCore.entityList('contentid='..content)) do\n if Argus.getEntityModel(e)==15720 and e.targetable and e.alive then boss=e;break end\nend;if boss then break end end\nif not boss then self.used=true return end\nlocal plan=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\nif plan==nil or plan==4 then\n local waveDefault=2\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\nlocal owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or plan==3 and boss.targetid or R.idOf('T1')\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then plan=3;owner=boss.targetid;break end end end\nS.solarPlaces=S.solarPlaces or {}\nlocal place=S.solarPlaces[2]\nif not place then\n local nx,nz=0,-1\n if plan~=0 and 2~=4 then\n  local sx,sz=0,0\n  for _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do local e=R.entOf(role);sx=sx+e.pos.x-100;sz=sz+e.pos.z-100 end\n  local length=math.sqrt(sx*sx+sz*sz)\n  if length>3 then nx=-sx/length;nz=-sz/length end\n end\n local radius=10\n local a=math.atan2(nx,-nz)\n place={first={x=100+nx*radius,z=100+nz*radius},after=S.polar(a-math.pi/4,radius),owner=owner,plan=plan}\n S.solarPlaces[2]=place\nend\nlocal p=TensorCore.mGetPlayer()\nlocal pos,text\nif p.id==place.owner then\n pos=place.first;text=place.plan==0 and (2==4 and 'Pull south before buster' or 'Take boss north, prepare swap') or 'Opposite party, invuln both hits'\nelseif place.plan~=0 then pos={x=100-(place.first.x-100)*.35,z=100-(place.first.z-100)*.35};text='Stay with party, other tank invulns'\nelse pos={x=place.first.x+7,z=place.first.z+3};text='Prepare to provoke, stay apart' end\nS.go('p5-tank-prep-2',pos,text,7.5,1)\nself.used=true\n",
							name = "[P5 Tank] Buster 2 positions from plan",
							uuid = "805cb24f-aecb-a654-833f-88d60aa56a9b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P5\\Tanks",
				loop = true,
				mechanicTime = 805.2,
				name = "[P5 Tank] Buster 2 positions from plan",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -5.1,
				timerStartOffset = -7.8,
				uuid = "40993fa8-c017-eb60-8174-19e57576b594",
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
				name = "P5\\Sigma",
				uuid = "1c7976d8-88a8-2bf7-9afc-be1f376674e0",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.clearGoal();S.sigma={marks={},targets={},towers={},towerSeen={},angles={},step=0}\nself.used=true\n",
							conditions = 
							{
								
								{
									"27c471a6-143e-ada3-a0bc-6487eca534a0",
									true,
								},
							},
							name = "[P5 Sigma] Reset assignments",
							uuid = "7e8d542c-0e9d-4e04-894d-685b21065cda",
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
							eventSpellID = 32788,
							name = "Matching mechanic",
							uuid = "27c471a6-143e-ada3-a0bc-6487eca534a0",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 3,
				loop = true,
				mechanicTime = 821.7,
				name = "[P5 Sigma] Reset assignments",
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = 1,
				timerStartOffset = -7,
				uuid = "a597e714-f8ac-0c17-bafb-5d51a00a9fa6",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nif not s or S.markerOffset==nil then self.used=true return end\nlocal m=eventArgs.markerID-S.markerOffset\nlocal order=({[419]=1,[418]=2,[416]=3,[417]=4})[m]\nif order then\n s.marks[eventArgs.entityID]=order\n local p=TensorCore.mGetPlayer()\n if p and p.id==eventArgs.entityID and not s.overheadLabel then\n  s.overheadLabel=true\n  local labels={'Blue overhead','Purple overhead','Orange overhead','Green overhead'}\n  local colors={0xFFFFAA33,0xFFFF66CC,0xFF33AAFF,0xFF33FF33}\n  local ms=math.max(100,math.floor((842-TensorReactions_CurrentTimer)*1000))\n  AnyoneCore.addTimedWorldTextOnEnt(ms,labels[order],p.id,colors[order],true,1.5,3)\n end\nend\nif m==244 then s.targets[eventArgs.entityID]=true end\nself.used=true\n",
							name = "[P5 Sigma] Collect shape and cannon markers",
							uuid = "ea9cc9ac-963c-473c-90f8-30008e8b4eee",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P5\\Sigma",
				eventType = 4,
				loop = true,
				mechanicTime = 821.7,
				name = "[P5 Sigma] Collect shape and cannon markers",
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = 27,
				uuid = "6b42b46a-801c-4543-9537-1163fb78f3ac",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.sigma then S.sigma.glitch=eventArgs.buffID==3427 and 'mid' or 'remote' end\nself.used=true\n",
							conditions = 
							{
								
								{
									"d058cf6d-157b-55eb-9749-77e2e4a413f1",
									true,
								},
							},
							name = "[P5 Sigma] Read glitch",
							uuid = "929f30fa-37a7-eea4-8ef7-07f929139136",
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
							conditionLua = "return eventArgs.buffID==3427 or eventArgs.buffID==3428",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "d058cf6d-157b-55eb-9749-77e2e4a413f1",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 8,
				loop = true,
				mechanicTime = 821.7,
				name = "[P5 Sigma] Read glitch",
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = 23,
				uuid = "3388cdc3-cd44-76f8-8819-8394a733e668",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nif not s or not S.ready() or not s.glitch then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nlocal source\nfor _,e in pairs(TensorCore.entityList('contentid=12257')) do\n if Argus.getEntityModel(e)==15720 and e.pos and TensorCore.getDistance2d(e.pos,{x=100,y=e.pos.y,z=100})>15 then source=e; break end\nend\nif not source then self.used=true return end\nlocal nx,nz=source.pos.x-100,source.pos.z-100\nlocal norm=math.sqrt(nx*nx+nz*nz);nx,nz=nx/norm,nz/norm\ns.north={x=nx,z=nz}\nlocal base=math.atan2(nx,-nz)\nlocal n=0\nfor _ in pairs(s.targets) do n=n+1 end\nif n<6 then\n local order=s.marks[p.id]\n if not order then self.used=true return end\n local partner\n for id,o in pairs(s.marks) do if o==order and id~=p.id then partner=id;break end end\n if not partner then self.used=true return end\n s.lineupSides=s.lineupSides or {}\n do\n  local other=TensorCore.mGetEntity(partner)\n  if not other or not other.pos then self.used=true return end\n  local mine=-(p.pos.x-100)*nz+(p.pos.z-100)*nx\n  local theirs=-(other.pos.x-100)*nz+(other.pos.z-100)*nx\n  local side\n  if math.abs(mine-theirs)>.5 then side=mine<theirs and -1 or 1\n  elseif s.lineupSides[p.id] then side=s.lineupSides[p.id]\n  else\n   local priority={T1=1,H1=2,M1=3,R1=4,T2=5,H2=6,M2=7,R2=8}\n   side=priority[R.mySlot()]<priority[R.slotOf(partner)] and -1 or 1\n  end\n  s.lineupSides[p.id]=side;s.lineupSides[partner]=-side\n end\n local side=s.lineupSides[p.id]\n local distance=20-2.5*order\n s.lineupOptions=s.lineupOptions or {}\n for _,option in ipairs({-1,1}) do\n  local x,z=100+nx*distance-nz*option*2,100+nz*distance+nx*option*2\n  local shape=s.lineupOptions[option]\n  if not shape or not S.green:updateTimedCircle(shape,500,x,0,z,.9,0,false,true,0) then\n   s.lineupOptions[option]=S.keep(S.green:addTimedCircle(500,x,0,z,.9,0,false,true,0))\n  end\n end\n S.go('sigma-lineup-'..order..'-'..side,{x=100+nx*distance-nz*side*2,z=100+nz*distance+nx*side*2},'Line up BPOG',4.5,0.7)\n self.used=true return\nend\nif s.lineupOptions then\n for _,shape in pairs(s.lineupOptions) do Argus.deleteTimedShape(shape);S.owned[shape]=nil end\n s.lineupOptions=nil\nend\nif n~=6 then self.used=true return end\nif not s.fanAssigned then\n local doubles,singles=0,0\n for order=1,4 do\n  local pair={}\n  for slot in string.gmatch('T1 H1 M1 R1 T2 H2 M2 R2','%S+') do\n   local id=R.idOf(slot)\n   if s.marks[id]==order then pair[#pair+1]=id end\n  end\n  if #pair~=2 then self.used=true return end\n  local count=(s.targets[pair[1]] and 1 or 0)+(s.targets[pair[2]] and 1 or 0)\n  if count==2 then\n   local a,b=TensorCore.mGetEntity(pair[1]),TensorCore.mGetEntity(pair[2])\n   local lateral=-(b.pos.x-a.pos.x)*nz+(b.pos.z-a.pos.z)*nx\n   if lateral<0 then pair[1],pair[2]=pair[2],pair[1] end\n   s.angles[pair[1]]=base+(doubles==0 and 0 or -math.pi/2)\n   s.angles[pair[2]]=base+(doubles==0 and math.pi or math.pi/2)\n   doubles=doubles+1\n  elseif count==1 then\n   local marked=s.targets[pair[1]] and pair[1] or pair[2]\n   local blank=marked==pair[1] and pair[2] or pair[1]\n   s.angles[marked]=base+(singles==0 and math.pi*3/4 or -math.pi*3/4)\n   s.angles[blank]=base+(singles==0 and -math.pi/4 or math.pi/4)\n   singles=singles+1\n  else self.used=true return end\n end\n s.fanAssigned=true\nend\nlocal angle=s.angles[p.id]\nif angle then\n s.myAngle=angle\n S.go('sigma-fan',S.polar(angle,s.glitch=='mid' and 11 or 19),'Go to assigned fan spot',7,0.9)\nend\nself.used=true\n",
							name = "[P5 Sigma] BPOG lineup and personal fan",
							uuid = "65dd49a7-f331-9973-9f58-cb5a1871c1d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P5\\Sigma",
				loop = true,
				mechanicTime = 821.7,
				name = "[P5 Sigma] BPOG lineup and personal fan",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = 24,
				timerStartOffset = 4,
				uuid = "1f97a373-ecb2-a672-9b3d-174f3343e596",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nif not s or not S.ready() or not s.glitch then return end\nlocal count=0\nfor _ in pairs(s.targets) do count=count+1 end\nif count>=6 then return end\nlocal p=TensorCore.mGetPlayer()\nlocal order=s.marks[p.id]\nif not order then return end\nlocal text=({'Blue overhead (cross)','Purple overhead (square)','Orange overhead (circle)','Green overhead (triangle)'})[order]\nlocal visible=GUI:Begin('BPOG overhead',true,GUI.WindowFlags_AlwaysAutoResize)\nif visible then GUI:Text(text) end\nGUI:End()\n",
							name = "[P5 Sigma] Personal BPOG overhead label",
							uuid = "e574e18e-d763-19a5-8f04-840f51fdc12b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P5\\Sigma",
				enabled = false,
				eventType = 13,
				loop = true,
				mechanicTime = 821.7,
				name = "[P5 Sigma] Personal BPOG overhead label",
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = 24,
				timerStartOffset = 4,
				uuid = "065ae83a-2e9d-4a85-8c2d-d32bbb93e7b3",
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
				name = "P5\\Sigma",
				uuid = "b8706744-8848-4191-a2fd-9b0d53d147e9",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.sigma and S.sigma.step==0 then S.sigma.step=1; S.clearGoal();S.say('Prepare knockback tower',3) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"6bb92a0d-6b8a-1bbb-812a-a2f85d35505e",
									true,
								},
							},
							name = "[P5 Sigma] Fan resolved",
							uuid = "111f696f-3f02-0402-89ee-81392c42f9b7",
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
							eventSpellID = 31604,
							name = "Matching mechanic",
							uuid = "6bb92a0d-6b8a-1bbb-812a-a2f85d35505e",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 2,
				loop = true,
				mechanicTime = 844,
				name = "[P5 Sigma] Fan resolved",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 3,
				timerStartOffset = -2,
				uuid = "dd8d60d0-6edb-2a97-8d0d-a110388bef85",
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
				name = "P5\\Sigma",
				uuid = "c5b8e48a-0cdc-720c-a323-86c3e86a8b99",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nif s and s.assignedTower then s.knocked=true;S.go('sigma-soak',s.assignedTower,'Soak tower now',4,3) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"ed60492f-175c-963b-b4ba-aad6fefb663c",
									true,
								},
							},
							name = "[P5 Sigma] Soak assigned tower",
							uuid = "213f85a8-36a5-ae21-959e-f69460ab1ad0",
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
							eventSpellID = 31534,
							name = "Matching mechanic",
							uuid = "ed60492f-175c-963b-b4ba-aad6fefb663c",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 2,
				loop = true,
				mechanicTime = 852.4,
				name = "[P5 Sigma] Soak assigned tower",
				timeRange = true,
				timelineIndex = 172,
				timerEndOffset = 3,
				timerStartOffset = -2,
				uuid = "27bb9edc-4ffa-7038-bc8a-dba47f349fd6",
				version = 2,
			},
		},
	},
	[173] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Sigma",
				uuid = "eab68743-2f00-da11-97e7-ef6684f385cb",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nif s and not s.towerSeen[eventArgs.entityID] then\n s.towerSeen[eventArgs.entityID]=true\n s.towerDeadline=s.towerDeadline or Now()+8700\n s.towers[#s.towers+1]={pos={x=eventArgs.x,y=eventArgs.y,z=eventArgs.z},capacity=eventArgs.entityContentID==2013246 and 2 or 1}\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"5f79311f-ce72-d03a-ac2f-fec07d40afb3",
									true,
								},
							},
							name = "[P5 Sigma] Capture tower capacities",
							uuid = "3ff13432-024f-fdde-9502-72d260c46a5a",
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
							conditionLua = "return eventArgs.entityContentID==2013245 or eventArgs.entityContentID==2013246",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "5f79311f-ce72-d03a-ac2f-fec07d40afb3",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 29,
				loop = true,
				mechanicTime = 856.4,
				name = "[P5 Sigma] Capture tower capacities",
				timeRange = true,
				timelineIndex = 173,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "e935eb31-985b-2cd9-8e0b-8ef0f8d09927",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nif not s or not S.ready() or not s.myAngle or s.knocked then self.used=true return end\nlocal total,nx,nz=0,0,0\nfor _,t in ipairs(s.towers) do total=total+t.capacity;nx=nx-t.pos.x+100;nz=nz-t.pos.z+100 end\nif total~=8 then self.used=true return end\nlocal norm=math.sqrt(nx*nx+nz*nz)\nif norm<0.1 then self.used=true return end\nnx,nz=nx/norm,nz/norm\nlocal myCSharp=math.pi-s.myAngle\nmyCSharp=math.atan2(math.sin(myCSharp),math.cos(myCSharp))\nlocal function match(deg) return math.abs(math.atan2(math.sin(myCSharp-math.rad(deg)),math.cos(myCSharp-math.rad(deg))))<0.12 end\nlocal chosen\nfor _,t in ipairs(s.towers) do\n local dx,dz=t.pos.x-100,t.pos.z-100\n local left=dx*nz-dz*nx>0\n local north=dx*nx+dz*nz>0\n local angles\n if #s.towers==5 then\n  if t.capacity==1 then angles={left and 180 or -90}\n  elseif north then angles={135,45}\n  elseif left then angles={90,-45} else angles={0,-135} end\n else\n  if t.capacity==2 then angles={left and 180 or -90,left and -45 or -135}\n  elseif north then angles={left and 135 or 45} else angles={left and 90 or 0} end\n end\n for _,deg in ipairs(angles) do if match(deg) then chosen=t;break end end\n if chosen then break end\nend\nif not chosen then self.used=true return end\ns.assignedTower=chosen.pos\nif not s.towerPreview then\n local ms=math.max(100,math.floor(s.towerDeadline-Now()))\n s.towerPreview=S.keep(S.green:addTimedCircle(ms,chosen.pos.x,chosen.pos.y,chosen.pos.z,3,0,false,true,0))\nend\nlocal distance=math.sqrt((chosen.pos.x-100)^2+(chosen.pos.z-100)^2)\nlocal originRadius=math.max(0.3,distance-13)\nlocal scale=originRadius/distance\nlocal dest={x=100+(chosen.pos.x-100)*scale,y=chosen.pos.y,z=100+(chosen.pos.z-100)*scale}\nlocal seconds=math.max(0.2,(s.towerDeadline-Now())/1000)\nS.go('sigma-knockback',dest,'Take knockback into your tower',math.max(0.2,seconds-3.7),0.7)\nif not s.towerTimer then\n s.towerTimer=true\n AnyoneCore.addWorldTextCountdown(math.floor(seconds*1000),{x=chosen.pos.x,y=chosen.pos.y+2,z=chosen.pos.z},0xFF33FF33,true,1.2)\nend\nself.used=true\n",
							name = "[P5 Sigma] Assigned knockback and tower",
							uuid = "de98e76f-6dc7-72be-89f6-c3badc561840",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P5\\Sigma",
				loop = true,
				mechanicTime = 856.4,
				name = "[P5 Sigma] Assigned knockback and tower",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 173,
				timerEndOffset = -0.2,
				timerStartOffset = -10,
				uuid = "a9a46e61-18a4-0ab1-ac74-93c2c2ac0c43",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.sigma then S.sigma.step=2; S.go('sigma-recenter',{x=100,z=100},'Go middle',4,1.5) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"f67f8a67-081c-ce10-bf63-5f2091458015",
									true,
								},
							},
							name = "[P5 Sigma] Towers resolved",
							uuid = "37dba180-7dc9-c29d-9518-26efc2f7246f",
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
							conditionLua = "return eventArgs.spellID==31492 or eventArgs.spellID==31493",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "f67f8a67-081c-ce10-bf63-5f2091458015",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 2,
				loop = true,
				mechanicTime = 856.4,
				name = "[P5 Sigma] Towers resolved",
				timeRange = true,
				timelineIndex = 173,
				timerEndOffset = 3,
				timerStartOffset = -1,
				uuid = "dd90d236-7a5c-12ae-8120-ac6349ff24ca",
				version = 2,
			},
		},
	},
	[174] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "fa6f4b1f-79b1-9fc6-8139-b72a6c04e616",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,50,12,pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"9e0c111d-3b55-631a-abc3-a066160ef079",
									true,
								},
							},
							name = "[AoE] Sigma rear laser",
							uuid = "0419e7a3-55cc-4bf5-9f46-b41e9b07abb9",
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
							eventSpellID = 31631,
							name = "Matching mechanic",
							uuid = "9e0c111d-3b55-631a-abc3-a066160ef079",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 870.6,
				name = "[AoE] Sigma rear laser",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 4,
				timerStartOffset = -15,
				uuid = "f1b421d5-ecf6-4bcb-819b-65648de76810",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Weapon predictions",
				uuid = "6672c267-2901-ef1e-976f-f3d9f4d39ab7",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.weapon then self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal model=Argus.getEntityModel(e)\nif not (model==15720) then self.used=true return end\nlocal d=(e.pos.x-100)^2+(e.pos.z-100)^2\nif d<80 or d>125 then self.used=true return end\nS.weapon.add(e,15100,'sigma')\nself.used=true\n",
							conditions = 
							{
								
								{
									"15fe7962-3d9c-8552-8c88-1ddeb884675b",
									true,
								},
							},
							name = "[Weapon] Predict sigma weapons",
							uuid = "dfb1a455-5775-0327-b607-491d85eb51e4",
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
							conditionLua = "return eventArgs.newAnimID==7747",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "15fe7962-3d9c-8552-8c88-1ddeb884675b",
							version = 3,
						},
					},
				},
				displayPath = "Weapon predictions",
				eventType = 23,
				loop = true,
				mechanicTime = 870.6,
				name = "[Weapon] Predict sigma weapons",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 5,
				timerStartOffset = -15,
				uuid = "c64c45df-8751-b270-8bf4-e2cb92269c1c",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal W=S.weapon\nif not W or not S.ready() then self.used=true return end\nlocal entries=W.active('sigma')\nif #entries<2 and 'sigma'~='sigma' then self.used=true return end\nif #entries==0 then self.used=true return end\nlocal key='weapon-sigma-'..entries[1].deadline\nif S.issued[key] then self.used=true return end\nfor _,e in ipairs(entries) do if not e.drawn then e.drawn=true;W.draw(e) end end\nself.used=true\n",
							conditions = 
							{
								
								{
									"adeb2ae8-46ba-4ae7-a771-5bc3e16be62f",
									true,
								},
							},
							name = "[Weapon] sigma safe position",
							uuid = "b7eeee95-d510-82ac-8072-158c3127a398",
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
							conditionLua = "local S=data.topLpdu\nif not S or not S.weapon then return false end\nfor _,e in ipairs(S.weapon.active('sigma')) do if not e.drawn then return true end end\nreturn false",
							name = "Relevant mechanic",
							uuid = "adeb2ae8-46ba-4ae7-a771-5bc3e16be62f",
							version = 3,
						},
					},
				},
				displayPath = "Weapon predictions",
				loop = true,
				mechanicTime = 870.6,
				name = "[Weapon] sigma safe position",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1,
				timerStartOffset = -15,
				uuid = "101eacd4-b06b-41a3-9d15-8160bd401673",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Sigma",
				uuid = "3e311bf2-b115-5dc4-92c9-52460e7940e8",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nif not s or S.markerOffset==nil then self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or Argus.getEntityModel(e)~=15723 then self.used=true return end\nlocal marker=eventArgs.markerID-S.markerOffset\nif marker~=156 and marker~=157 then self.used=true return end\ns.laser={heading=e.pos.h,rotation=marker==156 and -math.rad(9) or math.rad(9),deadline=Now()+10100,hits=0,generation=0,draws={}}\nself.used=true\n",
							conditions = 
							{
								
								{
									"86bebf7d-b207-244c-ae97-bab63cdfa4bc",
									true,
								},
							},
							name = "[P5 Sigma] Read rear laser rotation",
							uuid = "8830a6d1-9e47-6810-be95-2aa9eac4fddb",
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
							conditionLua = "return eventArgs.entityContentID==7639",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "86bebf7d-b207-244c-ae97-bab63cdfa4bc",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 4,
				loop = true,
				mechanicTime = 870.6,
				name = "[P5 Sigma] Read rear laser rotation",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1,
				timerStartOffset = -13,
				uuid = "1c0ab6a9-9549-1469-9644-41f203b5bd79",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nif s and s.laser then\n s.laser.hits=s.laser.hits+1;s.laser.generation=s.laser.generation+1;s.laser.deadline=Now()+600\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"1d39b350-44af-9a4c-97c9-b371c84c2d9b",
									true,
								},
							},
							name = "[P5 Sigma] Advance rotating rear beam",
							uuid = "a4172f03-6b45-225e-9e02-2d476128b2ab",
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
							conditionLua = "return eventArgs.spellID==31631 or eventArgs.spellID==31632",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "1d39b350-44af-9a4c-97c9-b371c84c2d9b",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 2,
				loop = true,
				mechanicTime = 870.6,
				name = "[P5 Sigma] Advance rotating rear beam",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 10,
				timerStartOffset = -1,
				uuid = "aaa201eb-8dbd-2b9e-8650-29ff2dc8d24f",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nif not S.bounceOrder then\n function S.bounceOrder()\n  local base={'T1','T2','H1','H2','M1','M2','R1','R2'}\n  local order,seen={},{}\n  for rank=1,8 do\n   local index=Settings.FFXIVMINION['LPDU_TOP_BouncePriority'..rank]\n   if index==nil then index=rank-1 end\n   local slot=base[index+1]\n   if not slot or seen[slot] then return base end\n   seen[slot]=true;order[rank]=slot\n  end\n  return order\n end\nend\n\nlocal s=S.sigma\nif not s or not s.laser or not S.ready() then self.used=true return end\nlocal l=s.laser\nif not l.waitOutsideFrom then l.waitOutsideFrom=l.deadline-700 end\nlocal R=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not l.roles then\n local function assignStatic()\n local holders,pool,front,back={}, {}, {}, {}\n local aggro\n for _,content in ipairs({12257,12258}) do for _,boss in pairs(TensorCore.entityList('contentid='..content)) do\n  if Argus.getEntityModel(boss)==15720 then aggro=boss.targetid end\n end end\n for _,role in ipairs(S.bounceOrder()) do\n  local e=R.entOf(role)\n  if TensorCore.hasBuff(e,3442) then holders[e.id]='near';local b=TensorCore.getBuff(e,3442);if b then s.worldDeadline=Now()+b.duration*1000 end\n  elseif TensorCore.hasBuff(e,3443) then holders[e.id]='far'\n  else\n   local d=TensorCore.getBuff(e,3444)\n   pool[#pool+1]={id=e.id,dynamis=d and d.stacks or 0}\n  end\n end\n local count=0;for _ in pairs(holders) do count=count+1 end\n if count~=2 or #pool~=6 then self.used=true return end\n for _,a in ipairs(pool) do if a.dynamis==1 then front[#front+1]=a.id end end\n if #front~=3 then self.used=true return end\n local chosen={};for _,id in ipairs(front) do chosen[id]=true end\n for _,a in ipairs(pool) do if not chosen[a.id] then back[#back+1]=a.id end end\n l.roles=holders\n for i,id in ipairs(front) do l.roles[id]=({'fist1','fist2','far1'})[i] end\n for i,id in ipairs(back) do l.roles[id]=({'far2','near1','near2'})[i] end\n end\n assignStatic()\nend\nlocal role=l.roles and l.roles[p.id]\nif Settings.FFXIVMINION.LPDU_TOP_BounceAssignments~=2 then\n local mapping={[1]='far1',[2]='near1',[3]='near2',[4]='far2',[6]='fist1',[7]='fist2',[13]='far',[14]='near'}\n local picked,seen,parts={},{},{}\n local valid=true\n for _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n  local e=AnyoneCore.Roster.entOf(slot)\n  local assigned=mapping[e.marker]\n  if not assigned or seen[e.marker] then valid=false;break end\n  if assigned=='near' and not TensorCore.hasBuff(e,3442) then valid=false;break end\n  if assigned=='far' and not TensorCore.hasBuff(e,3443) then valid=false;break end\n  seen[e.marker]=true;picked[e.id]=assigned;parts[#parts+1]=tostring(e.id)..':'..tostring(e.marker)\n end\n local signature=valid and table.concat(parts,',') or nil\n if signature~=l.amSignature then\n  l.amSignature=signature;l.amSince=Now()\n end\n if valid and Now()-l.amSince>=500 then\n  l.amRoles=picked\n end\n if l.amRoles then\n  role=l.amRoles[p.id] or role\n end\nend\nif not l.markerGraceStarted then l.markerGraceStarted=Now() end\nif Settings.FFXIVMINION.LPDU_TOP_BounceAssignments~=2 and not l.amRoles and Now()-l.markerGraceStarted<1500 then self.used=true return end\nif not role then self.used=true return end\nlocal targetH={far=l.heading,near=l.heading+10*l.rotation,far1=l.heading+math.pi,far2=l.heading,near1=l.heading+9*l.rotation,near2=l.heading+11*l.rotation,fist1=l.heading+math.pi+5*l.rotation,fist2=l.heading+math.pi-5*l.rotation}\nlocal radius=(role=='near' or role=='far') and 10 or 19\nlocal h=targetH[role]\nlocal final={x=100+radius*math.sin(h),y=p.pos.y,z=100+radius*math.cos(h)}\nlocal seconds=math.max(.2,(l.deadline-Now())/1000)\nlocal current=l.heading+l.hits*l.rotation\nlocal phase='rotate-'..l.hits\nlocal pos,text\n-- Only enforce the weapon at its actual resolution window. Early staging must\n-- escape the initial laser before moving into the later weapon's safe band.\nlocal imminent={}\nif S.weapon then for _,e in ipairs(S.weapon.active('sigma')) do\n if e.deadline<=Now()+1400 then imminent[#imminent+1]=e end\nend end\n local function safe(x,z)\n  if S.weapon and S.weapon.unsafe(x,z,imminent,.6) then return false end\n  if l.hits<14 then\n   for i=0,math.min(1,13-l.hits) do\n    local a=current+i*l.rotation\n    if math.abs((x-100)*math.cos(a)-(z-100)*math.sin(a))<6.35 then return false end\n   end\n  end\n  return true\n end\n local function reachable(target)\n  local escaped=safe(p.pos.x,p.pos.z)\n  for i=1,16 do\n   local t=i/16\n   local good=safe(p.pos.x+(target.x-p.pos.x)*t,p.pos.z+(target.z-p.pos.z)*t)\n   if escaped and not good then return false end\n   escaped=escaped or good\n  end\n  return escaped\n end\nlocal middlePending=S.weapon and S.weapon.active('sigma') or {}\nlocal early=l.deadline-Now()>4000 and l.hits==0\nif early then\n local front=role=='fist1' or role=='fist2' or role=='far1'\n -- Stage behind the initial laser, keeping the two assigned sides.\n local angle=l.heading+(front and math.pi or 0)-(l.rotation>0 and 1 or -1)*math.rad(35)\n local rank=role=='fist1' and -1 or role=='fist2' and 1 or role=='near1' and -1 or role=='far2' and 1 or 0\n local lateral=rank*2.5\n pos={x=100+16*math.sin(angle)+lateral*math.cos(angle),y=p.pos.y,z=100+16*math.cos(angle)-lateral*math.sin(angle)}\n text=front and 'Go female side, line up in your slot' or 'Go opposite female, line up in your slot'\n phase='conga';seconds=math.max(.3,(l.deadline-Now()-4000)/1000)\nelse\n local pending=S.weapon and S.weapon.active('sigma') or {}\n local path=reachable(final) and (#pending==0 or radius>=15)\n if path then\n  pos=final\n  text=role=='near' and 'Near world, take your ring spot' or role=='far' and 'Distant world, take your ring spot' or role=='fist1' and 'Bait first hand northwest' or role=='fist2' and 'Bait second hand northeast' or role=='far1' and 'First far bounce, female wall' or role=='far2' and 'Second far bounce, opposite wall' or role=='near1' and 'Take first near bounce spot' or 'Take second near bounce spot'\n  phase='final';seconds=math.max(.2,((s.worldDeadline or (l.deadline+(14-l.hits)*600+2200))-Now())/1000)\n else\n  local behind=current-(l.rotation>0 and 1 or -1)*math.rad(20)\n  local playerH=math.atan2(p.pos.x-100,p.pos.z-100)\n  if math.cos(playerH-behind)<0 then behind=behind+math.pi end\n  local candidate={x=100+19*math.sin(behind),y=p.pos.y,z=100+19*math.cos(behind)}\n  if safe(candidate.x,candidate.z) and reachable(candidate) then pos=candidate end\n  if not pos then\n   -- Stay on the player's present side and take only a short safe step.\n   local direction=l.rotation>0 and 1 or -1\n   for degrees=5,45,5 do\n    local angle=playerH+direction*math.rad(degrees)\n    local nextSpot={x=100+19*math.sin(angle),y=p.pos.y,z=100+19*math.cos(angle)}\n    if safe(nextSpot.x,nextSpot.z) and reachable(nextSpot) then pos=nextSpot;break end\n   end\n  end\n  if not pos and safe(p.pos.x,p.pos.z) then pos={x=p.pos.x,y=p.pos.y,z=p.pos.z} end\n  text=l.rotation<0 and 'Follow laser clockwise, stay close' or 'Follow laser counterclockwise, stay close'\n  seconds=l.hits==0 and math.max(1.2,(l.deadline-Now())/1000) or 1.2\n end\nend\nlocal pending=S.weapon and S.weapon.active('sigma') or {}\nfor _,hazard in ipairs(pending)do\n if not hazard.countdownDrawn and hazard.deadline>Now() then\n  hazard.countdownDrawn=true\n  AnyoneCore.addWorldTextCountdown(hazard.deadline-Now(),{x=hazard.x,y=p.pos.y+2,z=hazard.z},0xFFFFFFFF,true,1.2)\n end\nend\nif not pos or not safe(pos.x,pos.z) or not reachable(pos) then\n local score\n local stagingTarget=early and pos or nil\n pos=nil\n for x=81,119,1 do for z=81,119,1 do\n  if (x-100)^2+(z-100)^2<=19.2^2 and safe(x,z) then\n   local candidate={x=x,y=p.pos.y,z=z}\n   local d=(x-p.pos.x)^2+(z-p.pos.z)^2\n   if stagingTarget then d=d+.6*((x-stagingTarget.x)^2+(z-stagingTarget.z)^2) end\n   if (not score or d<score) and reachable(candidate) then score=d;pos=candidate end\n  end\n end end\n phase=early and 'stage-safe' or 'safe-'..l.hits;seconds=early and math.max(.3,(l.deadline-Now()-4000)/1000) or 1.5\nend\nlocal waitOutside=#pending>0 and not early and Now()>=l.waitOutsideFrom\nif waitOutside then\n -- Start the waiting step at the initial laser, rather than waiting for later hits.\n local angle=math.atan2(final.x-100,final.z-100)\n local staging={x=100+19*math.sin(angle),y=p.pos.y,z=100+19*math.cos(angle)}\n if safe(staging.x,staging.z) and reachable(staging) then pos=staging end\n text='Stay outside, wait for middle AoE'\n phase='wait-middle';seconds=3\nend\nif pos and not early and not l.personalDone then\n local key='sigma-laser-'..role..'-'..phase\n if S.issued[key] and (not S.goal or S.goal.key~=key) then S.issued[key]=nil end\n if S.goal and S.goal.key==key then S.goal.pos=pos;S.goal.expires=Now()+seconds*1000 end\n if phase=='rotate-'..l.hits then\n  if l.rotateAnnounced then text='' else l.rotateAnnounced=true end\n end\n if S.go(key,pos,text,seconds,.7) and phase=='final' and not l.timerDrawn then\n  l.timerDrawn=true\n  AnyoneCore.addWorldTextCountdown(math.max(100,(s.worldDeadline or (Now()+seconds*1000))-Now()),{x=pos.x,y=p.pos.y+2,z=pos.z},0xFF33FF33,true,1.2)\n end\nend\nif l.drawGeneration~=l.generation then\n l.drawGeneration=l.generation\n for _,id in ipairs(l.draws) do Argus.deleteTimedShape(id) end\n l.draws={}\n if l.hits<14 then\n  for i=0,math.min(1,13-l.hits) do\n   local a=current+i*l.rotation\n   local drawer=i==0 and S.red or TensorCore.getStaticDrawer(0x403333FF,2)\n   local ms=math.max(100,l.deadline+i*600-Now()+100)\n   l.draws[#l.draws+1]=S.keep(drawer:addTimedRect(ms,100-25*math.sin(a),p.pos.y,100-25*math.cos(a),50,12,a,0,false,true,S.flags))\n  end\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"95038f2b-63bb-7d31-955a-fdf429c2d79c",
									true,
								},
							},
							name = "[P5 Sigma] Conga rotate and assigned world baits",
							uuid = "7f9125ec-1590-3116-b897-924ff0859b17",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.sigma~=nil and S.sigma.laser~=nil and not S.sigma.laser.personalDone)",
							name = "Relevant mechanic",
							uuid = "95038f2b-63bb-7d31-955a-fdf429c2d79c",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				loop = true,
				mechanicTime = 870.6,
				name = "[P5 Sigma] Conga rotate and assigned world baits",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 13,
				timerStartOffset = -11,
				uuid = "e208c73d-b566-97db-97d4-c16c374f5318",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal s=S.sigma\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif s and e then\n local b=TensorCore.getBuff(e,eventArgs.buffID)\n if b then s.worldDeadline=Now()+b.duration*1000 end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"96883ddd-340e-de02-8156-bc2b3c24614e",
									true,
								},
							},
							name = "[P5 Sigma] Store world expiry and countdown",
							uuid = "ea4a3a43-174a-0d5e-98ef-6be96240ddca",
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
							conditionLua = "return eventArgs.buffID==3442 or eventArgs.buffID==3443",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "96883ddd-340e-de02-8156-bc2b3c24614e",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 8,
				loop = true,
				mechanicTime = 870.6,
				name = "[P5 Sigma] Store world expiry and countdown",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 8,
				timerStartOffset = -12,
				uuid = "72c5d948-93d8-05bc-bf8c-beab9dd347f6",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nlocal b=S and S.p5BounceCircles\nif b then\n for _,shape in pairs(b.draws or {})do Argus.deleteTimedShape(shape.id);S.owned[shape.id]=nil end\n b.draws={}\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"fb181491-4216-f4e2-b43f-f12bc40f58d3",
									true,
								},
							},
							name = "[P5 Sigma] Predicted near and far bounce circles",
							uuid = "2bd5fa91-50ce-b953-9a60-842640f26abf",
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
							conditionLua = "local S=data.topLpdu;local b=S and S.p5BounceCircles;return b and b.draws and next(b.draws) or false",
							name = "Remove previous bounce circles",
							uuid = "fb181491-4216-f4e2-b43f-f12bc40f58d3",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				loop = true,
				mechanicTime = 870.6,
				name = "[P5 Sigma] Predicted near and far bounce circles",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 25,
				timerStartOffset = -20,
				uuid = "d7904def-c4e7-21e7-a4a9-96c33610ae1a",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal b=S.p5BounceCircles\nif b then\n local kind=(eventArgs.spellID==31625 or eventArgs.spellID==31626) and 'near' or 'far'\n local stamp=tostring(eventArgs.spellID)..':'..tostring(eventArgs.targetID)\n b.seen=b.seen or {}\n if not b.seen[stamp] or Now()-b.seen[stamp]>500 then\n  b.seen[stamp]=Now();b[kind]=eventArgs.targetID;b[kind..'Done']=math.min(3,b[kind..'Done']+1)\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"ca359fb1-4c03-d0da-9fc0-8d9c2fb63a01",
									true,
								},
							},
							name = "[P5 Sigma] Advance near and far circle chain",
							uuid = "219bf5e1-53b4-ac7d-b63d-0e26e5ef1611",
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
							conditionLua = "return eventArgs.spellID==31625 or eventArgs.spellID==31626 or eventArgs.spellID==33040 or eventArgs.spellID==33041",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "ca359fb1-4c03-d0da-9fc0-8d9c2fb63a01",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				enabled = false,
				eventType = 2,
				loop = true,
				mechanicTime = 870.6,
				name = "[P5 Sigma] Advance near and far circle chain",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 25,
				timerStartOffset = -20,
				uuid = "24335233-8b86-0665-a125-bccd61a7a95e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal w=S.p5MarkerWriter\nlocal p=TensorCore.mGetPlayer()\nlocal function restore()\n if w and w.target and p.targetid==w.target and w.previous and w.previous~=0 then Player:SetTarget(w.previous)end\n if w then w.target=nil;w.previous=nil end\nend\nif Settings.FFXIVMINION.LPDU_TOP_AM_sigma~=1 or not S.ready() then restore();self.used=true return end\nlocal phase='sigma'\nlocal source=phase=='sigma' and S.sigma and S.sigma.laser or S.omega\nlocal stage=phase=='sigma' and 1 or source and source.stage or 0\nlocal roles=source and source.roles\nif not roles or stage==0 then restore();self.used=true return end\nlocal key=phase..stage\nif not w then w={owned={}};S.p5MarkerWriter=w end\nif w.key~=key then\n restore();w.key=key;w.start=Now();w.index=1;w.pending=nil;w.done=nil;w.blocked=nil;w.queue=nil\nend\nif w.done or w.blocked or Now()-w.start<1800 then self.used=true return end\nlocal marker={far1=1,near1=2,near2=3,far2=4,fist1=6,fist2=7,monitor1=6,monitor2=7,tether1=6,tether2=7,far=13,near=14}\nlocal commands={[1]='attack1',[2]='attack2',[3]='attack3',[4]='attack4',[6]='bind1',[7]='bind2',[13]='cross',[14]='triangle'}\nlocal queue,seen={},{}\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'})do\n local e=AnyoneCore.Roster.entOf(slot);local m=marker[roles[e.id]]\n if not m or seen[m] then restore();self.used=true return end\n seen[m]=true;queue[#queue+1]={id=e.id,marker=m}\n -- An acknowledged write may legitimately have changed this player's marker.\n local pending=w.pending and w.pending.id==e.id and w.pending.marker==e.marker\n if e.marker and e.marker~=0 and w.owned[e.id]~=e.marker and not pending then\n  w.blocked=true;restore();self.used=true return\n end\nend\nw.queue=queue\nif w.pending then\n local e=TensorCore.mGetEntity(w.pending.id)\n if e and e.marker==w.pending.marker then\n  w.owned[e.id]=e.marker;w.pending=nil;w.index=w.index+1;restore()\n elseif Now()-w.sent>1200 then w.blocked=true;restore()\n end\n self.used=true return\nend\nlocal nextMark=w.queue[w.index]\nif not nextMark then w.done=true;restore();self.used=true return end\nlocal e=TensorCore.mGetEntity(nextMark.id)\nif not e then w.blocked=true;restore();self.used=true return end\nif e.marker==nextMark.marker then w.index=w.index+1;self.used=true return end\nif w.target~=e.id then\n w.previous=p.targetid;w.target=e.id;Player:SetTarget(e.id);self.used=true return\nend\nif p.targetid~=e.id then w.blocked=true;restore();self.used=true return end\nSendTextCommand('/mk '..commands[nextMark.marker]..' <t>')\nw.pending=nextMark;w.sent=Now()\nself.used=true\n",
							conditions = 
							{
								
								{
									"ee0d4cfa-771f-e34c-a919-c28c86ec0088",
									true,
								},
							},
							name = "[P5 Sigma] Optional owned LPDU markers",
							uuid = "a0aa7e0e-a50d-3f37-b2af-b1ec2b7b3a69",
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
							conditionLua = "local S=data.topLpdu;return S and (Settings.FFXIVMINION.LPDU_TOP_AM_sigma==1 or S.p5MarkerWriter and S.p5MarkerWriter.target) or false",
							name = "Matching mechanic",
							uuid = "ee0d4cfa-771f-e34c-a919-c28c86ec0088",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				loop = true,
				mechanicTime = 870.6,
				name = "[P5 Sigma] Optional owned LPDU markers",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 25,
				timerStartOffset = -20,
				uuid = "e8daca88-4ac0-26ae-81a4-a5bca3c3fe69",
				version = 2,
			},
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Sigma",
				uuid = "19b8f0d5-40ea-af65-ba15-83d9fb817609",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal ownHit=false\nfor _,id in ipairs(eventArgs.hitTargets) do if p and id==p.id then ownHit=true;break end end\nif ownHit then\n if S.sigma and S.sigma.laser then S.sigma.laser.personalDone=true end\n if S.goal and string.find(S.goal.key,'sigma-laser-',1,true)==1 then S.clearGoal() end\nend\nif eventArgs.spellID~=31625 and eventArgs.spellID~=31626 then self.used=true return end\nlocal s=S.sigma\nif not s or not s.laser or (s.lastWorldHit and Now()-s.lastWorldHit<500) then self.used=true return end\ns.lastWorldHit=Now();s.worldHits=(s.worldHits or 0)+1\nif s.worldHits==3 then\n s.laser=nil\n S.go('sigma-worlds-complete',{x=100,z=100},'Bounces done, go middle',3,1.2)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"9276561a-8caf-4f44-9ffc-947da7772b27",
									true,
								},
							},
							name = "[P5 Sigma] Final bounce return middle",
							uuid = "26e588fa-c94c-8132-93a1-6799956aa847",
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
							conditionLua = "return eventArgs.spellID==31625 or eventArgs.spellID==31626 or eventArgs.spellID==33040 or eventArgs.spellID==33041",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 31626,
							name = "Matching mechanic",
							uuid = "9276561a-8caf-4f44-9ffc-947da7772b27",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Sigma",
				eventType = 2,
				loop = true,
				mechanicTime = 882.6,
				name = "[P5 Sigma] Final bounce return middle",
				timeRange = true,
				timelineIndex = 181,
				timerEndOffset = 1,
				timerStartOffset = -3,
				uuid = "2680f025-fa90-f475-be37-0460e270738d",
				version = 2,
			},
		},
	},
	[183] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Orientation",
				uuid = "34519f32-3225-2e7a-a6d9-f895b0025dc5",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not p.pos or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12258')) do\n if Argus.getEntityModel(e)==15720 and e.targetable and e.alive and e.targetid==p.id then boss=e; break end\nend\nif not boss or not boss.pos then self.used=true return end\nlocal error=math.abs(math.atan2(math.sin(boss.pos.h-math.pi),math.cos(boss.pos.h-math.pi)))\nlocal key='face-sigma-end'\nif error<math.rad(20) then\n if S.goal and S.goal.key==key then S.clearGoal() end\n self.used=true return\nend\nif boss.castinginfo.channelingid~=0 then self.used=true return end\nS.go(key,{x=boss.pos.x,y=boss.pos.y,z=boss.pos.z-boss.hitradius-1.5},'You have aggro, face boss north',3.5,0.8)\nself.used=true\n",
							name = "[Aggro] Face boss north - sigma-end",
							uuid = "23f1f0b3-aa7e-825e-99e8-58b0afff7231",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				enabled = false,
				loop = true,
				mechanicTime = 885.3,
				name = "[Aggro] Face boss north - sigma-end",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 183,
				timerEndOffset = 4,
				uuid = "43ddd8a6-6449-4ba4-a1e8-f5db184911ea",
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
				name = "P5\\Tanks",
				uuid = "eaf619e5-8342-783f-a793-adc760a7c6e3",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.solarWave=3\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal slot=R.mySlot()\nif (slot~='T1' and slot~='T2') or S.issued['solar-prep-3'] then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12257')) do\n if e.targetable and e.alive then boss=e; break end\nend\nif not boss then\n for _,e in pairs(TensorCore.entityList('contentid=12258')) do if e.targetable and e.alive then boss=e; break end end\nend\nif boss then\n S.issued['solar-prep-3']=true\n local plan=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\n if plan==nil or plan==4 then\n local waveDefault=3\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\n local holder=TensorCore.mGetEntity(boss.targetid)\n local active=false\n if holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then active=true end end end\n local owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or boss.targetid\n if active then owner=boss.targetid end\n if plan~=0 or active then\n  if p.id==owner then S.say(boss.targetid==p.id and 'Keep aggro, invuln both hits' or 'Provoke, invuln both hits',4)\n  else S.say('Other tank invulns, stay apart',3) end\n elseif slot=='T1' then\n  S.say(boss.targetid==p.id and 'Keep boss, prepare buster' or 'Provoke, take boss',3)\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"b4c664fa-d051-76ad-a09c-1f9d8a76c901",
									true,
								},
							},
							name = "[P5 Tank] MT establish aggro 3",
							uuid = "c58853a2-5aac-060d-a077-5a2c4dfb19a5",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and not S.issued['solar-prep-3']",
							name = "Relevant mechanic",
							uuid = "b4c664fa-d051-76ad-a09c-1f9d8a76c901",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Tanks",
				loop = true,
				mechanicTime = 894.3,
				name = "[P5 Tank] MT establish aggro 3",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -5.1,
				timerStartOffset = -8,
				uuid = "b4ecb6ae-87a3-582e-a27f-3d979fc4581d",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,content in ipairs({12257,12258}) do for _,e in pairs(TensorCore.entityList('contentid='..content)) do\n if Argus.getEntityModel(e)==15720 and e.targetable and e.alive then boss=e;break end\nend;if boss then break end end\nif not boss then self.used=true return end\nlocal plan=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\nif plan==nil or plan==4 then\n local waveDefault=3\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\nlocal owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or plan==3 and boss.targetid or R.idOf('T1')\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then plan=3;owner=boss.targetid;break end end end\nS.solarPlaces=S.solarPlaces or {}\nlocal place=S.solarPlaces[3]\nif not place then\n local nx,nz=0,-1\n if plan~=0 and 3~=4 then\n  local sx,sz=0,0\n  for _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do local e=R.entOf(role);sx=sx+e.pos.x-100;sz=sz+e.pos.z-100 end\n  local length=math.sqrt(sx*sx+sz*sz)\n  if length>3 then nx=-sx/length;nz=-sz/length end\n end\n local radius=10\n local a=math.atan2(nx,-nz)\n place={first={x=100+nx*radius,z=100+nz*radius},after=S.polar(a-math.pi/4,radius),owner=owner,plan=plan}\n S.solarPlaces[3]=place\nend\nlocal p=TensorCore.mGetPlayer()\nlocal pos,text\nif p.id==place.owner then\n pos=place.first;text=place.plan==0 and (3==4 and 'Pull south before buster' or 'Take boss north, prepare swap') or 'Opposite party, invuln both hits'\nelseif place.plan~=0 then pos={x=100-(place.first.x-100)*.35,z=100-(place.first.z-100)*.35};text='Stay with party, other tank invulns'\nelse pos={x=place.first.x+7,z=place.first.z+3};text='Prepare to provoke, stay apart' end\nS.go('p5-tank-prep-3',pos,text,7.5,1)\nself.used=true\n",
							name = "[P5 Tank] Buster 3 positions from plan",
							uuid = "38961742-c811-f4fd-a51f-37e2a602dac0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P5\\Tanks",
				loop = true,
				mechanicTime = 894.3,
				name = "[P5 Tank] Buster 3 positions from plan",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -5.1,
				timerStartOffset = -7.8,
				uuid = "b01205e2-7b97-3ed7-8375-040b1711e03c",
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
				name = "Weapon predictions",
				uuid = "1e5b3f67-8152-fc6f-a61a-d136f05c3c1f",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.weapon then self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal model=Argus.getEntityModel(e)\nif not (model==15721 or model==15722) then self.used=true return end\nlocal d=(e.pos.x-100)^2+(e.pos.z-100)^2\nif d<80 or d>125 then self.used=true return end\nS.weapon.add(e,12900,'omega')\nself.used=true\n",
							conditions = 
							{
								
								{
									"d74d2267-d75e-ffb7-8b33-ff0ccea135d3",
									true,
								},
							},
							name = "[Weapon] Predict omega weapons",
							uuid = "270f4e59-3088-adad-81aa-3393c1d5eecc",
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
							conditionLua = "return eventArgs.newAnimID==7747",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "d74d2267-d75e-ffb7-8b33-ff0ccea135d3",
							version = 3,
						},
					},
				},
				displayPath = "Weapon predictions",
				eventType = 23,
				loop = true,
				mechanicTime = 910.7,
				name = "[Weapon] Predict omega weapons",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = 28,
				timerStartOffset = -1,
				uuid = "c7b1461d-bddd-2a64-958a-1eecc9450618",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Omega",
				uuid = "6d9f96d2-0b5c-a067-8e8c-133413b32f26",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.omega={players={},roles={},stage=0,generation=0,nearHits=0,lastNear=0}\nself.used=true\n",
							conditions = 
							{
								
								{
									"ba31e9d6-45ab-e041-b4a4-3ecd1bbc9700",
									true,
								},
							},
							name = "[P5 Omega] Reset personal assignments",
							uuid = "0cb70f05-a6e0-6d3a-9e28-8c308aa282df",
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
							eventSpellID = 32789,
							name = "Matching mechanic",
							uuid = "ba31e9d6-45ab-e041-b4a4-3ecd1bbc9700",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				eventType = 3,
				loop = true,
				mechanicTime = 910.7,
				name = "[P5 Omega] Reset personal assignments",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = 1,
				timerStartOffset = -7,
				uuid = "92b09378-3085-ce7d-b41b-13539185bdba",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal o=S.omega\nif not o or not S.ready() then self.used=true return end\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n local a=o.players[e.id] or {slot=slot};o.players[e.id]=a\n if TensorCore.hasBuff(e,3442) then a.world='near' end\n if TensorCore.hasBuff(e,3443) then a.world='far' end\n for order,buffID in ipairs({3004,3005}) do\n  local b=TensorCore.getBuff(e,buffID)\n  if b then a.order=order;a.deadline=Now()+b.duration*1000 end\n end\n local d=TensorCore.getBuff(e,3444);a.dynamis=d and d.stacks or 0\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"dccc00ec-8d71-d713-946d-c218f6b6f39b",
									true,
								},
							},
							name = "[P5 Omega] Store world order and dynamis",
							uuid = "c01dd54a-97ae-2030-a1b0-3c7ab9a33202",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.omega~=nil)",
							name = "Relevant mechanic",
							uuid = "dccc00ec-8d71-d713-946d-c218f6b6f39b",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				loop = true,
				mechanicTime = 910.7,
				name = "[P5 Omega] Store world order and dynamis",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = 58,
				timerStartOffset = -5,
				uuid = "a989467c-9f6f-e460-b5a1-e3399ff858e0",
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
				name = "Cast AoEs",
				uuid = "f4b435d1-da63-cdb5-a8a0-1e2ac5ca7ceb",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCone(ms,pos.x,pos.y,pos.z,100,math.rad(120),pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"66a1b177-342a-ab89-a99a-2bfcd2375d51",
									true,
								},
							},
							name = "[AoE] Omega diffuse",
							uuid = "df614dbd-1510-516c-b5fd-5b7619d7fd8f",
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
							eventSpellID = 31609,
							name = "Matching mechanic",
							uuid = "66a1b177-342a-ab89-a99a-2bfcd2375d51",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				eventType = 3,
				loop = true,
				mechanicTime = 927.8,
				name = "[AoE] Omega diffuse",
				timeRange = true,
				timelineIndex = 189,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "2cc0e668-7c93-bed7-a8fc-57d153ad9f25",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Omega",
				uuid = "5eebb42d-b621-7378-85e3-b4c76b98adf6",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.weapon then self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal h=e.pos.h+(eventArgs.spellID==31644 and math.pi/2 or 0)\nfor i=0,1 do\n local id='omega-orb-'..i\n S.weapon.entries[id]={id=id,x=e.pos.x,y=e.pos.y,z=e.pos.z,h=h+i*math.pi/2,kind='cones',deadline=Now()+(eventArgs.channelTimeMax+(i==0 and 1.1 or 5.2))*1000,phase='omega'}\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"e430145a-a76d-88f3-8313-c5dbd7f7c15c",
									true,
								},
							},
							name = "[P5 Omega] Predict alternating diffuse cones",
							uuid = "b5663d4c-51d4-a649-b6e7-0bae10ba9481",
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
							conditionLua = "return eventArgs.spellID==31643 or eventArgs.spellID==31644",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "e430145a-a76d-88f3-8313-c5dbd7f7c15c",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				eventType = 3,
				loop = true,
				mechanicTime = 927.8,
				name = "[P5 Omega] Predict alternating diffuse cones",
				timeRange = true,
				timelineIndex = 189,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "ccb90db8-0513-d57d-a23a-7932ee9ff9aa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Weapon predictions",
				uuid = "69ab4159-deb0-47d3-a2b6-ce0088c80e04",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal W=S.weapon\nif not W or not S.ready() then self.used=true return end\nlocal entries=W.active('omega')\nif #entries<2 and 'omega'~='sigma' then self.used=true return end\nif #entries==0 then self.used=true return end\nlocal key='weapon-omega-'..entries[1].deadline\nif S.issued[key] then self.used=true return end\nfor _,e in ipairs(entries) do if not e.drawn then e.drawn=true;W.draw(e) end end\nlocal p=TensorCore.mGetPlayer()\nlocal best,score\nlocal function reachable(pos)\n local escaped=not W.unsafe(p.pos.x,p.pos.z,entries,.8)\n for i=1,80 do\n  local f=i/80\n  local clear=not W.unsafe(p.pos.x+(pos.x-p.pos.x)*f,p.pos.z+(pos.z-p.pos.z)*f,entries,.8)\n  if escaped and not clear then return false end\n  escaped=escaped or clear\n end\n return escaped\nend\nlocal candidates={}\nif not W.unsafe(p.pos.x,p.pos.z,entries,.8) then best={x=p.pos.x,y=p.pos.y,z=p.pos.z} end\nif not best then\n for x=81,119 do for z=81,119 do\n  if (x-100)^2+(z-100)^2<=19.2^2 and not W.unsafe(x,z,entries,.8) then\n   candidates[#candidates+1]={x=x,y=p.pos.y,z=z,d=(x-p.pos.x)^2+(z-p.pos.z)^2}\n  end\n end end\n for cardinal=0,3 do for _,radius in ipairs({3.5,10.5,17.5}) do\n  local pos=S.polar(cardinal*math.pi/2,radius)\n  if not W.unsafe(pos.x,pos.z,entries,.8) then\n   pos.d=(pos.x-p.pos.x)^2+(pos.z-p.pos.z)^2;candidates[#candidates+1]=pos\n  end\n end end\n table.sort(candidates,function(a,b)return a.d<b.d end)\n for _,pos in ipairs(candidates) do if reachable(pos) then best=pos;break end end\nend\nlocal message='Go to nearest safe spot'\nif best then S.go(key,best,message,math.max(.2,(entries[1].deadline-Now())/1000+.2),.8) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"e2a7d1fe-d0e5-6c41-95d6-81dc1ec7616b",
									true,
								},
							},
							name = "[Weapon] omega safe position",
							uuid = "b9799bc7-269c-5c04-97e0-dc266695acb3",
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
							conditionLua = "local S=data.topLpdu\nif not S or not S.weapon or not S.ready() then return false end\nlocal entries=S.weapon.active('omega')\nreturn #entries>=2 and not S.issued['weapon-omega-'..entries[1].deadline]",
							name = "Relevant mechanic",
							uuid = "e2a7d1fe-d0e5-6c41-95d6-81dc1ec7616b",
							version = 3,
						},
					},
				},
				displayPath = "Weapon predictions",
				loop = true,
				mechanicTime = 927.8,
				name = "[Weapon] omega safe position",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 189,
				timerEndOffset = 6,
				timerStartOffset = -12,
				uuid = "4a2ca6b4-c043-f5eb-b36f-e355a08eab49",
				version = 2,
			},
		},
	},
	[192] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Omega",
				uuid = "2acf2aca-fd19-1838-9f6d-03d24baada7e",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal chain=S.omega\nif chain and chain.stage~=0 then\n if chain.spacingStage~=chain.stage then\n  chain.spacingStage=chain.stage;chain.spacingNearHits=0;chain.spacingFarHits=0;chain.spacingNearHolder=nil;chain.spacingFarHolder=nil\n end\n if eventArgs.spellID==31625 or eventArgs.spellID==31626 then\n  chain.spacingNearHits=chain.spacingNearHits+1;chain.spacingNearHolder=eventArgs.targetID\n elseif eventArgs.spellID==33040 or eventArgs.spellID==33041 then\n  chain.spacingFarHits=chain.spacingFarHits+1;chain.spacingFarHolder=eventArgs.targetID\n end\nend\n\nlocal ownHit=false\nfor _,id in ipairs(eventArgs.hitTargets) do if p and id==p.id then ownHit=true;break end end\nif ownHit then\n if S.omega and S.omega.stage~=0 then S.omega.personalDoneStage=S.omega.stage end\n if S.goal and string.find(S.goal.key,'omega-role-',1,true)==1 then S.clearGoal() end\nend\nif eventArgs.spellID~=31625 and eventArgs.spellID~=31626 then self.used=true return end\nlocal o=S.omega\nif not o or Now()-o.lastNear<500 then self.used=true return end\no.lastNear=Now();o.nearHits=o.nearHits+1\nif o.nearHits==3 then\n S.go('omega-worlds-done-'..o.stage,{x=100,z=100},'Bounces done, go middle',2,1.2)\n o.stage=0\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"50b201a4-57e9-8c19-b3a7-20d7715e7ce9",
									true,
								},
							},
							name = "[P5 Omega] World bounces resolved",
							uuid = "e78567fa-c1e2-cdda-a342-e230d50225c3",
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
							conditionLua = "return eventArgs.spellID==31625 or eventArgs.spellID==31626 or eventArgs.spellID==33040 or eventArgs.spellID==33041",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "50b201a4-57e9-8c19-b3a7-20d7715e7ce9",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				eventType = 2,
				loop = true,
				mechanicTime = 945.4,
				name = "[P5 Omega] World bounces resolved",
				timeRange = true,
				timelineIndex = 192,
				timerEndOffset = 24,
				timerStartOffset = -2,
				uuid = "18d22685-4026-0880-b7a8-7fdf092dbc52",
				version = 2,
			},
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Omega",
				uuid = "d97e557f-39aa-ce09-82a7-09c8b6be886e",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nif not S.bounceOrder then\n function S.bounceOrder()\n  local base={'T1','T2','H1','H2','M1','M2','R1','R2'}\n  local order,seen={},{}\n  for rank=1,8 do\n   local index=Settings.FFXIVMINION['LPDU_TOP_BouncePriority'..rank]\n   if index==nil then index=rank-1 end\n   local slot=base[index+1]\n   if not slot or seen[slot] then return base end\n   seen[slot]=true;order[rank]=slot\n  end\n  return order\n end\nend\n\nlocal o=S.omega\nlocal R=AnyoneCore.Roster\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not o or not R or not R.current() or not e then self.used=true return end\no.stage=1;o.heading=e.pos.h;o.monitorSide=eventArgs.spellID==31639 and math.pi/2 or -math.pi/2\no.monitorDeadline=Now()+eventArgs.channelTimeMax*1000;o.generation=o.generation+1\no.nearHits=0;o.roles={}\nlocal pool={}\nfor _,slot in ipairs(S.bounceOrder()) do\n local id=R.idOf(slot);local a=o.players[id]\n if a then\n  if a.order==1 and a.world then o.roles[id]=a.world\n  else pool[#pool+1]=id end\n end\nend\nif #pool~=6 then self.used=true return end\nlocal priority={};for i,id in ipairs(pool) do priority[id]=i end\nlocal selected,others={},{}\nfor _,id in ipairs(pool) do\n local a=o.players[id]\n if a.order==2 and a.world and a.dynamis==2 then selected[#selected+1]=id\n elseif not a.world and a.dynamis>=2 then others[#others+1]=id end\nend\ntable.sort(others,function(a,b)\n if o.players[a].dynamis~=o.players[b].dynamis then return o.players[a].dynamis>o.players[b].dynamis end\n return priority[a]<priority[b]\nend)\nfor _,id in ipairs(others) do if #selected<2 then selected[#selected+1]=id end end\nif #selected~=2 then self.used=true return end\ntable.sort(selected,function(a,b)return priority[a]<priority[b]end)\nlocal chosen={[selected[1]]=true,[selected[2]]=true}\nlocal ordered={selected[1],selected[2]}\nfor _,id in ipairs(pool)do if not chosen[id]then ordered[#ordered+1]=id end end\npool=ordered\no.roles[pool[1]]='monitor1';o.roles[pool[2]]='monitor2'\nlocal rest={};for i=3,6 do rest[#rest+1]=pool[i] end\ntable.sort(rest,function(a,b)return priority[a]<priority[b] end)\nfor i,id in ipairs(rest) do o.roles[id]=({'far1','near1','near2','far2'})[i] end\nself.used=true\n",
							conditions = 
							{
								
								{
									"ad8f8734-dea4-2a1a-905f-fced69a8ebe9",
									true,
								},
							},
							name = "[P5 Omega] Assign monitor and first worlds 31638",
							uuid = "ccf9ce79-fba1-1dd3-8e50-b2601553d401",
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
							eventSpellID = 31638,
							name = "Matching mechanic",
							uuid = "ad8f8734-dea4-2a1a-905f-fced69a8ebe9",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				eventType = 3,
				loop = true,
				mechanicTime = 945.8,
				name = "[P5 Omega] Assign monitor and first worlds 31638",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "2a029f41-f963-4a85-8b7b-e193d56ef5e6",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nif not S.bounceOrder then\n function S.bounceOrder()\n  local base={'T1','T2','H1','H2','M1','M2','R1','R2'}\n  local order,seen={},{}\n  for rank=1,8 do\n   local index=Settings.FFXIVMINION['LPDU_TOP_BouncePriority'..rank]\n   if index==nil then index=rank-1 end\n   local slot=base[index+1]\n   if not slot or seen[slot] then return base end\n   seen[slot]=true;order[rank]=slot\n  end\n  return order\n end\nend\n\nlocal o=S.omega\nlocal R=AnyoneCore.Roster\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not o or not R or not R.current() or not e then self.used=true return end\no.stage=1;o.heading=e.pos.h;o.monitorSide=eventArgs.spellID==31639 and math.pi/2 or -math.pi/2\no.monitorDeadline=Now()+eventArgs.channelTimeMax*1000;o.generation=o.generation+1\no.nearHits=0;o.roles={}\nlocal pool={}\nfor _,slot in ipairs(S.bounceOrder()) do\n local id=R.idOf(slot);local a=o.players[id]\n if a then\n  if a.order==1 and a.world then o.roles[id]=a.world\n  else pool[#pool+1]=id end\n end\nend\nif #pool~=6 then self.used=true return end\nlocal priority={};for i,id in ipairs(pool) do priority[id]=i end\nlocal selected,others={},{}\nfor _,id in ipairs(pool) do\n local a=o.players[id]\n if a.order==2 and a.world and a.dynamis==2 then selected[#selected+1]=id\n elseif not a.world and a.dynamis>=2 then others[#others+1]=id end\nend\ntable.sort(others,function(a,b)\n if o.players[a].dynamis~=o.players[b].dynamis then return o.players[a].dynamis>o.players[b].dynamis end\n return priority[a]<priority[b]\nend)\nfor _,id in ipairs(others) do if #selected<2 then selected[#selected+1]=id end end\nif #selected~=2 then self.used=true return end\ntable.sort(selected,function(a,b)return priority[a]<priority[b]end)\nlocal chosen={[selected[1]]=true,[selected[2]]=true}\nlocal ordered={selected[1],selected[2]}\nfor _,id in ipairs(pool)do if not chosen[id]then ordered[#ordered+1]=id end end\npool=ordered\no.roles[pool[1]]='monitor1';o.roles[pool[2]]='monitor2'\nlocal rest={};for i=3,6 do rest[#rest+1]=pool[i] end\ntable.sort(rest,function(a,b)return priority[a]<priority[b] end)\nfor i,id in ipairs(rest) do o.roles[id]=({'far1','near1','near2','far2'})[i] end\nself.used=true\n",
							conditions = 
							{
								
								{
									"d6874798-c226-7ae9-9cc7-c0e969c21ef9",
									true,
								},
							},
							name = "[P5 Omega] Assign monitor and first worlds 31639",
							uuid = "c5934785-f8f4-2a87-873c-b4e462f4f86b",
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
							eventSpellID = 31639,
							name = "Matching mechanic",
							uuid = "d6874798-c226-7ae9-9cc7-c0e969c21ef9",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				eventType = 3,
				loop = true,
				mechanicTime = 945.8,
				name = "[P5 Omega] Assign monitor and first worlds 31639",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "db403c59-76be-aaa8-88c1-1af621afea45",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal o=S.omega\nif not o or not S.ready() or o.stage==0 then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal role=o.roles[p.id]\nif o.amStage~=o.stage then\n o.markerGraceStarted=Now();o.amStage=o.stage;o.amRoles=nil;o.amSignature=nil;o.amSince=Now()\nend\nif Settings.FFXIVMINION.LPDU_TOP_BounceAssignments~=2 then\n local mapping={[1]='far1',[2]='near1',[3]='near2',[4]='far2',[6]='monitor1',[7]='monitor2',[13]='far',[14]='near'}\n local picked,seen,parts={},{},{}\n local valid=true\n for _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n  local e=AnyoneCore.Roster.entOf(slot)\n  local assigned=mapping[e.marker]\n  if not assigned or seen[e.marker] then valid=false;break end\n  if assigned=='near' and not TensorCore.hasBuff(e,3442) then valid=false;break end\n  if assigned=='far' and not TensorCore.hasBuff(e,3443) then valid=false;break end\n  seen[e.marker]=true;picked[e.id]=assigned;parts[#parts+1]=tostring(e.id)..':'..tostring(e.marker)\n end\n local signature=valid and table.concat(parts,',') or nil\n if signature~=o.amSignature then\n  o.amSignature=signature;o.amSince=Now()\n end\n if valid and Now()-o.amSince>=500 then\n  o.amRoles=picked\n end\n if o.amRoles then\n  role=o.amRoles[p.id] or role\n  if o.stage==2 then if role=='monitor1' then role='tether1' elseif role=='monitor2' then role='tether2' end end\n end\nend\nif not o.markerGraceStarted then o.markerGraceStarted=Now() end\nif Settings.FFXIVMINION.LPDU_TOP_BounceAssignments~=2 and not o.amRoles and Now()-o.markerGraceStarted<1500 then self.used=true return end\nif not role then self.used=true return end\nlocal pos,text\nlocal key='omega-role-'..o.stage..'-'..role\nlocal deadline\nif o.stage==1 then\n local h,a=o.heading,o.monitorSide\n local angles={near=h-a,far=h+2.05*a,far1=h-.05*a,near1=h-.95*a,near2=h-1.05*a,far2=h-1.95*a,monitor1=h+.5*a,monitor2=h+1.5*a}\n local radius=(role=='near' or role=='far') and 10 or (role=='monitor1' or role=='monitor2') and 15 or 19\n local angle=angles[role]\n pos={x=100+radius*math.sin(angle),y=p.pos.y,z=100+radius*math.cos(angle)}\n text=role=='monitor1' and 'Soak north monitor' or role=='monitor2' and 'Soak south monitor' or role=='near' and 'Near world, go to safe side' or role=='far' and 'Distant world, go opposite' or role=='far1' and 'Bait first far bounce at wall' or role=='far2' and 'Bait second far bounce at wall' or role=='near1' and 'Bait first near bounce' or 'Bait second near bounce'\n deadline=o.monitorDeadline+2200\nelse\n local nx,nz=o.nx,o.nz\n if not nx then self.used=true return end\n local function rel(x,z) return {x=100-nz*x-nx*z,y=p.pos.y,z=100+nx*x-nz*z} end\n local spots={near=rel(0,10),far=rel(-10,0),far1=rel(19,0),near1=rel(5,18),near2=rel(-5,18),far2=rel(-19,0),tether1=rel(10,-16),tether2=rel(-10,-16)}\n pos=spots[role]\n text=role=='near' and 'Near world south, inside ring' or role=='far' and 'Distant world west, inside ring' or role=='far1' and 'Bait first far bounce east wall' or role=='far2' and 'Bait second far bounce west wall' or role=='near1' and 'Bait first near bounce southeast' or role=='near2' and 'Bait second near bounce southwest' or 'Take your blaster tether, go north'\n deadline=o.blasterDeadline+3800\n if role=='tether1' or role=='tether2' then\n  local tethers={};local seen={};local own=false\n  for source,list in pairs(Argus.getCurrentTethers()) do for _,t in ipairs(list) do if t.type==89 then\n   local sourceRole=AnyoneCore.Roster.slotOf(source)\n   local raid=sourceRole and TensorCore.mGetEntity(source) or TensorCore.mGetEntity(t.targetid)\n   local boss=sourceRole and TensorCore.mGetEntity(t.targetid) or TensorCore.mGetEntity(source)\n   if raid and boss and AnyoneCore.Roster.slotOf(raid.id) and not seen[raid.id] then\n     seen[raid.id]=true\n    if raid.id==p.id then own=true end\n    tethers[#tethers+1]={raid=raid,boss=boss,lateral=-(raid.pos.x-100)*nz+(raid.pos.z-100)*nx}\n   end\n  end end end\n  if own then text=role=='tether1' and 'Tether taken, go northeast wall' or 'Tether taken, go northwest wall'\n  elseif #tethers==2 then\n   table.sort(tethers,function(a,b)return a.lateral>b.lateral end)\n   local t=tethers[role=='tether1' and 1 or 2]\n   pos={x=t.raid.pos.x*.75+t.boss.pos.x*.25,y=p.pos.y,z=t.raid.pos.z*.75+t.boss.pos.z*.25}\n   text=role=='tether1' and 'Take east blaster tether now' or 'Take west blaster tether now'\n   key=key..'-pickup'\n  end\n end\nend\n-- Resolve the near pair as a pair: the old +/-4.5-degree points overlapped.\nif role=='near1' or role=='near2' then\n local assignments=o.amRoles or o.roles\n local firstID,secondID,worldID\n for id,assigned in pairs(assignments) do\n  if assigned=='near1' then firstID=id elseif assigned=='near2' then secondID=id elseif assigned=='near' then worldID=id end\n end\n local first=firstID and TensorCore.mGetEntity(firstID)\n local second=secondID and TensorCore.mGetEntity(secondID)\n local world=worldID and TensorCore.mGetEntity(worldID)\n local signature=tostring(o.stage)..':'..tostring(firstID)..':'..tostring(secondID)..':'..tostring(worldID)\n if first and second and world and first.pos and second.pos and world.pos then\n  if not o.nearPairPlan or o.nearPairPlan.signature~=signature then\n   local axis=o.stage==1 and (o.heading-o.monitorSide) or math.atan2(-o.nx,-o.nz)\n   local best,cost\n   local function dist(a,b)return math.sqrt((a.x-b.x)^2+(a.z-b.z)^2)end\n   for _,sign in ipairs({-1,1}) do\n    for _,r1 in ipairs({18,18.4,18.8,19.2}) do\n     for _,r2 in ipairs({18,18.4,18.8,19.2}) do\n      for _,offset1 in ipairs({.18,.24,.30}) do\n       for _,offset2 in ipairs({.18,.24,.30}) do\n        local a={x=100+r1*math.sin(axis+sign*offset1),y=p.pos.y,z=100+r1*math.cos(axis+sign*offset1)}\n        local b={x=100+r2*math.sin(axis-sign*offset2),y=p.pos.y,z=100+r2*math.cos(axis-sign*offset2)}\n        local da,db=dist(a,world.pos),dist(b,world.pos)\n        if da>=8.6 and db>=8.6 and da+.4<=db and dist(a,b)>=5 then\n         local rank=dist(a,first.pos)^2+dist(b,second.pos)^2\n         if not cost or rank<cost then cost=rank;best={[firstID]=a,[secondID]=b,signature=signature} end\n        end\n       end\n      end\n     end\n    end\n   end\n   -- Preserve a pair already correctly baiting; exact nominal points are unnecessary.\n   local function onSide(q)\n    local dx,dz=q.x-100,q.z-100\n    return dx*dx+dz*dz<=19.6^2 and dx*math.sin(axis)+dz*math.cos(axis)>15\n   end\n   local da,db=dist(first.pos,world.pos),dist(second.pos,world.pos)\n   if onSide(first.pos) and onSide(second.pos) and da>=8.6 and db>=8.6 and da+.4<=db and dist(first.pos,second.pos)>=5 then\n    best={[firstID]={x=first.pos.x,y=p.pos.y,z=first.pos.z},[secondID]={x=second.pos.x,y=p.pos.y,z=second.pos.z},signature=signature}\n   end\n   if best then o.nearPairPlan=best end\n  end\n  pos=o.nearPairPlan and o.nearPairPlan.signature==signature and o.nearPairPlan[p.id] or nil\n else pos=nil end\n if not pos then\n  if S.goal and string.find(S.goal.key,'omega-role-',1,true)==1 then S.clearGoal() end\n end\nend\nif not pos or not deadline then self.used=true return end\n-- Only bounce receivers see one relevant spacing circle, briefly before their chain.\nlocal nearBounce=role=='near1' or role=='near2'\nlocal farBounce=role=='far1' or role=='far2'\nif nearBounce or farBounce then\n local initial=(o.stage==1 and o.monitorDeadline+700 or o.blasterDeadline+700)\n if Now()>=initial-3000 and Now()<deadline then\n  local hits=o.spacingStage==o.stage and (nearBounce and o.spacingNearHits or o.spacingFarHits) or 0\n  hits=hits or 0\n  local holderRole=nearBounce and 'near' or 'far'\n  local second=role=='near2' or role=='far2'\n  if second and hits>=2 then holderRole=nearBounce and 'near1' or 'far1' end\n  local radius=hits==0 and 8 or 4\n  local assignments=o.amRoles or o.roles\n  local holderID=o.spacingStage==o.stage and (nearBounce and o.spacingNearHolder or o.spacingFarHolder)\n  local holder=holderID and TensorCore.mGetEntity(holderID)\n  for id,assigned in pairs(assignments) do if not holder and assigned==holderRole then holder=TensorCore.mGetEntity(id);break end end\n  if holder and holder.pos then\n   local drawer=TensorCore.getCachedFlatDrawer(0x403333FF,0x403333FF,0x403333FF,0xFF3333FF,2,0,0)\n   local old=o.spacingCircle\n   if not old or not drawer:updateTimedCircle(old,450,holder.pos.x,0,holder.pos.z,radius,0,false,true,0) then\n    o.spacingCircle=S.keep(drawer:addTimedCircle(450,holder.pos.x,0,holder.pos.z,radius,0,false,true,0))\n   end\n  end\n end\nend\n\nlocal seconds=math.max(.2,(deadline-Now())/1000)\nif S.goal and S.goal.key==key then S.goal.pos=pos;S.goal.expires=deadline end\nif S.go(key,pos,text,seconds,.8) then\n if not o.timers then o.timers={} end\n if not o.timers[key] then\n  o.timers[key]=true\n  local ms=math.max(100,(o.stage==1 and o.monitorDeadline or o.blasterDeadline)-Now())\n  AnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=p.pos.y+2,z=pos.z},0xFF33FF33,true,1.2)\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"4effed8b-ba96-94da-9181-3b37e95e3ca4",
									true,
								},
							},
							name = "[P5 Omega] Personal world monitor and tether steps",
							uuid = "17b5dd0b-35e2-62ce-89dc-bae37da42ecd",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and (S.omega~=nil and S.omega.stage~=0 and S.omega.personalDoneStage~=S.omega.stage)",
							name = "Relevant mechanic",
							uuid = "4effed8b-ba96-94da-9181-3b37e95e3ca4",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				loop = true,
				mechanicTime = 945.8,
				name = "[P5 Omega] Personal world monitor and tether steps",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 26,
				timerStartOffset = -12,
				uuid = "20726eba-55e1-33c3-be1d-a02bf4111cc2",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nlocal b=S and S.p5BounceCircles\nif b then\n for _,shape in pairs(b.draws or {})do Argus.deleteTimedShape(shape.id);S.owned[shape.id]=nil end\n b.draws={}\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"43992b8c-d0f0-50fd-a2d0-b1898d68cc7a",
									true,
								},
							},
							name = "[P5 Omega] Predicted near and far bounce circles",
							uuid = "4788149d-e32b-e388-b30e-d508a4b71c52",
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
							conditionLua = "local S=data.topLpdu;local b=S and S.p5BounceCircles;return b and b.draws and next(b.draws) or false",
							name = "Remove previous bounce circles",
							uuid = "43992b8c-d0f0-50fd-a2d0-b1898d68cc7a",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				loop = true,
				mechanicTime = 945.8,
				name = "[P5 Omega] Predicted near and far bounce circles",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 45,
				timerStartOffset = -15,
				uuid = "41276ebf-2b3d-f9c3-979c-e9b4b1071914",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal b=S.p5BounceCircles\nif b then\n local kind=(eventArgs.spellID==31625 or eventArgs.spellID==31626) and 'near' or 'far'\n local stamp=tostring(eventArgs.spellID)..':'..tostring(eventArgs.targetID)\n b.seen=b.seen or {}\n if not b.seen[stamp] or Now()-b.seen[stamp]>500 then\n  b.seen[stamp]=Now();b[kind]=eventArgs.targetID;b[kind..'Done']=math.min(3,b[kind..'Done']+1)\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"c25749cb-acec-e9d9-8a65-f4ba3e6a7860",
									true,
								},
							},
							name = "[P5 Omega] Advance near and far circle chain",
							uuid = "7496a479-b5fd-5b41-b06d-d6a170e61d62",
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
							conditionLua = "return eventArgs.spellID==31625 or eventArgs.spellID==31626 or eventArgs.spellID==33040 or eventArgs.spellID==33041",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "c25749cb-acec-e9d9-8a65-f4ba3e6a7860",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				enabled = false,
				eventType = 2,
				loop = true,
				mechanicTime = 945.8,
				name = "[P5 Omega] Advance near and far circle chain",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 45,
				timerStartOffset = -15,
				uuid = "9a2ed590-b8fd-8d1f-97cb-dd919af3cfb8",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal w=S.p5MarkerWriter\nlocal p=TensorCore.mGetPlayer()\nlocal function restore()\n if w and w.target and p.targetid==w.target and w.previous and w.previous~=0 then Player:SetTarget(w.previous)end\n if w then w.target=nil;w.previous=nil end\nend\nif Settings.FFXIVMINION.LPDU_TOP_AM_omega~=1 or not S.ready() then restore();self.used=true return end\nlocal phase='omega'\nlocal source=phase=='sigma' and S.sigma and S.sigma.laser or S.omega\nlocal stage=phase=='sigma' and 1 or source and source.stage or 0\nlocal roles=source and source.roles\nif not roles or stage==0 then restore();self.used=true return end\nlocal key=phase..stage\nif not w then w={owned={}};S.p5MarkerWriter=w end\nif w.key~=key then\n restore();w.key=key;w.start=Now();w.index=1;w.pending=nil;w.done=nil;w.blocked=nil;w.queue=nil\nend\nif w.done or w.blocked or Now()-w.start<1800 then self.used=true return end\nlocal marker={far1=1,near1=2,near2=3,far2=4,fist1=6,fist2=7,monitor1=6,monitor2=7,tether1=6,tether2=7,far=13,near=14}\nlocal commands={[1]='attack1',[2]='attack2',[3]='attack3',[4]='attack4',[6]='bind1',[7]='bind2',[13]='cross',[14]='triangle'}\nlocal queue,seen={},{}\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'})do\n local e=AnyoneCore.Roster.entOf(slot);local m=marker[roles[e.id]]\n if not m or seen[m] then restore();self.used=true return end\n seen[m]=true;queue[#queue+1]={id=e.id,marker=m}\n -- An acknowledged write may legitimately have changed this player's marker.\n local pending=w.pending and w.pending.id==e.id and w.pending.marker==e.marker\n if e.marker and e.marker~=0 and w.owned[e.id]~=e.marker and not pending then\n  w.blocked=true;restore();self.used=true return\n end\nend\nw.queue=queue\nif w.pending then\n local e=TensorCore.mGetEntity(w.pending.id)\n if e and e.marker==w.pending.marker then\n  w.owned[e.id]=e.marker;w.pending=nil;w.index=w.index+1;restore()\n elseif Now()-w.sent>1200 then w.blocked=true;restore()\n end\n self.used=true return\nend\nlocal nextMark=w.queue[w.index]\nif not nextMark then w.done=true;restore();self.used=true return end\nlocal e=TensorCore.mGetEntity(nextMark.id)\nif not e then w.blocked=true;restore();self.used=true return end\nif e.marker==nextMark.marker then w.index=w.index+1;self.used=true return end\nif w.target~=e.id then\n w.previous=p.targetid;w.target=e.id;Player:SetTarget(e.id);self.used=true return\nend\nif p.targetid~=e.id then w.blocked=true;restore();self.used=true return end\nSendTextCommand('/mk '..commands[nextMark.marker]..' <t>')\nw.pending=nextMark;w.sent=Now()\nself.used=true\n",
							conditions = 
							{
								
								{
									"40dd6856-581b-be65-b4e3-12a2cccec569",
									true,
								},
							},
							name = "[P5 Omega] Optional owned LPDU markers",
							uuid = "ba5f0268-f9f4-9002-b411-c6d47ce2a5bc",
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
							conditionLua = "local S=data.topLpdu;return S and (Settings.FFXIVMINION.LPDU_TOP_AM_omega==1 or S.p5MarkerWriter and S.p5MarkerWriter.target) or false",
							name = "Matching mechanic",
							uuid = "40dd6856-581b-be65-b4e3-12a2cccec569",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				loop = true,
				mechanicTime = 945.8,
				name = "[P5 Omega] Optional owned LPDU markers",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 45,
				timerStartOffset = -15,
				uuid = "e7ae862b-9654-51a5-97c2-7667f2608970",
				version = 2,
			},
		},
	},
	[199] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5\\Omega",
				uuid = "eba2a2c5-ca6a-8c08-a950-d58957a51918",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nif not S.bounceOrder then\n function S.bounceOrder()\n  local base={'T1','T2','H1','H2','M1','M2','R1','R2'}\n  local order,seen={},{}\n  for rank=1,8 do\n   local index=Settings.FFXIVMINION['LPDU_TOP_BouncePriority'..rank]\n   if index==nil then index=rank-1 end\n   local slot=base[index+1]\n   if not slot or seen[slot] then return base end\n   seen[slot]=true;order[rank]=slot\n  end\n  return order\n end\nend\n\nlocal o=S.omega\nlocal R=AnyoneCore.Roster\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not o or not S.ready() or not e then self.used=true return end\nif o.stage==2 then self.used=true return end\no.stage=2;o.generation=o.generation+1;o.nearHits=0;o.roles={}\nlocal dx,dz=e.pos.x-100,e.pos.z-100\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length<5 then\n for _,beetle in pairs(TensorCore.entityList('contentid=7695')) do if Argus.getEntityModel(beetle)==15724 then dx=beetle.pos.x-100;dz=beetle.pos.z-100;length=math.sqrt(dx*dx+dz*dz);break end end\nend\nif length<5 then self.used=true return end\no.nx,o.nz=dx/length,dz/length;o.blasterDeadline=Now()+eventArgs.channelTimeMax*1000\nlocal candidates,others={},{}\nfor _,slot in ipairs(S.bounceOrder()) do\n local id=R.idOf(slot);local a=o.players[id]\n if not a then self.used=true return end\n if a.order==2 and a.world then o.roles[id]=a.world\n elseif a.dynamis>=3 then candidates[#candidates+1]=id\n else others[#others+1]=id end\nend\nif #candidates~=2 or #others~=4 then self.used=true return end\no.roles[candidates[1]]='tether1';o.roles[candidates[2]]='tether2'\nfor i,id in ipairs(others) do o.roles[id]=({'far1','near1','near2','far2'})[i] end\nself.used=true\n",
							conditions = 
							{
								
								{
									"7579d615-593d-7a0f-b4ce-bef3f7980cbb",
									true,
								},
							},
							name = "[P5 Omega] Assign second worlds and tether pickups",
							uuid = "d83b23ff-0080-bbc8-996c-6718f0342fd2",
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
							eventSpellID = 32374,
							name = "Matching mechanic",
							uuid = "7579d615-593d-7a0f-b4ce-bef3f7980cbb",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Omega",
				eventType = 3,
				loop = true,
				mechanicTime = 961.6,
				name = "[P5 Omega] Assign second worlds and tether pickups",
				timeRange = true,
				timelineIndex = 199,
				timerEndOffset = 1,
				timerStartOffset = -14,
				uuid = "5a8782af-c116-a41e-a9c7-ad8673ec72de",
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
				name = "Orientation",
				uuid = "4a7259bd-99db-70d8-9e36-06b1bfb32c9f",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal p=TensorCore.mGetPlayer()\nlocal R=AnyoneCore.Roster\nif not p or not p.pos or not R or not R.current() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12258')) do\n if Argus.getEntityModel(e)==15720 and e.targetable and e.alive and e.targetid==p.id then boss=e; break end\nend\nif not boss or not boss.pos then self.used=true return end\nlocal error=math.abs(math.atan2(math.sin(boss.pos.h-math.pi),math.cos(boss.pos.h-math.pi)))\nlocal key='face-omega-end'\nif error<math.rad(20) then\n if S.goal and S.goal.key==key then S.clearGoal() end\n self.used=true return\nend\nif boss.castinginfo.channelingid~=0 then self.used=true return end\nS.go(key,{x=boss.pos.x,y=boss.pos.y,z=boss.pos.z-boss.hitradius-1.5},'You have aggro, face boss north',3.5,0.8)\nself.used=true\n",
							name = "[Aggro] Face boss north - omega-end",
							uuid = "529af548-e9e8-da7b-83c9-de97e8677a78",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Orientation",
				enabled = false,
				loop = true,
				mechanicTime = 967.7,
				name = "[Aggro] Face boss north - omega-end",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = 4,
				uuid = "9ec096ae-0e63-3176-b1b8-2eed75b69979",
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
				name = "P5\\Tanks",
				uuid = "7c239cea-8de1-68e8-ba17-9433d4d844ea",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.solarWave=4\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal slot=R.mySlot()\nif (slot~='T1' and slot~='T2') or S.issued['solar-prep-4'] then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12257')) do\n if e.targetable and e.alive then boss=e; break end\nend\nif not boss then\n for _,e in pairs(TensorCore.entityList('contentid=12258')) do if e.targetable and e.alive then boss=e; break end end\nend\nif boss then\n S.issued['solar-prep-4']=true\n local plan=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\n if plan==nil or plan==4 then\n local waveDefault=4\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\n local holder=TensorCore.mGetEntity(boss.targetid)\n local active=false\n if holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then active=true end end end\n local owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or boss.targetid\n if active then owner=boss.targetid end\n if plan~=0 or active then\n  if p.id==owner then S.say(boss.targetid==p.id and 'Keep aggro, invuln both hits' or 'Provoke, invuln both hits',4)\n  else S.say('Other tank invulns, stay apart',3) end\n elseif slot=='T1' then\n  S.say(boss.targetid==p.id and 'Keep boss, prepare buster' or 'Provoke, take boss',3)\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"e83f3ffc-ecc4-44b9-853d-060e48553ef6",
									true,
								},
							},
							name = "[P5 Tank] MT establish aggro 4",
							uuid = "7bb0cb25-5a2e-d1ae-baad-47bf5a228ee9",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and not S.issued['solar-prep-4']",
							name = "Relevant mechanic",
							uuid = "e83f3ffc-ecc4-44b9-853d-060e48553ef6",
							version = 3,
						},
					},
				},
				displayPath = "P5\\Tanks",
				loop = true,
				mechanicTime = 976.8,
				name = "[P5 Tank] MT establish aggro 4",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = -5.1,
				timerStartOffset = -8,
				uuid = "a6ffaa69-f5e8-75f9-b3be-8aa898f1be4e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,content in ipairs({12257,12258}) do for _,e in pairs(TensorCore.entityList('contentid='..content)) do\n if Argus.getEntityModel(e)==15720 and e.targetable and e.alive then boss=e;break end\nend;if boss then break end end\nif not boss then self.used=true return end\nlocal plan=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\nif plan==nil or plan==4 then\n local waveDefault=4\n plan=waveDefault==2 and 2 or waveDefault==3 and 1 or 0\nend\nlocal owner=plan==1 and R.idOf('T1') or plan==2 and R.idOf('T2') or plan==3 and boss.targetid or R.idOf('T1')\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do if TensorCore.hasBuff(holder,id) then plan=3;owner=boss.targetid;break end end end\nS.solarPlaces=S.solarPlaces or {}\nlocal place=S.solarPlaces[4]\nif not place then\n local nx,nz=0,1\n if plan~=0 and 4~=4 then\n  local sx,sz=0,0\n  for _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do local e=R.entOf(role);sx=sx+e.pos.x-100;sz=sz+e.pos.z-100 end\n  local length=math.sqrt(sx*sx+sz*sz)\n  if length>3 then nx=-sx/length;nz=-sz/length end\n end\n local radius=19\n local a=math.atan2(nx,-nz)\n place={first={x=100+nx*radius,z=100+nz*radius},after=S.polar(a-math.pi/4,radius),owner=owner,plan=plan}\n S.solarPlaces[4]=place\nend\n-- C sets the pull direction; the tank destination is relative to the actual boss.\nlocal cx,cy,cz,active=Argus.getWaymarkInfo(3)\nlocal dx,dz=(active and cx or 100)-boss.pos.x,(active and cz or 119)-boss.pos.z\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length>.1 then\n local x,z=boss.pos.x+dx/length*7,boss.pos.z+dz/length*7\n local r=math.sqrt((x-100)^2+(z-100)^2)\n if r>19.2 then x=100+(x-100)*19.2/r;z=100+(z-100)*19.2/r end\n place.first={x=x,z=z}\nend\nlocal p=TensorCore.mGetPlayer()\nlocal pos,text\nif p.id==place.owner then\n pos=place.first;text=place.plan==0 and (4==4 and 'Pull toward C before buster' or 'Take boss north, prepare swap') or 'Opposite party, invuln both hits'\nelseif place.plan~=0 then pos={x=100-(place.first.x-100)*.35,z=100-(place.first.z-100)*.35};text='Stay with party, other tank invulns'\nelse pos={x=place.first.x+7,z=place.first.z+(place.first.z<100 and 3 or -6)};text='Prepare to provoke, stay apart' end\nS.go('p5-tank-prep-4',pos,text,7.5,1)\nself.used=true\n",
							name = "[P5 Tank] Buster 4 positions from plan",
							uuid = "696c06f3-ce41-ce90-8817-6fceb60afdd7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P5\\Tanks",
				loop = true,
				mechanicTime = 976.8,
				name = "[P5 Tank] Buster 4 positions from plan",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = -5.1,
				timerStartOffset = -7.8,
				uuid = "e94fb821-e2f3-4c19-a1d2-701a7b00daa5",
				version = 2,
			},
		},
	},
	[214] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "74b841f7-0aff-4a2f-902a-44e13ead8ddd",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal owner=Settings.FFXIVMINION.LPDU_TOP_P6AutoAggro1==1 and 'T2' or 'T1'\nlocal pos,text\nif slot==owner then pos={x=100,z=95};text='Take boss north'\nelseif slot=='T1' or slot=='T2' then pos={x=115,z=100};text='Bait far auto east'\nelse pos={x=100,z=111};text='Stack south' end\nS.go('p6-start',pos,text,8,1)\nself.used=true\n",
							conditions = 
							{
								
								{
									"4acb7fb7-ce04-daf7-b3bb-60760f190aff",
									true,
								},
							},
							name = "[P6] LPDU starting positions",
							uuid = "129f4127-30fc-4396-8e59-695c43c63ac6",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and not S.issued['p6-start']",
							name = "Relevant mechanic",
							uuid = "4acb7fb7-ce04-daf7-b3bb-60760f190aff",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1167.8,
				name = "[P6] LPDU starting positions",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -0.10000000149012,
				timerStartOffset = -9,
				uuid = "93b294fb-b2e9-8f4c-a915-e7180210e878",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=eventArgs\nlocal radius=e.aoeID==31666 and 10 or 6\nlocal ms=math.floor(e.duration*1000)\nif ms<=0 then self.used=true return end\nS.p6Puddles=S.p6Puddles or {}\nS.p6Puddles[#S.p6Puddles+1]={x=e.x,z=e.z,radius=radius,deadline=Now()+ms}\nS.keep(S.red:addTimedCircle(ms,e.x,e.y,e.z,radius,0,false,true,0))\nAnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1.5,z=e.z},0xFFFFFFFF,true,1.1)\nif e.aoeID==31663 then S.p6ExaMove=true end\nif e.aoeID==31666 and S.p6MeteorDestination and not S.p6MeteorReleased then\n S.p6MeteorReleased=true;S.p6MeteorReleaseAt=Now()\n local pos=S.p6MeteorDestination\n S.p6Plan={key='p6-meteor-spread',pos=pos,text='Hold meteor spread, stay apart',deadline=Now()+12500}\n local p=TensorCore.mGetPlayer()\n AnyoneCore.addWorldTextCountdown(5000,{x=pos.x,y=p.pos.y+2,z=pos.z},0xFF33FF33,true,1.2)\n local slot=AnyoneCore.Roster.mySlot()\n if slot=='T2' then S.say('Mitigate caster player',4) end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"f8576da2-84ab-d418-aab0-fafa092461c2",
									true,
								},
							},
							name = "[P6] Actual ground puddles and countdowns",
							uuid = "2db0f37f-7ed5-9830-b5d1-0c8bf22852af",
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
							conditionLua = "return eventArgs.aoeID==31663 or eventArgs.aoeID==31666",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "f8576da2-84ab-d418-aab0-fafa092461c2",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 18,
				loop = true,
				mechanicTime = 1167.8,
				name = "[P6] Actual ground puddles and countdowns",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 190,
				timerStartOffset = -15,
				uuid = "9bab02f4-408e-0ad3-8496-5d795a0e384e",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nif S.p6PendingFirstDive then\n local active=false\n for _,line in ipairs(S.cosmo and S.cosmo.lines or {})do\n  if line.left>0 and line.visible and line.deadline>Now()-300 then active=true;break end\n end\n if not active then\n  local nextPlan=S.p6PendingFirstDive;S.p6PendingFirstDive=nil\n  if nextPlan.deadline>Now() then\n   S.p6Plan=nextPlan\n   AnyoneCore.addWorldTextCountdown(nextPlan.deadline-Now(),{x=nextPlan.pos.x,y=2,z=nextPlan.pos.z},0xFF33FF33,true,1.2)\n  end\n end\nend\nif S.p6Plan and S.p6Plan.key=='p6-meteor-spread' and S.p6MeteorReleaseAt and Now()<S.p6MeteorReleaseAt+650 then\n if S.goal and (S.goal.key=='p6-meteor-spread' or string.find(S.goal.key,'p6-safe-',1,true)==1) then S.clearGoal() end\n self.used=true return\nend\nlocal plan=S.p6Plan\nif plan and plan.deadline<Now() then S.p6Plan=nil;plan=nil end\nlocal p=TensorCore.mGetPlayer()\n-- Meteor clocks are fixed assignments. Do not replace them with detour grid goals.\nif plan and plan.key=='p6-meteor-spread' then\n if S.goal and S.goal.key~=plan.key and string.find(S.goal.key,'p6-safe-',1,true)==1 then S.clearGoal() end\n S.go(plan.key,plan.pos,'Hold meteor spread, stay apart',math.max(.2,(plan.deadline-Now())/1000),.65)\n self.used=true return\nend\n\nlocal squares,exas,puddles={},{},{}\nlocal generation=''\nif S.cosmo then for _,l in ipairs(S.cosmo.lines) do if l.left>0 and l.visible and l.deadline>Now()-300 then squares[#squares+1]=l;generation=generation..l.left..':'..l.deadline end end end\nif S.exas then for _,l in ipairs(S.exas.lines) do\n if l.left>0 and l.deadline>Now()-300 then for i=0,math.min(1,l.left-1) do\n  exas[#exas+1]={x=l.x+l.dx*i,z=l.z+l.dz*i,radius=8}\n end;generation=generation..l.left..':'..l.deadline end\nend end\nfor i=#(S.p6Puddles or {}),1,-1 do\n local a=S.p6Puddles[i]\n if a.deadline<Now() then table.remove(S.p6Puddles,i) else puddles[#puddles+1]=a;generation=generation..a.deadline end\nend\nif not plan and #squares==0 and #exas==0 and #puddles==0 then\n if S.goal and string.sub(S.goal.key,1,8)=='p6-safe-' then S.clearGoal() end\n self.used=true return end\nlocal function safe(x,z)\n if (x-100)^2+(z-100)^2>19.4^2 then return false end\n for _,l in ipairs(squares) do\n  local dx,dz=x-l.x,z-l.z\n  local f=dx*math.sin(l.h)+dz*math.cos(l.h)\n  local a=dx*math.cos(l.h)-dz*math.sin(l.h)\n  if f>-.45 and f<(l.first and 40 or 100)+.45 and math.abs(a)<(l.first and 5 or 2.5)+.45 then return false end\n end\n for _,l in ipairs(exas) do if (x-l.x)^2+(z-l.z)^2<(l.radius+.45)^2 then return false end end\n for _,l in ipairs(puddles) do if (x-l.x)^2+(z-l.z)^2<(l.radius+.45)^2 then return false end end\n return true\nend\nlocal function reachable(pos)\n local vx,vz=pos.x-p.pos.x,pos.z-p.pos.z\n local len=vx*vx+vz*vz\n -- A player already inside a puddle must move continuously away from its centre.\n -- Otherwise the complete segment, not just its endpoint, must clear the circle.\n for _,list in ipairs({exas,puddles}) do for _,l in ipairs(list) do\n  local ax,az=p.pos.x-l.x,p.pos.z-l.z\n  local rr=(l.radius+.45)^2\n  if ax*ax+az*az<rr then\n   if ax*vx+az*vz<0 then return false end\n  else\n   local t=len>0 and math.max(0,math.min(1,-(ax*vx+az*vz)/len)) or 0\n   if (ax+vx*t)^2+(az+vz*t)^2<rr then return false end\n  end\n end end\n local escaped=safe(p.pos.x,p.pos.z)\n local steps=math.max(12,math.ceil(math.sqrt(len)/.25))\n for i=1,steps do\n  local t=i/steps\n  local good=safe(p.pos.x+(pos.x-p.pos.x)*t,p.pos.z+(pos.z-p.pos.z)*t)\n  if escaped and not good then return false end\n  escaped=escaped or good\n end\n return escaped\nend\nlocal desired=plan and plan.pos or p.pos\nlocal best,score\nif safe(desired.x,desired.z) and reachable(desired) then best=desired end\n-- Keep a safe detour until the assigned position is directly reachable.\n-- Player motion alone must not continually choose a different grid point.\nif not best and S.goal and string.sub(S.goal.key,1,8)=='p6-safe-' then\n local previous=S.goal.pos\n if safe(previous.x,previous.z) and reachable(previous) then best=previous end\nend\nif not best then\n for x=82,118,2 do for z=82,118,2 do\n  if safe(x,z) then\n   local a={x=x,y=p.pos.y,z=z}\n   if reachable(a) then\n    local d=(x-p.pos.x)^2+(z-p.pos.z)^2\n    local target=(x-desired.x)^2+(z-desired.z)^2\n    local rank=d+(plan and target*.6 or 0)\n    if not score or rank<score then score=rank;best=a end\n   end\n  end\n end end\nend\nif not best then\n if S.goal and (string.sub(S.goal.key,1,3)=='p6-' or (plan and S.goal.key==plan.key)) then S.clearGoal() end\n self.used=true return\nend\nlocal direct=plan and math.abs(best.x-desired.x)<.1 and math.abs(best.z-desired.z)<.1\nlocal key=direct and plan.key or 'p6-safe-'..(plan and plan.key or 'follow')..'-'..generation\nlocal meteor=plan and plan.key=='p6-meteor-spread'\nlocal text=meteor and 'Hold meteor spread, stay apart' or direct and plan.text or #squares>0 and 'Dodge to the green square' or 'Dodge puddles, follow the clear lane'\nif not plan and TensorCore.getDistance2d(p.pos,best)<.7 then self.used=true return end\nif S.goal and S.goal.key==key then S.goal.pos=best end\nif text=='Dodge to the green square' and S.cosmo then\n if not S.cosmo.squareAnnounced then\n  S.cosmo.squareAnnounced=true\n  S.say(text,3)\n end\n text=''\nelseif S.p6LastStepText==text then text='' else S.p6LastStepText=text end\nlocal hold=2.1\nfor _,l in ipairs(squares) do hold=math.max(hold,(l.deadline-Now())/1000+.3) end\nif S.exas then for _,l in ipairs(S.exas.lines) do if l.left>0 then hold=math.max(hold,(l.deadline-Now())/1000+.3) end end end\nfor _,l in ipairs(puddles) do hold=math.max(hold,(l.deadline-Now())/1000+.3) end\nif S.issued[key] and (not S.goal or S.goal.key~=key) then S.issued[key]=nil end\nS.p6ArrowOnlyPending=#puddles>0 or plan and (string.find(plan.key,'p6-exa-middle-',1,true)==1 or plan.key=='p6-meteor-middle')\nS.go(key,best,text,direct and math.max(.2,(plan.deadline-Now())/1000) or hold,.65)\nS.p6ArrowOnlyPending=nil\nself.used=true\n",
							conditions = 
							{
								
								{
									"cd1c8d03-daf7-cf75-94e3-a5e4d771356f",
									true,
								},
							},
							name = "[P6] Personal safe steps through squares and exaflares",
							uuid = "5fe097b9-0466-1cf6-916c-9e971615e4fc",
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
							conditionLua = "local S=data.topLpdu;if not S then return false end;if S.p6Plan or S.p6Puddles and next(S.p6Puddles) or S.goal and string.sub(S.goal.key,1,8)=='p6-safe-' then return true end;for _,q in ipairs({S.cosmo or {},S.exas or {}})do for _,l in ipairs(q.lines or {})do if l.left>0 and l.visible~=false and l.deadline>Now()-300 then return true end end end;return false",
							name = "Relevant geometry active",
							uuid = "cd1c8d03-daf7-cf75-94e3-a5e4d771356f",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1167.8,
				name = "[P6] Personal safe steps through squares and exaflares",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 188,
				timerStartOffset = -12,
				uuid = "5981c519-f728-4012-8025-a4b3146d7ec4",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif eventArgs.spellID==31654 then\n S.p6DiveShape={source=eventArgs.entityID,deadline=Now()+eventArgs.channelTimeMax*1000+2500}\nelse\n S.p6WildShape={source=eventArgs.entityID,deadline=Now()+eventArgs.channelTimeMax*1000,ready=Now()+5300}\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"b17b3776-0989-9016-be32-3989dc3847ef",
									true,
								},
							},
							name = "[P6] Track Dive and wild charge geometry",
							uuid = "52f19eaf-fb9c-89c1-ba1c-07f7dc5341fe",
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
							conditionLua = "return eventArgs.spellID==31654 or eventArgs.spellID==31657",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "b17b3776-0989-9016-be32-3989dc3847ef",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1167.8,
				name = "[P6] Track Dive and wild charge geometry",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 210,
				timerStartOffset = -10,
				uuid = "a350625d-ecbb-12ea-b1f8-67978f04ce88",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif eventArgs.spellID==31658 then S.p6WildShape=nil else S.p6DiveShape=nil end\nself.used=true\n",
							conditions = 
							{
								
								{
									"11c6dead-94d2-753d-8837-269b42108b2d",
									true,
								},
							},
							name = "[P6] Clear Dive and wild charge on hit",
							uuid = "7fec0dda-619f-c4f4-b3fb-0bfe7b3c9f1e",
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
							conditionLua = "return eventArgs.spellID==31655 or eventArgs.spellID==31656 or eventArgs.spellID==31658",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "11c6dead-94d2-753d-8837-269b42108b2d",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 2,
				loop = true,
				mechanicTime = 1167.8,
				name = "[P6] Clear Dive and wild charge on hit",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 210,
				timerStartOffset = -10,
				uuid = "96745b71-896a-438d-9296-d7ba83b6fc35",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal good=TensorCore.getCachedFlatDrawer(0x5033FF33,0x5033FF33,0x5033FF33,0xFF33FF33,3,0,0)\nlocal bad=TensorCore.getCachedFlatDrawer(0x503333FF,0x503333FF,0x503333FF,0xFF3333FF,3,0,0)\nlocal tank=R.mySlot()=='T1' or R.mySlot()=='T2'\nlocal dive=S.p6DiveShape\nif dive and dive.deadline>Now() then\n local diveGood=TensorCore.getCachedFlatDrawer(0x8C33FF33,0x8C33FF33,0x8C33FF33,0xFF33FF33,3,0,0)\n local diveBad=TensorCore.getCachedFlatDrawer(0x8C3333FF,0x8C3333FF,0x8C3333FF,0xFF3333FF,3,0,0)\n local diveSelf=TensorCore.getCachedFlatDrawer(0x8CFF6633,0x8CFF6633,0x8CFF6633,0xFFFF6633,3,0,0)\n local diveFlags=0\n if tank then diveBad=TensorCore.getCachedFlatDrawer(0x8C3333FF,0x8C3333FF,0x8C3333FF,0xFF000099,3,0,0) end\n local boss=TensorCore.mGetEntity(dive.source)\n if boss and boss.pos then\n  local party={}\n  for _,role in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n   local e=R.entOf(role);party[#party+1]={e=e,d=TensorCore.getDistance2d(e.pos,boss.pos)}\n  end\n  table.sort(party,function(a,b)return a.d<b.d end)\n  dive.draws=dive.draws or {}\n  local active={}\n  for _,i in ipairs({1,2,8}) do\n   local e=party[i].e;active[e.id]=true\n   local radius=i==8 and 6 or 8\n   local safe=i==8\n   local own=tank and i~=8 and e.id==p.id\n   local drawer=safe and diveGood or own and diveSelf or diveBad\n   local old=dive.draws[e.id]\n   if old and (old.safe~=safe or old.contrast~=tank or old.own~=own) then Argus.deleteTimedShape(old.id);S.owned[old.id]=nil;old=nil end\n   if not old or not drawer:updateTimedCircle(old.id,1500,e.pos.x,.08,e.pos.z,radius,0,false,true,diveFlags) then\n    dive.draws[e.id]={id=S.keep(drawer:addTimedCircle(1500,e.pos.x,.08,e.pos.z,radius,0,false,true,diveFlags)),safe=safe,contrast=tank,own=own}\n   end\n  end\n  for id,shape in pairs(dive.draws) do if not active[id] then Argus.deleteTimedShape(shape.id);S.owned[shape.id]=nil;dive.draws[id]=nil end end\n end\nend\nlocal wild=S.p6WildShape\nif wild and wild.deadline>Now() and Now()>=wild.ready then\n local boss=TensorCore.mGetEntity(wild.source)\n if boss and boss.pos then\n  local x,z=0,0\n  for _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do local e=R.entOf(role);x=x+e.pos.x;z=z+e.pos.z end\n  x,z=x/6,z/6\n  local h=math.atan2(x-boss.pos.x,z-boss.pos.z)\n  local front=math.huge\n  for _,role in ipairs({'H1','H2','M1','M2','R1','R2'})do\n   local e=R.entOf(role)\n   front=math.min(front,(e.pos.x-boss.pos.x)*math.sin(h)+(e.pos.z-boss.pos.z)*math.cos(h))\n  end\n  local safe=true\n  for _,role in ipairs({'T1','T2'})do\n   local e=R.entOf(role)\n   local vx,vz=e.pos.x-boss.pos.x,e.pos.z-boss.pos.z\n   local forward=vx*math.sin(h)+vz*math.cos(h)\n   local across=vx*math.cos(h)-vz*math.sin(h)\n   if not e.alive or forward<0 or forward>=front-.5 or math.abs(across)>=4 then safe=false end\n  end\n  if wild.draw and wild.safe~=safe then Argus.deleteTimedShape(wild.draw);S.owned[wild.draw]=nil;wild.draw=nil end\n  local drawer=safe and good or bad\n  local geom=wild.geometry\n  local moved=not geom or (boss.pos.x-geom.x)^2+(boss.pos.z-geom.z)^2>.0025 or math.abs(math.atan2(math.sin(h-geom.h),math.cos(h-geom.h)))>.02\n  if not wild.draw or moved or not wild.nextRefresh or Now()>=wild.nextRefresh then\n   wild.nextRefresh=Now()+500\n   if not wild.draw or not drawer:updateTimedRect(wild.draw,math.max(100,wild.deadline-Now()),boss.pos.x,.08,boss.pos.z,100,8,h,0,false,true,0) then\n    wild.draw=S.keep(drawer:addTimedRect(math.max(100,wild.deadline-Now()),boss.pos.x,.08,boss.pos.z,100,8,h,0,false,true,0))\n   end\n   wild.geometry={x=boss.pos.x,z=boss.pos.z,h=h}\n  end\n  wild.safe=safe\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"473ff59e-bfea-1569-8ad3-a8ebd1bbfd37",
									true,
								},
							},
							name = "[P6] Actual Dive circles and wild charge line",
							uuid = "defdce35-915a-6c2a-8c3a-6517c145880a",
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
							conditionLua = "local S=data.topLpdu;if not S then return false end;local d,w=S.p6DiveShape,S.p6WildShape;return d and d.deadline>Now() or w and w.deadline>Now() and Now()>=w.ready or false",
							name = "Relevant geometry active",
							uuid = "473ff59e-bfea-1569-8ad3-a8ebd1bbfd37",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1167.8,
				name = "[P6] Actual Dive circles and wild charge line",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 210,
				timerStartOffset = -10,
				uuid = "8c917f0f-b73a-a2f6-a289-41dcdc07bc70",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6\\Tanks",
				uuid = "e247e658-14d4-6f78-a056-722648a5faa3",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nif R and R.current() and R.mySlot()==(Settings.FFXIVMINION.LPDU_TOP_P6MemoryLB==1 and 'T2' or 'T1') then TensorCore.addAlertText(4000,'Tank LB3 NOW',2,3,true) end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif e and e.pos then AnyoneCore.addWorldTextCountdown(eventArgs.channelTimeMax*1000,{x=e.pos.x,y=e.pos.y+3,z=e.pos.z},0xFFFFFFFF,true,1.3) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"f3dee990-ec3a-dfaf-8df6-e54f5af72f6b",
									true,
								},
							},
							name = "[P6 Tank] Cosmo Memory LB",
							uuid = "4b99b83d-d6d2-9dd2-8e1a-1122f313c7a5",
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
							eventSpellID = 31649,
							name = "Matching mechanic",
							uuid = "f3dee990-ec3a-dfaf-8df6-e54f5af72f6b",
							version = 3,
						},
					},
				},
				displayPath = "P6\\Tanks",
				eventType = 3,
				loop = true,
				mechanicTime = 1167.8,
				name = "[P6 Tank] Cosmo Memory LB",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "3e6b5bb2-b9de-a6fb-8568-6e45876836ce",
				version = 2,
			},
		},
	},
	[216] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6\\Tanks",
				uuid = "265f16c1-486f-18c3-9364-12d8da9ad855",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal ownerSlot=Settings.FFXIVMINION.LPDU_TOP_P6AutoAggro1==1 and 'T2' or 'T1'\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do\n if TensorCore.hasBuff(holder,id) and (R.slotOf(holder.id)=='T1' or R.slotOf(holder.id)=='T2') then ownerSlot=R.slotOf(holder.id);break end\nend end\nlocal far=15\nfor _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do\n local e=R.entOf(role);local distance=math.sqrt((e.pos.x-100)^2+(e.pos.z-100)^2)\n far=math.max(far,math.min(19.5,distance+1))\nend\nlocal pos,text\npos=slot==ownerSlot and {x=100,z=95} or {x=100+1*far,z=100}\nif slot==ownerSlot then\n text=boss.targetid==R.idOf(slot) and 'Keep boss, stay apart' or 'Provoke, take boss, stay apart'\nelse text='Bait far auto, stay furthest' end\ntext=text..(Settings.FFXIVMINION['LPDU_TOP_P6Auto1_'..slot]==1 and ', invuln' or ', mitigate')\nlocal key='p6-autos-1'\nlocal assignment=ownerSlot..':'..slot\nS.p6AutoAssignments=S.p6AutoAssignments or {}\nif S.p6AutoAssignments[1]~=assignment then\n S.p6AutoAssignments[1]=assignment;S.issued[key]=nil\nend\nif S.goal and S.goal.key==key then S.goal.pos=pos end\nS.go(key,pos,text,7.7,1)\nself.used=true\n",
							name = "[P6 Tank] Autos 1 assigned aggro and far bait",
							uuid = "dd0c0dc3-97fa-6b45-a1ea-f2b8dd235e02",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6\\Tanks",
				loop = true,
				mechanicTime = 1172.8,
				name = "[P6 Tank] Autos 1 assigned aggro and far bait",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 216,
				timerEndOffset = 3.2999999523163,
				timerStartOffset = -4.5,
				uuid = "44f45f8a-bfdd-f6ee-bccf-50fd8900ffec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "9571c761-2c49-c05e-b708-17f112a2d910",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal targets={}\nlocal main=TensorCore.mGetEntity(boss.targetid)\nif main and AnyoneCore.Roster.slotOf(main.id) then targets[main.id]=main end\nlocal far,dist\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n local d=TensorCore.getDistance2d(e.pos,boss.pos)\n if not dist or d>dist then far=e;dist=d end\nend\nif far then targets[far.id]=far end\nS.p6AutoCircles=S.p6AutoCircles or {}\nlocal drawer=TensorCore.getCachedFlatDrawer(0x802020B0,0x802020B0,0x802020B0,0xFF1010CC,3,0,0)\nlocal remaining=math.max(100,math.floor((1176.8-TensorReactions_CurrentTimer)*1000))\nfor id,e in pairs(targets)do\n local old=S.p6AutoCircles[id]\n if type(old)=='number' or type(old)=='string' then Argus.deleteTimedShape(old);S.owned[old]=nil;old=nil;S.p6AutoCircles[id]=nil end\n if not old or Now()>=old.expires then\n  S.p6AutoCircles[id]={id=S.keep(drawer:addTimedCircleOnEnt(remaining,id,5,0,false,true,0)),expires=Now()+remaining}\n end\nend\nfor id,shape in pairs(S.p6AutoCircles)do if not targets[id]then\n local handle=type(shape)=='table' and shape.id or shape\n Argus.deleteTimedShape(handle);S.owned[handle]=nil;S.p6AutoCircles[id]=nil\nend end\nself.used=true\n",
							name = "[P6] Near and far auto circles 1",
							uuid = "b52a8353-9ebe-c07f-97c7-b1389bf5f2f8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1172.8,
				name = "[P6] Near and far auto circles 1",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 216,
				timerEndOffset = 4,
				timerStartOffset = -5,
				uuid = "31677b90-235f-f46f-87cb-4959723b8ecb",
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
				name = "Cast AoEs",
				uuid = "e250a291-eb73-e6b0-b119-f52cb63fd5e0",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedRect(ms,pos.x,pos.y,pos.z,40,10,pos.h,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"03b13d4c-8c20-1134-9778-a4bc40b7c687",
									true,
								},
							},
							name = "[AoE] Cosmo Arrow first",
							uuid = "3d7e48f5-6b05-6233-b6b4-14a9ea9297a5",
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
							eventSpellID = 31651,
							name = "Matching mechanic",
							uuid = "03b13d4c-8c20-1134-9778-a4bc40b7c687",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 1182.2,
				name = "[AoE] Cosmo Arrow first",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 105,
				timerStartOffset = -10,
				uuid = "5101d1d0-632b-aaa2-9d62-a886c68d34b0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6\\Cosmo Arrow",
				uuid = "a6d85400-2702-d13d-90da-2043d6193a43",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal q=S.cosmo\nif not q or Now()-q.started>20000 then q={started=Now(),lines={},draws={}}; S.cosmo=q end\nlocal x,z=e.pos.x-100,e.pos.z-100\nlocal dx,dz,n=0,0,7\nif math.abs(x)<5 then dx=1;n=4\nelseif math.abs(z)<5 then dz=1;n=4\nelseif math.abs(x)<18 then dx=x<0 and 1 or -1\nelseif math.abs(z)<18 then dz=z<0 and 1 or -1\nelse self.used=true return end\nlocal function line(ax,az,visible)\n q.lines[#q.lines+1]={x=e.pos.x,z=e.pos.z,y=e.pos.y,h=e.pos.h,dx=ax,dz=az,left=n,first=true,visible=visible,deadline=Now()+eventArgs.channelTimeMax*1000}\nend\nline(dx,dz,true)\nif n==4 then line(-dx,-dz,false) end\nq.dirty=true\nself.used=true\n",
							conditions = 
							{
								
								{
									"4a202986-ccd2-71d0-bb98-86dd4e3a095a",
									true,
								},
							},
							name = "[P6] Exasquare first wave",
							uuid = "1ef721ea-4c6f-e16a-ba3b-7430dc8e9317",
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
							eventSpellID = 31651,
							name = "Matching mechanic",
							uuid = "4a202986-ccd2-71d0-bb98-86dd4e3a095a",
							version = 3,
						},
					},
				},
				displayPath = "P6\\Cosmo Arrow",
				eventType = 3,
				loop = true,
				mechanicTime = 1182.2,
				name = "[P6] Exasquare first wave",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 180,
				timerStartOffset = -10,
				uuid = "9e420b94-6090-5461-8417-38ee61d63c7f",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal q=S.cosmo\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not q or not e or not e.pos then self.used=true return end\nfor _,l in ipairs(q.lines) do\n if l.left>0 and (l.x-e.pos.x)^2+(l.z-e.pos.z)^2<1 and l.deadline-Now()<1000 then\n  local d=l.first and 7.5 or 5\n  l.x=l.x+l.dx*d;l.z=l.z+l.dz*d;l.first=false;l.visible=true;l.left=l.left-1;l.deadline=Now()+2000;q.dirty=true\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"b3516518-447d-fa13-8339-66a61dcdceb9",
									true,
								},
							},
							name = "[P6] Advance exasquares",
							uuid = "d60821eb-5a60-6309-a399-f5cd4d229a1d",
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
							conditionLua = "return eventArgs.spellID==31651 or eventArgs.spellID==31652",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "b3516518-447d-fa13-8339-66a61dcdceb9",
							version = 3,
						},
					},
				},
				displayPath = "P6\\Cosmo Arrow",
				eventType = 2,
				loop = true,
				mechanicTime = 1182.2,
				name = "[P6] Advance exasquares",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 180,
				timerStartOffset = -10,
				uuid = "3a1467fa-e6ed-242f-bcb4-c053e083e129",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S or not S.cosmo then self.used=true return end\nlocal q=S.cosmo\nfor _,l in ipairs(q.lines)do if l.visible and l.left>0 and l.deadline<Now()-350 then l.left=0;q.dirty=true end end\nif not q.dirty and q.nextRenew and Now()<q.nextRenew then self.used=true return end\nq.dirty=false;q.nextRenew=Now()+650\nif not q.tileCache then\n for _,id in ipairs(q.draws or {})do Argus.deleteTimedShape(id);S.owned[id]=nil end\n q.draws={};q.tileCache={};q.hazardCache={}\nend\nlocal active,liveHazards={},{}\nlocal deadline=Now()\nfor index,l in ipairs(q.lines)do if l.left>0 and l.visible then active[#active+1]=l;liveHazards[index]=true;deadline=math.max(deadline,l.deadline+350)end end\nlocal ms=10000\nfor index,l in ipairs(q.lines)do if liveHazards[index]then\n local id=q.hazardCache[index]\n if not id or not S.red:updateTimedRect(id,ms,l.x,l.y+.08,l.z,l.first and 40 or 100,l.first and 10 or 5,l.h,0,false,true,S.flags)then\n  q.hazardCache[index]=S.keep(S.red:addTimedRect(ms,l.x,l.y+.08,l.z,l.first and 40 or 100,l.first and 10 or 5,l.h,0,false,true,S.flags))\n end\nend end\nfor index,id in pairs(q.hazardCache)do if not liveHazards[index]then Argus.deleteTimedShape(id);S.owned[id]=nil;q.hazardCache[index]=nil end end\nlocal tiles={}\nif #active>0 then\n local subtle=TensorCore.getStaticDrawer(0x1833FF33,1)\n for x=82,118,2 do for z=82,118,2 do\n  local safe=true\n  for _,ox in ipairs({-1,1})do for _,oz in ipairs({-1,1})do if (x+ox-100)^2+(z+oz-100)^2>19.8^2 then safe=false end end end\n  if safe then for _,l in ipairs(active)do\n   local dx,dz=x-l.x,z-l.z\n   local f=dx*math.sin(l.h)+dz*math.cos(l.h)\n   local across=dx*math.cos(l.h)-dz*math.sin(l.h)\n   local pad=math.abs(math.sin(l.h))+math.abs(math.cos(l.h))+.1\n   if f>=-pad and f<=(l.first and 40 or 100)+pad and math.abs(across)<=(l.first and 5 or 2.5)+pad then safe=false;break end\n  end end\n  if safe then\n   local key=x..':'..z;tiles[key]=true;local id=q.tileCache[key]\n   if not id or not subtle:updateTimedRect(id,ms,x,.08,z-1,2,2,0,0,false,true,0)then\n    q.tileCache[key]=S.keep(subtle:addTimedRect(ms,x,.08,z-1,2,2,0,0,false,true,0))\n   end\n  end\n end end\nend\nfor key,id in pairs(q.tileCache)do if not tiles[key]then Argus.deleteTimedShape(id);S.owned[id]=nil;q.tileCache[key]=nil end end\nself.used=true\n",
							conditions = 
							{
								
								{
									"dd9f5291-168c-08cc-ac2e-32d9e2dc43b3",
									true,
								},
							},
							name = "[P6] Green exasquare safe areas",
							uuid = "6c89b61e-c1e2-b78b-a318-7e89bc007ebb",
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
							conditionLua = "local S=data.topLpdu\nlocal q=S and S.cosmo\nreturn q and (q.dirty or ((q.tileCache and next(q.tileCache)) or (q.hazardCache and next(q.hazardCache))) and (not q.nextRenew or Now()>=q.nextRenew)) or false",
							name = "Grid changed or renewal due",
							uuid = "dd9f5291-168c-08cc-ac2e-32d9e2dc43b3",
							version = 3,
						},
					},
				},
				displayPath = "P6\\Cosmo Arrow",
				loop = true,
				mechanicTime = 1182.2,
				name = "[P6] Green exasquare safe areas",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 180,
				timerStartOffset = -10,
				uuid = "5ab866df-ded0-8f06-9434-bc4609d3f97a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "647a9e4c-3bc0-af70-8516-8538a0aa6172",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nS.p6Cosmo=(S.p6Cosmo or 0)+1\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal assignedSlot=slot\nif Settings.FFXIVMINION.LPDU_TOP_P6PhysicalRanged==1 then\n if slot=='R1' then assignedSlot='R2' elseif slot=='R2' then assignedSlot='R1' end\nend\nlocal spots={T1={94,88},R1={88,94},T2={106,88},R2={112,94},H1={94,112},M1={88,106},H2={106,112},M2={112,106}}\nlocal a=S.p6Cosmo==1 and (slot=='T1' and {92,92} or {108,108}) or spots[assignedSlot]\nif a then S.p6Plan={key='p6-cosmo-pair-'..S.p6Cosmo,pos={x=a[1],z=a[2]},text=S.p6Cosmo==1 and (slot=='T1' and 'Stay northwest, dodge on your side' or 'Go southeast, dodge with party') or 'Go to your assigned starting pair',deadline=Now()+24000} end\nself.used=true\n",
							conditions = 
							{
								
								{
									"3a5ff47c-ca97-d2e2-a561-57c5569bd5a7",
									true,
								},
							},
							name = "[P6] Assigned Cosmo Arrow starting pair",
							uuid = "e4924098-d2bb-fb3a-95cd-3a2a932b997d",
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
							eventSpellID = 31650,
							name = "Matching mechanic",
							uuid = "3a5ff47c-ca97-d2e2-a561-57c5569bd5a7",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1182.2,
				name = "[P6] Assigned Cosmo Arrow starting pair",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 90,
				timerStartOffset = -8,
				uuid = "9067e835-9dce-963d-890e-2c1fa4e688ca",
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
				uuid = "4f4c06b3-bef3-e16b-a55b-114d56db9e79",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nS.dives=(S.dives or 0)+1\nlocal seconds=eventArgs.channelTimeMax+2.5\nlocal pos,text\nif S.dives==1 then\n if slot=='T1' then pos={x=90,z=90};text='MT northwest, bait close'\n elseif slot=='T2' then pos={x=110,z=90};text='OT northeast, bait close'\n else pos={x=110,z=110};text='Stack southeast, stay far' end\nelse\n local sx,sz=0,0\n for _,member in ipairs({'H1','H2','M1','M2','R1','R2'}) do\n  local e=R.entOf(member); sx=sx+e.pos.x-100; sz=sz+e.pos.z-100\n end\n if sx*sx+sz*sz<4 then self.used=true return end\n local a=math.atan2(sx,-sz)\n if slot=='T1' then pos=S.polar(a+math.pi*3/4,10);text='MT through boss, go left'\n elseif slot=='T2' then pos=S.polar(a-math.pi*3/4,10);text='OT through boss, go right'\n else pos=S.polar(a,19);text='Stack outside, stay far' end\nend\nif slot=='T1' or slot=='T2' then\n text=text..(Settings.FFXIVMINION['LPDU_TOP_P6Dive'..S.dives..'_'..slot]==1 and ', invuln' or ', mitigate')\nend\nlocal previous=S.p6Plan\nS.p6Plan={key='p6-dive-'..S.dives,pos=pos,text=text,deadline=Now()+seconds*1000}\nif S.dives==1 and slot=='T2' and S.cosmo then S.p6PendingFirstDive=S.p6Plan;S.p6Plan=previous end\nlocal p=TensorCore.mGetPlayer()\nif not S.p6PendingFirstDive then AnyoneCore.addWorldTextCountdown(math.floor(seconds*1000),{x=pos.x,y=p.pos.y+2,z=pos.z},0xFF33FF33,true,1.2) end\nS.say('Prepare dive, follow the safe squares',3)\n\nself.used=true\n",
							conditions = 
							{
								
								{
									"1f4d7f7b-c917-3a26-9657-8ff91ee4e855",
									true,
								},
							},
							name = "[P6] Personal Cosmo Dive",
							uuid = "b9e61964-84bb-b25a-8e0d-ef3ebabc52d7",
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
							eventSpellID = 31654,
							name = "Matching mechanic",
							uuid = "1f4d7f7b-c917-3a26-9657-8ff91ee4e855",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1196.9,
				name = "[P6] Personal Cosmo Dive",
				timeRange = true,
				timelineIndex = 220,
				timerEndOffset = 121,
				timerStartOffset = -8,
				uuid = "b4509308-1d5c-0d23-9072-4e739501ad7e",
				version = 2,
			},
		},
	},
	[224] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6\\Tanks",
				uuid = "34e09989-5ad1-c3e5-82d3-5581c2e03add",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal ownerSlot=Settings.FFXIVMINION.LPDU_TOP_P6AutoAggro2==1 and 'T2' or 'T1'\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do\n if TensorCore.hasBuff(holder,id) and (R.slotOf(holder.id)=='T1' or R.slotOf(holder.id)=='T2') then ownerSlot=R.slotOf(holder.id);break end\nend end\nlocal far=15\nfor _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do\n local e=R.entOf(role);local distance=math.sqrt((e.pos.x-100)^2+(e.pos.z-100)^2)\n far=math.max(far,math.min(19.5,distance+1))\nend\nlocal pos,text\npos=slot==ownerSlot and {x=100,z=95} or {x=100+1*far,z=100}\nif slot==ownerSlot then\n text=boss.targetid==R.idOf(slot) and 'Keep boss, stay apart' or 'Provoke, take boss, stay apart'\nelse text='Bait far auto, stay furthest' end\ntext=text..(Settings.FFXIVMINION['LPDU_TOP_P6Auto2_'..slot]==1 and ', invuln' or ', mitigate')\nlocal key='p6-autos-2'\nlocal assignment=ownerSlot..':'..slot\nS.p6AutoAssignments=S.p6AutoAssignments or {}\nif S.p6AutoAssignments[2]~=assignment then\n S.p6AutoAssignments[2]=assignment;S.issued[key]=nil\nend\nif S.goal and S.goal.key==key then S.goal.pos=pos end\nS.go(key,pos,text,7.7,1)\nself.used=true\n",
							name = "[P6 Tank] Autos 2 assigned aggro and far bait",
							uuid = "35be0a3c-4e1b-7ee5-95b3-e0037951747c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6\\Tanks",
				loop = true,
				mechanicTime = 1207,
				name = "[P6 Tank] Autos 2 assigned aggro and far bait",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 224,
				timerEndOffset = 3.3,
				timerStartOffset = -4.5,
				uuid = "a32c206e-4b66-cfd0-92b0-dc7a97a65f7c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "80e9cd2e-7adc-9155-ac06-74867e2926b9",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal targets={}\nlocal main=TensorCore.mGetEntity(boss.targetid)\nif main and AnyoneCore.Roster.slotOf(main.id) then targets[main.id]=main end\nlocal far,dist\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n local d=TensorCore.getDistance2d(e.pos,boss.pos)\n if not dist or d>dist then far=e;dist=d end\nend\nif far then targets[far.id]=far end\nS.p6AutoCircles=S.p6AutoCircles or {}\nlocal drawer=TensorCore.getCachedFlatDrawer(0x802020B0,0x802020B0,0x802020B0,0xFF1010CC,3,0,0)\nlocal remaining=math.max(100,math.floor((1211-TensorReactions_CurrentTimer)*1000))\nfor id,e in pairs(targets)do\n local old=S.p6AutoCircles[id]\n if type(old)=='number' or type(old)=='string' then Argus.deleteTimedShape(old);S.owned[old]=nil;old=nil;S.p6AutoCircles[id]=nil end\n if not old or Now()>=old.expires then\n  S.p6AutoCircles[id]={id=S.keep(drawer:addTimedCircleOnEnt(remaining,id,5,0,false,true,0)),expires=Now()+remaining}\n end\nend\nfor id,shape in pairs(S.p6AutoCircles)do if not targets[id]then\n local handle=type(shape)=='table' and shape.id or shape\n Argus.deleteTimedShape(handle);S.owned[handle]=nil;S.p6AutoCircles[id]=nil\nend end\nself.used=true\n",
							name = "[P6] Near and far auto circles 2",
							uuid = "ba3a7f4a-b883-f4bf-9f3f-bc96303aefc5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1207,
				name = "[P6] Near and far auto circles 2",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 224,
				timerEndOffset = 4,
				timerStartOffset = -5,
				uuid = "32c85f1f-ce94-4737-8687-3c5378f09a06",
				version = 2,
			},
		},
	},
	[227] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "f3e71fb6-a2dd-0a68-aea4-60a0a52c50c7",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCircle(ms,pos.x,pos.y,pos.z,8,0,false,true,0))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"50dea5e7-f247-6d46-9cb0-72687471e4cb",
									true,
								},
							},
							name = "[AoE] Exaflare first",
							uuid = "91770379-9b30-17a0-ab36-9b7611c0a44b",
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
							eventSpellID = 31661,
							name = "Matching mechanic",
							uuid = "50dea5e7-f247-6d46-9cb0-72687471e4cb",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 1215.4,
				name = "[AoE] Exaflare first",
				timeRange = true,
				timelineIndex = 227,
				timerEndOffset = 105,
				timerStartOffset = -10,
				uuid = "27dcad45-0e62-49f4-81b9-90e3463c68c0",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCircle(ms,pos.x,pos.y,pos.z,6,0,false,true,0))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"03f9dab6-5d3b-4473-bd37-a39235e44fd1",
									true,
								},
							},
							name = "[AoE] Wave Cannon puddle",
							uuid = "27aecf8d-2456-c4e7-b79e-684b081e466d",
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
							eventSpellID = 31663,
							name = "Matching mechanic",
							uuid = "03f9dab6-5d3b-4473-bd37-a39235e44fd1",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 1215.4,
				name = "[AoE] Wave Cannon puddle",
				timeRange = true,
				timelineIndex = 227,
				timerEndOffset = 105,
				timerStartOffset = -10,
				uuid = "ab5f3e2b-e9ec-53c3-b289-06225ae24abf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6\\Exaflares",
				uuid = "fb543bb8-ad97-40d7-b1a6-cf1d232f6203",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nif not S.exas or Now()-S.exas.started>20000 then S.exas={started=Now(),lines={},draws={}} end\nlocal q=S.exas\nq.lines[#q.lines+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z,dx=8*math.sin(e.pos.h),dz=8*math.cos(e.pos.h),left=7,deadline=Now()+eventArgs.channelTimeMax*1000}\nq.dirty=true\nself.used=true\n",
							conditions = 
							{
								
								{
									"c7ae3abe-493c-3e1c-af1e-dad34e5d0e4b",
									true,
								},
							},
							name = "[P6] Exaflare lane prediction",
							uuid = "9f5c0df9-07cc-49e8-b3ea-3f35b20c89f0",
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
							eventSpellID = 31661,
							name = "Matching mechanic",
							uuid = "c7ae3abe-493c-3e1c-af1e-dad34e5d0e4b",
							version = 3,
						},
					},
				},
				displayPath = "P6\\Exaflares",
				eventType = 3,
				loop = true,
				mechanicTime = 1215.4,
				name = "[P6] Exaflare lane prediction",
				timeRange = true,
				timelineIndex = 227,
				timerEndOffset = 180,
				timerStartOffset = -15,
				uuid = "305bcdc1-436f-b6b8-9fa7-d563f6f7b67b",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal q=S.exas\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not q or not e or not e.pos then self.used=true return end\nfor _,l in ipairs(q.lines) do\n if l.left>0 and (l.x-e.pos.x)^2+(l.z-e.pos.z)^2<1 and l.deadline-Now()<1000 then\n  l.x=l.x+l.dx;l.z=l.z+l.dz;l.left=l.left-1;l.deadline=Now()+1100;q.dirty=true;break\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"f4df84e1-da71-a19d-9307-68eff8135e2e",
									true,
								},
							},
							name = "[P6] Advance exaflare lanes",
							uuid = "b029ac60-db20-43b4-a127-875e6bb49fa8",
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
							conditionLua = "return eventArgs.spellID==31661 or eventArgs.spellID==31662",
							dequeueIfLuaFalse = true,
							name = "Matching mechanic",
							uuid = "f4df84e1-da71-a19d-9307-68eff8135e2e",
							version = 3,
						},
					},
				},
				displayPath = "P6\\Exaflares",
				eventType = 2,
				loop = true,
				mechanicTime = 1215.4,
				name = "[P6] Advance exaflare lanes",
				timeRange = true,
				timelineIndex = 227,
				timerEndOffset = 180,
				timerStartOffset = -15,
				uuid = "1c101136-923b-98e3-b02d-9534ad8e15fa",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\nlocal q=S.exas\nif not q then self.used=true return end\nif not q.stableDraws then\n for _,id in ipairs(q.draws or {})do Argus.deleteTimedShape(id);S.owned[id]=nil end\n q.draws={};q.stableDraws={}\nend\nlocal active={}\nlocal faint=TensorCore.getStaticDrawer(0x403333FF,2)\nfor index,l in ipairs(q.lines)do\n if l.left>0 and l.deadline>=Now()-500 then\n  for i=0,math.min(1,l.left-1)do\n   local key=index..':'..i;active[key]=true\n   local ms=math.max(1000,l.deadline+1100*i-Now()+400)\n   local drawer=i==0 and S.red or faint\n   local id=q.stableDraws[key]\n   if not id or not drawer:updateTimedCircle(id,ms,l.x+l.dx*i,l.y,l.z+l.dz*i,8,0,false,true,0)then\n    q.stableDraws[key]=S.keep(drawer:addTimedCircle(ms,l.x+l.dx*i,l.y,l.z+l.dz*i,8,0,false,true,0))\n   end\n  end\n end\nend\nfor key,id in pairs(q.stableDraws)do if not active[key]then Argus.deleteTimedShape(id);S.owned[id]=nil;q.stableDraws[key]=nil end end\nq.dirty=false\nself.used=true\n",
							conditions = 
							{
								
								{
									"65b1616a-1001-cc22-868b-b2bf4397d8e3",
									true,
								},
							},
							name = "[P6] Two upcoming exaflares per lane",
							uuid = "7041f427-1ce9-4695-9687-4bb6936fdb6a",
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
							conditionLua = "local S=data.topLpdu\nlocal q=S and S.exas\nif not q then return false end\nif q.stableDraws and next(q.stableDraws) then return true end\nfor _,l in ipairs(q.lines) do if l.left>0 and l.deadline>=Now()-500 then return true end end\nreturn false",
							name = "Relevant mechanic",
							uuid = "65b1616a-1001-cc22-868b-b2bf4397d8e3",
							version = 3,
						},
					},
				},
				displayPath = "P6\\Exaflares",
				loop = true,
				mechanicTime = 1215.4,
				name = "[P6] Two upcoming exaflares per lane",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 227,
				timerEndOffset = 180,
				timerStartOffset = -15,
				uuid = "6996960e-a8a8-be0f-b12e-cd2ed580c942",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "74b56023-42e2-874e-aa5a-087fd843af69",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.p6ExaStarted=Now();S.p6ExaMove=false;S.p6Puddles={}\nS.p6Plan={key='p6-exa-middle-'..Now(),pos={x=100,z=100},text='Group middle, bait puddles',deadline=Now()+10000}\nself.used=true\n",
							conditions = 
							{
								
								{
									"b6cf7597-2fb6-9eb9-af0e-e4d0b57d8a88",
									true,
								},
							},
							name = "[P6] Group middle before exaflare puddles",
							uuid = "415179b6-2839-bb1d-872c-81537f531154",
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
							eventSpellID = 31660,
							name = "Matching mechanic",
							uuid = "b6cf7597-2fb6-9eb9-af0e-e4d0b57d8a88",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1215.4,
				name = "[P6] Group middle before exaflare puddles",
				timeRange = true,
				timelineIndex = 227,
				timerEndOffset = 100,
				timerStartOffset = -8,
				uuid = "58ac320a-7aed-5fd3-a100-f702f31931bf",
				version = 2,
			},
		},
	},
	[234] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "eac2c61f-5c8d-a38a-8ebb-1f90c9006994",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nS.p6Wave={source=eventArgs.entityID,firstDeadline=Now()+3000,deadline=Now()+5000,hitTargets={},steps=0,last=0,key=(S.p6Wave and S.p6Wave.key or 0)+1}\nS.say('Prepare assigned spread',3)\nself.used=true\n",
							conditions = 
							{
								
								{
									"a9ce6207-aafc-c998-89a2-02309af34c85",
									true,
								},
							},
							name = "[P6] Track protean waves",
							uuid = "75a157d9-ea00-d8f6-b50a-9b8920b1e6d6",
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
							eventSpellID = 31657,
							name = "Matching mechanic",
							uuid = "a9ce6207-aafc-c998-89a2-02309af34c85",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1236,
				name = "[P6] Track protean waves",
				timeRange = true,
				timelineIndex = 234,
				timerEndOffset = 40,
				timerStartOffset = -12,
				uuid = "3157be3d-a760-dcd3-a023-1bfe6b2394fb",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal w=S.p6Wave\nif w then\n w.hitTargets=w.hitTargets or {}\n for _,id in ipairs(eventArgs.hitTargets or {}) do w.hitTargets[id]=true end\nend\nif not w or Now()-w.last<500 then self.used=true return end\nw.last=Now(); w.steps=w.steps+1\nif w.steps~=2 or not S.ready() then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nS.p6Plan=nil\nS.go('p6-charge-'..w.key,{x=100,z=(slot=='T1' or slot=='T2') and 107 or 112},(slot=='T1' or slot=='T2') and 'Stack south, tanks in front' or 'Stack south, behind tanks',6,1.3)\nself.used=true\n",
							conditions = 
							{
								
								{
									"5ac78a67-7972-02a9-a147-80cdb35a0e75",
									true,
								},
							},
							name = "[P6] Regroup after final beam",
							uuid = "344f7acc-0ca6-67f6-80eb-5fcbac31906b",
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
							eventSpellID = 31659,
							name = "Matching mechanic",
							uuid = "5ac78a67-7972-02a9-a147-80cdb35a0e75",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 2,
				loop = true,
				mechanicTime = 1236,
				name = "[P6] Regroup after final beam",
				timeRange = true,
				timelineIndex = 234,
				timerEndOffset = 42,
				timerStartOffset = -3,
				uuid = "a0d52646-f497-b49a-aaf4-b5639e7f12b7",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nS.p6WaveSequence=(S.p6WaveSequence or 0)+1\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal assignedSlot=slot\nif Settings.FFXIVMINION.LPDU_TOP_P6PhysicalRanged==1 then\n if slot=='R1' then assignedSlot='R2' elseif slot=='R2' then assignedSlot='R1' end\nend\nlocal first={T1={100,88},T2={112,100},H1={88,100},H2={100,112},M1={91.5,108.5},M2={108.5,108.5},R1={91.5,91.5},R2={108.5,91.5}}\nlocal second={T1={96,88},T2={104,88},H1={96,112},H2={104,112},M1={88,104},M2={112,104},R1={88,96},R2={112,96}}\nlocal a=(S.p6WaveSequence==1 and first or second)[assignedSlot]\nif a then\n S.p6Plan={key='p6-wave-spread-'..S.p6WaveSequence,pos={x=a[1],z=a[2]},text='Go to your assigned beam spot, hold',deadline=Now()+5300}\n local p=TensorCore.mGetPlayer()\n AnyoneCore.addWorldTextCountdown(3000,{x=a[1],y=p.pos.y+2,z=a[2]},0xFF33FF33,true,1.2)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"7c08f3e8-c743-f9d0-8269-60cb288d1918",
									true,
								},
							},
							name = "[P6] LPDU assigned Wave Cannon spreads",
							uuid = "c2c24c1f-4ef6-42a1-bcdb-9811166421dc",
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
							eventSpellID = 31657,
							name = "Matching mechanic",
							uuid = "7c08f3e8-c743-f9d0-8269-60cb288d1918",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1236,
				name = "[P6] LPDU assigned Wave Cannon spreads",
				timeRange = true,
				timelineIndex = 234,
				timerEndOffset = 40,
				timerStartOffset = -12,
				uuid = "a628070f-24f2-c467-85aa-4f0abd9a212c",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nlocal w=S.p6Wave\nw.beamDraws=w.beamDraws or {}\nlocal active={}\nlocal boss=TensorCore.mGetEntity(w.source)\nif boss and boss.pos and w.steps<2 and Now()<w.deadline then\n local deadline=w.steps==0 and w.firstDeadline or w.deadline\n local ms=math.max(100,deadline-Now())\n for _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n  local e=AnyoneCore.Roster.entOf(slot)\n  if e and e.alive and e.pos and not w.hitTargets[e.id] then\n   active[e.id]=true;local a=math.atan2(e.pos.x-boss.pos.x,e.pos.z-boss.pos.z)\n   local id=w.beamDraws[e.id]\n   if not id or not S.red:updateTimedRect(id,ms,boss.pos.x,boss.pos.y,boss.pos.z,100,8,a,0,false,true,0) then\n    w.beamDraws[e.id]=S.keep(S.red:addTimedRect(ms,boss.pos.x,boss.pos.y,boss.pos.z,100,8,a,0,false,true,0))\n   end\n  end\n end\nend\nfor id,shape in pairs(w.beamDraws) do if not active[id] then Argus.deleteTimedShape(shape);S.owned[shape]=nil;w.beamDraws[id]=nil end end\nself.used=true\n",
							conditions = 
							{
								
								{
									"727cebac-a4dd-3e74-8b2d-deb83a27f848",
									true,
								},
							},
							name = "Show remaining spread beams",
							uuid = "3b918241-c5f3-0eda-9ad3-6dd8314d604f",
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
							conditionLua = "local S=data.topLpdu\nlocal w=S and S.p6Wave\nif not w or not S.ready() then return false end\nif w.beamDraws and next(w.beamDraws) then return true end\nreturn w.steps<2 and Now()>=w.firstDeadline-1800 and Now()<w.deadline",
							name = "Upcoming beams or cleanup",
							uuid = "727cebac-a4dd-3e74-8b2d-deb83a27f848",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1236,
				name = "[P6] First spread beam previews",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 234,
				timerEndOffset = 2.3,
				timerStartOffset = -1.8,
				uuid = "7d07d45a-e9a2-6275-84be-300fbc866944",
				version = 2,
			},
		},
	},
	[239] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6\\Tanks",
				uuid = "cc64859a-9a88-a006-b475-9e5af8129440",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal ownerSlot=Settings.FFXIVMINION.LPDU_TOP_P6AutoAggro3==1 and 'T2' or 'T1'\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do\n if TensorCore.hasBuff(holder,id) and (R.slotOf(holder.id)=='T1' or R.slotOf(holder.id)=='T2') then ownerSlot=R.slotOf(holder.id);break end\nend end\nlocal far=15\nfor _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do\n local e=R.entOf(role);local distance=math.sqrt((e.pos.x-100)^2+(e.pos.z-100)^2)\n far=math.max(far,math.min(19.5,distance+1))\nend\nlocal pos,text\npos=slot==ownerSlot and {x=100,z=95} or {x=100+1*far,z=100}\nif slot==ownerSlot then\n text=boss.targetid==R.idOf(slot) and 'Keep boss, stay apart' or 'Provoke, take boss, stay apart'\nelse text='Bait far auto, stay furthest' end\ntext=text..(Settings.FFXIVMINION['LPDU_TOP_P6Auto3_'..slot]==1 and ', invuln' or ', mitigate')\nlocal key='p6-autos-3'\nlocal assignment=ownerSlot..':'..slot\nS.p6AutoAssignments=S.p6AutoAssignments or {}\nif S.p6AutoAssignments[3]~=assignment then\n S.p6AutoAssignments[3]=assignment;S.issued[key]=nil\nend\nif S.goal and S.goal.key==key then S.goal.pos=pos end\nS.go(key,pos,text,7.7,1)\nself.used=true\n",
							name = "[P6 Tank] Autos 3 assigned aggro and far bait",
							uuid = "c7e2abbc-f016-75c9-9cc2-c2e74d1f431e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6\\Tanks",
				loop = true,
				mechanicTime = 1249.3,
				name = "[P6 Tank] Autos 3 assigned aggro and far bait",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 239,
				timerEndOffset = 3.2999999523163,
				timerStartOffset = -4.5,
				uuid = "b0956c72-940b-aedf-977d-d04d30b37772",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "75e910d5-ed5c-9dc5-9eb8-18cf74f52504",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal targets={}\nlocal main=TensorCore.mGetEntity(boss.targetid)\nif main and AnyoneCore.Roster.slotOf(main.id) then targets[main.id]=main end\nlocal far,dist\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n local d=TensorCore.getDistance2d(e.pos,boss.pos)\n if not dist or d>dist then far=e;dist=d end\nend\nif far then targets[far.id]=far end\nS.p6AutoCircles=S.p6AutoCircles or {}\nlocal drawer=TensorCore.getCachedFlatDrawer(0x802020B0,0x802020B0,0x802020B0,0xFF1010CC,3,0,0)\nlocal remaining=math.max(100,math.floor((1253.3-TensorReactions_CurrentTimer)*1000))\nfor id,e in pairs(targets)do\n local old=S.p6AutoCircles[id]\n if type(old)=='number' or type(old)=='string' then Argus.deleteTimedShape(old);S.owned[old]=nil;old=nil;S.p6AutoCircles[id]=nil end\n if not old or Now()>=old.expires then\n  S.p6AutoCircles[id]={id=S.keep(drawer:addTimedCircleOnEnt(remaining,id,5,0,false,true,0)),expires=Now()+remaining}\n end\nend\nfor id,shape in pairs(S.p6AutoCircles)do if not targets[id]then\n local handle=type(shape)=='table' and shape.id or shape\n Argus.deleteTimedShape(handle);S.owned[handle]=nil;S.p6AutoCircles[id]=nil\nend end\nself.used=true\n",
							name = "[P6] Near and far auto circles 3",
							uuid = "90894cb2-5203-6943-95fb-29b933fecf63",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1249.3,
				name = "[P6] Near and far auto circles 3",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 239,
				timerEndOffset = 4,
				timerStartOffset = -5,
				uuid = "f30d97c8-74ae-217f-9c97-a7d7c3f782d7",
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
				uuid = "5f7e0348-8ced-2b4b-ba81-532c34ad5ba4",
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
							actionLua = "local S=data.topLpdu\nlocal w=S.p6Wave\nw.beamDraws=w.beamDraws or {}\nlocal active={}\nlocal boss=TensorCore.mGetEntity(w.source)\nif boss and boss.pos and w.steps<2 and Now()<w.deadline then\n local deadline=w.steps==0 and w.firstDeadline or w.deadline\n local ms=math.max(100,deadline-Now())\n for _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n  local e=AnyoneCore.Roster.entOf(slot)\n  if e and e.alive and e.pos and not w.hitTargets[e.id] then\n   active[e.id]=true;local a=math.atan2(e.pos.x-boss.pos.x,e.pos.z-boss.pos.z)\n   local id=w.beamDraws[e.id]\n   if not id or not S.red:updateTimedRect(id,ms,boss.pos.x,boss.pos.y,boss.pos.z,100,8,a,0,false,true,0) then\n    w.beamDraws[e.id]=S.keep(S.red:addTimedRect(ms,boss.pos.x,boss.pos.y,boss.pos.z,100,8,a,0,false,true,0))\n   end\n  end\n end\nend\nfor id,shape in pairs(w.beamDraws) do if not active[id] then Argus.deleteTimedShape(shape);S.owned[shape]=nil;w.beamDraws[id]=nil end end\nself.used=true\n",
							conditions = 
							{
								
								{
									"5734a396-f571-09e0-9148-1d25f41cad83",
									true,
								},
							},
							name = "Show remaining spread beams",
							uuid = "e98d6989-8303-e4c7-a836-3db35583ff2e",
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
							conditionLua = "local S=data.topLpdu\nlocal w=S and S.p6Wave\nif not w or not S.ready() then return false end\nif w.beamDraws and next(w.beamDraws) then return true end\nreturn w.steps<2 and Now()>=w.firstDeadline-1800 and Now()<w.deadline",
							name = "Upcoming beams or cleanup",
							uuid = "5734a396-f571-09e0-9148-1d25f41cad83",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1269.9,
				name = "[P6] Brief spread beam previews",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = 2.3,
				timerStartOffset = -1.8,
				uuid = "bdcfba8b-af40-3250-81a2-ec6826c153b4",
				version = 2,
			},
		},
	},
	[248] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6\\Tanks",
				uuid = "fe5993ae-d33b-4d83-884a-8a6d2287edfa",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal ownerSlot=Settings.FFXIVMINION.LPDU_TOP_P6AutoAggro4==1 and 'T2' or 'T1'\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do\n if TensorCore.hasBuff(holder,id) and (R.slotOf(holder.id)=='T1' or R.slotOf(holder.id)=='T2') then ownerSlot=R.slotOf(holder.id);break end\nend end\nlocal far=15\nfor _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do\n local e=R.entOf(role);local distance=math.sqrt((e.pos.x-100)^2+(e.pos.z-100)^2)\n far=math.max(far,math.min(19.5,distance+1))\nend\nlocal pos,text\npos=slot==ownerSlot and {x=100,z=95} or {x=100+1*far,z=100}\nif slot==ownerSlot then\n text=boss.targetid==R.idOf(slot) and 'Keep boss, stay apart' or 'Provoke, take boss, stay apart'\nelse text='Bait far auto, stay furthest' end\ntext=text..(Settings.FFXIVMINION['LPDU_TOP_P6Auto4_'..slot]==1 and ', invuln' or ', mitigate')\nlocal key='p6-autos-4'\nlocal assignment=ownerSlot..':'..slot\nS.p6AutoAssignments=S.p6AutoAssignments or {}\nif S.p6AutoAssignments[4]~=assignment then\n S.p6AutoAssignments[4]=assignment;S.issued[key]=nil\nend\nif S.goal and S.goal.key==key then S.goal.pos=pos end\nS.go(key,pos,text,7.7,1)\nself.used=true\n",
							name = "[P6 Tank] Autos 4 assigned aggro and far bait",
							uuid = "60958fa6-2f39-b03f-afe0-82cbd00f6a12",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6\\Tanks",
				loop = true,
				mechanicTime = 1283.2,
				name = "[P6 Tank] Autos 4 assigned aggro and far bait",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 248,
				timerEndOffset = 3.2999999523163,
				timerStartOffset = -4.5,
				uuid = "47be3e0c-96f2-3299-b7a5-9b04d5563fd0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "f4892b05-8a95-6de1-8627-d6b8cdeb93a3",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal targets={}\nlocal main=TensorCore.mGetEntity(boss.targetid)\nif main and AnyoneCore.Roster.slotOf(main.id) then targets[main.id]=main end\nlocal far,dist\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n local d=TensorCore.getDistance2d(e.pos,boss.pos)\n if not dist or d>dist then far=e;dist=d end\nend\nif far then targets[far.id]=far end\nS.p6AutoCircles=S.p6AutoCircles or {}\nlocal drawer=TensorCore.getCachedFlatDrawer(0x802020B0,0x802020B0,0x802020B0,0xFF1010CC,3,0,0)\nlocal remaining=math.max(100,math.floor((1287.2-TensorReactions_CurrentTimer)*1000))\nfor id,e in pairs(targets)do\n local old=S.p6AutoCircles[id]\n if type(old)=='number' or type(old)=='string' then Argus.deleteTimedShape(old);S.owned[old]=nil;old=nil;S.p6AutoCircles[id]=nil end\n if not old or Now()>=old.expires then\n  S.p6AutoCircles[id]={id=S.keep(drawer:addTimedCircleOnEnt(remaining,id,5,0,false,true,0)),expires=Now()+remaining}\n end\nend\nfor id,shape in pairs(S.p6AutoCircles)do if not targets[id]then\n local handle=type(shape)=='table' and shape.id or shape\n Argus.deleteTimedShape(handle);S.owned[handle]=nil;S.p6AutoCircles[id]=nil\nend end\nself.used=true\n",
							name = "[P6] Near and far auto circles 4",
							uuid = "5a9e98ee-ee64-cfc5-95d5-b36e56af8232",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1283.2,
				name = "[P6] Near and far auto circles 4",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 248,
				timerEndOffset = 4,
				timerStartOffset = -5,
				uuid = "d6078b08-11b6-c635-b967-04d83185024a",
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
				name = "P6\\Tanks",
				uuid = "1f03a667-095f-48dc-9459-7f8d7b97aff3",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slot=R.mySlot()\nif slot~='T1' and slot~='T2' then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal ownerSlot=Settings.FFXIVMINION.LPDU_TOP_P6AutoAggro5==1 and 'T2' or 'T1'\nlocal holder=TensorCore.mGetEntity(boss.targetid)\nif holder then for _,id in ipairs({82,409,810,811,1836,3255}) do\n if TensorCore.hasBuff(holder,id) and (R.slotOf(holder.id)=='T1' or R.slotOf(holder.id)=='T2') then ownerSlot=R.slotOf(holder.id);break end\nend end\nlocal far=15\nfor _,role in ipairs({'H1','H2','M1','M2','R1','R2'}) do\n local e=R.entOf(role);local distance=math.sqrt((e.pos.x-100)^2+(e.pos.z-100)^2)\n far=math.max(far,math.min(19.5,distance+1))\nend\nlocal pos,text\npos=slot==ownerSlot and {x=100,z=105} or {x=100+-1*far,z=100}\nif slot==ownerSlot then\n text=boss.targetid==R.idOf(slot) and 'Keep boss, stay apart' or 'Provoke, take boss, stay apart'\nelse text='Bait far auto, stay furthest' end\ntext=text..(Settings.FFXIVMINION['LPDU_TOP_P6Auto5_'..slot]==1 and ', invuln' or ', mitigate')\nlocal key='p6-autos-5'\nlocal assignment=ownerSlot..':'..slot\nS.p6AutoAssignments=S.p6AutoAssignments or {}\nif S.p6AutoAssignments[5]~=assignment then\n S.p6AutoAssignments[5]=assignment;S.issued[key]=nil\nend\nif S.goal and S.goal.key==key then S.goal.pos=pos end\nS.go(key,pos,text,7.7,1)\nself.used=true\n",
							name = "[P6 Tank] Autos 5 assigned aggro and far bait",
							uuid = "446e9c93-2562-1923-b71d-15c5b4494151",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6\\Tanks",
				loop = true,
				mechanicTime = 1320.1,
				name = "[P6 Tank] Autos 5 assigned aggro and far bait",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 262,
				timerEndOffset = 3.2999999523163,
				timerStartOffset = -4.5,
				uuid = "719c3b58-b704-e88f-8af9-13ede3fb55fa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "5b577efb-5f20-edea-8d13-9ee4981ab311",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal boss\nfor _,e in pairs(TensorCore.entityList('contentid=12256')) do\n if Argus.getEntityModel(e)==15725 and e.alive and e.targetable then boss=e;break end\nend\nif not boss then self.used=true return end\nlocal targets={}\nlocal main=TensorCore.mGetEntity(boss.targetid)\nif main and AnyoneCore.Roster.slotOf(main.id) then targets[main.id]=main end\nlocal far,dist\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n local d=TensorCore.getDistance2d(e.pos,boss.pos)\n if not dist or d>dist then far=e;dist=d end\nend\nif far then targets[far.id]=far end\nS.p6AutoCircles=S.p6AutoCircles or {}\nlocal drawer=TensorCore.getCachedFlatDrawer(0x802020B0,0x802020B0,0x802020B0,0xFF1010CC,3,0,0)\nlocal remaining=math.max(100,math.floor((1324.1-TensorReactions_CurrentTimer)*1000))\nfor id,e in pairs(targets)do\n local old=S.p6AutoCircles[id]\n if type(old)=='number' or type(old)=='string' then Argus.deleteTimedShape(old);S.owned[old]=nil;old=nil;S.p6AutoCircles[id]=nil end\n if not old or Now()>=old.expires then\n  S.p6AutoCircles[id]={id=S.keep(drawer:addTimedCircleOnEnt(remaining,id,5,0,false,true,0)),expires=Now()+remaining}\n end\nend\nfor id,shape in pairs(S.p6AutoCircles)do if not targets[id]then\n local handle=type(shape)=='table' and shape.id or shape\n Argus.deleteTimedShape(handle);S.owned[handle]=nil;S.p6AutoCircles[id]=nil\nend end\nself.used=true\n",
							name = "[P6] Near and far auto circles 5",
							uuid = "29030790-954a-d98b-8dde-f792f2fdd9fd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1320.1,
				name = "[P6] Near and far auto circles 5",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 262,
				timerEndOffset = 4,
				timerStartOffset = -5,
				uuid = "b6aad965-96cf-8f04-8ffb-5099f18097fd",
				version = 2,
			},
		},
	},
	[265] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Cast AoEs",
				uuid = "52cd9a6a-cf52-0e0d-ac92-3c66b764fcb4",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then self.used=true return end\nlocal ms=math.floor(eventArgs.channelTimeMax*1000)\nif ms<=0 then self.used=true return end\nlocal pos=e.pos\nS.keep(S.red:addTimedCircle(ms,pos.x,pos.y,pos.z,10,0,false,true,S.flags))\nAnyoneCore.addWorldTextCountdown(ms,{x=pos.x,y=pos.y+2,z=pos.z},0xFFFFFFFF,true,1.15)\nself.used=true\n",
							conditions = 
							{
								
								{
									"3ef6178c-7cc5-5dec-a041-fb29ccf26a42",
									true,
								},
							},
							name = "[AoE] Meteor puddle",
							uuid = "559172fe-e27d-11de-8e6c-30d376b6488d",
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
							eventSpellID = 31666,
							name = "Matching mechanic",
							uuid = "3ef6178c-7cc5-5dec-a041-fb29ccf26a42",
							version = 3,
						},
					},
				},
				displayPath = "Cast AoEs",
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 1331.6,
				name = "[AoE] Meteor puddle",
				timeRange = true,
				timelineIndex = 265,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "12b9f254-d4b9-fa48-97de-d5216270d5d7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "f49f19b0-2352-2ebe-84f8-c5c0f541ea70",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal assignedSlot=slot\nif Settings.FFXIVMINION.LPDU_TOP_P6PhysicalRanged==1 then\n if slot=='R1' then assignedSlot='R2' elseif slot=='R2' then assignedSlot='R1' end\nend\nlocal spots={T1={91.5,91.5},T2={100,112},H1={88,100},H2={112,100},M1={91.5,108.5},M2={108.5,108.5},R1={100,88},R2={108.5,91.5}}\nlocal a=spots[assignedSlot]\nif a then S.p6MeteorDestination={x=a[1],z=a[2]} end\nS.p6MeteorReleased=false;S.p6MeteorHitCount=0\nlocal marks={T1='4',T2='C',H1='D',H2='B',M1='3',M2='2',R1='A',R2='1'}\nlocal mark=marks[assignedSlot]\nS.p6Plan={key='p6-meteor-middle',pos={x=100,z=100},text=mark and ('Go middle, bait puddles, then go '..mark) or 'Go middle, bait meteor puddles',deadline=Now()+eventArgs.channelTimeMax*1000+600}\nself.used=true\n",
							conditions = 
							{
								
								{
									"66f5e682-1711-2790-b129-7a056bbf919a",
									true,
								},
							},
							name = "[P6] Assigned meteor spreads and tank support",
							uuid = "679a6420-e89c-fdda-b413-0d6fc41719d7",
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
							eventSpellID = 31664,
							name = "Matching mechanic",
							uuid = "66f5e682-1711-2790-b129-7a056bbf919a",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1331.6,
				name = "[P6] Assigned meteor spreads and tank support",
				timeRange = true,
				timelineIndex = 265,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "a861ff1a-0287-d434-ad96-5e121a7292d1",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal d=TensorCore.getCachedFlatDrawer(0x503333FF,0x503333FF,0x503333FF,0xFF3333FF,3,0,0)\nS.meteorSpreadCircles=S.meteorSpreadCircles or {}\nfor _,slot in ipairs({'T1','T2','H1','H2','M1','M2','R1','R2'}) do\n local e=AnyoneCore.Roster.entOf(slot)\n if e.id~=p.id then\n  local shape=S.meteorSpreadCircles[e.id]\n  if not shape or not d:updateTimedCircle(shape,1000,e.pos.x,0,e.pos.z,5,0,false,true,0) then\n   S.meteorSpreadCircles[e.id]=S.keep(d:addTimedCircle(1000,e.pos.x,0,e.pos.z,5,0,false,true,0))\n  end\n end\nend\nself.used=true\n",
							name = "[P6] Other players meteor spread circles",
							uuid = "7e14d507-7872-59a4-8f80-55fdc34b5ff7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1331.6,
				name = "[P6] Other players meteor spread circles",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 265,
				timerEndOffset = 12.2,
				uuid = "98e74871-d280-2a3e-845e-e1c91ab7947e",
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
				uuid = "5ee04c61-d14a-2145-a4ee-00056428b64e",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.p6MeteorReleased or not S.ready() then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal hit=false\nfor _,id in ipairs(eventArgs.hitTargets) do if id==p.id then hit=true;break end end\nif not hit then self.used=true return end\nS.p6MeteorHitCount=(S.p6MeteorHitCount or 0)+1\nif S.p6MeteorHitCount==1 then\n S.say('Hold spread, one more meteor hit',3)\n local pos=S.p6MeteorDestination\n if pos then AnyoneCore.addWorldTextCountdown(6000,{x=pos.x,y=p.pos.y+2,z=pos.z},0xFF33FF33,true,1.2) end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"56bc58d2-d579-4237-91db-dad7a3d74e84",
									true,
								},
							},
							name = "[P6] Hold spread through both meteor hits",
							uuid = "b9e2a06a-9e08-0803-8d2a-a29a4b49b941",
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
							eventSpellID = 32699,
							name = "Matching mechanic",
							uuid = "56bc58d2-d579-4237-91db-dad7a3d74e84",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 2,
				loop = true,
				mechanicTime = 1336.7,
				name = "[P6] Hold spread through both meteor hits",
				timeRange = true,
				timelineIndex = 267,
				timerEndOffset = 9,
				timerStartOffset = -1,
				uuid = "02795173-fb66-5971-8e15-a6f8fa110631",
				version = 2,
			},
		},
	},
	[271] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "9e63111a-4d79-d4a2-baa2-df2bb743714b",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif not S.p6MeteorReleased or not S.ready() then self.used=true return end\nS.p6Plan=nil\nS.go('p6-after-meteor-spreads',{x=100,z=112},'Go south, destroy meteors',5.5,1.3)\nself.used=true\n",
							conditions = 
							{
								
								{
									"80446448-4c7c-00c8-aec7-e28ea99656d8",
									true,
								},
							},
							name = "[P6] Regroup after both meteor spread sets",
							uuid = "fcab57a8-4894-b83b-a006-1a06d2f870ca",
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
							conditionLua = "local S=data.topLpdu\nreturn S~=nil and S.ready() and S.p6MeteorReleased==true and not S.issued['p6-after-meteor-spreads']",
							name = "Relevant mechanic",
							uuid = "80446448-4c7c-00c8-aec7-e28ea99656d8",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1343.7,
				name = "[P6] Regroup after both meteor spread sets",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 271,
				timerEndOffset = 2.5,
				timerStartOffset = 0.40000000596046,
				uuid = "d44e2759-0322-4209-abbb-3913ea816b47",
				version = 2,
			},
		},
	},
	[272] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "b8310675-5783-8a36-afcc-a211a7606052",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nif S.markerOffset==nil then self.used=true return end\nS.p6Flares=S.p6Flares or {}\nlocal marker=eventArgs.markerID-S.markerOffset\nif marker==346 then\n if not S.p6Flares[eventArgs.entityID] then\n  local draw=TensorCore.getCachedFlatDrawer(0x503333FF,0x503333FF,0x503333FF,0xFF3333FF,3,0,0)\n  S.keep(draw:addTimedCircleOnEnt(8100,eventArgs.entityID,20,0,false,true,0))\n end\n S.p6Flares[eventArgs.entityID]=true\nend\nself.used=true\n",
							name = "[P6] Meteor flare or stack",
							uuid = "1b88d26b-fb72-bb91-bc36-8f05436ab004",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6",
				eventType = 4,
				loop = true,
				mechanicTime = 1354.7,
				name = "[P6] Meteor flare or stack",
				timeRange = true,
				timelineIndex = 272,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "c5b8eeda-2e39-a81d-af76-2af534645f9a",
				version = 2,
			},
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
							actionLua = "local S=data.topLpdu\nif not S or not S.ready() or not S.p6Flares then self.used=true return end\nlocal R=AnyoneCore.Roster\nlocal slots={'T1','T2','H1','H2','M1','M2','R1','R2'}\nlocal holders={}\nfor _,slot in ipairs(slots) do local e=R.entOf(slot);if e and S.p6Flares[e.id] then holders[#holders+1]=e end end\nif #holders~=3 then self.used=true return end\nS.p6Plan=nil\nlocal pr=R.idOf(Settings.FFXIVMINION.LPDU_TOP_P6PhysicalRanged==1 and 'R2' or 'R1')\nlocal prFlare=pr and S.p6Flares[pr]\nif not S.p6FlareAssignments then\n local spots={{x=100,z=prFlare and 81 or 119,name=prFlare and 'north' or 'south'},{x=119,z=100,name='east'},{x=81,z=100,name='west'}}\n local best,cost\n for a=1,3 do for b=1,3 do if a~=b then local c=6-a-b\n  local order={a,b,c};local valid=true;local total=0\n  for i,e in ipairs(holders) do\n   if prFlare and e.id==pr and order[i]~=1 then valid=false end\n   local q=spots[order[i]];total=total+(e.pos.x-q.x)^2+(e.pos.z-q.z)^2\n  end\n  if valid and (not cost or total<cost) then cost=total;best=order end\n end end end\n if not best then self.used=true return end\n S.p6FlareAssignments={}\n for i,e in ipairs(holders) do S.p6FlareAssignments[e.id]=spots[best[i]] end\nend\nlocal p=TensorCore.mGetPlayer()\nlocal dest=S.p6FlareAssignments[p.id]\nif dest then\n S.go('p6-flare-destination',dest,'Flare, go '..dest.name,7,1.3)\n if not S.issued['p6-flare-circle'] then\n  S.issued['p6-flare-circle']=true\n  S.keep(S.red:addTimedCircleOnEnt(7000,p.id,20,0,false,true,0))\n  AnyoneCore.addWorldTextCountdown(7000,{x=dest.x,y=p.pos.y+2,z=dest.z},0xFFFFFFFF,true,1.2)\n end\nelse\n S.go('p6-meteor-stack',{x=100,z=prFlare and 112 or 88},prFlare and 'Stack south' or 'Stack north',7,1.3)\nend\nself.used=true\n",
							name = "[P6] Personal meteor flare destination",
							uuid = "e94e36ba-6196-056c-b420-0c07f5e928de",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P6",
				loop = true,
				mechanicTime = 1354.7,
				name = "[P6] Personal meteor flare destination",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 272,
				timerEndOffset = -0.20000000298023,
				timerStartOffset = -7.5,
				uuid = "c14559d9-aadb-35ea-a0df-5fd766f00849",
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
				uuid = "bca1d91d-26f2-0f4e-9df6-f31954bcd8f7",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal slot=R.mySlot()\nS.p6MagicWave=1\nif slot==(Settings.FFXIVMINION.LPDU_TOP_P6TankLB1==1 and 'T2' or 'T1') then TensorCore.addAlertText(4000,'Tank LB3 NOW',2,3,true)\nelseif slot==(Settings.FFXIVMINION.LPDU_TOP_P6HealerLB1==1 and 'H2' or 'H1') then S.say('Healer LB3 after hit',4) end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif e and e.pos then AnyoneCore.addWorldTextCountdown(eventArgs.channelTimeMax*1000,{x=e.pos.x,y=e.pos.y+3,z=e.pos.z},0xFFFFFFFF,true,1.3) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"3910b7d5-2337-803a-93a8-3460418f19d7",
									true,
								},
							},
							name = "[P6] Magic Number LB 1",
							uuid = "b4fa98d2-6469-3a23-bbe7-33909e56b297",
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
							eventSpellID = 31670,
							name = "Matching mechanic",
							uuid = "3910b7d5-2337-803a-93a8-3460418f19d7",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1366.7,
				name = "[P6] Magic Number LB 1",
				timeRange = true,
				timelineIndex = 277,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "35e1fc0b-7d73-df78-be4d-7129256b7a11",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "P6\\Healers",
				uuid = "c37529b0-685f-4215-9fb0-f05ca21b9b60",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nif S.p6HealerLBHit and Now()-S.p6HealerLBHit<1000 then self.used=true return end\nS.p6HealerLBHit=Now()\nlocal wave=S.p6MagicWave\nif wave~=1 and wave~=2 then self.used=true return end\nlocal assigned=Settings.FFXIVMINION['LPDU_TOP_P6HealerLB'..wave]==1 and 'H2' or 'H1'\nif R.mySlot()==assigned then S.say('Use healer LB3 now',4) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"ea1db226-0add-83f4-be36-74e1ec475684",
									true,
								},
							},
							name = "[P6 Healer] LB3 after Magic Number damage",
							uuid = "4b580bc9-037f-1e10-a392-99e5f949afde",
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
							eventSpellID = 31670,
							name = "Matching mechanic",
							uuid = "ea1db226-0add-83f4-be36-74e1ec475684",
							version = 3,
						},
					},
				},
				displayPath = "P6\\Healers",
				eventType = 2,
				loop = true,
				mechanicTime = 1366.7,
				name = "[P6 Healer] LB3 after Magic Number damage",
				timeRange = true,
				timelineIndex = 277,
				timerEndOffset = 18,
				timerStartOffset = -1,
				uuid = "651c06ff-ebd1-5d1d-aa0a-da849c07f1f8",
				version = 2,
			},
		},
	},
	[279] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "a62534e5-4619-d8a1-bbef-b53f0b0cc6fc",
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
							actionLua = "local S=data.topLpdu\nif not S then self.used=true return end\n\nlocal R=AnyoneCore.Roster\nif not R or not R.current() then self.used=true return end\nlocal slot=R.mySlot()\nS.p6MagicWave=2\nif slot==(Settings.FFXIVMINION.LPDU_TOP_P6TankLB2~=0 and 'T2' or 'T1') then TensorCore.addAlertText(4000,'Tank LB3 NOW',2,3,true)\nelseif slot==(Settings.FFXIVMINION.LPDU_TOP_P6HealerLB2==1 and 'H2' or 'H1') then S.say('Healer LB3 after hit',4) end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif e and e.pos then AnyoneCore.addWorldTextCountdown(eventArgs.channelTimeMax*1000,{x=e.pos.x,y=e.pos.y+3,z=e.pos.z},0xFFFFFFFF,true,1.3) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"d431a3e3-c661-20f3-a4ff-be06d1e28390",
									true,
								},
							},
							name = "[P6] Magic Number LB 2",
							uuid = "c2b45152-16f4-4a78-9f6b-18b0abc15b25",
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
							eventSpellID = 31670,
							name = "Matching mechanic",
							uuid = "d431a3e3-c661-20f3-a4ff-be06d1e28390",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				eventType = 3,
				loop = true,
				mechanicTime = 1382.8,
				name = "[P6] Magic Number LB 2",
				timeRange = true,
				timelineIndex = 279,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "b1c72828-9f79-6cfc-a7cf-36c94376b051",
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
local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "4b236cfe-89b8-a962-7c5d-09040ce4688e",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "937e40b7-9e8c-162b-0f0c-b2b9119ac8c7",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "ee830fe9-0612-bd7b-88bc-271102fc9da5",
			},
			objectType = "folder",
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
				displayPath = "Jacob Draws",
				eventType = 13,
				execute = "local now=Now()\nif self.rosterWarnCheck and now-self.rosterWarnCheck<250 then return end\nself.rosterWarnCheck=now\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal ready=R and R.current() and R.isReady()\nif ready then\n self.rosterWarnSince=nil\n self.rosterWarnSpoken=false\n return\nend\nif not self.rosterWarnSince then self.rosterWarnSince=now end\nif now-self.rosterWarnSince<2000 then return end\nTensorCore.addAlertText(300,\"Party Roster unresolved - check assigned roles\",1.3,3,false)\nif not self.rosterWarnSpoken then\n TensorCore.sendTTS(\"Party roster unresolved. Check assigned roles\")\n self.rosterWarnSpoken=true\nend\nself.used=true",
				executeType = 2,
				loop = true,
				mechanicTime = 14.2,
				name = "[Jacob v2] Pre-pull unresolved Party Roster warning",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 15.800000190735,
				timerStartOffset = -14.199999809265,
				uuid = "6ff95283-48be-3ac5-ad81-d5f08febcc65",
				version = 2,
			},
		},
	}, 
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "6e901985-da92-527a-ac03-878c2913e3e7",
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
							actionLua = "local Roster = AnyoneCore.Roster\nlocal boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid=14749})\nif not boss then return end\nlocal now = Now()\nif data.enuoTankBarsStarted and now-data.enuoTankBarsStarted < 500 then self.used=true return end\nlocal duration = math.max(1,eventArgs.channelTimeMax*1000)\nlocal drawer = TensorCore.getCachedDrawer(0x80FF0000,0x80FF0000,0x80FF0000,0x00000000,0)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nfor _, slot in ipairs({\"T1\",\"T2\"}) do\n local id = Roster.idOf(slot)\n if id then drawer:addTimedRectOnEnt(duration,id,0.2,6,boss.id,0,true,false,true,math.pi,false,flags) end\nend\ndata.enuoTankBarsStarted = now\nself.used = true",
							conditions = 
							{
								
								{
									"abb23863-fa72-e804-b9c6-b019e399c958",
									true,
								},
								
								{
									"a24c8756-cb03-7617-be24-21826fa07806",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "c994c49e-0dc4-68fb-8292-ff66625e6cf3",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "abb23863-fa72-e804-b9c6-b019e399c958",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "a24c8756-cb03-7617-be24-21826fa07806",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 29.7,
				name = "Naught Grows tank indicators",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "be3827ec-a708-fc87-a38e-8ae320b50ed7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local caster=TensorCore.mGetEntity(eventArgs.entityID)\nif not caster then return end\nlocal now=Now()\nlocal state=data.enuoNaughtSafe\nif not state or now-state.started>10000 then state={started=now,shapes={}} data.enuoNaughtSafe=state end\nstate.shapes[eventArgs.entityID]={id=eventArgs.spellID,x=caster.pos.x,y=caster.pos.y,z=caster.pos.z,expires=now+eventArgs.channelTimeMax*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"577c8e79-17ea-0941-9319-ddb90002f3fe",
									true,
								},
							},
							name = "Capture unsafe shapes",
							uuid = "e007e8f2-e74a-d93c-8490-b20323b7aba0",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
								49979,
								49980,
							},
							uuid = "577c8e79-17ea-0941-9319-ddb90002f3fe",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 29.7,
				name = "Naught Grows safe-area capture",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "b61da355-52e8-c116-aae1-916626990ac0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state=data.enuoNaughtSafe\nif not state then return end\nlocal now=Now()\nlocal count,big,small=0,false,false\nfor _,s in pairs(state.shapes) do\n if now>=s.expires then data.enuoNaughtSafe=nil return end\n count=count+1\n if s.id==49977 or s.id==49978 then big=true else small=true end\nend\nif count<2 or not big or not small then return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel then return end\nlocal F=Argus2.RenderFlags\nlocal base=F.FLAG_OCCLUSION_BASE+F.FLAG_WARP_TERRAIN+F.FLAG_RENDER_UI\nlocal cut=F.FLAG_OCCLUDE+F.FLAG_WARP_TERRAIN\nArgus.addCircleFilled(100,0.05,100,20,64,0x6033FF33,0xCC33FF33,0.12,0,0,0,false,base,channel)\nfor _,s in pairs(state.shapes) do\n if s.id==49977 or s.id==49979 then\n  Argus.addCircleFilled(s.x,0.05,s.z,s.id==49977 and 40 or 12,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n else\n  Argus.addDonutFilled(s.x,0.05,s.z,s.id==49978 and 40 or 6,s.id==49978 and 60 or 40,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n end\nend\nself.used=true",
							name = "Subtract active Naught Grows hits",
							uuid = "86da1a66-0b11-bff5-9add-f7fc76ba3060",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 29.7,
				name = "Naught Grows green safe area",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "4926e29a-a07a-1c3b-b4a5-07d51172f55f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoHealerHighlightUntil=Now()+(eventArgs.channelTimeMax+2)*1000",
							conditions = 
							{
								
								{
									"e00b6419-263d-7c2d-8e65-dcb27f574f4e",
									true,
								},
								
								{
									"87821b11-1ff1-f998-8ab4-f50b4762b091",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "3e980c36-f0be-b2d4-81ee-f7b631371b47",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "e00b6419-263d-7c2d-8e65-dcb27f574f4e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "87821b11-1ff1-f998-8ab4-f50b4762b091",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 29.7,
				name = "[Jacob v3] Naught Grows healer highlight start",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "23b42bd2-28f8-b4b6-8f59-76441e892697",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "self.used=true\nif not data.enuoHealerHighlightUntil or Now()>=data.enuoHealerHighlightUntil then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot()\nlocal healer=({T1=\"H1\",M1=\"H1\",R1=\"H1\",T2=\"H2\",M2=\"H2\",R2=\"H2\"})[slot]\nif not healer then return end\nlocal h=R.entOf(healer) if not h then return end\nlocal d=TensorCore.getCachedDrawer(0x5533FF33,0x8833FF33,0xFF33FF33,0xFF000000,2)\nd:addCircle(h.pos.x,h.pos.y,h.pos.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 29.7,
				name = "[Jacob v3] Naught Grows assigned healer highlight",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "7da6b5d9-88ee-fa61-9afe-b1d893045871",
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
				displayPath = "Jacob Draws",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID==49983 or eventArgs.spellID==49984 then data.enuoHealerHighlightUntil=nil end",
				executeType = 2,
				loop = true,
				mechanicTime = 29.7,
				name = "[Jacob v3] Naught Grows healer highlight stack cleanup",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "6e4810e0-e8d3-22a7-bd82-6a93257a8fb6",
				version = 2,
			},
		},
	},
	[6] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "760184e7-ebbf-bb8d-8ba9-f95e1fe865e9",
			},
			objectType = "folder",
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
				displayPath = "Jacob Draws",
				eventType = 3,
				execute = "\nif not eventArgs or eventArgs.spellID ~= 50040 or eventArgs.entityContentID ~= 14749 then return end\nlocal duration = math.max(1,(eventArgs.channelTimeMax or 3.7)*1000)\nAnyoneCore.addTimedWorldText(duration,\"Bait\",{x=100,y=1.5,z=100},0xFF33FF33,true,1.5)\n",
				executeType = 2,
				mechanicTime = 43.8,
				name = "Meltdown center Bait text",
				timeRange = true,
				timelineIndex = 6,
				timerStartOffset = -7,
				uuid = "57f87d81-b9af-8a54-8f88-fbed174fb571",
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
				displayPath = "Jacob Draws",
				eventType = 13,
				execute = "\nif not TensorCore.isAnyEntityCasting(50040,\"contentid=14749\") then return end\nlocal dest = {x=100,y=0,z=100}\nlocal p = TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal green = TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(p.pos,dest)\nif distance > 0.8 then\n local tip = math.min(1.5,distance*0.35)\n green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.65,tip,1.3,false,flags)\nend\ngreen:addCircle(dest.x,dest.y,dest.z,0.65,false,flags)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 43.8,
				name = "Meltdown center Bait arrow",
				timeRange = true,
				timelineIndex = 6,
				timerStartOffset = -7,
				uuid = "3c592594-7a3e-7c0d-844c-38f574eaf537",
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
				displayPath = "Jacob Draws",
				execute = "local p=TensorCore.mGetPlayer()\nif not p then return end\nlocal now=Now()\nlocal s=self.pyreticWarning\nif not s or now-s.lastPoll>1500 then s={active=false,lastPoll=now} self.pyreticWarning=s end\ns.lastPoll=now\nlocal buff=TensorCore.getBuff(p,4562)\nlocal active=buff and buff.duration>0\nif active then\n if not s.active then TensorCore.sendTTS(\"Stop moving\") end\n s.active=true\n AnyoneCore.addTimedWorldTextOnEnt(150,string.format(\"STOP MOVING %.1fs\",buff.duration),p.id,0xFFFFFFFF,0xCC0000BB,1.2,-0.5)\nelseif s.active then\n s.active=false\n TensorCore.addAlertText(1500,\"Move\",1.4,1,true)\nend\nself.used=true",
				executeType = 2,
				loop = true,
				mechanicTime = 43.8,
				name = "[Jacob v2] Pyretic stop countdown then move",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 6,
				timerEndOffset = 7,
				timerStartOffset = -1,
				uuid = "8f95d6b0-dccb-3d3b-8944-a6b3acb22cc8",
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
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "b5c0d164-c75d-e220-6b2a-8d1e3784dbf4",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Call] Meltdown Move",
				uuid = "ffd5a359-cda1-835e-8c71-48e4c468f4ca",
				version = 2,
			},
			inheritedObjectUUID = "db62f730-796c-c59c-a4ac-c01e861474ab",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "4ea95198-e304-d992-8392-9971cd802874",
			},
			objectType = "folder",
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
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 13,
				execute = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\n-- Assigned clock positions from the user's diagram; T1 = MT, T2 = OT.\nlocal diagonal = 10 / math.sqrt(2)\nlocal spots = {\n    T1 = {0, -10}, T2 = {0, 10},\n    H1 = {-10, 0}, H2 = {10, 0},\n    R1 = {-diagonal, -diagonal}, R2 = {diagonal, -diagonal},\n    M1 = {-diagonal, diagonal}, M2 = {diagonal, diagonal},\n}\nlocal offset = spots[slot]\nif not offset then return end\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then return end\nlocal destination = {x = 100 + offset[1], y = 0, z = 100 + offset[2]}\nlocal drawer = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(player.pos, destination)\nif distance > 0.8 then\n    local tip = math.min(1.5, distance * 0.35)\n    drawer:addArrow(\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, destination),\n        math.max(0.1, distance - tip), 0.65, tip, 1.3, false, flags\n    )\nend\ndrawer:addCircle(destination.x, destination.y, destination.z, 0.65, false, flags)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 49.4,
				name = "Meltdown bait to roster clockspots",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 1.1,
				timerStartOffset = -0.74,
				uuid = "8ab0400f-0cfc-39d6-b19e-3859074616ac",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\n-- Assigned clock positions from the user's diagram; T1 = MT, T2 = OT.\nlocal diagonal = 10 / math.sqrt(2)\nlocal spots = {\n    T1 = {0, -10}, T2 = {0, 10},\n    H1 = {-10, 0}, H2 = {10, 0},\n    R1 = {-diagonal, -diagonal}, R2 = {diagonal, -diagonal},\n    M1 = {-diagonal, diagonal}, M2 = {diagonal, diagonal},\n}\nlocal offset = spots[slot]\nif not offset then return end\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then return end\nlocal destination = {x = 100 + offset[1], y = 0, z = 100 + offset[2]}\nlocal drawer = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(player.pos, destination)\nif distance > 0.8 then\n    local tip = math.min(1.5, distance * 0.35)\n    drawer:addArrow(\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, destination),\n        math.max(0.1, distance - tip), 0.65, tip, 1.3, false, flags\n    )\nend\ndrawer:addCircle(destination.x, destination.y, destination.z, 0.65, false, flags)\n\nself.used=true\n",
				executeType = 2,
				loop = true,
				mechanicTime = 49.4,
				name = "[Jacob v2] Meltdown roster clockspot arrows",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 1.1,
				timerStartOffset = -3.24,
				uuid = "2585f832-0b31-69ef-a470-f554db4cb5ce",
				version = 2,
			},
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "2612a7de-ccca-5cca-e36d-6d782792a9ae",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "e62a4383-1d0b-893b-95a2-830fb0a9e587",
			},
			objectType = "folder",
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
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 3,
				execute = "\nif not eventArgs or eventArgs.entityContentID ~= 14749 then return end\nif eventArgs.spellID == 50032 then\n JacobEnuoAiryPreview = {bossID=eventArgs.entityID,expires=Now()+((eventArgs.channelTimeMax or 3.7)+1)*1000}\nelseif eventArgs.spellID == 50033 then\n JacobEnuoAiryPreview = nil\nend\n",
				executeType = 2,
				mechanicTime = 57.4,
				name = "Airy Emptiness preview timing",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 1,
				timerStartOffset = -7,
				uuid = "f755d67b-bdb0-3c13-ab18-a638a2eea853",
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
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 13,
				execute = "\nlocal state = JacobEnuoAiryPreview\nif not state or Now() >= state.expires then return end\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\nlocal pairs = {T1=\"R1\",R1=\"T1\",H2=\"R2\",R2=\"H2\",H1=\"M1\",M1=\"H1\",T2=\"M2\",M2=\"T2\"}\nlocal partnerSlot = pairs[slot]\nif not partnerSlot then return end\nlocal quadrant = {T1={-1,-1},R1={-1,-1},H2={1,-1},R2={1,-1},H1={-1,1},M1={-1,1},T2={1,1},M2={1,1}}\nlocal q=quadrant[slot]\nlocal dest={x=100+q[1]*7.1,y=0,z=100+q[2]*7.1}\nlocal p = TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal green = TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(p.pos,dest)\nif distance > 0.8 then\n local tip = math.min(1.5,distance*0.35)\n green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.65,tip,1.3,false,flags)\nend\ngreen:addCircle(dest.x,dest.y,dest.z,0.65,false,flags)\n\nlocal partnerID = Roster.idOf(partnerSlot)\nlocal partner = partnerID and Roster.entOf(partnerSlot)\nif partner and partner.pos then\n green:addCircle(partner.pos.x,partner.pos.y,partner.pos.z,0.8,false,flags)\n green:addLine(p.pos.x,p.pos.y,p.pos.z,partner.pos.x,partner.pos.y,partner.pos.z,0.08,0.08)\nend\nlocal boss = TensorCore.mGetEntity(state.bossID)\nif not boss or not boss.pos then return end\nlocal ownCone = TensorCore.getCachedDrawer(0x1133FF33,0x2233FF33,0x5533FF33,0x8833FF33,1)\nownCone:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,p.pos),false,flags)\nlocal support = slot==\"T1\" or slot==\"T2\" or slot==\"H1\" or slot==\"H2\"\nlocal group = support and {\"T1\",\"T2\",\"H1\",\"H2\"} or {\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal cones = TensorCore.getCachedDrawer(0x222255FF,0x332255FF,0x772255FF,0xAA222255,1)\n-- Compact 20y previews preserve the documented full 60-degree aperture.\n-- DPS previews use the DPS lane requested by the user, rather than duplicate support lanes.\nfor _, other in ipairs(group) do\n if other ~= slot then\n  local targetID = Roster.idOf(other)\n  local target = targetID and Roster.entOf(other)\n  if target and target.pos then\n   cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,flags)\n  end\n end\nend\n",
				executeType = 2,
				loop = true,
				mechanicTime = 57.4,
				name = "Airy Emptiness roster pairs and cones",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "2917c5a0-9f54-1bcb-a3da-374c73a4d10a",
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
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 2,
				execute = "if eventArgs and (eventArgs.spellID == 50034 or eventArgs.spellID == 50035) then JacobEnuoAiryPreview = nil end",
				executeType = 2,
				mechanicTime = 57.4,
				name = "Airy Emptiness hit cleanup",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "c522acde-5860-802f-8996-509ea0ae2656",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoEmptiness={kind=eventArgs.spellID,bossID=eventArgs.entityID,expires=Now()+(eventArgs.channelTimeMax+1)*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"a2733ebe-b3ca-5e6c-8696-62bf835fccd3",
									true,
								},
							},
							name = "Airy or Dense Emptiness timing",
							uuid = "d5e57110-4142-d103-b954-8d88059c55b4",
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
							spellIDList = 
							{
								50032,
								50033,
							},
							uuid = "a2733ebe-b3ca-5e6c-8696-62bf835fccd3",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 57.4,
				name = "Airy or Dense Emptiness timing",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "327827bf-263f-b613-a70d-ad18b61a818b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "\nlocal state = data.enuoEmptiness\nif not state or Now() >= state.expires then return end\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\nlocal pairs = {T1=\"R1\",R1=\"T1\",H2=\"R2\",R2=\"H2\",H1=\"M1\",M1=\"H1\",T2=\"M2\",M2=\"T2\"}\nlocal partnerSlot = pairs[slot]\nif not partnerSlot then return end\nlocal quadrant = {T1={-1,-1},R1={-1,-1},H2={1,-1},R2={1,-1},H1={-1,1},M1={-1,1},T2={1,1},M2={1,1}}\nlocal q=quadrant[slot]\nif state.kind==50033 then q=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and {-1,0} or {1,0} end\nlocal dest={x=100+q[1]*(state.kind==50033 and 10 or 7.1),y=0,z=100+q[2]*(state.kind==50033 and 10 or 7.1)}\nlocal p = TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal green = TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(p.pos,dest)\nif distance > 0.8 then\n local tip = math.min(1.5,distance*0.35)\n green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.65,tip,1.3,false,flags)\nend\ngreen:addCircle(dest.x,dest.y,dest.z,0.65,false,flags)\n\nif state.kind==50033 then\n local boss=TensorCore.mGetEntity(state.bossID)\n if boss then\n  local safe=TensorCore.getCachedDrawer(0x2233FF33,0x3333FF33,0x7733FF33,0xAA000000,1)\n  local danger=TensorCore.getCachedDrawer(0x222255FF,0x332255FF,0x772255FF,0xAA222255,1)\n  local myHealer=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and \"H1\" or \"H2\"\n  for _,hs in ipairs({\"H1\",\"H2\"}) do local h=Roster.entOf(hs) if h then local cones=hs==myHealer and safe or danger cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(100),TensorCore.getHeadingToTarget(boss.pos,h.pos),false,flags) end end\n end\n self.used=true return\nend\nlocal partnerID = Roster.idOf(partnerSlot)\nlocal partner = partnerID and Roster.entOf(partnerSlot)\nif partner and partner.pos then\n green:addCircle(partner.pos.x,partner.pos.y,partner.pos.z,0.8,false,flags)\n green:addLine(p.pos.x,p.pos.y,p.pos.z,partner.pos.x,partner.pos.y,partner.pos.z,0.08,0.08)\nend\nlocal boss = TensorCore.mGetEntity(state.bossID)\nif not boss or not boss.pos then return end\nlocal ownCone = TensorCore.getCachedDrawer(0x1133FF33,0x2233FF33,0x5533FF33,0x8833FF33,1)\nownCone:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,p.pos),false,flags)\nlocal support = slot==\"T1\" or slot==\"T2\" or slot==\"H1\" or slot==\"H2\"\nlocal group = support and {\"T1\",\"T2\",\"H1\",\"H2\"} or {\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal cones = TensorCore.getCachedDrawer(0x222255FF,0x332255FF,0x772255FF,0xAA222255,1)\n-- Compact 20y previews preserve the documented full 60-degree aperture.\n-- DPS previews use the DPS lane requested by the user, rather than duplicate support lanes.\nfor _, other in ipairs(group) do\n if other ~= slot then\n  local targetID = Roster.idOf(other)\n  local target = targetID and Roster.entOf(other)\n  if target and target.pos then\n   cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,flags)\n  end\n end\nend\n\nself.used=true",
							name = "Roster pair or light-party arrows",
							uuid = "6599f138-173d-763d-b072-b856632acb93",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 57.4,
				name = "Roster pair or light-party arrows",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "1e7c57b4-cee0-22f0-9355-a4b80a5a0f97",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoEmptiness=nil\nself.used=true",
							conditions = 
							{
								
								{
									"4f8fd403-77fd-d46b-bebb-65786568b329",
									true,
								},
							},
							name = "Emptiness hit cleanup",
							uuid = "fa7f2524-7eef-58fa-98d8-35b9d973cc26",
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
							spellIDList = 
							{
								50034,
								50035,
							},
							uuid = "4f8fd403-77fd-d46b-bebb-65786568b329",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 2,
				mechanicTime = 57.4,
				name = "Emptiness hit cleanup",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "9c203500-00ab-1fb6-947a-7f21d91cb5bc",
				version = 2,
			},
		},
	},
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "a6aabaa7-3743-620b-93bc-c893510c1c0e",
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
							actionLua = "local Roster = AnyoneCore.Roster\nlocal boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid=14749})\nif not boss then return end\nlocal now = Now()\nif data.enuoTankBarsStarted and now-data.enuoTankBarsStarted < 500 then self.used=true return end\nlocal duration = math.max(1,eventArgs.channelTimeMax*1000)\nlocal drawer = TensorCore.getCachedDrawer(0x80FF0000,0x80FF0000,0x80FF0000,0x00000000,0)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nfor _, slot in ipairs({\"T1\",\"T2\"}) do\n local id = Roster.idOf(slot)\n if id then drawer:addTimedRectOnEnt(duration,id,0.2,6,boss.id,0,true,false,true,math.pi,false,flags) end\nend\ndata.enuoTankBarsStarted = now\nself.used = true",
							conditions = 
							{
								
								{
									"cd03aa13-9ba9-6ca1-a806-93062fd98d16",
									true,
								},
								
								{
									"e35ef265-2cb5-919b-8bc0-82449d9004a2",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "c2193725-69b8-383b-a354-7d40ab8cfd69",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "cd03aa13-9ba9-6ca1-a806-93062fd98d16",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "e35ef265-2cb5-919b-8bc0-82449d9004a2",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 67.8,
				name = "Naught Grows tank indicators",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "e4cf02f1-39c5-1b29-ab20-4a6f0c7540eb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local caster=TensorCore.mGetEntity(eventArgs.entityID)\nif not caster then return end\nlocal now=Now()\nlocal state=data.enuoNaughtSafe\nif not state or now-state.started>10000 then state={started=now,shapes={}} data.enuoNaughtSafe=state end\nstate.shapes[eventArgs.entityID]={id=eventArgs.spellID,x=caster.pos.x,y=caster.pos.y,z=caster.pos.z,expires=now+eventArgs.channelTimeMax*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"9aac1dfe-8ff4-f070-b32d-a7760a7e3a67",
									true,
								},
							},
							name = "Capture unsafe shapes",
							uuid = "7e739c88-e5e5-5f5b-bf07-977c7b8c21d0",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
								49979,
								49980,
							},
							uuid = "9aac1dfe-8ff4-f070-b32d-a7760a7e3a67",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 67.8,
				name = "Naught Grows safe-area capture",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "7bae99c1-6c8c-9645-9f8a-61ac9947c5a8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state=data.enuoNaughtSafe\nif not state then return end\nlocal now=Now()\nlocal count,big,small=0,false,false\nfor _,s in pairs(state.shapes) do\n if now>=s.expires then data.enuoNaughtSafe=nil return end\n count=count+1\n if s.id==49977 or s.id==49978 then big=true else small=true end\nend\nif count<2 or not big or not small then return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel then return end\nlocal F=Argus2.RenderFlags\nlocal base=F.FLAG_OCCLUSION_BASE+F.FLAG_WARP_TERRAIN+F.FLAG_RENDER_UI\nlocal cut=F.FLAG_OCCLUDE+F.FLAG_WARP_TERRAIN\nArgus.addCircleFilled(100,0.05,100,20,64,0x6033FF33,0xCC33FF33,0.12,0,0,0,false,base,channel)\nfor _,s in pairs(state.shapes) do\n if s.id==49977 or s.id==49979 then\n  Argus.addCircleFilled(s.x,0.05,s.z,s.id==49977 and 40 or 12,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n else\n  Argus.addDonutFilled(s.x,0.05,s.z,s.id==49978 and 40 or 6,s.id==49978 and 60 or 40,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n end\nend\nself.used=true",
							name = "Subtract active Naught Grows hits",
							uuid = "b4197e52-6c34-6288-8d36-0d3f8c92e632",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 67.8,
				name = "Naught Grows green safe area",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "737b35ca-0dc3-38e0-9e0e-60a6811a9740",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoHealerHighlightUntil=Now()+(eventArgs.channelTimeMax+2)*1000",
							conditions = 
							{
								
								{
									"afb860b0-4697-fe18-bd5f-bdf2eb851c4d",
									true,
								},
								
								{
									"feb3acf2-907b-842e-a085-0c344899bd46",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "364f22f8-2701-856f-963b-3d22b77e44b3",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "afb860b0-4697-fe18-bd5f-bdf2eb851c4d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "feb3acf2-907b-842e-a085-0c344899bd46",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 67.8,
				name = "[Jacob v3] Naught Grows healer highlight start",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "5f483379-5921-3b02-a279-df84c645af40",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "self.used=true\nif not data.enuoHealerHighlightUntil or Now()>=data.enuoHealerHighlightUntil then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot()\nlocal healer=({T1=\"H1\",M1=\"H1\",R1=\"H1\",T2=\"H2\",M2=\"H2\",R2=\"H2\"})[slot]\nif not healer then return end\nlocal h=R.entOf(healer) if not h then return end\nlocal d=TensorCore.getCachedDrawer(0x5533FF33,0x8833FF33,0xFF33FF33,0xFF000000,2)\nd:addCircle(h.pos.x,h.pos.y,h.pos.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 67.8,
				name = "[Jacob v3] Naught Grows assigned healer highlight",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "d90601d1-24bc-73e7-a1f8-c2eda26c5fa4",
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
				displayPath = "Jacob Draws",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID==49983 or eventArgs.spellID==49984 then data.enuoHealerHighlightUntil=nil end",
				executeType = 2,
				loop = true,
				mechanicTime = 67.8,
				name = "[Jacob v3] Naught Grows healer highlight stack cleanup",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "f7b3be53-08dd-b3c6-a6ff-c9ae6c72db04",
				version = 2,
			},
		},
	},
	[14] = 
	{
		
		{
			data = 
			{
				name = "[Paradox] Draw Orb Order",
				uuid = "d60cb140-8822-bc01-9b85-d8b26c5f325f",
				version = 2,
			},
			inheritedObjectUUID = "069ad329-8b82-6ec5-b884-e2ac7b60b7a1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Paradox] Capture Orb Tethers",
				uuid = "e80ff38f-1d03-43f8-bbbb-a118af61f38a",
				version = 2,
			},
			inheritedObjectUUID = "e8626128-8702-6db2-8a95-48c8be7a4840",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "e6574483-be64-a520-8d1e-9af48db45c6b",
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
							actionLua = "self.used=true\nif eventArgs.newTetherID~=406 and eventArgs.newTetherID~=407 then return end\nlocal e=TensorCore.mGetEntity(eventArgs.sourceEntityID)\nif not e then return end\nlocal model=Argus.getEntityModel(e.id)\nif model~=19909 and model~=19910 then return end\nlocal now=Now()\nlocal s=data.enuoOrbGuide\nif not s or now-s.started>40000 then s={started=now,orbs={},hits={},phase=1,waiting=false} data.enuoOrbGuide=s end\ns.orbs[e.id]={id=e.id,color=eventArgs.newTetherID,big=model==19910,x=e.pos.x,z=e.pos.z}\nlocal count=0 for _ in pairs(s.orbs) do count=count+1 end\nif count~=8 then return end\ns.assign={}\nfor _,color in ipairs({407,406}) do\n local anchor,small\n small={}\n for _,orb in pairs(s.orbs) do if orb.color==color then if orb.big then anchor=orb else table.insert(small,orb) end end end\n if not anchor or #small~=3 then s.assign=nil return end\n local north=math.atan2(anchor.x-100,100-anchor.z)\n for _,orb in ipairs(small) do orb.angle=(math.atan2(orb.x-100,100-orb.z)-north)%(2*math.pi) end\n table.sort(small,function(a,b) return a.angle<b.angle end)\n s.assign[color]={T=anchor.id,H=small[1].id,M=small[2].id,R=small[3].id}\nend\nself.used=true",
							conditions = 
							{
								
								{
									"04eff235-c6d1-ef73-acc0-bc4643fea526",
									true,
								},
							},
							name = "Personal orb assignment capture",
							uuid = "63309f1f-17aa-124f-b126-a8148d51c3b3",
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
							eventArgOptionType = 2,
							eventEntityContentID = 14751,
							uuid = "04eff235-c6d1-ef73-acc0-bc4643fea526",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 15,
				loop = true,
				mechanicTime = 84.2,
				name = "Personal orb assignment capture",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 45,
				uuid = "2ac251a0-4f8d-003f-b35e-66398afe6f28",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal s=data.enuoOrbGuide\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not s or not s.assign or s.phase>2 or not R or not R.current() then return end\nlocal slot=R.mySlot() if not slot then return end\nlocal color=s.phase==1 and 407 or 406\nlocal assigned=s.assign[color][string.sub(slot,1,1)]\nif eventArgs.entityID~=assigned or s.hits[assigned] then return end\ns.hits[assigned]=true\ns.phase=s.phase+1\ns.waiting=false\ns.lastHit=Now()\n",
							conditions = 
							{
								
								{
									"2381ea84-9d62-7d5a-9ce0-5a492bea74c9",
									true,
								},
							},
							name = "Personal orb pop cleanup",
							uuid = "2812bf58-8fec-2bd6-b8e2-15deeac51a9d",
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
							spellIDList = 
							{
								50006,
								50007,
							},
							uuid = "2381ea84-9d62-7d5a-9ce0-5a492bea74c9",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 84.2,
				name = "Personal orb pop cleanup",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 45,
				uuid = "a0d5ae1a-8293-1e10-bec8-6216a9090564",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.enuoOrbGuide\nif not s or s.phase>2 or Now()-s.started>40000 then return end\nlocal p=TensorCore.mGetPlayer() if not p then return end\nlocal buff=TensorCore.getBuff(p,2941)\ns.waiting=(buff and buff.duration>0) or (s.lastHit and Now()-s.lastHit<750) or false\nif buff and buff.duration>0 then\n AnyoneCore.addTimedWorldTextOnEnt(250,string.format(\"Wait %.1fs\",buff.duration),p.id,0xFFFFFFFF,0xBB000000,1,-0.5)\nend\nself.used=true",
							name = "Orb vulnerability countdown",
							uuid = "72d9ba8f-78f3-abb9-a903-42d0cddf584a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				enabled = false,
				loop = true,
				mechanicTime = 84.2,
				name = "[Disabled] Orb vulnerability countdown",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 45,
				uuid = "8f69cf1c-fdc6-4273-830f-1bd5e6e9b617",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.enuoOrbGuide\nif not s or not s.assign or s.phase>2 or Now()-s.started>40000 then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot() if not slot then return end\nlocal color=s.phase==1 and 407 or 406\nlocal id=s.assign[color][string.sub(slot,1,1)]\nlocal orb=id and TensorCore.mGetEntity(id)\nlocal p=TensorCore.mGetPlayer()\nif not orb or not p then return end\nlocal dest={x=orb.pos.x,y=orb.pos.y,z=orb.pos.z}\nlocal d=TensorCore.getDistance2d(p.pos,dest)\nlocal green=TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif d>0.8 then local tip=math.min(1.5,d*0.35) green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,d-tip),0.65,tip,1.3,false,flags) end\ngreen:addCircle(dest.x,dest.y,dest.z,1,false,flags)\nself.used=true",
							name = "Yellow then purple personal orb arrows",
							uuid = "f34758b3-5306-34cd-b1f2-8510f861f61f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 84.2,
				name = "Yellow then purple personal orb arrows",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 45,
				uuid = "6c7ba7ac-db28-d2d2-ba85-9ebdc8421ffa",
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
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "58eefec4-542a-4a08-cf79-883ac3e06094",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "ec4c5b87-bceb-d7a7-a834-72ba47ce9df7",
			},
			objectType = "folder",
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
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 3,
				execute = "self.used=true\nlocal radii={[49995]=6.2,[49996]=12.34,[49997]=18}\nlocal angles={[49995]=10,[49996]=20,[49997]=30}\nlocal radius=radii[eventArgs.spellID] if not radius then return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID) if not e then return end\nlocal now=Now()\nlocal s=data.enuoVacuumSafe\nif not s or now-s.started>15000 then s={started=now,shapes={}} data.enuoVacuumSafe=s end\nlocal heading=e.pos.h+math.rad(angles[eventArgs.spellID])\ns.shapes[e.id]={x=e.pos.x+math.sin(heading)*radius,z=e.pos.z+math.cos(heading)*radius,expires=now+(eventArgs.channelTimeMax+2.6)*1000}",
				executeType = 2,
				loop = true,
				mechanicTime = 115.7,
				name = "[Jacob v2] Vacuum predicted destination capture",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 2.1,
				timerStartOffset = -5.7,
				uuid = "f0885000-cb67-65f4-a30f-09010193a096",
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
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 12,
				execute = "local s=data.enuoVacuumSafe if not s then return end\nlocal count=0 local now=Now()\nfor _,v in pairs(s.shapes) do if now>=v.expires then return end count=count+1 end\nif count~=8 then return end\nlocal ch=Argus2.getNextUnusedChannel(true) if not ch then return end\nlocal F=Argus2.RenderFlags\nlocal base=F.FLAG_OCCLUSION_BASE+F.FLAG_WARP_TERRAIN+F.FLAG_RENDER_UI\nlocal cut=F.FLAG_OCCLUDE+F.FLAG_WARP_TERRAIN\n-- Restrict green to the inner arena, excluding the outer Silent Torrent sectors.\nArgus.addCircleFilled(100,.05,100,16.9,64,0x6033FF33,0xCC33FF33,.12,0,0,0,false,base,ch)\nfor _,v in pairs(s.shapes) do Argus.addCircleFilled(v.x,.05,v.z,7,64,0xFFFFFFFF,0,0,0,0,0,false,cut,ch) end\nself.used=true",
				executeType = 2,
				loop = true,
				mechanicTime = 115.7,
				name = "[Jacob v2] Vacuum green subtractive inner safe area",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 2.1,
				timerStartOffset = -3.7,
				uuid = "69b1da0f-6dcb-6408-933e-46672161f5fd",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "self.used=true\nlocal now=Now()\nlocal s=data.enuoVacuumSectorSafe\nif not s or now-s.started>12000 then s={started=now,shapes={},sectors={}} data.enuoVacuumSectorSafe=s end\nfor _,a in ipairs(Argus.getCurrentGroundAOEs(true)) do\n if a.aoeID==49995 or a.aoeID==49996 or a.aoeID==49997 then\n  s.shapes[a.entityID]={x=a.x,z=a.z,expires=a.startTime+a.duration*1000+2600}\n end\nend\nlocal angles={[49998]=20,[49999]=40,[50000]=60}\nfor _,a in ipairs(Argus.getCurrentAOEs()) do\n if angles[a.aoeID] then\n  s.sectors[a.entityID]={x=a.x,z=a.z,heading=a.heading,angle=math.rad(angles[a.aoeID]),expires=a.startTime+a.duration*1000+2600}\n end\n if a.aoeID==50001 then s.shapes[a.entityID]={x=a.x,z=a.z,expires=a.startTime+a.duration*1000} end\nend\nlocal count=0\nfor _,v in pairs(s.shapes) do if now<v.expires then count=count+1 end end\nlocal sectorCount=0\nfor _,v in pairs(s.sectors) do if now<v.expires then sectorCount=sectorCount+1 end end\nif count~=8 or sectorCount~=8 then return end\nlocal f=Argus2.RenderFlags\nlocal channel=Argus2.getNextUnusedChannel(true)\nlocal cut=f.FLAG_OCCLUDE+f.FLAG_WARP_TERRAIN+f.FLAG_RENDER_UI\nlocal base=f.FLAG_OCCLUSION_BASE+f.FLAG_WARP_TERRAIN+f.FLAG_RENDER_UI\nfor _,v in pairs(s.shapes) do\n if now<v.expires then Argus.addCircleFilled(v.x,0.05,v.z,7,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel) end\nend\nfor _,v in pairs(s.sectors) do\n if now<v.expires then Argus.addConeFilled(v.x,0.05,v.z,19,v.angle,v.heading,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel) end\nend\nArgus.addCircleFilled(100,0.05,100,16.9,64,0x4033FF33,0x8833FF33,0.1,0,0,0,false,base,channel)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 115.7,
				name = "[Jacob v3] Vacuum circles and sector footprint subtraction",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 2.1,
				timerStartOffset = -5.7,
				uuid = "c2e516d3-18e5-9206-a557-62784d109628",
				version = 2,
			},
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "7fad7946-6d25-3c12-59cb-8a009ec97cd6",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "2c89fad9-a6d5-aed7-96ee-05b3440a8d0c",
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
							actionLua = "self.used=true\ndata.enuoEmptiness={kind=eventArgs.spellID,bossID=eventArgs.entityID,expires=Now()+(eventArgs.channelTimeMax+1)*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"a32e991e-41de-4b68-b70b-6bd4f960c26b",
									true,
								},
							},
							name = "Airy or Dense Emptiness timing",
							uuid = "827aabc1-2eb2-2cd0-951e-db80572a4b82",
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
							spellIDList = 
							{
								50032,
								50033,
							},
							uuid = "a32e991e-41de-4b68-b70b-6bd4f960c26b",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 123,
				name = "Airy or Dense Emptiness timing",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "60516871-9ce4-8299-aa03-42250a0fa451",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "\nlocal state = data.enuoEmptiness\nif not state or Now() >= state.expires then return end\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\nlocal pairs = {T1=\"R1\",R1=\"T1\",H2=\"R2\",R2=\"H2\",H1=\"M1\",M1=\"H1\",T2=\"M2\",M2=\"T2\"}\nlocal partnerSlot = pairs[slot]\nif not partnerSlot then return end\nlocal quadrant = {T1={-1,-1},R1={-1,-1},H2={1,-1},R2={1,-1},H1={-1,1},M1={-1,1},T2={1,1},M2={1,1}}\nlocal q=quadrant[slot]\nif state.kind==50033 then q=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and {-1,0} or {1,0} end\nlocal dest={x=100+q[1]*(state.kind==50033 and 10 or 7.1),y=0,z=100+q[2]*(state.kind==50033 and 10 or 7.1)}\nlocal p = TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal green = TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(p.pos,dest)\nif distance > 0.8 then\n local tip = math.min(1.5,distance*0.35)\n green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.65,tip,1.3,false,flags)\nend\ngreen:addCircle(dest.x,dest.y,dest.z,0.65,false,flags)\n\nif state.kind==50033 then\n local boss=TensorCore.mGetEntity(state.bossID)\n if boss then\n  local safe=TensorCore.getCachedDrawer(0x2233FF33,0x3333FF33,0x7733FF33,0xAA000000,1)\n  local danger=TensorCore.getCachedDrawer(0x222255FF,0x332255FF,0x772255FF,0xAA222255,1)\n  local myHealer=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and \"H1\" or \"H2\"\n  for _,hs in ipairs({\"H1\",\"H2\"}) do\n   local h=Roster.entOf(hs)\n   if h then\n    local cones=hs==myHealer and safe or danger\n    cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(100),TensorCore.getHeadingToTarget(boss.pos,h.pos),false,flags)\n   end\n  end\n end\n self.used=true return\nend\nlocal partnerID = Roster.idOf(partnerSlot)\nlocal partner = partnerID and Roster.entOf(partnerSlot)\nif partner and partner.pos then\n green:addCircle(partner.pos.x,partner.pos.y,partner.pos.z,0.8,false,flags)\n green:addLine(p.pos.x,p.pos.y,p.pos.z,partner.pos.x,partner.pos.y,partner.pos.z,0.08,0.08)\nend\nlocal boss = TensorCore.mGetEntity(state.bossID)\nif not boss or not boss.pos then return end\nlocal ownCone = TensorCore.getCachedDrawer(0x1133FF33,0x2233FF33,0x5533FF33,0x8833FF33,1)\nownCone:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,p.pos),false,flags)\nlocal support = slot==\"T1\" or slot==\"T2\" or slot==\"H1\" or slot==\"H2\"\nlocal group = support and {\"T1\",\"T2\",\"H1\",\"H2\"} or {\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal cones = TensorCore.getCachedDrawer(0x2233FF33,0x3333FF33,0x7733FF33,0xAA000000,1)\n-- Compact 20y previews preserve the documented full 60-degree aperture.\n-- DPS previews use the DPS lane requested by the user, rather than duplicate support lanes.\nfor _, other in ipairs(group) do\n if other ~= slot then\n  local targetID = Roster.idOf(other)\n  local target = targetID and Roster.entOf(other)\n  if target and target.pos then\n   cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,flags)\n  end\n end\nend\n\nself.used=true",
							name = "Roster pair or light-party arrows",
							uuid = "855dc958-b2c8-9f4c-a062-dca3f137f30e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 123,
				name = "Roster pair or light-party arrows",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "47c0f909-e0db-a93e-be58-8fe8668d5f58",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoEmptiness=nil\nself.used=true",
							conditions = 
							{
								
								{
									"e325cbe9-c060-9f91-9091-62aefed67b96",
									true,
								},
							},
							name = "Emptiness hit cleanup",
							uuid = "bef06132-ff76-ebc1-af4c-9328d1ea6118",
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
							spellIDList = 
							{
								50034,
								50035,
							},
							uuid = "e325cbe9-c060-9f91-9091-62aefed67b96",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 2,
				mechanicTime = 123,
				name = "Emptiness hit cleanup",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "6593f40a-bc9e-70a1-8f90-f49655400e62",
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
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "44b4de45-cd88-42a1-c51e-1ccfb4018255",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "fb996cf7-d416-1f24-9858-45bd618ee2a8",
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
							actionLua = "self.used=true\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot()\nif not slot or slot==\"T1\" or slot==\"T2\" then return end\nlocal now=Now()\nif data.enuoFlareRingsAt and now-data.enuoFlareRingsAt<500 then return end\ndata.enuoFlareRingsAt=now\nlocal drawer=TensorCore.getCachedDrawer(0x222255FF,0x442255FF,0xCC2255FF,0xAA000000,2)\nfor _,tank in ipairs({\"T1\",\"T2\"}) do\n local target=R.idOf(tank)\n if target then drawer:addTimedCircleOnEnt(math.max(1,eventArgs.channelTimeMax*1000),target,13,0,false,true,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end\nend",
							conditions = 
							{
								
								{
									"518876df-0c9a-a1e9-a2b7-ba373047dac7",
									true,
								},
							},
							name = "Follow targeted tank until flare finishes",
							uuid = "2304aaf1-1515-5971-90ea-2295b04afcc2",
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
							spellIDList = 
							{
								50044,
							},
							uuid = "518876df-0c9a-a1e9-a2b7-ba373047dac7",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 134.1,
				name = "[Jacob v2] Tank flare 13y danger rings - non-tanks",
				timeRange = true,
				timelineIndex = 19,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "d42e5275-3758-e869-83bb-348426abd2f1",
				version = 2,
			},
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "8e178b05-a84d-a361-264d-0b5b2f132a15",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "f762fdca-e4f4-f9d2-a14d-8308416188a1",
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
							actionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\n-- Assigned clock positions from the user's diagram; T1 = MT, T2 = OT.\nlocal diagonal = 10 / math.sqrt(2)\nlocal spots = {\n    T1 = {0, -10}, T2 = {0, 10},\n    H1 = {-10, 0}, H2 = {10, 0},\n    R1 = {-diagonal, -diagonal}, R2 = {diagonal, -diagonal},\n    M1 = {-diagonal, diagonal}, M2 = {diagonal, diagonal},\n}\nlocal offset = spots[slot]\nif not offset then return end\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then return end\nlocal destination = {x = 100 + offset[1], y = 0, z = 100 + offset[2]}\nlocal drawer = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(player.pos, destination)\nif distance > 0.8 then\n    local tip = math.min(1.5, distance * 0.35)\n    drawer:addArrow(\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, destination),\n        math.max(0.1, distance - tip), 0.65, tip, 1.3, false, flags\n    )\nend\ndrawer:addCircle(destination.x, destination.y, destination.z, 0.65, false, flags)\n\nself.used=true",
							name = "All for Naught roster clockspots",
							uuid = "ed56a59a-cc8f-4464-9c19-813ce396fa56",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 154.8,
				name = "All for Naught roster clockspots",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 5.2,
				timerStartOffset = -0.8,
				uuid = "216ab772-13a4-e57d-a8ea-1ce1406bd50b",
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
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "67b372d0-6d18-856c-a343-aa12b36b7ea0",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "6a9e39a1-3a42-1bc5-62a1-2adff87a3d71",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Draw] Voidal Cones",
				uuid = "219632bf-eafe-d63a-b0e0-4d3ac59db4f4",
				version = 2,
			},
			inheritedObjectUUID = "46d4d260-7e33-28de-9e7e-935c19d469d7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Opti] Anti-KB",
				uuid = "6f792758-8ffc-8caa-ae93-d0737f6fe921",
				version = 2,
			},
			inheritedObjectUUID = "aff55dc3-92fd-89b7-8c6c-c5a2a15bca1f",
			inheritedOverwrites = 
			{
				enabled = false,
				timeRandomRange = false,
				timerEndOffset = -3.4,
				timerStartOffset = -3.9,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Opti",
				uuid = "6b7c2f51-2c7a-22c4-b0c1-c2caec66b1b8",
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
							actionID = 7548,
							conditions = 
							{
								
								{
									"34025e00-69d1-ec36-8c4d-971a399c34a1",
									true,
								},
							},
							endIfUsed = true,
							uuid = "b1b01af5-0f24-63f6-b70f-271b011c17b9",
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
									"183ba177-f136-5829-9f6e-0236ecec4fc6",
									true,
								},
							},
							endIfUsed = true,
							uuid = "33d414f7-9c31-4fc9-a031-4bf79f070d2f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							actionID = 7548,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							uuid = "34025e00-69d1-ec36-8c4d-971a399c34a1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7559,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							uuid = "183ba177-f136-5829-9f6e-0236ecec4fc6",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Opti",
				mechanicTime = 174.9,
				name = "171 Arms Length or Surecast",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = -3.4,
				timerStartOffset = -3.9,
				uuid = "50efe903-a290-4106-bad5-50a8f78a0d46",
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
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "0a3b3312-753a-b6c6-00bb-e9d075c645e2",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "eb99a60c-b984-e033-97a5-e9a6cae32ab4",
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
							actionLua = "self.used=true\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.slotOf(eventArgs.entityID) then return end\nlocal now=Now()\nlocal s=data.enuoTowerGuide\nif not s or now>=s.expires then s={marks={},towers={},expires=now+9000,cones=true} data.enuoTowerGuide=s end\ns.marks[eventArgs.entityID]=true\nself.used=true",
							conditions = 
							{
								
								{
									"2e5b732f-6f10-15b6-b4c4-5cc1161c497e",
									true,
								},
							},
							name = "Voidal marked-player capture",
							uuid = "26f55d65-f329-ca66-a27c-e731df3ebd61",
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
							eventMarkerID = 721,
							uuid = "2e5b732f-6f10-15b6-b4c4-5cc1161c497e",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 4,
				mechanicTime = 174.9,
				name = "[Disabled original] Voidal marked-player capture",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "f9e6f5db-30ae-4f78-8811-577b15378493",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal now=Now()\nlocal s=data.enuoTowerGuide\nif not s or now>=s.expires then s={marks={},towers={},expires=now+9000,cones=true} data.enuoTowerGuide=s end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then return end\ns.towers[e.id]={id=e.id,x=e.pos.x,y=e.pos.y,z=e.pos.z,expires=now+eventArgs.channelTimeMax*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"6487b3ea-21c0-88b2-b0b2-56f8d5be42d8",
									true,
								},
							},
							name = "Empty Shadow tower positions",
							uuid = "41be0eb6-c0f6-b4e3-a58f-65442a8276dc",
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
							spellIDList = 
							{
								50013,
							},
							uuid = "6487b3ea-21c0-88b2-b0b2-56f8d5be42d8",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 3,
				mechanicTime = 174.9,
				name = "[Disabled original] Empty Shadow tower positions",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "2c52807f-46ab-b385-af8b-154fdfacfc30",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal s=data.enuoTowerGuide\nif not s then return end\nif eventArgs.spellID==50038 then s.cones=false else data.enuoTowerGuide=nil end\nself.used=true",
							conditions = 
							{
								
								{
									"7136a0a2-9c94-efc0-91ef-0576b0b2b9c4",
									true,
								},
							},
							name = "Voidal cone and tower cleanup",
							uuid = "6a92177d-00ac-792f-a869-0bbf5a887fbe",
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
							spellIDList = 
							{
								50013,
								50038,
							},
							uuid = "7136a0a2-9c94-efc0-91ef-0576b0b2b9c4",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 2,
				mechanicTime = 174.9,
				name = "[Disabled original] Voidal cone and tower cleanup",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "253b7e91-bdc2-1261-ba3b-711dd6a82498",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.enuoTowerGuide\nif not s or Now()>=s.expires then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal shadow=TensorCore.getEntityByGroup(\"ContentID\",{contentid=14752})\nif s.cones and shadow then\n local cones=TensorCore.getCachedDrawer(0x162255FF,0x222255FF,0x552255FF,0x99222255,1)\n for id in pairs(s.marks) do local e=TensorCore.mGetEntity(id) if e then cones:addCone(shadow.pos.x,shadow.pos.y,shadow.pos.z,60,math.rad(60),TensorCore.getHeadingToTarget(shadow.pos,e.pos),false,flags) end end\nend\nlocal n=0 for _ in pairs(s.marks) do n=n+1 end\nif n~=4 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or s.marks[p.id] then return end\nlocal towers={} for _,t in pairs(s.towers) do if Now()<t.expires then table.insert(towers,t) end end\nif #towers~=4 then return end\nfor _,t in ipairs(towers) do t.angle=math.atan2(t.x-100,100-t.z)%(2*math.pi) end\ntable.sort(towers,function(a,b) return a.angle<b.angle end)\nlocal eligible={}\nfor _,slot in ipairs({\"T1\",\"T2\",\"H1\",\"H2\",\"M1\",\"M2\",\"R1\",\"R2\"}) do local id=R.idOf(slot) if id and not s.marks[id] then table.insert(eligible,id) end end\nif #eligible~=4 then return end\nlocal dest for i,id in ipairs(eligible) do if id==p.id then dest=towers[i] break end end\nif not dest then return end\nlocal green=TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal d=TensorCore.getDistance2d(p.pos,dest)\nif d>0.8 then local tip=math.min(1.5,d*0.35) green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,d-tip),0.65,tip,1.3,false,flags) end\ngreen:addCircle(dest.x,dest.y,dest.z,1,false,flags)\nself.used=true",
							name = "Unmarked roster tower arrows and four cones",
							uuid = "0270df08-79b0-e0b8-893f-04afb3ee8307",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 174.9,
				name = "[Disabled original] Unmarked roster tower arrows and four cones",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "20810aa2-2d29-178d-8c21-a5d391b003c8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.slotOf(eventArgs.entityID) then return end\nlocal now=Now()\nlocal s=data.enuoTowerGuide\nif not s or now>=s.expires then s={marks={},towers={},expires=now+9000,cones=true} data.enuoTowerGuide=s end\ns.marks[eventArgs.entityID]=true\nself.used=true",
							conditions = 
							{
								
								{
									"5c9a2e4d-9d89-9414-84f3-8ea58d32def4",
									true,
								},
							},
							name = "Voidal marked-player capture",
							uuid = "ae5ceca1-b9d3-177f-bbb0-3e47f38e74a0",
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
							eventMarkerID = 721,
							uuid = "5c9a2e4d-9d89-9414-84f3-8ea58d32def4",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 4,
				loop = true,
				mechanicTime = 174.9,
				name = "[Jacob v3] Voidal marked-player capture",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "d4a5cde8-cb32-8850-8e09-015e99a4f90b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal now=Now()\nlocal s=data.enuoTowerGuide\nif not s or now>=s.expires then s={marks={},towers={},expires=now+9000,cones=true} data.enuoTowerGuide=s end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then return end\ns.towers[e.id]={id=e.id,x=e.pos.x,y=e.pos.y,z=e.pos.z,expires=now+eventArgs.channelTimeMax*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"41d01ef8-cc10-832c-92be-7b361b3031de",
									true,
								},
							},
							name = "Empty Shadow tower positions",
							uuid = "92d26d57-3177-b3b6-a63a-1f12f251695e",
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
							spellIDList = 
							{
								50013,
							},
							uuid = "41d01ef8-cc10-832c-92be-7b361b3031de",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 174.9,
				name = "[Jacob v3] Empty Shadow tower positions",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "30029123-9446-23df-9a23-0c7b15407f03",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal s=data.enuoTowerGuide\nif not s then return end\nif eventArgs.spellID==50038 then s.cones=false else data.enuoTowerGuide=nil end\nself.used=true",
							conditions = 
							{
								
								{
									"7468b37f-b3fc-78c5-9604-a6154f5be6a9",
									true,
								},
							},
							name = "Voidal cone and tower cleanup",
							uuid = "61e048c6-2ca3-190b-ba4f-feca3aaa2f35",
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
							spellIDList = 
							{
								50013,
								50038,
							},
							uuid = "7468b37f-b3fc-78c5-9604-a6154f5be6a9",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 174.9,
				name = "[Jacob v3] Voidal cone and tower cleanup",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "4fbb118d-012d-4c01-b8d7-387e61693f11",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.enuoTowerGuide\nif not s or Now()>=s.expires then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal shadow=s.shadowID and TensorCore.mGetEntity(s.shadowID)\nif not shadow then shadow=TensorCore.getEntityByGroup(\"ContentID\",{contentid=14752}) end\nif s.cones and shadow then\n local cones=TensorCore.getCachedDrawer(0x162255FF,0x222255FF,0x552255FF,0x99222255,1)\n for id in pairs(s.marks) do local e=TensorCore.mGetEntity(id) if e then cones:addCone(shadow.pos.x,shadow.pos.y,shadow.pos.z,60,math.rad(60),TensorCore.getHeadingToTarget(shadow.pos,e.pos),false,flags) end end\nend\nlocal n=0 for _ in pairs(s.marks) do n=n+1 end\nif n~=4 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or s.marks[p.id] then return end\nlocal towers={} for _,t in pairs(s.towers) do if Now()<t.expires then table.insert(towers,t) end end\nif #towers~=4 then return end\nlocal west,east={},{}\nfor _,t in ipairs(towers) do table.insert(t.x<100 and west or east,t) end\ntable.sort(west,function(a,b) return a.z<b.z end)\ntable.sort(east,function(a,b) return a.z<b.z end)\nlocal function assign(order,positions)\n local eligible={}\n for _,slot in ipairs(order) do local id=R.idOf(slot) if id and not s.marks[id] then eligible[#eligible+1]=id end end\n if #eligible~=#positions then return nil end\n for i,id in ipairs(eligible) do if id==p.id then return positions[i] end end\nend\nlocal dest=assign({\"T1\",\"R1\",\"H1\",\"M1\"},west) or assign({\"H2\",\"R2\",\"T2\",\"M2\"},east)\nif not dest then return end\nlocal green=TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal d=TensorCore.getDistance2d(p.pos,dest)\nif d>0.8 then local tip=math.min(1.5,d*0.35) green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,d-tip),0.65,tip,1.3,false,flags) end\ngreen:addCircle(dest.x,dest.y,dest.z,1,false,flags)\nself.used=true",
							name = "Unmarked roster tower arrows and four cones",
							uuid = "2b20a2d8-692d-3ef9-bbf4-237982f334e3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 174.9,
				name = "[Jacob v3] Unmarked roster tower arrows and four cones",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "29553d3e-9682-37e6-8d95-a8a8840f9ad0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal now=Now()\nlocal s=data.enuoTowerGuide\n-- Tower channels and markers can precede the boss channel in the same batch.\nif not s or now>=s.expires then\n s={marks={},towers={},cones=true,expires=now+9000}\n data.enuoTowerGuide=s\nend\ns.shadowID=eventArgs.entityID\ns.cones=true\ns.expires=math.max(s.expires,now+(eventArgs.channelTimeMax+3)*1000)\n",
							conditions = 
							{
								
								{
									"2d4bdeec-0e37-e458-ace5-134d7a8e8008",
									true,
								},
							},
							name = "Empty Shadow tower positions",
							uuid = "0150a6d2-ee4b-e9ee-aa83-cdaa0590b324",
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
							name = "Voidal Turbulence start",
							spellIDList = 
							{
								50036,
							},
							uuid = "2d4bdeec-0e37-e458-ace5-134d7a8e8008",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 174.9,
				name = "[Jacob v3] Voidal active caster and fresh marker batch",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 350,
				timerStartOffset = -8,
				uuid = "9980b7c9-eaef-04cd-a986-0cac3e8cce6d",
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
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "0187a993-3183-362f-904e-687139284fa3",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	[32] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "5ba43e6a-9322-6e56-23b7-447c84a08b7a",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	[42] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "7d8a0181-cbac-c435-695d-b27ff7adbcd1",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Opti] Dash To Boss",
				uuid = "385ae2e8-2788-cef5-b4b2-f6884f8050f5",
				version = 2,
			},
			inheritedObjectUUID = "a1cf046a-96e6-a192-9a08-c928dca3a1f1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Opti",
				uuid = "211b74a8-3068-cd44-bcdf-ce0ceaa88dc9",
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
							actionID = 16461,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"b80fbd7f-9045-3472-91e9-d5320ad0aeff",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "57e6587d-baee-cc9a-9e0e-708bf55277dc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7386,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"de3a10c3-64f8-78b1-a492-bebb96688caa",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "93ca0e67-7f55-6039-a90f-9659edd053ff",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36926,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"e4417409-9b1e-eac4-a224-3f1d44b6c7d8",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "afe34aea-8ecd-bee3-9d01-6aefabf5cc00",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36934,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"17c72883-955b-dcd3-8ec3-ed35e5d21031",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "40d42186-ca02-cbcb-9b7f-eb26bd4520ed",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25762,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"cd40a025-4722-a3da-b242-a67e44c7a306",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "21ed16ab-5a6c-8d7d-a057-961cc86b17e5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36951,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"da8a3713-28be-2ba4-a23d-6fb3d68a8adf",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "ecd12deb-ba7b-c8ba-908f-b45f2636a2af",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7492,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"57dbb03a-6b04-d5b1-91a1-c68eda2d4fe1",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "482e952f-6541-f37d-ab36-df3e5055eafc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34646,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"48a9a5a6-a40a-3db7-adab-b236ffb09969",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "6a3dab0c-2cd8-df75-9330-263f23a7ea59",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24295,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"7d3b56af-eb28-7ad2-99e2-4ad9de3bf417",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "aac95d93-2a92-58a5-9293-9ce09580545e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7506,
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"840b19b1-e5f0-f363-a95c-2d43c5146f93",
									true,
								},
							},
							endIfUsed = true,
							name = "Gap close to Enuo",
							targetContentID = 14749,
							targetType = "ContentID",
							uuid = "d21a3b30-41d0-ed88-b7bc-044bcc776d31",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local b=TensorCore.getEntityByGroup(\"ContentID\",{contentid=14749})\nlocal a=ActionList:Get(1,2262)\nif b and a and a.usable and a:Cast(b.pos.x,b.pos.y,b.pos.z) then self.used=true end",
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"a2e991dc-14d5-cb39-ba33-fb2fda4199d6",
									true,
								},
							},
							endIfUsed = true,
							name = "Shukuchi to Enuo",
							uuid = "d59b0891-c78c-4125-9267-46bae71382e5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local b=TensorCore.getEntityByGroup(\"ContentID\",{contentid=14749})\nlocal p=TensorCore.mGetPlayer()\nlocal a=ActionList:Get(1,24401)\nif not b or not p or not a or not a:IsReady(p) then return end\nif TensorCore.getDistance2d(p.pos,b.pos)-b.hitradius < 15 then self.used=true return end\nPlayer:SetFacing(b.pos.x,b.pos.y,b.pos.z)\nif a:Cast(p.id) then self.used=true end",
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"58b54d07-c2ea-a605-975c-54327ac63551",
									true,
								},
							},
							endIfUsed = true,
							name = "REAPER dash toward Enuo",
							uuid = "fefbb388-3ceb-1732-ac41-9e3ca203260a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local b=TensorCore.getEntityByGroup(\"ContentID\",{contentid=14749})\nlocal p=TensorCore.mGetPlayer()\nlocal a=ActionList:Get(1,16010)\nif not b or not p or not a or not a:IsReady(p) then return end\nif TensorCore.getDistance2d(p.pos,b.pos)-b.hitradius < 10 then self.used=true return end\nPlayer:SetFacing(b.pos.x,b.pos.y,b.pos.z)\nif a:Cast(p.id) then self.used=true end",
							conditions = 
							{
								
								{
									"a348c06b-2e5c-10b7-92e2-c9b6617b2955",
									true,
								},
								
								{
									"40d8a897-c6df-3624-b412-729714789eb9",
									true,
								},
							},
							endIfUsed = true,
							name = "DANCER dash toward Enuo",
							uuid = "08e7dd50-17db-7371-bd08-28074fcfbc66",
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
							conditionLua = "local b=TensorCore.getEntityByGroup(\"ContentID\",{contentid=14749}); return b and b.targetable or false",
							name = "Enuo targetable",
							uuid = "a348c06b-2e5c-10b7-92e2-c9b6617b2955",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PALADIN",
							uuid = "b80fbd7f-9045-3472-91e9-d5320ad0aeff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "WARRIOR",
							uuid = "de3a10c3-64f8-78b1-a492-bebb96688caa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DARKKNIGHT",
							uuid = "e4417409-9b1e-eac4-a224-3f1d44b6c7d8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "GUNBREAKER",
							uuid = "17c72883-955b-dcd3-8ec3-ed35e5d21031",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							uuid = "cd40a025-4722-a3da-b242-a67e44c7a306",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							uuid = "da8a3713-28be-2ba4-a23d-6fb3d68a8adf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							uuid = "57dbb03a-6b04-d5b1-91a1-c68eda2d4fe1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							uuid = "48a9a5a6-a40a-3db7-adab-b236ffb09969",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAGE",
							uuid = "7d3b56af-eb28-7ad2-99e2-4ad9de3bf417",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							uuid = "840b19b1-e5f0-f363-a95c-2d43c5146f93",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							uuid = "a2e991dc-14d5-cb39-ba33-fb2fda4199d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							uuid = "58b54d07-c2ea-a605-975c-54327ac63551",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							uuid = "40d8a897-c6df-3624-b412-729714789eb9",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Opti",
				mechanicTime = 494.7,
				name = "494 gap closer to Enuo by job",
				timeRange = true,
				timelineIndex = 42,
				timerEndOffset = 2.3,
				timerStartOffset = -0.7,
				uuid = "d42ecc1c-20e7-fce2-bfb0-a11cd1c7288a",
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
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "f7752cf2-5819-0a36-06af-81f0b0e29242",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "2c7d0fe3-2c46-b82b-b0d6-a64853d4588f",
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
							actionLua = "local Roster = AnyoneCore.Roster\nlocal boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid=14749})\nif not boss then return end\nlocal now = Now()\nif data.enuoTankBarsStarted and now-data.enuoTankBarsStarted < 500 then self.used=true return end\nlocal duration = math.max(1,eventArgs.channelTimeMax*1000)\nlocal drawer = TensorCore.getCachedDrawer(0x80FF0000,0x80FF0000,0x80FF0000,0x00000000,0)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nfor _, slot in ipairs({\"T1\",\"T2\"}) do\n local id = Roster.idOf(slot)\n if id then drawer:addTimedRectOnEnt(duration,id,0.2,6,boss.id,0,true,false,true,math.pi,false,flags) end\nend\ndata.enuoTankBarsStarted = now\nself.used = true",
							conditions = 
							{
								
								{
									"6920e6da-bf7f-82b7-b68d-1aba29919036",
									true,
								},
								
								{
									"b16e5fca-1bd2-0e77-9e94-35143f4b4935",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "013b3c94-416d-bfcf-9301-eed8f39b7a9e",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "6920e6da-bf7f-82b7-b68d-1aba29919036",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "b16e5fca-1bd2-0e77-9e94-35143f4b4935",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 533.5,
				name = "Naught Grows tank indicators",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "7878d160-2c11-ebb6-93f2-a9f13531bfc4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local caster=TensorCore.mGetEntity(eventArgs.entityID)\nif not caster then return end\nlocal now=Now()\nlocal state=data.enuoNaughtSafe\nif not state or now-state.started>10000 then state={started=now,shapes={}} data.enuoNaughtSafe=state end\nstate.shapes[eventArgs.entityID]={id=eventArgs.spellID,x=caster.pos.x,y=caster.pos.y,z=caster.pos.z,expires=now+eventArgs.channelTimeMax*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"a11cb34a-de6c-b0a7-88d6-cf39c0b452ad",
									true,
								},
							},
							name = "Capture unsafe shapes",
							uuid = "788886c1-d18b-b087-94e3-314eee5ee814",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
								49979,
								49980,
							},
							uuid = "a11cb34a-de6c-b0a7-88d6-cf39c0b452ad",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 533.5,
				name = "Naught Grows safe-area capture",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "e9ee8dec-1f4e-040d-9e11-548c01f48a6f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state=data.enuoNaughtSafe\nif not state then return end\nlocal now=Now()\nlocal count,big,small=0,false,false\nfor _,s in pairs(state.shapes) do\n if now>=s.expires then data.enuoNaughtSafe=nil return end\n count=count+1\n if s.id==49977 or s.id==49978 then big=true else small=true end\nend\nif count<2 or not big or not small then return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel then return end\nlocal F=Argus2.RenderFlags\nlocal base=F.FLAG_OCCLUSION_BASE+F.FLAG_WARP_TERRAIN+F.FLAG_RENDER_UI\nlocal cut=F.FLAG_OCCLUDE+F.FLAG_WARP_TERRAIN\nArgus.addCircleFilled(100,0.05,100,20,64,0x6033FF33,0xCC33FF33,0.12,0,0,0,false,base,channel)\nfor _,s in pairs(state.shapes) do\n if s.id==49977 or s.id==49979 then\n  Argus.addCircleFilled(s.x,0.05,s.z,s.id==49977 and 40 or 12,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n else\n  Argus.addDonutFilled(s.x,0.05,s.z,s.id==49978 and 40 or 6,s.id==49978 and 60 or 40,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n end\nend\nself.used=true",
							name = "Subtract active Naught Grows hits",
							uuid = "5e66e496-b182-24c6-bb7d-038f303b3569",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 533.5,
				name = "Naught Grows green safe area",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "fe8d8655-9e7c-28b7-a5d3-28d05417583d",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot()\nlocal healer=slot==\"T1\" and \"H1\" or slot==\"T2\" and \"H2\"\nif not healer then return end\nlocal e=R.entOf(healer) if not e then return end\nlocal d=TensorCore.getCachedDrawer(0x4433FF33,0x7733FF33,0xFF33FF33,0xFF000000,2)\nd:addCircle(e.pos.x,e.pos.y,e.pos.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
				executeType = 2,
				loop = true,
				mechanicTime = 533.5,
				name = "[Jacob v2] MT H1 / OT H2 personal highlight",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 0.7,
				timerStartOffset = -3.5,
				uuid = "85e10076-441f-e651-9097-360534aa0572",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoHealerHighlightUntil=Now()+(eventArgs.channelTimeMax+2)*1000",
							conditions = 
							{
								
								{
									"49b417dc-8229-67da-b339-e58ac52ec701",
									true,
								},
								
								{
									"b3580876-dde7-4aa3-8f78-1fafb81da564",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "9d2a9652-1135-03fb-9a93-f69836ad752a",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "49b417dc-8229-67da-b339-e58ac52ec701",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "b3580876-dde7-4aa3-8f78-1fafb81da564",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 533.5,
				name = "[Jacob v3] Naught Grows healer highlight start",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "5c2f9cc5-bcee-68c3-95ff-863fc833acf7",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "self.used=true\nif not data.enuoHealerHighlightUntil or Now()>=data.enuoHealerHighlightUntil then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot()\nlocal healer=({T1=\"H1\",M1=\"H1\",R1=\"H1\",T2=\"H2\",M2=\"H2\",R2=\"H2\"})[slot]\nif not healer then return end\nlocal h=R.entOf(healer) if not h then return end\nlocal d=TensorCore.getCachedDrawer(0x5533FF33,0x8833FF33,0xFF33FF33,0xFF000000,2)\nd:addCircle(h.pos.x,h.pos.y,h.pos.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 533.5,
				name = "[Jacob v3] Naught Grows assigned healer highlight",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "ab4fede3-ef39-b606-9c42-d2d9d230e1a8",
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
				displayPath = "Jacob Draws",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID==49983 or eventArgs.spellID==49984 then data.enuoHealerHighlightUntil=nil end",
				executeType = 2,
				loop = true,
				mechanicTime = 533.5,
				name = "[Jacob v3] Naught Grows healer highlight stack cleanup",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "5c8f4874-dc87-9647-81b9-2ddd9c498a99",
				version = 2,
			},
		},
	},
	[51] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "2263654a-0820-a8a9-960f-0ff0d5ae8fec",
			},
			objectType = "folder",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\n-- Assigned clock positions from the user's diagram; T1 = MT, T2 = OT.\nlocal spots={T1={-10,0},H1={-10,0},M1={-10,0},R1={-10,0},T2={10,0},H2={10,0},M2={10,0},R2={10,0}}\nlocal offset = spots[slot]\nif not offset then return end\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then return end\nlocal destination = {x = 100 + offset[1], y = 0, z = 100 + offset[2]}\nlocal drawer = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(player.pos, destination)\nif distance > 0.8 then\n    local tip = math.min(1.5, distance * 0.35)\n    drawer:addArrow(\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, destination),\n        math.max(0.1, distance - tip), 0.65, tip, 1.3, false, flags\n    )\nend\ndrawer:addCircle(destination.x, destination.y, destination.z, 0.65, false, flags)\n\nself.used=true\n",
				executeType = 2,
				loop = true,
				mechanicTime = 566.9,
				name = "[Jacob v2] Shrouded Holy roster light-party arrows",
				timeRange = true,
				timelineIndex = 51,
				timerEndOffset = 2.1,
				timerStartOffset = -5.9,
				uuid = "48501c79-5479-2448-b79a-2ba57efb301b",
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
				name = "Jacob Draws",
				uuid = "59e7ff97-7f3b-4a16-92e4-6e193b0cc927",
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
							actionLua = "local Roster = AnyoneCore.Roster\nlocal boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid=14749})\nif not boss then return end\nlocal now = Now()\nif data.enuoTankBarsStarted and now-data.enuoTankBarsStarted < 500 then self.used=true return end\nlocal duration = math.max(1,eventArgs.channelTimeMax*1000)\nlocal drawer = TensorCore.getCachedDrawer(0x80FF0000,0x80FF0000,0x80FF0000,0x00000000,0)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nfor _, slot in ipairs({\"T1\",\"T2\"}) do\n local id = Roster.idOf(slot)\n if id then drawer:addTimedRectOnEnt(duration,id,0.2,6,boss.id,0,true,false,true,math.pi,false,flags) end\nend\ndata.enuoTankBarsStarted = now\nself.used = true",
							conditions = 
							{
								
								{
									"62b0a87d-7994-d192-856b-c155423bd02b",
									true,
								},
								
								{
									"b84594ae-5a64-a981-b0ad-5dfbe8bae78e",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "26fb6536-e4f8-5614-9586-a57d8e32621a",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "62b0a87d-7994-d192-856b-c155423bd02b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "b84594ae-5a64-a981-b0ad-5dfbe8bae78e",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 582.2,
				name = "Naught Grows tank indicators",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "d5ed87ea-e5cf-8d55-905a-dcb392b6d164",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local caster=TensorCore.mGetEntity(eventArgs.entityID)\nif not caster then return end\nlocal now=Now()\nlocal state=data.enuoNaughtSafe\nif not state or now-state.started>10000 then state={started=now,shapes={}} data.enuoNaughtSafe=state end\nstate.shapes[eventArgs.entityID]={id=eventArgs.spellID,x=caster.pos.x,y=caster.pos.y,z=caster.pos.z,expires=now+eventArgs.channelTimeMax*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"4aef9246-8121-5fba-9b09-7df76e022ad2",
									true,
								},
							},
							name = "Capture unsafe shapes",
							uuid = "20df0c83-af15-ed9f-8122-2c87853643ad",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
								49979,
								49980,
							},
							uuid = "4aef9246-8121-5fba-9b09-7df76e022ad2",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 582.2,
				name = "Naught Grows safe-area capture",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "ccde850f-7fde-c211-b04d-191f167f2570",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state=data.enuoNaughtSafe\nif not state then return end\nlocal now=Now()\nlocal count,big,small=0,false,false\nfor _,s in pairs(state.shapes) do\n if now>=s.expires then data.enuoNaughtSafe=nil return end\n count=count+1\n if s.id==49977 or s.id==49978 then big=true else small=true end\nend\nif count<2 or not big or not small then return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel then return end\nlocal F=Argus2.RenderFlags\nlocal base=F.FLAG_OCCLUSION_BASE+F.FLAG_WARP_TERRAIN+F.FLAG_RENDER_UI\nlocal cut=F.FLAG_OCCLUDE+F.FLAG_WARP_TERRAIN\nArgus.addCircleFilled(100,0.05,100,20,64,0x6033FF33,0xCC33FF33,0.12,0,0,0,false,base,channel)\nfor _,s in pairs(state.shapes) do\n if s.id==49977 or s.id==49979 then\n  Argus.addCircleFilled(s.x,0.05,s.z,s.id==49977 and 40 or 12,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n else\n  Argus.addDonutFilled(s.x,0.05,s.z,s.id==49978 and 40 or 6,s.id==49978 and 60 or 40,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n end\nend\nself.used=true",
							name = "Subtract active Naught Grows hits",
							uuid = "55b7e398-c3af-5eb1-bc4d-1f2b2cf3814a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 582.2,
				name = "Naught Grows green safe area",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "3c285ca3-36c0-f604-946f-aee6cfa27e95",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoHealerHighlightUntil=Now()+(eventArgs.channelTimeMax+2)*1000",
							conditions = 
							{
								
								{
									"ac62b45e-7bc7-a897-8a2c-5e3b944780cf",
									true,
								},
								
								{
									"baa0faf2-1ab3-2cd2-b289-937f3f637bef",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "45feb9b6-191d-abd2-8756-cd2b47d167da",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "ac62b45e-7bc7-a897-8a2c-5e3b944780cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "baa0faf2-1ab3-2cd2-b289-937f3f637bef",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 582.2,
				name = "[Jacob v3] Naught Grows healer highlight start",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "363a3a86-6e24-017a-abec-0dc8ea4028bf",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "self.used=true\nif not data.enuoHealerHighlightUntil or Now()>=data.enuoHealerHighlightUntil then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot()\nlocal healer=({T1=\"H1\",M1=\"H1\",R1=\"H1\",T2=\"H2\",M2=\"H2\",R2=\"H2\"})[slot]\nif not healer then return end\nlocal h=R.entOf(healer) if not h then return end\nlocal d=TensorCore.getCachedDrawer(0x5533FF33,0x8833FF33,0xFF33FF33,0xFF000000,2)\nd:addCircle(h.pos.x,h.pos.y,h.pos.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 582.2,
				name = "[Jacob v3] Naught Grows assigned healer highlight",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "1e73d7f6-315d-e7ef-b83f-6b97feeb2285",
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
				displayPath = "Jacob Draws",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID==49983 or eventArgs.spellID==49984 then data.enuoHealerHighlightUntil=nil end",
				executeType = 2,
				loop = true,
				mechanicTime = 582.2,
				name = "[Jacob v3] Naught Grows healer highlight stack cleanup",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "78569148-208f-80dc-a7ed-0d54c892537f",
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
				name = "Jacob Draws",
				uuid = "5d44d917-2e56-3dfb-842d-fdef747e95a7",
			},
			objectType = "folder",
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
				displayPath = "Jacob Draws",
				execute = "local p=TensorCore.mGetPlayer()\nif not p then return end\nlocal now=Now()\nlocal s=self.pyreticWarning\nif not s or now-s.lastPoll>1500 then s={active=false,lastPoll=now} self.pyreticWarning=s end\ns.lastPoll=now\nlocal buff=TensorCore.getBuff(p,4562)\nlocal active=buff and buff.duration>0\nif active then\n if not s.active then TensorCore.sendTTS(\"Stop moving\") end\n s.active=true\n AnyoneCore.addTimedWorldTextOnEnt(150,string.format(\"STOP MOVING %.1fs\",buff.duration),p.id,0xFFFFFFFF,0xCC0000BB,1.2,-0.5)\nelseif s.active then\n s.active=false\n TensorCore.addAlertText(1500,\"Move\",1.4,1,true)\nend\nself.used=true",
				executeType = 2,
				loop = true,
				mechanicTime = 612.1,
				name = "[Jacob v2] Pyretic stop countdown then move",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 7,
				timerStartOffset = -1,
				uuid = "b6ecc8a2-ca17-5938-baab-273b86de90aa",
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
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 3,
				execute = "self.used=true\nlocal radii={[49995]=6.2,[49996]=12.34,[49997]=18}\nlocal angles={[49995]=10,[49996]=20,[49997]=30}\nlocal radius=radii[eventArgs.spellID] if not radius then return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID) if not e then return end\nlocal now=Now()\nlocal s=data.enuoVacuumSafe\nif not s or now-s.started>15000 then s={started=now,shapes={}} data.enuoVacuumSafe=s end\nlocal heading=e.pos.h+math.rad(angles[eventArgs.spellID])\ns.shapes[e.id]={x=e.pos.x+math.sin(heading)*radius,z=e.pos.z+math.cos(heading)*radius,expires=now+(eventArgs.channelTimeMax+2.6)*1000}",
				executeType = 2,
				loop = true,
				mechanicTime = 612.1,
				name = "[Jacob v2] Vacuum predicted destination capture",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 1.8,
				timerStartOffset = -5.1,
				uuid = "747c13cf-9c6e-5bd1-b636-1070f6324b15",
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
				displayPath = "Jacob Draws",
				enabled = false,
				eventType = 12,
				execute = "local s=data.enuoVacuumSafe if not s then return end\nlocal count=0 local now=Now()\nfor _,v in pairs(s.shapes) do if now>=v.expires then return end count=count+1 end\nif count~=8 then return end\nlocal ch=Argus2.getNextUnusedChannel(true) if not ch then return end\nlocal F=Argus2.RenderFlags\nlocal base=F.FLAG_OCCLUSION_BASE+F.FLAG_WARP_TERRAIN+F.FLAG_RENDER_UI\nlocal cut=F.FLAG_OCCLUDE+F.FLAG_WARP_TERRAIN\n-- Restrict green to the inner arena, excluding the outer Silent Torrent sectors.\nArgus.addCircleFilled(100,.05,100,16.9,64,0x6033FF33,0xCC33FF33,.12,0,0,0,false,base,ch)\nfor _,v in pairs(s.shapes) do Argus.addCircleFilled(v.x,.05,v.z,7,64,0xFFFFFFFF,0,0,0,0,0,false,cut,ch) end\nself.used=true",
				executeType = 2,
				loop = true,
				mechanicTime = 612.1,
				name = "[Jacob v2] Vacuum green subtractive inner safe area",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 1.8,
				timerStartOffset = -3.1,
				uuid = "d375d219-451e-7019-8a37-7b52c979a7de",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "self.used=true\nlocal now=Now()\nlocal s=data.enuoVacuumSectorSafe\nif not s or now-s.started>12000 then s={started=now,shapes={},sectors={}} data.enuoVacuumSectorSafe=s end\nfor _,a in ipairs(Argus.getCurrentGroundAOEs(true)) do\n if a.aoeID==49995 or a.aoeID==49996 or a.aoeID==49997 then\n  s.shapes[a.entityID]={x=a.x,z=a.z,expires=a.startTime+a.duration*1000+2600}\n end\nend\nlocal angles={[49998]=20,[49999]=40,[50000]=60}\nfor _,a in ipairs(Argus.getCurrentAOEs()) do\n if angles[a.aoeID] then\n  s.sectors[a.entityID]={x=a.x,z=a.z,heading=a.heading,angle=math.rad(angles[a.aoeID]),expires=a.startTime+a.duration*1000+2600}\n end\n if a.aoeID==50001 then s.shapes[a.entityID]={x=a.x,z=a.z,expires=a.startTime+a.duration*1000} end\nend\nlocal count=0\nfor _,v in pairs(s.shapes) do if now<v.expires then count=count+1 end end\nlocal sectorCount=0\nfor _,v in pairs(s.sectors) do if now<v.expires then sectorCount=sectorCount+1 end end\nif count~=8 or sectorCount~=8 then return end\nlocal f=Argus2.RenderFlags\nlocal channel=Argus2.getNextUnusedChannel(true)\nlocal cut=f.FLAG_OCCLUDE+f.FLAG_WARP_TERRAIN+f.FLAG_RENDER_UI\nlocal base=f.FLAG_OCCLUSION_BASE+f.FLAG_WARP_TERRAIN+f.FLAG_RENDER_UI\nfor _,v in pairs(s.shapes) do\n if now<v.expires then Argus.addCircleFilled(v.x,0.05,v.z,7,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel) end\nend\nfor _,v in pairs(s.sectors) do\n if now<v.expires then Argus.addConeFilled(v.x,0.05,v.z,19,v.angle,v.heading,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel) end\nend\nArgus.addCircleFilled(100,0.05,100,16.9,64,0x4033FF33,0x8833FF33,0.1,0,0,0,false,base,channel)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 612.1,
				name = "[Jacob v3] Vacuum circles and sector footprint subtraction",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 1.8,
				timerStartOffset = -5.1,
				uuid = "814b2f05-473b-f940-833b-162719807521",
				version = 2,
			},
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "c09ccf29-f730-f51d-c838-4d9bf9225039",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "d7bfbc79-b754-72ed-5250-ffe7d8a56009",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Call] Meltdown Move",
				uuid = "d152880b-1681-a596-9d82-88dd99ad225d",
				version = 2,
			},
			inheritedObjectUUID = "d325c855-9936-9991-b7fb-5802bbc567f7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "7c85092a-8bf7-1304-9907-90e721ab60af",
			},
			objectType = "folder",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\n-- Assigned clock positions from the user's diagram; T1 = MT, T2 = OT.\nlocal diagonal = 10 / math.sqrt(2)\nlocal spots = {\n    T1 = {0, -10}, T2 = {0, 10},\n    H1 = {-10, 0}, H2 = {10, 0},\n    R1 = {-diagonal, -diagonal}, R2 = {diagonal, -diagonal},\n    M1 = {-diagonal, diagonal}, M2 = {diagonal, diagonal},\n}\nlocal offset = spots[slot]\nif not offset then return end\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then return end\nlocal marker={T1=1,T2=3,H1=4,H2=2,R1=5,R2=6,M1=8,M2=7}\nlocal x,y,z,active=Argus.getWaymarkInfo(marker[slot])\nlocal destination=active and {x=x,y=y,z=z} or {x=100+offset[1]*1.6,y=0,z=100+offset[2]*1.6}\nlocal drawer = TensorCore.getCachedDrawer(0x7733FF33, 0xAA33FF33, 0xFF33FF33, 0xFF000000, 2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(player.pos, destination)\nif distance > 0.8 then\n    local tip = math.min(1.5, distance * 0.35)\n    drawer:addArrow(\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, destination),\n        math.max(0.1, distance - tip), 0.65, tip, 1.3, false, flags\n    )\nend\ndrawer:addCircle(destination.x, destination.y, destination.z, 0.65, false, flags)\n\nself.used=true\n",
				executeType = 2,
				loop = true,
				mechanicTime = 617.5,
				name = "[Jacob v2] Later Meltdown roster marker arrows",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 2.5,
				timerStartOffset = -3.5,
				uuid = "498b9a12-3685-480d-a784-d1ba011d7964",
				version = 2,
			},
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				name = "[Paradox] Draw Orb Order",
				uuid = "bcf03be6-c0d6-dbb4-b36b-b45adcda905b",
				version = 2,
			},
			inheritedObjectUUID = "c7f8ef15-079e-4ed2-872c-841c0536e987",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Paradox] Capture Orb Tethers",
				uuid = "78fe059e-4944-c331-90c8-c708316139cc",
				version = 2,
			},
			inheritedObjectUUID = "a3d5ee66-d455-b934-a373-68339032334b",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "45e024a1-033c-2e45-8965-c66a43c95944",
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
							actionLua = "self.used=true\nif eventArgs.newTetherID~=406 and eventArgs.newTetherID~=407 then return end\nlocal e=TensorCore.mGetEntity(eventArgs.sourceEntityID)\nif not e then return end\nlocal model=Argus.getEntityModel(e.id)\nif model~=19909 and model~=19910 then return end\nlocal now=Now()\nlocal s=data.enuoOrbGuide\nif not s or now-s.started>40000 then s={started=now,orbs={},hits={},phase=1,waiting=false} data.enuoOrbGuide=s end\ns.orbs[e.id]={id=e.id,color=eventArgs.newTetherID,big=model==19910,x=e.pos.x,z=e.pos.z}\nlocal count=0 for _ in pairs(s.orbs) do count=count+1 end\nif count~=8 then return end\ns.assign={}\nfor _,color in ipairs({407,406}) do\n local anchor,small\n small={}\n for _,orb in pairs(s.orbs) do if orb.color==color then if orb.big then anchor=orb else table.insert(small,orb) end end end\n if not anchor or #small~=3 then s.assign=nil return end\n local north=math.atan2(anchor.x-100,100-anchor.z)\n for _,orb in ipairs(small) do orb.angle=(math.atan2(orb.x-100,100-orb.z)-north)%(2*math.pi) end\n table.sort(small,function(a,b) return a.angle<b.angle end)\n s.assign[color]={T=anchor.id,H=small[1].id,M=small[2].id,R=small[3].id}\nend\nself.used=true",
							conditions = 
							{
								
								{
									"6db98775-1841-bed3-8b15-be77cabac2d9",
									true,
								},
							},
							name = "Personal orb assignment capture",
							uuid = "44686d1b-e528-49a7-ad5d-e45190156f7f",
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
							eventArgOptionType = 2,
							eventEntityContentID = 14751,
							uuid = "6db98775-1841-bed3-8b15-be77cabac2d9",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 15,
				loop = true,
				mechanicTime = 632.2,
				name = "Personal orb assignment capture",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 45,
				uuid = "07d62d8c-c463-8f63-b6b0-b16cf4a3a799",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal s=data.enuoOrbGuide\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not s or not s.assign or s.phase>2 or not R or not R.current() then return end\nlocal slot=R.mySlot() if not slot then return end\nlocal color=s.phase==1 and 407 or 406\nlocal assigned=s.assign[color][string.sub(slot,1,1)]\nif eventArgs.entityID~=assigned or s.hits[assigned] then return end\ns.hits[assigned]=true\ns.phase=s.phase+1\ns.waiting=false\ns.lastHit=Now()\n",
							conditions = 
							{
								
								{
									"f72619ff-b3c3-5699-965a-6e6af07a1abe",
									true,
								},
							},
							name = "Personal orb pop cleanup",
							uuid = "e2a248e5-761b-394f-a3cc-c75f40723dcf",
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
							spellIDList = 
							{
								50006,
								50007,
							},
							uuid = "f72619ff-b3c3-5699-965a-6e6af07a1abe",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 632.2,
				name = "Personal orb pop cleanup",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 45,
				uuid = "8b2db976-b919-2ecc-b5cc-62bedccd7539",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.enuoOrbGuide\nif not s or s.phase>2 or Now()-s.started>40000 then return end\nlocal p=TensorCore.mGetPlayer() if not p then return end\nlocal buff=TensorCore.getBuff(p,2941)\ns.waiting=(buff and buff.duration>0) or (s.lastHit and Now()-s.lastHit<750) or false\nif buff and buff.duration>0 then\n AnyoneCore.addTimedWorldTextOnEnt(250,string.format(\"Wait %.1fs\",buff.duration),p.id,0xFFFFFFFF,0xBB000000,1,-0.5)\nend\nself.used=true",
							name = "Orb vulnerability countdown",
							uuid = "9c7fb40c-c7a3-7ade-9542-e29b49bd5130",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				enabled = false,
				loop = true,
				mechanicTime = 632.2,
				name = "[Disabled] Orb vulnerability countdown",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 45,
				uuid = "3caf52b4-40af-2f33-96f2-520c48564a5e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.enuoOrbGuide\nif not s or not s.assign or s.phase>2 or Now()-s.started>40000 then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot() if not slot then return end\nlocal color=s.phase==1 and 407 or 406\nlocal id=s.assign[color][string.sub(slot,1,1)]\nlocal orb=id and TensorCore.mGetEntity(id)\nlocal p=TensorCore.mGetPlayer()\nif not orb or not p then return end\nlocal dest={x=orb.pos.x,y=orb.pos.y,z=orb.pos.z}\nlocal d=TensorCore.getDistance2d(p.pos,dest)\nlocal green=TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif d>0.8 then local tip=math.min(1.5,d*0.35) green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,d-tip),0.65,tip,1.3,false,flags) end\ngreen:addCircle(dest.x,dest.y,dest.z,1,false,flags)\nself.used=true",
							name = "Yellow then purple personal orb arrows",
							uuid = "aea1a263-6fe2-59e2-98e4-fe29c15311c7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 632.2,
				name = "Yellow then purple personal orb arrows",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 45,
				uuid = "383e25ed-959d-9746-a8ce-c0dc66c2665b",
				version = 2,
			},
		},
	},
	[64] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "49bf599d-7f91-83c9-d87b-f64364d2672d",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "becc6d47-3b2d-ceae-ac46-e7c62733d40b",
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
							actionLua = "self.used=true\nif eventArgs.newTetherID~=404 and eventArgs.newTetherID~=405 then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return end\nif not R.slotOf(eventArgs.newTargetID) then return end\nlocal now=Now()\nlocal s=data.enuoHuntsMarks\nif not s or now-s.started>75000 then s={started=now,chases={},passes={}} data.enuoHuntsMarks=s end\nif eventArgs.newTetherID==405 then\n s.passes[eventArgs.sourceEntityID]=eventArgs.newTargetID\nelse\n local e=TensorCore.mGetEntity(eventArgs.sourceEntityID) if not e then return end\n local c=s.chases[e.id]\n if not c then s.chases[e.id]={target=eventArgs.newTargetID,remaining=13,x=e.pos.x,z=e.pos.z,expires=now+9000} end\nend",
							name = "[Jacob v2] Naught Hunts chase and pass capture",
							uuid = "0730e557-ceab-457b-b931-fef5c1b10377",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 15,
				loop = true,
				mechanicTime = 682.9,
				name = "[Jacob v2] Naught Hunts chase and pass capture",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = 70,
				timerStartOffset = -10,
				uuid = "aa82d328-a5d1-b400-aa09-a1fce0fc4d59",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\nlocal s=data.enuoHuntsMarks if not s then return end\nlocal now=Now()\nlocal x,z=eventArgs.castPosX,eventArgs.castPosZ\nif eventArgs.spellID==48475 then local e=TensorCore.mGetEntity(eventArgs.entityID) if not e then return end x,z=e.pos.x,e.pos.z end\nif not x or not z then return end\nlocal best,bestID,dist\nfor id,c in pairs(s.chases) do\n local d=(c.x-x)^2+(c.z-z)^2\n if not dist or d<dist then best,bestID,dist=c,id,d end\nend\nif not best or dist>100 then return end\nif best.lastHit and now-best.lastHit<150 then return end\nbest.lastHit=now best.x=x best.z=z best.expires=now+2500\nbest.remaining=best.remaining-1\nif best.remaining<=0 then\n local nextTarget=s.passes[best.target]\n s.passes[best.target]=nil\n if nextTarget then best.target=nextTarget best.remaining=12 else s.chases[bestID]=nil end\nend",
							conditions = 
							{
								
								{
									"c0288a65-6f1d-500d-b1dc-1bea9a35b17c",
									true,
								},
							},
							name = "[Jacob v2] Naught Hunts current chase handoff",
							uuid = "b535aec0-5203-e1fe-8e78-b243032b7dfd",
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
							spellIDList = 
							{
								48475,
								49993,
							},
							uuid = "c0288a65-6f1d-500d-b1dc-1bea9a35b17c",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 682.9,
				name = "[Jacob v2] Naught Hunts current chase handoff",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = 70,
				timerStartOffset = -10,
				uuid = "c79160a9-c245-820d-843c-bc5a07410b0e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.enuoHuntsMarks if not s then return end\nlocal now=Now() if now-s.started>75000 then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal d=TensorCore.getCachedDrawer(0x3300FFFF,0x6600FFFF,0xFF00FFFF,0xFF000000,2)\nfor id,c in pairs(s.chases) do\n if now>=c.expires then s.chases[id]=nil\n else\n  local e=TensorCore.mGetEntity(c.target)\n  if e then d:addCircle(e.pos.x,e.pos.y,e.pos.z,.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end\n end\nend\nself.used=true",
							name = "[Jacob v2] Naught Hunts two current target rings",
							uuid = "3a624a06-e62b-f349-b504-343def26f7d1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 682.9,
				name = "[Jacob v2] Naught Hunts two current target rings",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = 70,
				timerStartOffset = -10,
				uuid = "10bc2871-ae08-d53b-a50e-07ee98dc234e",
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
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "07a0aad8-f129-7fcc-2747-b4febc3707e8",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "cd0d8ed1-e78a-5b7c-be15-85aab13a3dd1",
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
							actionLua = "self.used=true\ndata.enuoEmptiness={kind=eventArgs.spellID,bossID=eventArgs.entityID,expires=Now()+(eventArgs.channelTimeMax+1)*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"62fce9d0-6827-5a5a-8b62-ca3ac5569f62",
									true,
								},
							},
							name = "Airy or Dense Emptiness timing",
							uuid = "f855b4da-d3c3-2612-9294-cc9d93c67f90",
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
							spellIDList = 
							{
								50032,
								50033,
							},
							uuid = "62fce9d0-6827-5a5a-8b62-ca3ac5569f62",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 711.4,
				name = "Airy or Dense Emptiness timing",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "d3f1731e-d75f-37eb-9918-b8e02289c3c4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "\nlocal state = data.enuoEmptiness\nif not state or Now() >= state.expires then return end\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\nlocal pairs = {T1=\"R1\",R1=\"T1\",H2=\"R2\",R2=\"H2\",H1=\"M1\",M1=\"H1\",T2=\"M2\",M2=\"T2\"}\nlocal partnerSlot = pairs[slot]\nif not partnerSlot then return end\nlocal quadrant = {T1={-1,-1},R1={-1,-1},H2={1,-1},R2={1,-1},H1={-1,1},M1={-1,1},T2={1,1},M2={1,1}}\nlocal q=quadrant[slot]\nif state.kind==50033 then q=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and {-1,0} or {1,0} end\nlocal dest={x=100+q[1]*(state.kind==50033 and 10 or 7.1),y=0,z=100+q[2]*(state.kind==50033 and 10 or 7.1)}\nlocal p = TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal green = TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(p.pos,dest)\nif distance > 0.8 then\n local tip = math.min(1.5,distance*0.35)\n green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.65,tip,1.3,false,flags)\nend\ngreen:addCircle(dest.x,dest.y,dest.z,0.65,false,flags)\n\nif state.kind==50033 then\n local boss=TensorCore.mGetEntity(state.bossID)\n if boss then\n  local safe=TensorCore.getCachedDrawer(0x2233FF33,0x3333FF33,0x7733FF33,0xAA000000,1)\n  local danger=TensorCore.getCachedDrawer(0x222255FF,0x332255FF,0x772255FF,0xAA222255,1)\n  local myHealer=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and \"H1\" or \"H2\"\n  for _,hs in ipairs({\"H1\",\"H2\"}) do\n   local h=Roster.entOf(hs)\n   if h then\n    local cones=hs==myHealer and safe or danger\n    cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(100),TensorCore.getHeadingToTarget(boss.pos,h.pos),false,flags)\n   end\n  end\n end\n self.used=true return\nend\nlocal partnerID = Roster.idOf(partnerSlot)\nlocal partner = partnerID and Roster.entOf(partnerSlot)\nif partner and partner.pos then\n green:addCircle(partner.pos.x,partner.pos.y,partner.pos.z,0.8,false,flags)\n green:addLine(p.pos.x,p.pos.y,p.pos.z,partner.pos.x,partner.pos.y,partner.pos.z,0.08,0.08)\nend\nlocal boss = TensorCore.mGetEntity(state.bossID)\nif not boss or not boss.pos then return end\nlocal ownCone = TensorCore.getCachedDrawer(0x1133FF33,0x2233FF33,0x5533FF33,0x8833FF33,1)\nownCone:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,p.pos),false,flags)\nlocal support = slot==\"T1\" or slot==\"T2\" or slot==\"H1\" or slot==\"H2\"\nlocal group = support and {\"T1\",\"T2\",\"H1\",\"H2\"} or {\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal cones = TensorCore.getCachedDrawer(0x2233FF33,0x3333FF33,0x7733FF33,0xAA000000,1)\n-- Compact 20y previews preserve the documented full 60-degree aperture.\n-- DPS previews use the DPS lane requested by the user, rather than duplicate support lanes.\nfor _, other in ipairs(group) do\n if other ~= slot then\n  local targetID = Roster.idOf(other)\n  local target = targetID and Roster.entOf(other)\n  if target and target.pos then\n   cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,flags)\n  end\n end\nend\n\nself.used=true",
							name = "Roster pair or light-party arrows",
							uuid = "cb0cafcd-b843-b1c7-91a3-92578ab26250",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 711.4,
				name = "Roster pair or light-party arrows",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "efa31378-8de4-3129-917d-8a2b891bfe52",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoEmptiness=nil\nself.used=true",
							conditions = 
							{
								
								{
									"96b100e7-0328-5ed0-a965-8b9fc3374c74",
									true,
								},
							},
							name = "Emptiness hit cleanup",
							uuid = "83c384dd-13e8-911b-9ccc-4441b9429bda",
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
							spellIDList = 
							{
								50034,
								50035,
							},
							uuid = "96b100e7-0328-5ed0-a965-8b9fc3374c74",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 2,
				mechanicTime = 711.4,
				name = "Emptiness hit cleanup",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "08f7977a-bfc9-6e19-8686-5f9b1e156756",
				version = 2,
			},
		},
	},
	[75] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "63815043-333f-447f-18b6-339986457a53",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "e548a827-2662-cb45-afc3-06ea1e86021a",
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
							actionLua = "self.used=true\ndata.enuoEmptiness={kind=eventArgs.spellID,bossID=eventArgs.entityID,expires=Now()+(eventArgs.channelTimeMax+1)*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"881d3aa0-1659-d215-bfa3-aee0f099fc46",
									true,
								},
							},
							name = "Airy or Dense Emptiness timing",
							uuid = "d0d78492-c040-692b-ac5a-b62d28e74a64",
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
							spellIDList = 
							{
								50032,
								50033,
							},
							uuid = "881d3aa0-1659-d215-bfa3-aee0f099fc46",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 751.1,
				name = "Airy or Dense Emptiness timing",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "d026aada-0eee-f69c-bf20-991ebf5dcf01",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "\nlocal state = data.enuoEmptiness\nif not state or Now() >= state.expires then return end\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\nlocal slot = Roster.mySlot()\nlocal pairs = {T1=\"R1\",R1=\"T1\",H2=\"R2\",R2=\"H2\",H1=\"M1\",M1=\"H1\",T2=\"M2\",M2=\"T2\"}\nlocal partnerSlot = pairs[slot]\nif not partnerSlot then return end\nlocal quadrant = {T1={-1,-1},R1={-1,-1},H2={1,-1},R2={1,-1},H1={-1,1},M1={-1,1},T2={1,1},M2={1,1}}\nlocal q=quadrant[slot]\nif state.kind==50033 then q=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and {-1,0} or {1,0} end\nlocal dest={x=100+q[1]*(state.kind==50033 and 10 or 7.1),y=0,z=100+q[2]*(state.kind==50033 and 10 or 7.1)}\nlocal p = TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal green = TensorCore.getCachedDrawer(0x7733FF33,0xAA33FF33,0xFF33FF33,0xFF000000,2)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal distance = TensorCore.getDistance2d(p.pos,dest)\nif distance > 0.8 then\n local tip = math.min(1.5,distance*0.35)\n green:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.65,tip,1.3,false,flags)\nend\ngreen:addCircle(dest.x,dest.y,dest.z,0.65,false,flags)\n\nif state.kind==50033 then\n local boss=TensorCore.mGetEntity(state.bossID)\n if boss then\n  local safe=TensorCore.getCachedDrawer(0x2233FF33,0x3333FF33,0x7733FF33,0xAA000000,1)\n  local danger=TensorCore.getCachedDrawer(0x222255FF,0x332255FF,0x772255FF,0xAA222255,1)\n  local myHealer=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and \"H1\" or \"H2\"\n  for _,hs in ipairs({\"H1\",\"H2\"}) do\n   local h=Roster.entOf(hs)\n   if h then\n    local cones=hs==myHealer and safe or danger\n    cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(100),TensorCore.getHeadingToTarget(boss.pos,h.pos),false,flags)\n   end\n  end\n end\n self.used=true return\nend\nlocal partnerID = Roster.idOf(partnerSlot)\nlocal partner = partnerID and Roster.entOf(partnerSlot)\nif partner and partner.pos then\n green:addCircle(partner.pos.x,partner.pos.y,partner.pos.z,0.8,false,flags)\n green:addLine(p.pos.x,p.pos.y,p.pos.z,partner.pos.x,partner.pos.y,partner.pos.z,0.08,0.08)\nend\nlocal boss = TensorCore.mGetEntity(state.bossID)\nif not boss or not boss.pos then return end\nlocal ownCone = TensorCore.getCachedDrawer(0x1133FF33,0x2233FF33,0x5533FF33,0x8833FF33,1)\nownCone:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,p.pos),false,flags)\nlocal support = slot==\"T1\" or slot==\"T2\" or slot==\"H1\" or slot==\"H2\"\nlocal group = support and {\"T1\",\"T2\",\"H1\",\"H2\"} or {\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal cones = TensorCore.getCachedDrawer(0x2233FF33,0x3333FF33,0x7733FF33,0xAA000000,1)\n-- Compact 20y previews preserve the documented full 60-degree aperture.\n-- DPS previews use the DPS lane requested by the user, rather than duplicate support lanes.\nfor _, other in ipairs(group) do\n if other ~= slot then\n  local targetID = Roster.idOf(other)\n  local target = targetID and Roster.entOf(other)\n  if target and target.pos then\n   cones:addCone(boss.pos.x,boss.pos.y,boss.pos.z,20,math.rad(60),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,flags)\n  end\n end\nend\n\nself.used=true",
							name = "Roster pair or light-party arrows",
							uuid = "0983d6e4-d745-2c6b-881c-50fae172453d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 751.1,
				name = "Roster pair or light-party arrows",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "da62cd33-e8e5-28f5-9479-5ba305185bdb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoEmptiness=nil\nself.used=true",
							conditions = 
							{
								
								{
									"8633e5fb-4d63-f88c-8510-ac80e30f19ce",
									true,
								},
							},
							name = "Emptiness hit cleanup",
							uuid = "94fcd3e1-6109-52a2-9179-0968a4bf36a7",
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
							spellIDList = 
							{
								50034,
								50035,
							},
							uuid = "8633e5fb-4d63-f88c-8510-ac80e30f19ce",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 2,
				mechanicTime = 751.1,
				name = "Emptiness hit cleanup",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "543eb306-5569-50c2-9973-bcbb5d2a397b",
				version = 2,
			},
		},
	},
	[79] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "3895dfc5-c50f-5ff9-b7df-ac32b4feec12",
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
							actionLua = "local Roster = AnyoneCore.Roster\nlocal boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid=14749})\nif not boss then return end\nlocal now = Now()\nif data.enuoTankBarsStarted and now-data.enuoTankBarsStarted < 500 then self.used=true return end\nlocal duration = math.max(1,eventArgs.channelTimeMax*1000)\nlocal drawer = TensorCore.getCachedDrawer(0x80FF0000,0x80FF0000,0x80FF0000,0x00000000,0)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nfor _, slot in ipairs({\"T1\",\"T2\"}) do\n local id = Roster.idOf(slot)\n if id then drawer:addTimedRectOnEnt(duration,id,0.2,6,boss.id,0,true,false,true,math.pi,false,flags) end\nend\ndata.enuoTankBarsStarted = now\nself.used = true",
							conditions = 
							{
								
								{
									"58f4099f-b6fb-25c4-8b95-1055e1d4c860",
									true,
								},
								
								{
									"22644949-a973-3cb2-846d-e8542e3f3f04",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "84f37370-2976-2d9d-8358-64fc8f733fbc",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "58f4099f-b6fb-25c4-8b95-1055e1d4c860",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "22644949-a973-3cb2-846d-e8542e3f3f04",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 788.4,
				name = "Naught Grows tank indicators",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "86bca9e2-c8aa-41e0-9d55-ad3771e17a99",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local caster=TensorCore.mGetEntity(eventArgs.entityID)\nif not caster then return end\nlocal now=Now()\nlocal state=data.enuoNaughtSafe\nif not state or now-state.started>10000 then state={started=now,shapes={}} data.enuoNaughtSafe=state end\nstate.shapes[eventArgs.entityID]={id=eventArgs.spellID,x=caster.pos.x,y=caster.pos.y,z=caster.pos.z,expires=now+eventArgs.channelTimeMax*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"63b3efd9-54c0-7704-aeb8-4e6f0badaeac",
									true,
								},
							},
							name = "Capture unsafe shapes",
							uuid = "d7823aa1-db0d-18d7-aa0f-9479ba47ed67",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
								49979,
								49980,
							},
							uuid = "63b3efd9-54c0-7704-aeb8-4e6f0badaeac",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 788.4,
				name = "Naught Grows safe-area capture",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "92abe3cd-9bc8-3f27-ae17-a7fd9dc99e8b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state=data.enuoNaughtSafe\nif not state then return end\nlocal now=Now()\nlocal count,big,small=0,false,false\nfor _,s in pairs(state.shapes) do\n if now>=s.expires then data.enuoNaughtSafe=nil return end\n count=count+1\n if s.id==49977 or s.id==49978 then big=true else small=true end\nend\nif count<2 or not big or not small then return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel then return end\nlocal F=Argus2.RenderFlags\nlocal base=F.FLAG_OCCLUSION_BASE+F.FLAG_WARP_TERRAIN+F.FLAG_RENDER_UI\nlocal cut=F.FLAG_OCCLUDE+F.FLAG_WARP_TERRAIN\nArgus.addCircleFilled(100,0.05,100,20,64,0x6033FF33,0xCC33FF33,0.12,0,0,0,false,base,channel)\nfor _,s in pairs(state.shapes) do\n if s.id==49977 or s.id==49979 then\n  Argus.addCircleFilled(s.x,0.05,s.z,s.id==49977 and 40 or 12,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n else\n  Argus.addDonutFilled(s.x,0.05,s.z,s.id==49978 and 40 or 6,s.id==49978 and 60 or 40,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n end\nend\nself.used=true",
							name = "Subtract active Naught Grows hits",
							uuid = "dc6ef822-29ac-15ed-8aab-8711ac2edcad",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 788.4,
				name = "Naught Grows green safe area",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "0141ce09-1e93-430d-8aa5-915170907e9a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoHealerHighlightUntil=Now()+(eventArgs.channelTimeMax+2)*1000",
							conditions = 
							{
								
								{
									"ebb20e70-55ec-40af-90c8-7a2cf8d1a407",
									true,
								},
								
								{
									"11f940f6-748f-f1ee-8a9a-a1d8e058fca2",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "d117d944-b044-e7bf-98f2-5d007fe8f50c",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "ebb20e70-55ec-40af-90c8-7a2cf8d1a407",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "11f940f6-748f-f1ee-8a9a-a1d8e058fca2",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 788.4,
				name = "[Jacob v3] Naught Grows healer highlight start",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "e8109ae1-d6af-34ff-a9f6-731f39db95e9",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "self.used=true\nif not data.enuoHealerHighlightUntil or Now()>=data.enuoHealerHighlightUntil then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot()\nlocal healer=({T1=\"H1\",M1=\"H1\",R1=\"H1\",T2=\"H2\",M2=\"H2\",R2=\"H2\"})[slot]\nif not healer then return end\nlocal h=R.entOf(healer) if not h then return end\nlocal d=TensorCore.getCachedDrawer(0x5533FF33,0x8833FF33,0xFF33FF33,0xFF000000,2)\nd:addCircle(h.pos.x,h.pos.y,h.pos.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 788.4,
				name = "[Jacob v3] Naught Grows assigned healer highlight",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "7fcefae7-5b5a-2bbc-895b-6503da085ef7",
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
				displayPath = "Jacob Draws",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID==49983 or eventArgs.spellID==49984 then data.enuoHealerHighlightUntil=nil end",
				executeType = 2,
				loop = true,
				mechanicTime = 788.4,
				name = "[Jacob v3] Naught Grows healer highlight stack cleanup",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "37010386-bfcd-14c5-89b5-51a345852308",
				version = 2,
			},
		},
	},
	[83] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\extremes\\enuo\\main",
				uuid = "5b9fa846-64c3-b9a2-7945-ccdc7abbabd6",
			},
			inheritanceRoot = "store\\anyone\\extremes\\enuo\\main",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Jacob Draws",
				uuid = "bf18c5b7-bcab-c674-9fc0-de76a78a5bdf",
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
							actionLua = "local Roster = AnyoneCore.Roster\nlocal boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid=14749})\nif not boss then return end\nlocal now = Now()\nif data.enuoTankBarsStarted and now-data.enuoTankBarsStarted < 500 then self.used=true return end\nlocal duration = math.max(1,eventArgs.channelTimeMax*1000)\nlocal drawer = TensorCore.getCachedDrawer(0x80FF0000,0x80FF0000,0x80FF0000,0x00000000,0)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nfor _, slot in ipairs({\"T1\",\"T2\"}) do\n local id = Roster.idOf(slot)\n if id then drawer:addTimedRectOnEnt(duration,id,0.2,6,boss.id,0,true,false,true,math.pi,false,flags) end\nend\ndata.enuoTankBarsStarted = now\nself.used = true",
							conditions = 
							{
								
								{
									"46e8c2c0-f70e-5346-9abc-4b0598059219",
									true,
								},
								
								{
									"6501bb1b-c1d9-d8c2-8d92-0b8d3bfb5473",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "be83e736-1130-b511-8652-216424d2de7e",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "46e8c2c0-f70e-5346-9abc-4b0598059219",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "6501bb1b-c1d9-d8c2-8d92-0b8d3bfb5473",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 836.2,
				name = "Naught Grows tank indicators",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "78fd6baa-7d69-154c-9a03-7630fac59d38",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local caster=TensorCore.mGetEntity(eventArgs.entityID)\nif not caster then return end\nlocal now=Now()\nlocal state=data.enuoNaughtSafe\nif not state or now-state.started>10000 then state={started=now,shapes={}} data.enuoNaughtSafe=state end\nstate.shapes[eventArgs.entityID]={id=eventArgs.spellID,x=caster.pos.x,y=caster.pos.y,z=caster.pos.z,expires=now+eventArgs.channelTimeMax*1000}\nself.used=true",
							conditions = 
							{
								
								{
									"cd49f880-2d71-e336-88a6-6c27876f2c18",
									true,
								},
							},
							name = "Capture unsafe shapes",
							uuid = "5d363129-097d-7b26-b322-e0fbaff0560f",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
								49979,
								49980,
							},
							uuid = "cd49f880-2d71-e336-88a6-6c27876f2c18",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 836.2,
				name = "Naught Grows safe-area capture",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "02f94335-c119-a7a2-9e6a-e2c54ef8821e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state=data.enuoNaughtSafe\nif not state then return end\nlocal now=Now()\nlocal count,big,small=0,false,false\nfor _,s in pairs(state.shapes) do\n if now>=s.expires then data.enuoNaughtSafe=nil return end\n count=count+1\n if s.id==49977 or s.id==49978 then big=true else small=true end\nend\nif count<2 or not big or not small then return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel then return end\nlocal F=Argus2.RenderFlags\nlocal base=F.FLAG_OCCLUSION_BASE+F.FLAG_WARP_TERRAIN+F.FLAG_RENDER_UI\nlocal cut=F.FLAG_OCCLUDE+F.FLAG_WARP_TERRAIN\nArgus.addCircleFilled(100,0.05,100,20,64,0x6033FF33,0xCC33FF33,0.12,0,0,0,false,base,channel)\nfor _,s in pairs(state.shapes) do\n if s.id==49977 or s.id==49979 then\n  Argus.addCircleFilled(s.x,0.05,s.z,s.id==49977 and 40 or 12,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n else\n  Argus.addDonutFilled(s.x,0.05,s.z,s.id==49978 and 40 or 6,s.id==49978 and 60 or 40,64,0xFFFFFFFF,0,0,0,0,0,false,cut,channel)\n end\nend\nself.used=true",
							name = "Subtract active Naught Grows hits",
							uuid = "c711c9cd-9188-56fe-8b8f-b687de115a15",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Jacob Draws",
				eventType = 12,
				loop = true,
				mechanicTime = 836.2,
				name = "Naught Grows green safe area",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "fd8a43e9-2af6-9fa9-a06a-3c165ffb91bc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true\ndata.enuoHealerHighlightUntil=Now()+(eventArgs.channelTimeMax+2)*1000",
							conditions = 
							{
								
								{
									"0ba3a646-323a-1e85-84de-52a869000fff",
									true,
								},
								
								{
									"84f5dd80-04d7-68f4-a9e5-354301863f49",
									true,
								},
							},
							name = "Follow tank backs",
							uuid = "a0b66156-1887-9ea3-afe9-c4c603197a48",
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
							name = "Naught Grows",
							spellIDList = 
							{
								49977,
								49978,
							},
							uuid = "0ba3a646-323a-1e85-84de-52a869000fff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster; return R and R.current() and R.isReady() or false",
							name = "Roster ready",
							uuid = "84f5dd80-04d7-68f4-a9e5-354301863f49",
							version = 3,
						},
					},
				},
				displayPath = "Jacob Draws",
				eventType = 3,
				mechanicTime = 836.2,
				name = "[Jacob v3] Naught Grows healer highlight start",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 1,
				timerStartOffset = -12,
				uuid = "ad937227-2d68-0312-a750-b4763a38f92f",
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
				displayPath = "Jacob Draws",
				eventType = 12,
				execute = "self.used=true\nif not data.enuoHealerHighlightUntil or Now()>=data.enuoHealerHighlightUntil then return end\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then return end\nlocal slot=R.mySlot()\nlocal healer=({T1=\"H1\",M1=\"H1\",R1=\"H1\",T2=\"H2\",M2=\"H2\",R2=\"H2\"})[slot]\nif not healer then return end\nlocal h=R.entOf(healer) if not h then return end\nlocal d=TensorCore.getCachedDrawer(0x5533FF33,0x8833FF33,0xFF33FF33,0xFF000000,2)\nd:addCircle(h.pos.x,h.pos.y,h.pos.z,0.8,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 836.2,
				name = "[Jacob v3] Naught Grows assigned healer highlight",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "77b01b02-2fca-1d11-812f-1f5edba427ff",
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
				displayPath = "Jacob Draws",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID==49983 or eventArgs.spellID==49984 then data.enuoHealerHighlightUntil=nil end",
				executeType = 2,
				loop = true,
				mechanicTime = 836.2,
				name = "[Jacob v3] Naught Grows healer highlight stack cleanup",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 3,
				timerStartOffset = -12,
				uuid = "6c4c1e56-b922-4fe6-8250-11807cdfcd43",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"store\\anyone\\extremes\\enuo\\main",
	},
	timelineName = "enuo-ex",
	version = "1.0.1",
}



return tbl
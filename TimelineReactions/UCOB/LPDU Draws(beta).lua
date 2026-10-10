local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "e3ea7a9e-5986-9d62-915f-9a3ca76a038e",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "5beca012-20ed-f9b0-a059-f8ee9d4fedee",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobOpeningPlummet\nif not s or now-s.started>20000 then s={started=now,nextSearch=0} data.ucobOpeningPlummet=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==1482 then s.boss=e.id boss=e break end\n end\nend\nif boss and boss.targetid and boss.targetid~=0 and boss.targetid~=boss.id then\n local target=TensorCore.mGetEntity(boss.targetid)\n if not target then self.used=true return end\n local drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\n drawer:addCone(boss.pos.x,boss.pos.y,boss.pos.z,12,math.rad(120),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nself.used=true",
							name = "Opening Plummet actual target cone",
							uuid = "af1dbe83-2b8d-37e2-a35a-b3fcfc60bd98",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 7,
				name = "[LPDU] P1 Opening Plummet - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1,
				timerStartOffset = -7,
				uuid = "03689d3f-e68d-64db-9311-7e8c069e27fd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobOpeningPlummet\nif not s then s={started=Now()} data.ucobOpeningPlummet=s end\ns.hit=true\nself.used=true",
							conditions = 
							{
								
								{
									"c52acbde-5c49-3560-b1cf-b240e4cb2ae9",
									true,
								},
							},
							name = "Opening Plummet cone hit cleanup",
							uuid = "b14af867-12f0-7b1d-ac99-02361728ec4f",
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
								9896,
							},
							uuid = "c52acbde-5c49-3560-b1cf-b240e4cb2ae9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "Opening Plummet cone hit cleanup",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "0dffd3de-2f70-a38f-a54a-ec70e9ec1e43",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "e940bb31-195c-ccf5-7665-15a72f7b3061",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "c12f8190-f753-c9dc-bae4-8e4274978a80",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "4ce66016-66cc-a110-8875-0728f405360a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFirstFireball={target=eventArgs.entityID,expires=Now()+9000}\nself.used=true",
							conditions = 
							{
								
								{
									"9f10bb18-12cc-5429-aec5-a359eeab499d",
									true,
								},
							},
							uuid = "d8f2e911-5a1a-7b02-bfc2-3bb8884382bb",
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
							eventMarkerID = 117,
							uuid = "9f10bb18-12cc-5429-aec5-a359eeab499d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 16.3,
				name = "First Fireball marked player capture",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "8207049f-0e17-df86-a18f-a477b55bbc39",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFirstFireball=nil\nself.used=true",
							conditions = 
							{
								
								{
									"7a30a48f-4eed-0aed-9d64-d8564b1d3f0b",
									true,
								},
							},
							uuid = "6df82007-0b0f-a697-a7dd-b4cb7d5dba59",
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
								9900,
							},
							uuid = "7a30a48f-4eed-0aed-9d64-d8564b1d3f0b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 16.3,
				name = "First Fireball guidance hit cleanup",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 2,
				timerStartOffset = -8,
				uuid = "9500d17f-6445-5397-a6df-959e5e00c842",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobFirstFireball\nif not R or not R.current() or not R.isReady() or not s or Now()>=s.expires then self.used=true return end\nlocal slot=R.mySlot()\nif slot~=\"M1\" and slot~=\"M2\" and slot~=\"R1\" and slot~=\"R2\" then self.used=true return end\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then self.used=true return end\nlocal dest=target.pos\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							uuid = "60c69efe-92bb-87be-9b5a-d2421c26efb7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 16.3,
				name = "First Fireball DPS personal stack arrow",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 0.2,
				timerStartOffset = -4,
				uuid = "1fcc4b39-c6fb-8f7e-b74b-edc83378833c",
				version = 2,
			},
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
							alertText = "1 healer in, 1 healer out",
							conditions = 
							{
								
								{
									"bb84d004-e7a2-0e85-b112-9b97cfcf38b4",
									true,
								},
							},
							uuid = "154db764-4146-0763-8dec-9ca74dc9a7bd",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal slot=R.mySlot()\nlocal choice=Settings.FFXIVMINION.LPDU_UCOB_FirstFireballHealer or \"Unassigned\"\nif choice~=\"Unassigned\" then return false end\nreturn slot==\"H1\" or slot==\"H2\"",
							name = "healer roster slots",
							uuid = "bb84d004-e7a2-0e85-b112-9b97cfcf38b4",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				mechanicTime = 16.3,
				name = "[LPDU] First Fireball - Unassigned Healer Reminder",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "f4e66e82-5712-6671-8ee7-c53e4720dd5e",
				version = 2,
			},
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
							alertText = "Fireball: tanks stay out",
							conditions = 
							{
								
								{
									"adff3a99-a0a0-9349-9c31-c5561db91bcc",
									true,
								},
							},
							uuid = "0241b908-a0bc-6167-a1e4-defe1cd80a07",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal slot=R.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "tank roster slots",
							uuid = "adff3a99-a0a0-9349-9c31-c5561db91bcc",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				mechanicTime = 16.3,
				name = "First Fireball tank reminder",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "b5166513-64cf-d60a-ae24-28d3b77b54bf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local settings=Settings.FFXIVMINION\nif not data.ucobAssignmentGuiOptions then\n data.ucobAssignmentGuiOptions={healer={\"Unassigned\",\"In\",\"Out\"},tower={\"Unassigned\",\"Close\",\"Far\"}}\nend\nlocal options=data.ucobAssignmentGuiOptions\nlocal healer=settings.LPDU_UCOB_FirstFireballHealer or \"Unassigned\"\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal slot=R and R.current() and R.mySlot() or nil\nlocal defaultTower=(slot==\"M1\" or slot==\"M2\") and \"Close\" or (slot==\"R1\" or slot==\"R2\") and \"Far\" or nil\noptions.tower[1]=defaultTower and (\"Auto: \"..defaultTower) or \"Auto (role)\"\nlocal tower=settings.LPDU_UCOB_BlackfireTower or \"Unassigned\"\nlocal hi=healer==\"In\" and 2 or healer==\"Out\" and 3 or 1\nlocal ti=tower==\"Close\" and 2 or tower==\"Far\" and 3 or 1\nlocal visible=GUI:Begin(\"[LPDU] UCOB - Assignments\",true,GUI.WindowFlags_AlwaysAutoResize)\nif visible then\n GUI:PushItemWidth(150)\n GUI:Text(\"P1 Healer Fireball - DPS targeted\")\n if GUI:IsItemHovered() then\n  GUI:SetTooltip(\"First Fireball only.\\nDPS targeted: use your chosen In/Out assignment.\\nHealer targeted: that healer goes in; the other stays out automatically.\\nUnassigned: agree which healer stays out.\\nBoth tanks stay out.\")\n end\n GUI:SameLine(255)\n local newH,changedH=GUI:Combo(\"##LPDUFirstFireballHealer\",hi,options.healer)\n if newH~=hi and options.healer[newH] then settings.LPDU_UCOB_FirstFireballHealer=options.healer[newH] end\n GUI:Text(\"P3 Blackfire DPS Tower\")\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Default: melee Close to Nael; ranged Far from Nael.\\nChoose Close/Far to override, or Auto to follow your roster role.\") end\n GUI:SameLine(255)\n local newT,changedT=GUI:Combo(\"##LPDUBlackfireTower\",ti,options.tower)\n if newT~=ti and options.tower[newT] then settings.LPDU_UCOB_BlackfireTower=newT==1 and \"Unassigned\" or options.tower[newT] end\n GUI:PopItemWidth()\nend\nGUI:End()\nself.used=true",
							name = "First Fireball and Blackfire Settings",
							uuid = "a7689b1f-29f6-541f-a839-c69ff7957246",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 13,
				loop = true,
				mechanicTime = 16.3,
				name = "[LPDU] UCOB - Personal Assignment Settings",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -6,
				timerStartOffset = -16.3,
				uuid = "2d4a308e-6ea4-77d9-9d6c-934086d7a583",
				version = 2,
			},
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
							alertDuration = 3500,
							alertPriority = 2,
							alertText = "Fireball: stack in",
							conditions = 
							{
								
								{
									"56c3e3d1-f56b-9e68-80e6-717940280ad8",
									true,
								},
							},
							uuid = "bb5c9efd-a0cc-38ec-b6d3-f17a22585d8f",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobFirstFireball\nif not R or not R.current() or not s or Now()>=s.expires then return false end\nlocal slot=R.mySlot()\nif slot~=\"H1\" and slot~=\"H2\" then return false end\nlocal choice=Settings.FFXIVMINION.LPDU_UCOB_FirstFireballHealer or \"Unassigned\"\nlocal targetSlot=R.slotOf(s.target)\nlocal goIn=choice==\"In\"\nif targetSlot==\"H1\" or targetSlot==\"H2\" then goIn=targetSlot==slot end\nif choice==\"Unassigned\" and targetSlot~=\"H1\" and targetSlot~=\"H2\" then return false end\nreturn goIn==true",
							name = "Resolved Healer Assignment",
							uuid = "56c3e3d1-f56b-9e68-80e6-717940280ad8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				mechanicTime = 16.3,
				name = "[LPDU] First Fireball - Healer In Guidance",
				timeRange = true,
				timelineIndex = 4,
				timerStartOffset = -8,
				uuid = "383b86e3-8264-a48b-8fa9-1596916a8d54",
				version = 2,
			},
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
							alertDuration = 3500,
							alertPriority = 2,
							alertText = "Fireball: stay out",
							conditions = 
							{
								
								{
									"f42143cc-6f7b-c045-8913-020744b18d15",
									true,
								},
							},
							uuid = "197fa10a-a200-4e26-a87e-9e241322da80",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobFirstFireball\nif not R or not R.current() or not s or Now()>=s.expires then return false end\nlocal slot=R.mySlot()\nif slot~=\"H1\" and slot~=\"H2\" then return false end\nlocal choice=Settings.FFXIVMINION.LPDU_UCOB_FirstFireballHealer or \"Unassigned\"\nlocal targetSlot=R.slotOf(s.target)\nlocal goIn=choice==\"In\"\nif targetSlot==\"H1\" or targetSlot==\"H2\" then goIn=targetSlot==slot end\nif choice==\"Unassigned\" and targetSlot~=\"H1\" and targetSlot~=\"H2\" then return false end\nreturn goIn==false",
							name = "Resolved Healer Assignment",
							uuid = "f42143cc-6f7b-c045-8913-020744b18d15",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				mechanicTime = 16.3,
				name = "[LPDU] First Fireball - Healer Out Guidance",
				timeRange = true,
				timelineIndex = 4,
				timerStartOffset = -8,
				uuid = "d76b3ce4-5b0d-392a-8865-62e8f09d4926",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobFirstFireball\nif not R or not R.current() or not s or Now()>=s.expires then self.used=true return end\nlocal slot=R.mySlot()\nif slot~=\"H1\" and slot~=\"H2\" then self.used=true return end\nlocal choice=Settings.FFXIVMINION.LPDU_UCOB_FirstFireballHealer or \"Unassigned\"\nlocal targetSlot=R.slotOf(s.target)\nlocal goIn=choice==\"In\"\nif targetSlot==\"H1\" or targetSlot==\"H2\" then goIn=targetSlot==slot end\nif not goIn or not R.isReady() then self.used=true return end\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then self.used=true return end\nlocal dest=target.pos\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Healer Stack Arrow",
							uuid = "4b005849-f8c8-a4d5-a8bc-30e8406cf7ac",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 16.3,
				name = "[LPDU] First Fireball - Healer Stack Arrow",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 0.2,
				timerStartOffset = -8,
				uuid = "abb7fde8-e429-61e6-b355-671dcfde5ea5",
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
				name = "LPDU Personal Guidance",
				uuid = "cd1a3897-c0b0-a474-9272-1a754d230304",
			},
			objectType = "folder",
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Go to edge and bait",
							conditions = 
							{
								
								{
									"d9bc3ec5-5a89-b3b1-a711-3c046917c2f4",
									true,
								},
							},
							uuid = "933c73c2-8ab4-535b-b2ee-a9b6d7e7a52e",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nreturn R and R.current() and R.mySlot()==\"R1\"",
							dequeueIfLuaFalse = true,
							name = "L4 only",
							uuid = "d9bc3ec5-5a89-b3b1-a711-3c046917c2f4",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				mechanicTime = 32.8,
				name = "[LPDU] P1 Liquid Hell - L4 Edge Bait",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = -1.8,
				timerStartOffset = -2.8,
				uuid = "a9f33fdf-bb56-6f11-aef5-2a1e049d1852",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "b408c534-d82c-9788-a00d-363693ad4ca4",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "436bcd0e-2f3c-098d-98f0-f01ee81a908a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() or R.mySlot()~=\"R1\" then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal distance=math.sqrt(p.pos.x*p.pos.x+p.pos.z*p.pos.z)\nif distance<0.5 then self.used=true return end\nlocal dest={x=p.pos.x/distance*21,y=0,z=p.pos.z/distance*21}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "L4 first post-Fireball Liquid Hell edge bait",
							uuid = "ecfccc92-48f8-8ea9-b8c2-b5af1119d7d4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 36,
				name = "L4 first post-Fireball Liquid Hell edge bait",
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = -0.1,
				timerStartOffset = -5,
				uuid = "4ea4e63d-63ae-0993-8358-4bb83e866622",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "f51006b7-e811-16a3-5c56-18c523bcd227",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "ed8b18a1-6b56-db89-9f3d-fa03c055978f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() or R.mySlot()~=\"R1\" then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal distance=math.sqrt(p.pos.x*p.pos.x+p.pos.z*p.pos.z)\nif distance<0.5 then self.used=true return end\nlocal dest={x=p.pos.x/distance*21,y=0,z=p.pos.z/distance*21}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "L4 early Liquid Hell edge bait",
							uuid = "ac0cb3f0-15bf-f712-9212-a5efa2f16405",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 47.5,
				name = "L4 early Liquid Hell edge bait",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = -0.10000000149012,
				timerStartOffset = -4,
				uuid = "3c23edb3-a022-2d74-82bd-897b8bd9b1d7",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "7e203981-18cb-3efd-611c-922b21232df1",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "c25ca508-d6a3-fdcf-82df-e5c9b4c9254a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\ndata.ucobFirstIntercept=nil\nif not R or not R.current() or eventArgs.entityID~=R.idOf(\"R1\") then self.used=true return end\nlocal dest=nil\nlocal count=0\nfor _,e in pairs(EntityList(\"\")) do\n if e.contentid==2001151 then count=count+1 dest={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\nend\nif count==1 then data.ucobFirstIntercept={dest=dest,expires=Now()+12000} end\nself.used=true",
							conditions = 
							{
								
								{
									"408611d3-e757-fefd-a421-30f1e5768443",
									true,
								},
							},
							name = "First Hatch ranged intercept capture",
							uuid = "377367d3-f55f-ceba-ae6d-45d0248ace7d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 2,
							alertTTS = true,
							alertText = "Ranged targeted, intercept",
							conditions = 
							{
								
								{
									"408611d3-e757-fefd-a421-30f1e5768443",
									true,
								},
								
								{
									"666e65b8-e98b-636b-9dfe-cc57a7ffd318",
									true,
								},
							},
							uuid = "5f65bfea-528e-ce91-b41c-16bc9b4bbb3b",
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
							eventMarkerID = 118,
							uuid = "408611d3-e757-fefd-a421-30f1e5768443",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nreturn R and R.current() and R.mySlot()==\"R2\" and eventArgs.entityID==R.idOf(\"R1\")",
							dequeueIfLuaFalse = true,
							name = "Caster intercepts marked physical ranged",
							uuid = "666e65b8-e98b-636b-9dfe-cc57a7ffd318",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 56,
				name = "First Hatch ranged intercept capture",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 12,
				timerStartOffset = -16,
				uuid = "2d99be48-38b8-3339-98c9-f09bb4cc7153",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobFirstIntercept\nif not R or not R.current() or not R.isReady() or R.mySlot()~=\"R2\" or not s or Now()>=s.expires then self.used=true return end\nlocal dest=s.dest\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "First Hatch caster personal intercept arrow",
							uuid = "9b737e08-f94b-97aa-abe2-d28647b99728",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 56,
				name = "First Hatch caster personal intercept arrow",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 12,
				timerStartOffset = -16,
				uuid = "7b871597-f702-60c6-9a6b-702fb32b2355",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFirstIntercept=nil\nself.used=true",
							conditions = 
							{
								
								{
									"a315ddeb-ba28-f5a2-b8ca-1da1a47629ca",
									true,
								},
							},
							name = "First Hatch intercept hit cleanup",
							uuid = "0ce4eb71-b38e-99fe-9e77-51fd349be762",
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
								9903,
							},
							uuid = "a315ddeb-ba28-f5a2-b8ca-1da1a47629ca",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 56,
				name = "First Hatch intercept hit cleanup",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 12,
				timerStartOffset = -16,
				uuid = "e44d9a6d-d2fb-98d2-a8b5-8055d92d2ca9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p or eventArgs.entityID~=p.id then self.used=true return end\ndata.ucobSingleHatch12=nil\n-- Keep the existing physical-ranged/caster interception assignment.\nif p.id==R.idOf(\"R1\") then self.used=true return end\nlocal count,link=0,nil\nfor _,e in pairs(EntityList(\"\")) do\n if e.contentid==2001151 then count=count+1 link={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\nend\nif count==1 then data.ucobSingleHatch12={target=p.id,dest=link,ready=true,expires=Now()+12000} end\nself.used=true",
							conditions = 
							{
								
								{
									"0542b8c9-f9ec-c11f-812b-dc7583fc925e",
									true,
								},
							},
							name = "P1 First Hatch - Marked Player Neurolink Capture",
							uuid = "6685607b-10f1-89b9-b3ed-d56e37cd876e",
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
							eventMarkerID = 118,
							uuid = "0542b8c9-f9ec-c11f-812b-dc7583fc925e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 56,
				name = "[LPDU] P1 First Hatch - Marked Player Neurolink Capture",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 12,
				timerStartOffset = -16,
				uuid = "10078b64-17eb-ca07-b304-11a62a2834c6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal s=data.ucobSingleHatch12\nif not R or not R.current() or not R.isReady() or not p or not s or s.target~=p.id or not s.ready or Now()>=s.expires then self.used=true return end\nlocal dest=s.dest\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n d:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\nd:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P1 First Hatch - Marked Player Neurolink Arrow",
							uuid = "07dbc5e6-781e-cb0f-9cde-b0b3e6654148",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 56,
				name = "[LPDU] P1 First Hatch - Marked Player Neurolink Arrow",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 12,
				timerStartOffset = -16,
				uuid = "5d0d0484-efc7-16a8-bdb3-87c26ae172e6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "for _,id in ipairs(eventArgs.hitTargets) do\n local first=data.ucobSingleHatch12\n local second=data.ucobSingleHatch15\n if first and first.target==id then data.ucobSingleHatch12=nil end\n if second and second.target==id then data.ucobSingleHatch15=nil end\n for _,index in ipairs({22,27,31,36,142,172,182}) do\n  local s=data[\"ucobMultiHatch\"..index]\n  if s and s.assignments then\n   local pair=s.assignments[id]\n   if pair then\n    if id==pair.target and pair.phase==0 then pair.phase=1\n    elseif id==pair.backup then pair.phase=2 end\n   end\n  end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"edfed3b4-899d-2fe1-ad8f-2bedcfdb4570",
									true,
								},
							},
							name = "Hatch - Native Player Hit Cleanup",
							uuid = "d5643e5f-fa20-a32e-ae5c-c662df85d35d",
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
								9903,
							},
							uuid = "edfed3b4-899d-2fe1-ad8f-2bedcfdb4570",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 56,
				name = "[LPDU] Hatch - Native Player Hit Cleanup",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 900,
				timerStartOffset = -16,
				uuid = "06826f43-d9de-3dfc-acce-13bbb0ac12b3",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"e39e479a-e6ef-eecf-ae3e-7ac6c3637cfa",
									true,
								},
							},
							uuid = "2d76ce46-87f2-514b-9f40-37309365aa58",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobSingleHatch12\nif s then s.soakAlert=true end\nself.used=true",
							conditions = 
							{
								
								{
									"e39e479a-e6ef-eecf-ae3e-7ac6c3637cfa",
									true,
								},
							},
							name = "Soak alert used",
							uuid = "57163963-8304-1d03-be8b-8df989d66d6c",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobSingleHatch12\nif not s or not s.ready or s.soakAlert then return false end\nreturn s.target==p.id and Now()<s.expires",
							dequeueIfLuaFalse = true,
							name = "Assigned soak ready",
							uuid = "e39e479a-e6ef-eecf-ae3e-7ac6c3637cfa",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 56,
				name = "[LPDU] P1 Hatch - Enter Neurolink",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "328271dc-9fde-84cc-a1d4-a5541b8f83cc",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"ee648df3-6ab3-0103-969a-da959ac3bebc",
									true,
								},
							},
							uuid = "0675e5a9-5c1a-7e5a-90a9-889d30b31794",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFirstIntercept\nlocal p=TensorCore.mGetPlayer()\nif s and p then s.entryAlerts=s.entryAlerts or {};s.entryAlerts[p.id]=true end\nself.used=true",
							conditions = 
							{
								
								{
									"ee648df3-6ab3-0103-969a-da959ac3bebc",
									true,
								},
							},
							name = "Personal alert used",
							uuid = "4cd3253b-c4a6-8add-9a0c-f618d9668b7c",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobFirstIntercept\nif not s or s.entryAlerts and s.entryAlerts[p.id] then return false end\nreturn R.mySlot()==\"R2\" and Now()<s.expires",
							dequeueIfLuaFalse = true,
							name = "Your soak ready",
							uuid = "ee648df3-6ab3-0103-969a-da959ac3bebc",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 56,
				name = "[LPDU] P1 Caster Intercept - Personal Neurolink Entry",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "859830c4-a26b-5003-a71c-9425ef53e38c",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "b51cb22e-a1bd-b48a-f343-248082a7f25e",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "f6455f2a-7cdf-95b7-88df-0d5bb7bf689c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() or R.mySlot()~=\"R1\" then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal distance=math.sqrt(p.pos.x*p.pos.x+p.pos.z*p.pos.z)\nif distance<0.5 then self.used=true return end\nlocal dest={x=p.pos.x/distance*21,y=0,z=p.pos.z/distance*21}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "L4 early Liquid Hell edge bait",
							uuid = "475f5ccc-8ab2-fa0f-a16b-a6ba34f048e0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 59.1,
				name = "L4 early Liquid Hell edge bait",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.10000000149012,
				timerStartOffset = -4,
				uuid = "710900db-149a-44e2-a5d2-aa100213200d",
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
				name = "LPDU Personal Guidance",
				uuid = "835efe65-e949-f9e6-b87b-28b30be7581c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobSecondIntercept=nil\nself.used=true",
							conditions = 
							{
								
								{
									"73e22196-fcb8-44e8-ade9-141a117ff265",
									true,
								},
							},
							name = "Second Hatch intercept hit cleanup",
							uuid = "f23a5ebb-b5d3-4dfb-853c-bf90a1ec622d",
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
								9903,
							},
							uuid = "73e22196-fcb8-44e8-ade9-141a117ff265",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 77.6,
				name = "Second Hatch intercept hit cleanup",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "ad3ec5f9-dbf0-531c-b566-f495571408ce",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobSecondIntercept\nif not R or not R.current() or not R.isReady() or R.mySlot()~=\"R2\" or not s or not s.ready or Now()>=s.expires then self.used=true return end\nlocal dest=s.dest\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Second Hatch caster personal intercept arrow",
							uuid = "98da4e38-5a7b-2f49-8009-6fc907c80cf0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 77.6,
				name = "Second Hatch caster personal intercept arrow",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "f56bbfbe-bf9c-3a88-a5c0-bdaf10fe22ef",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\ndata.ucobSecondIntercept=nil\nif not R or not R.current() or eventArgs.entityID~=R.idOf(\"R1\") then self.used=true return end\nlocal dest=nil\nlocal count=0\nfor _,e in pairs(EntityList(\"\")) do\n if e.contentid==2001151 then count=count+1 dest={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\nend\nif count==1 then data.ucobSecondIntercept={dest=dest,expires=Now()+12000,ready=false} end\nself.used=true",
							conditions = 
							{
								
								{
									"16a6d603-88f6-73a9-94e6-6b433b1a88c3",
									true,
								},
							},
							name = "Second Hatch ranged intercept capture",
							uuid = "60d3fa2e-ab68-1f53-b61f-9f39ee2fec54",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 2,
							alertTTS = true,
							alertText = "Ranged targeted, intercept",
							conditions = 
							{
								
								{
									"16a6d603-88f6-73a9-94e6-6b433b1a88c3",
									true,
								},
								
								{
									"aea31b40-9edc-637a-901a-0f9b0760c6a7",
									true,
								},
							},
							uuid = "c8aa97d9-64b5-d95d-b7d2-2e2bf73b225d",
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
							eventMarkerID = 118,
							uuid = "16a6d603-88f6-73a9-94e6-6b433b1a88c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nreturn R and R.current() and R.mySlot()==\"R2\" and eventArgs.entityID==R.idOf(\"R1\")",
							dequeueIfLuaFalse = true,
							name = "Caster intercepts marked physical ranged",
							uuid = "aea31b40-9edc-637a-901a-0f9b0760c6a7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 77.6,
				name = "Second Hatch ranged intercept capture",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "362a426c-4fd7-f060-a055-47cd16cb7d3b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobSecondIntercept\nif s then s.ready=true end\nself.used=true",
							conditions = 
							{
								
								{
									"e54239d4-b3d5-ffcf-8d89-6c1f8b9df30d",
									true,
								},
							},
							uuid = "b7cefd92-dca2-704d-ab97-d3375fc24d0a",
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
								9898,
							},
							uuid = "e54239d4-b3d5-ffcf-8d89-6c1f8b9df30d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 77.6,
				name = "Second Hatch intercept wait for Twister",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "92a0b3ea-9df1-3710-9877-851f00632ac6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p or eventArgs.entityID~=p.id then self.used=true return end\ndata.ucobSingleHatch15=nil\n-- Keep the existing physical-ranged/caster interception assignment.\nif p.id==R.idOf(\"R1\") then self.used=true return end\nlocal count,link=0,nil\nfor _,e in pairs(EntityList(\"\")) do\n if e.contentid==2001151 then count=count+1 link={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\nend\nif count==1 then data.ucobSingleHatch15={target=p.id,dest=link,ready=false,expires=Now()+12000} end\nself.used=true",
							conditions = 
							{
								
								{
									"586e969b-5f94-7db3-847f-eb2c80b6d8b1",
									true,
								},
							},
							name = "P1 Second Hatch - Marked Player Neurolink Capture",
							uuid = "7689c352-77f0-7ed5-a7cc-bffb0d5d0577",
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
							eventMarkerID = 118,
							uuid = "586e969b-5f94-7db3-847f-eb2c80b6d8b1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 77.6,
				name = "[LPDU] P1 Second Hatch - Marked Player Neurolink Capture",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "fbf4a3fd-b3c7-a443-90af-71217bb2e8ac",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal s=data.ucobSingleHatch15\nif not R or not R.current() or not R.isReady() or not p or not s or s.target~=p.id or not s.ready or Now()>=s.expires then self.used=true return end\nlocal dest=s.dest\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n d:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\nd:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P1 Second Hatch - Marked Player Neurolink Arrow",
							uuid = "6dc81c06-d96c-5c0b-9c80-50ffa595405c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 77.6,
				name = "[LPDU] P1 Second Hatch - Marked Player Neurolink Arrow",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "400c6942-0e74-16dc-ab6e-fecc86e46058",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobSingleHatch15\nif s then s.ready=true end\nself.used=true",
							conditions = 
							{
								
								{
									"9e802bbd-e74b-99ed-995b-0635b7aac1be",
									true,
								},
							},
							name = "P1 Second Hatch - Neurolink Entry after Twister",
							uuid = "0700d9bd-8b9f-406c-bdba-0ebf4163994d",
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
								9898,
							},
							uuid = "9e802bbd-e74b-99ed-995b-0635b7aac1be",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 77.6,
				name = "[LPDU] P1 Second Hatch - Neurolink Entry after Twister",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "4b67eb6b-a2f0-e3f6-a2c4-f22f4e7e5563",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"465f03a9-0c2f-7d6e-9ad4-f9e7a33c553b",
									true,
								},
							},
							uuid = "5080bc36-1493-81c1-b53f-ec97910ff726",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobSingleHatch15\nif s then s.soakAlert=true end\nself.used=true",
							conditions = 
							{
								
								{
									"465f03a9-0c2f-7d6e-9ad4-f9e7a33c553b",
									true,
								},
							},
							name = "Soak alert used",
							uuid = "9e43ea66-34a6-cfe7-a6f4-f1bdf124cd27",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobSingleHatch15\nif not s or not s.ready or s.soakAlert then return false end\nreturn s.target==p.id and Now()<s.expires",
							dequeueIfLuaFalse = true,
							name = "Assigned soak ready",
							uuid = "465f03a9-0c2f-7d6e-9ad4-f9e7a33c553b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 77.6,
				name = "[LPDU] P1 Hatch - Enter Neurolink",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "9f57e17f-a15f-460b-aad1-e740f370177e",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"a46bebc0-3dc1-84d6-ab9a-92297d026e95",
									true,
								},
							},
							uuid = "51d7315c-d609-03a6-b53c-94748bf8bde9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobSecondIntercept\nlocal p=TensorCore.mGetPlayer()\nif s and p then s.entryAlerts=s.entryAlerts or {};s.entryAlerts[p.id]=true end\nself.used=true",
							conditions = 
							{
								
								{
									"a46bebc0-3dc1-84d6-ab9a-92297d026e95",
									true,
								},
							},
							name = "Personal alert used",
							uuid = "c1547ff7-3244-bf30-af1e-fa27e2d16f6d",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobSecondIntercept\nif not s or s.entryAlerts and s.entryAlerts[p.id] then return false end\nreturn R.mySlot()==\"R2\" and Now()<s.expires and s.ready",
							dequeueIfLuaFalse = true,
							name = "Your soak ready",
							uuid = "a46bebc0-3dc1-84d6-ab9a-92297d026e95",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 77.6,
				name = "[LPDU] P1 Caster Intercept - Personal Neurolink Entry",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "528003ad-6876-91af-a5d9-39225f884e74",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "940780ef-85f9-c26b-b941-08bd0360651f",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "b4a85fc7-8bc6-fbf0-91fb-0f07b9147a4a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() or R.mySlot()~=\"R1\" then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal distance=math.sqrt(p.pos.x*p.pos.x+p.pos.z*p.pos.z)\nif distance<0.5 then self.used=true return end\nlocal dest={x=p.pos.x/distance*21,y=0,z=p.pos.z/distance*21}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "L4 early Liquid Hell edge bait",
							uuid = "b40e522c-85f7-8550-93dd-291aa812bf4e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 91.7,
				name = "L4 early Liquid Hell edge bait",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = -0.10000000149012,
				timerStartOffset = -4,
				uuid = "988ed957-e053-f5ae-8999-6d7bd316ab2e",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "6bfdedf4-91db-1f80-2ff6-ac7e00792d24",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "d56aa158-2031-40a1-b30e-cc21b596b756",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() or R.mySlot()~=\"R1\" then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal distance=math.sqrt(p.pos.x*p.pos.x+p.pos.z*p.pos.z)\nif distance<0.5 then self.used=true return end\nlocal dest={x=p.pos.x/distance*21,y=0,z=p.pos.z/distance*21}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "L4 early Liquid Hell edge bait",
							uuid = "5f76c91e-5795-bfef-8a10-0efee6cd43d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 106.4,
				name = "L4 early Liquid Hell edge bait",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -0.10000000149012,
				timerStartOffset = -4,
				uuid = "e31aeba1-d190-94ef-a5c8-3c14932ded8e",
				version = 2,
			},
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "5b1eb7f3-3d9e-a645-886c-1236b7396f12",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal now=Now()\nlocal s=data.ucobMultiHatch22\nif not s or now-s.started>15000 then\n s={started=now,lastMarker=now,targets={},positions={},links={},hit={},ready=true}\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n for _,slot in ipairs(slots) do\n  local e=R.entOf(slot)\n  if e then s.positions[e.id]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\n end\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==2001151 then s.links[#s.links+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z,id=e.id} end\n end\n table.sort(s.links,function(a,b) if math.abs(a.z-b.z)>1 then return a.z<b.z end return a.x<b.x end)\n if #s.links>=2 and s.links[1].x>s.links[2].x then s.links[1],s.links[2]=s.links[2],s.links[1] end\n data.ucobMultiHatch22=s\nend\nif not s.assignments then s.targets[eventArgs.entityID]=true s.lastMarker=now end\nself.used=true",
							conditions = 
							{
								
								{
									"fc48dd36-eca6-7f7b-a41f-b64148ba8156",
									true,
								},
							},
							name = "P1 double Hatch target and link capture",
							uuid = "656bbb62-35a7-ee26-838f-326e5d6830c8",
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
							eventMarkerID = 118,
							uuid = "fc48dd36-eca6-7f7b-a41f-b64148ba8156",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 114.9,
				name = "P1 double Hatch target and link capture",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 14,
				timerStartOffset = -35,
				uuid = "ada3c083-ff54-6d5f-bfb8-7b0792c9d001",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobMultiHatch22\nif not R or not R.current() or not R.isReady() or not s or Now()-s.started>25000 then self.used=true return end\nif not s.assignments then\n if Now()-s.lastMarker<150 then self.used=true return end\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n local marked,unmarked={},{}\n for _,slot in ipairs(slots) do\n  local id=R.idOf(slot)\n  if id and s.positions[id] then\n   if s.targets[id] then marked[#marked+1]=id else unmarked[#unmarked+1]=id end\n  end\n end\n if #marked~=2 or #s.links<2 then self.used=true return end\n -- Compare both complete pairings using positions captured at the Hatch markers.\n -- Each player receives a separate link; Quickmarch order breaks equal-cost ties.\n local function match(ids,links)\n  local function distance(id,link)\n   local p=s.positions[id]\n   local dx,dz=p.x-link.x,p.z-link.z\n   return math.sqrt(dx*dx+dz*dz)\n  end\n  local direct=distance(ids[1],links[1])+distance(ids[2],links[2])\n  local swapped=distance(ids[1],links[2])+distance(ids[2],links[1])\n  if swapped<direct-0.001 then return {ids[2],ids[1]} end\n  return {ids[1],ids[2]}\n end\n local links={}\n for i=1,2 do links[i]=s.links[i] end\n local assigned=match(marked,links)\n \n s.assignments={}\n local backups=false and match(unmarked,links) or nil\n for i,link in ipairs(links) do\n  local pair={target=assigned[i],link=link,phase=0}\n  if backups then pair.backup=backups[i] end\n  s.assignments[assigned[i]]=pair\n  if backups then s.assignments[backups[i]]=pair end\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal pair=s.assignments[p.id]\nif not pair or pair.phase>=1 or not s.ready then self.used=true return end\nlocal link=pair.link\nlocal dest=link\nif false then\n local r=math.sqrt(link.x*link.x+link.z*link.z)\n if r<1 then self.used=true return end\n if p.id==pair.target then\n  if pair.phase==1 then dest={x=link.x/r*20.5,y=link.y,z=link.z/r*20.5} end\n elseif pair.phase==0 then\n  local distance=math.min(20.5,r+8.5)\n  dest={x=link.x/r*distance,y=link.y,z=link.z/r*distance}\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P1 double Hatch deterministic personal arrows",
							uuid = "8819e831-9795-bb30-8b67-fdb6bfb79411",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 114.9,
				name = "[LPDU] P1 Double Hatch - Closest Separate Neurolinks",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 14,
				timerStartOffset = -35,
				uuid = "76b973b7-48b2-d1b7-8084-5b8aa0e1368f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch22\nif s and s.assignments then\n local pair=s.assignments[eventArgs.entityID]\n if pair then\n  if eventArgs.entityID==pair.target and pair.phase==0 then pair.phase=1\n  elseif eventArgs.entityID==pair.backup then pair.phase=2 end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"7f779f3c-3c13-1555-8fb8-66ee10e4b5ad",
									true,
								},
							},
							name = "P1 double Hatch individual soak resolution",
							uuid = "65d3b4f9-3a6b-b14c-b670-7a214b99689b",
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
							eventBuffID = 1434,
							uuid = "7f779f3c-3c13-1555-8fb8-66ee10e4b5ad",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 8,
				loop = true,
				mechanicTime = 114.9,
				name = "P1 double Hatch individual soak resolution",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "fe5966a7-bf0c-90f4-aa94-d6bb5144708b",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"a513899a-7c5e-6d94-8f16-5adc57a7a8e4",
									true,
								},
							},
							uuid = "da2c260a-accf-9505-bfde-955bf739c509",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch22\nif s then s.soakAlert=true end\nself.used=true",
							conditions = 
							{
								
								{
									"a513899a-7c5e-6d94-8f16-5adc57a7a8e4",
									true,
								},
							},
							name = "Soak alert used",
							uuid = "2e0c7a61-3382-15bf-9f86-a8f076c38e3a",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobMultiHatch22\nif not s or not s.ready or s.soakAlert then return false end\nlocal a=s.assignments and s.assignments[p.id]\nreturn a~=nil and a.target==p.id and a.phase==0 and Now()-s.started<25000",
							dequeueIfLuaFalse = true,
							name = "Assigned soak ready",
							uuid = "a513899a-7c5e-6d94-8f16-5adc57a7a8e4",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 114.9,
				name = "[LPDU] P1 Hatch - Enter Neurolink",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 14,
				timerStartOffset = -35,
				uuid = "1651b65c-fd74-a7aa-9d57-c66f8eca0fc1",
				version = 2,
			},
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "bc11f968-122e-13ac-7763-00e27e3b3bd8",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "62ce4921-e804-781c-b336-a18024fbbe74",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal now=Now()\nlocal s=data.ucobMultiHatch27\nif not s or now-s.started>15000 then\n s={started=now,lastMarker=now,targets={},positions={},links={},hit={},ready=false}\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n for _,slot in ipairs(slots) do\n  local e=R.entOf(slot)\n  if e then s.positions[e.id]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\n end\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==2001151 then s.links[#s.links+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z,id=e.id} end\n end\n table.sort(s.links,function(a,b) if math.abs(a.z-b.z)>1 then return a.z<b.z end return a.x<b.x end)\n if #s.links>=2 and s.links[1].x>s.links[2].x then s.links[1],s.links[2]=s.links[2],s.links[1] end\n data.ucobMultiHatch27=s\nend\nif not s.assignments then s.targets[eventArgs.entityID]=true s.lastMarker=now end\nself.used=true",
							conditions = 
							{
								
								{
									"effa5914-9155-94c7-9786-8e9f93b70e3d",
									true,
								},
							},
							name = "P1 double Hatch target and link capture",
							uuid = "3925ffa9-e14e-ef37-8ebc-49854de0a8a6",
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
							eventMarkerID = 118,
							uuid = "effa5914-9155-94c7-9786-8e9f93b70e3d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 143.6,
				name = "P1 double Hatch target and link capture",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "a575c0e2-8c1f-9380-879e-b5bb23b161bf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobMultiHatch27\nif not R or not R.current() or not R.isReady() or not s or Now()-s.started>25000 then self.used=true return end\nif not s.assignments then\n if Now()-s.lastMarker<150 then self.used=true return end\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n local marked,unmarked={},{}\n for _,slot in ipairs(slots) do\n  local id=R.idOf(slot)\n  if id and s.positions[id] then\n   if s.targets[id] then marked[#marked+1]=id else unmarked[#unmarked+1]=id end\n  end\n end\n if #marked~=2 or #s.links<2 then self.used=true return end\n -- Compare both complete pairings using positions captured at the Hatch markers.\n -- Each player receives a separate link; Quickmarch order breaks equal-cost ties.\n local function match(ids,links)\n  local function distance(id,link)\n   local p=s.positions[id]\n   local dx,dz=p.x-link.x,p.z-link.z\n   return math.sqrt(dx*dx+dz*dz)\n  end\n  local direct=distance(ids[1],links[1])+distance(ids[2],links[2])\n  local swapped=distance(ids[1],links[2])+distance(ids[2],links[1])\n  if swapped<direct-0.001 then return {ids[2],ids[1]} end\n  return {ids[1],ids[2]}\n end\n local links={}\n for i=1,2 do links[i]=s.links[i] end\n local assigned=match(marked,links)\n \n s.assignments={}\n local backups=false and match(unmarked,links) or nil\n for i,link in ipairs(links) do\n  local pair={target=assigned[i],link=link,phase=0}\n  if backups then pair.backup=backups[i] end\n  s.assignments[assigned[i]]=pair\n  if backups then s.assignments[backups[i]]=pair end\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal pair=s.assignments[p.id]\nif not pair or pair.phase>=1 or not s.ready then self.used=true return end\nlocal link=pair.link\nlocal dest=link\nif false then\n local r=math.sqrt(link.x*link.x+link.z*link.z)\n if r<1 then self.used=true return end\n if p.id==pair.target then\n  if pair.phase==1 then dest={x=link.x/r*20.5,y=link.y,z=link.z/r*20.5} end\n elseif pair.phase==0 then\n  local distance=math.min(20.5,r+8.5)\n  dest={x=link.x/r*distance,y=link.y,z=link.z/r*distance}\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P1 double Hatch deterministic personal arrows",
							uuid = "6ad57068-f624-7f48-93d3-f5f87f6a1732",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 143.6,
				name = "[LPDU] P1 Double Hatch - Closest Separate Neurolinks",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "b188aed3-6fa6-2814-ae4f-75437821367e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch27\nif s and s.assignments then\n local pair=s.assignments[eventArgs.entityID]\n if pair then\n  if eventArgs.entityID==pair.target and pair.phase==0 then pair.phase=1\n  elseif eventArgs.entityID==pair.backup then pair.phase=2 end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"fb85c93b-49a8-f309-9ab5-81f15a89549d",
									true,
								},
							},
							name = "P1 double Hatch individual soak resolution",
							uuid = "798e2d27-c1b5-f3aa-9f20-4f8098c3ee1f",
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
							eventBuffID = 1434,
							uuid = "fb85c93b-49a8-f309-9ab5-81f15a89549d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 8,
				loop = true,
				mechanicTime = 143.6,
				name = "P1 double Hatch individual soak resolution",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "7255dea6-140f-6ea1-acd6-bedb7db37ec8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch27\nif s then s.ready=true end\nself.used=true",
							conditions = 
							{
								
								{
									"54c2ba59-d137-b636-ad07-14e970d8cc5c",
									true,
								},
							},
							name = "P1 double Hatch wait for Twister",
							uuid = "8e384172-0801-291f-bd6a-76e2b9df5fdf",
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
								9898,
							},
							uuid = "54c2ba59-d137-b636-ad07-14e970d8cc5c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 143.6,
				name = "P1 double Hatch wait for Twister",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "2624d721-be1f-e21c-aebf-4536e8c927f9",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"549c38b3-7af9-04e9-8337-4f383d232ad0",
									true,
								},
							},
							uuid = "09aa0d21-403b-ce57-85a9-2efa4181d1d4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch27\nif s then s.soakAlert=true end\nself.used=true",
							conditions = 
							{
								
								{
									"549c38b3-7af9-04e9-8337-4f383d232ad0",
									true,
								},
							},
							name = "Soak alert used",
							uuid = "46b34f43-f48b-bdbe-bfaf-e108057d4d01",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobMultiHatch27\nif not s or not s.ready or s.soakAlert then return false end\nlocal a=s.assignments and s.assignments[p.id]\nreturn a~=nil and a.target==p.id and a.phase==0 and Now()-s.started<25000",
							dequeueIfLuaFalse = true,
							name = "Assigned soak ready",
							uuid = "549c38b3-7af9-04e9-8337-4f383d232ad0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 143.6,
				name = "[LPDU] P1 Hatch - Enter Neurolink",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "e3353512-68d7-d055-90e3-39ea3bc9b49d",
				version = 2,
			},
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "c4849305-1b01-0d91-dc92-3777255976f5",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "c202e058-0641-f0e3-9bc8-3a7a96f68097",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() or R.mySlot()~=\"R1\" then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nlocal distance=math.sqrt(p.pos.x*p.pos.x+p.pos.z*p.pos.z)\nif distance<0.5 then self.used=true return end\nlocal dest={x=p.pos.x/distance*21,y=0,z=p.pos.z/distance*21}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "L4 early Liquid Hell edge bait",
							uuid = "a0637816-c94d-c0ca-ba92-9e4975738293",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 153.8,
				name = "L4 early Liquid Hell edge bait",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = -0.10000000149012,
				timerStartOffset = -4,
				uuid = "08eb9118-fd5d-d3f0-885d-a2c7f74d09dd",
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
				name = "LPDU Personal Guidance",
				uuid = "41b21015-4599-a312-8bc5-b4de68ec19b8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal now=Now()\nlocal s=data.ucobMultiHatch31\nif not s or now-s.started>15000 then\n s={started=now,lastMarker=now,targets={},positions={},links={},hit={},ready=true}\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n for _,slot in ipairs(slots) do\n  local e=R.entOf(slot)\n  if e then s.positions[e.id]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\n end\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==2001151 then s.links[#s.links+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z,id=e.id} end\n end\n table.sort(s.links,function(a,b) if math.abs(a.z-b.z)>1 then return a.z<b.z end return a.x<b.x end)\n if #s.links>=2 and s.links[1].x>s.links[2].x then s.links[1],s.links[2]=s.links[2],s.links[1] end\n data.ucobMultiHatch31=s\nend\nif not s.assignments then s.targets[eventArgs.entityID]=true s.lastMarker=now end\nself.used=true",
							conditions = 
							{
								
								{
									"af6e534e-a9ee-499d-b2cb-e241732561db",
									true,
								},
							},
							name = "P1 double Hatch target and link capture",
							uuid = "879042f5-983b-c1d8-973c-c0c9f32583aa",
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
							eventMarkerID = 118,
							uuid = "af6e534e-a9ee-499d-b2cb-e241732561db",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 162.3,
				name = "P1 double Hatch target and link capture",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "059e2d99-5ad1-c689-91c8-045ceb7fab81",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobMultiHatch31\nif not R or not R.current() or not R.isReady() or not s or Now()-s.started>25000 then self.used=true return end\nif not s.assignments then\n if Now()-s.lastMarker<150 then self.used=true return end\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n local marked,unmarked={},{}\n for _,slot in ipairs(slots) do\n  local id=R.idOf(slot)\n  if id and s.positions[id] then\n   if s.targets[id] then marked[#marked+1]=id else unmarked[#unmarked+1]=id end\n  end\n end\n if #marked~=2 or #s.links<2 then self.used=true return end\n -- Compare both complete pairings using positions captured at the Hatch markers.\n -- Each player receives a separate link; Quickmarch order breaks equal-cost ties.\n local function match(ids,links)\n  local function distance(id,link)\n   local p=s.positions[id]\n   local dx,dz=p.x-link.x,p.z-link.z\n   return math.sqrt(dx*dx+dz*dz)\n  end\n  local direct=distance(ids[1],links[1])+distance(ids[2],links[2])\n  local swapped=distance(ids[1],links[2])+distance(ids[2],links[1])\n  if swapped<direct-0.001 then return {ids[2],ids[1]} end\n  return {ids[1],ids[2]}\n end\n local links={}\n for i=1,2 do links[i]=s.links[i] end\n local assigned=match(marked,links)\n \n s.assignments={}\n local backups=false and match(unmarked,links) or nil\n for i,link in ipairs(links) do\n  local pair={target=assigned[i],link=link,phase=0}\n  if backups then pair.backup=backups[i] end\n  s.assignments[assigned[i]]=pair\n  if backups then s.assignments[backups[i]]=pair end\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal pair=s.assignments[p.id]\nif not pair or pair.phase>=1 or not s.ready then self.used=true return end\nlocal link=pair.link\nlocal dest=link\nif false then\n local r=math.sqrt(link.x*link.x+link.z*link.z)\n if r<1 then self.used=true return end\n if p.id==pair.target then\n  if pair.phase==1 then dest={x=link.x/r*20.5,y=link.y,z=link.z/r*20.5} end\n elseif pair.phase==0 then\n  local distance=math.min(20.5,r+8.5)\n  dest={x=link.x/r*distance,y=link.y,z=link.z/r*distance}\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P1 double Hatch deterministic personal arrows",
							uuid = "8953f140-edfe-c654-a144-4dbcb6ab50a0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 162.3,
				name = "[LPDU] P1 Double Hatch - Closest Separate Neurolinks",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "2b4094f0-90e3-d162-a0a4-ef211eb6a701",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch31\nif s and s.assignments then\n local pair=s.assignments[eventArgs.entityID]\n if pair then\n  if eventArgs.entityID==pair.target and pair.phase==0 then pair.phase=1\n  elseif eventArgs.entityID==pair.backup then pair.phase=2 end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"e94c511c-a97a-c8a3-83d3-f7cfbad0ba17",
									true,
								},
							},
							name = "P1 double Hatch individual soak resolution",
							uuid = "df21e17d-8bfe-3dbd-a116-ca41c5b283a9",
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
							eventBuffID = 1434,
							uuid = "e94c511c-a97a-c8a3-83d3-f7cfbad0ba17",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 8,
				loop = true,
				mechanicTime = 162.3,
				name = "P1 double Hatch individual soak resolution",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "84f395cf-aae0-8f86-81b3-b10b22545a7b",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"232bc068-0f7e-6c3e-b9ad-189135bd73cf",
									true,
								},
							},
							uuid = "2f5d29ab-fe2a-a150-a5ae-ae3e125f491f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch31\nif s then s.soakAlert=true end\nself.used=true",
							conditions = 
							{
								
								{
									"232bc068-0f7e-6c3e-b9ad-189135bd73cf",
									true,
								},
							},
							name = "Soak alert used",
							uuid = "5818776f-106c-8dc9-a107-7ffed78bd36e",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobMultiHatch31\nif not s or not s.ready or s.soakAlert then return false end\nlocal a=s.assignments and s.assignments[p.id]\nreturn a~=nil and a.target==p.id and a.phase==0 and Now()-s.started<25000",
							dequeueIfLuaFalse = true,
							name = "Assigned soak ready",
							uuid = "232bc068-0f7e-6c3e-b9ad-189135bd73cf",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 162.3,
				name = "[LPDU] P1 Hatch - Enter Neurolink",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "881ba199-bc85-12ac-971a-e88611f1bf2e",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "73ca4cc0-b3c8-285c-19f3-b4ee617abdf0",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "bef20874-7ca1-4662-8c68-300be7b2cd71",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal now=Now()\nlocal s=data.ucobMultiHatch36\nif not s or now-s.started>15000 then\n s={started=now,lastMarker=now,targets={},positions={},links={},hit={},ready=false}\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n for _,slot in ipairs(slots) do\n  local e=R.entOf(slot)\n  if e then s.positions[e.id]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\n end\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==2001151 then s.links[#s.links+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z,id=e.id} end\n end\n table.sort(s.links,function(a,b) if math.abs(a.z-b.z)>1 then return a.z<b.z end return a.x<b.x end)\n if #s.links>=2 and s.links[1].x>s.links[2].x then s.links[1],s.links[2]=s.links[2],s.links[1] end\n data.ucobMultiHatch36=s\nend\nif not s.assignments then s.targets[eventArgs.entityID]=true s.lastMarker=now end\nself.used=true",
							conditions = 
							{
								
								{
									"5e94cb05-82c4-ba48-8324-b3c2a7f3fbd8",
									true,
								},
							},
							name = "P1 double Hatch target and link capture",
							uuid = "2ac71cc5-97cd-eec3-9819-1c3bd32fb206",
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
							eventMarkerID = 118,
							uuid = "5e94cb05-82c4-ba48-8324-b3c2a7f3fbd8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 191,
				name = "P1 double Hatch target and link capture",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "6f700bad-3d77-ced9-af70-cb424052b0c1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobMultiHatch36\nif not R or not R.current() or not R.isReady() or not s or Now()-s.started>25000 then self.used=true return end\nif not s.assignments then\n if Now()-s.lastMarker<150 then self.used=true return end\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n local marked,unmarked={},{}\n for _,slot in ipairs(slots) do\n  local id=R.idOf(slot)\n  if id and s.positions[id] then\n   if s.targets[id] then marked[#marked+1]=id else unmarked[#unmarked+1]=id end\n  end\n end\n if #marked~=2 or #s.links<2 then self.used=true return end\n -- Compare both complete pairings using positions captured at the Hatch markers.\n -- Each player receives a separate link; Quickmarch order breaks equal-cost ties.\n local function match(ids,links)\n  local function distance(id,link)\n   local p=s.positions[id]\n   local dx,dz=p.x-link.x,p.z-link.z\n   return math.sqrt(dx*dx+dz*dz)\n  end\n  local direct=distance(ids[1],links[1])+distance(ids[2],links[2])\n  local swapped=distance(ids[1],links[2])+distance(ids[2],links[1])\n  if swapped<direct-0.001 then return {ids[2],ids[1]} end\n  return {ids[1],ids[2]}\n end\n local links={}\n for i=1,2 do links[i]=s.links[i] end\n local assigned=match(marked,links)\n \n s.assignments={}\n local backups=false and match(unmarked,links) or nil\n for i,link in ipairs(links) do\n  local pair={target=assigned[i],link=link,phase=0}\n  if backups then pair.backup=backups[i] end\n  s.assignments[assigned[i]]=pair\n  if backups then s.assignments[backups[i]]=pair end\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal pair=s.assignments[p.id]\nif not pair or pair.phase>=1 or not s.ready then self.used=true return end\nlocal link=pair.link\nlocal dest=link\nif false then\n local r=math.sqrt(link.x*link.x+link.z*link.z)\n if r<1 then self.used=true return end\n if p.id==pair.target then\n  if pair.phase==1 then dest={x=link.x/r*20.5,y=link.y,z=link.z/r*20.5} end\n elseif pair.phase==0 then\n  local distance=math.min(20.5,r+8.5)\n  dest={x=link.x/r*distance,y=link.y,z=link.z/r*distance}\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P1 double Hatch deterministic personal arrows",
							uuid = "ae70a37f-e694-51c2-bd07-329718633346",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 191,
				name = "[LPDU] P1 Double Hatch - Closest Separate Neurolinks",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "9a727dcd-18a7-175e-b499-126e99aea49f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch36\nif s and s.assignments then\n local pair=s.assignments[eventArgs.entityID]\n if pair then\n  if eventArgs.entityID==pair.target and pair.phase==0 then pair.phase=1\n  elseif eventArgs.entityID==pair.backup then pair.phase=2 end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"b7f9c093-3280-1365-a353-9190cf78ed4a",
									true,
								},
							},
							name = "P1 double Hatch individual soak resolution",
							uuid = "7a0d8b78-d694-0854-83a2-bc3c2d649038",
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
							eventBuffID = 1434,
							uuid = "b7f9c093-3280-1365-a353-9190cf78ed4a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 8,
				loop = true,
				mechanicTime = 191,
				name = "P1 double Hatch individual soak resolution",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "61c11299-78fe-f6a8-a42d-e0b6211a52ed",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch36\nif s then s.ready=true end\nself.used=true",
							conditions = 
							{
								
								{
									"77466b4b-571f-4c11-b52d-847ebcb74ea5",
									true,
								},
							},
							name = "P1 double Hatch wait for Twister",
							uuid = "7a173f18-8427-8280-be20-f557503b3cbc",
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
								9898,
							},
							uuid = "77466b4b-571f-4c11-b52d-847ebcb74ea5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 191,
				name = "P1 double Hatch wait for Twister",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "b0095f6f-d305-bc03-a099-be14ea85bc4c",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"a00a48d5-9cf8-0834-8eb0-23247462ab14",
									true,
								},
							},
							uuid = "aed11611-f511-da01-a23d-4710af8e1e36",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch36\nif s then s.soakAlert=true end\nself.used=true",
							conditions = 
							{
								
								{
									"a00a48d5-9cf8-0834-8eb0-23247462ab14",
									true,
								},
							},
							name = "Soak alert used",
							uuid = "c0ed93dd-d0e4-8bac-9d8d-4072cbe724b4",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobMultiHatch36\nif not s or not s.ready or s.soakAlert then return false end\nlocal a=s.assignments and s.assignments[p.id]\nreturn a~=nil and a.target==p.id and a.phase==0 and Now()-s.started<25000",
							dequeueIfLuaFalse = true,
							name = "Assigned soak ready",
							uuid = "a00a48d5-9cf8-0834-8eb0-23247462ab14",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 191,
				name = "[LPDU] P1 Hatch - Enter Neurolink",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "89074660-5713-91ef-b852-c525aefe7a96",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "dd2563fd-1852-c7c9-339f-11af2c55b62d",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "6617d98a-a182-d156-9f76-3a8495c9e77a",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "d91e4427-f44c-681b-9279-c96513c845e3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityContentID==1482 and not eventArgs.isTargetable then data.ucobP1Transition={expires=Now()+15000} end\nself.used=true",
							name = "P1 transition regroup capture",
							uuid = "f6bd2085-2ee6-8d6f-bf4c-8989fd33140a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 26,
				loop = true,
				mechanicTime = 200,
				name = "P1 transition regroup capture",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 2,
				timerStartOffset = -90,
				uuid = "26e1b8f4-b58e-4e9e-aa81-41024a1380a7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobP1Transition\nif not s or Now()>=s.expires then self.used=true return end\nlocal dest={x=0,y=0,z=7}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P1 transition south of center arrow",
							uuid = "b29e4918-c647-c932-977e-112eb7dbbb92",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 200,
				name = "P1 transition south of center arrow",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 2,
				timerStartOffset = -90,
				uuid = "069c6fee-f73f-4ee3-a628-15bc99c3bed8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobP1Transition=nil\nself.used=true",
							conditions = 
							{
								
								{
									"1ea1802d-30be-7373-a7eb-2025f4ab430b",
									true,
								},
							},
							name = "P1 transition regroup knockback cleanup",
							uuid = "7f923260-0937-b4e4-9293-24a691518eae",
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
								9912,
							},
							uuid = "1ea1802d-30be-7373-a7eb-2025f4ab430b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "P1 transition regroup knockback cleanup",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 2,
				timerStartOffset = -90,
				uuid = "fcb82150-a776-c4d6-8fea-c8d82ac88c08",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobTransitionSlices={phase=0,lastBurst=0,expires=Now()+20000}\nself.used=true",
							conditions = 
							{
								
								{
									"a5e88552-7b6f-176d-964e-2400d2faa3cb",
									true,
								},
							},
							name = "P2 transition spread after knockback",
							uuid = "bca4a411-a66c-e8b7-8025-c25b7a85c64d",
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
								9912,
							},
							uuid = "a5e88552-7b6f-176d-964e-2400d2faa3cb",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "P2 transition spread after knockback",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 14,
				timerStartOffset = -90,
				uuid = "0e50ffc0-2f76-6a1f-bd96-bbc1c4038177",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobTransitionSlices\nif not R or not R.current() or not R.isReady() or not s or Now()>=s.expires then self.used=true return end\nlocal angles={T1=-22.5,H1=-67.5,M1=-112.5,R1=-157.5,T2=22.5,H2=67.5,M2=112.5,R2=157.5}\nlocal angle=angles[R.mySlot()]\nif not angle then self.used=true return end\nangle=math.rad(angle+s.phase*22.5)\nlocal dest={x=math.sin(angle)*18,y=0,z=-math.cos(angle)*18}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P2 transition personal spread then clockwise arrow",
							uuid = "8b18142c-bd56-bc94-a6d7-fa5492ef2cda",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 200,
				name = "P2 transition personal spread then clockwise arrow",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 14,
				timerStartOffset = -90,
				uuid = "50739a65-2a97-c759-8ef6-3c03bd38a16a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobTransitionSlices\nlocal now=Now()\nif s and now-s.lastBurst>1500 then\n s.lastBurst=now\n s.phase=s.phase+1\n if s.phase>=2 then data.ucobTransitionSlices=nil end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"accac1a5-d4a0-47bd-98bb-efb1bd98e67c",
									true,
								},
							},
							name = "P2 transition rotate once per cone volley",
							uuid = "dd82e61c-01d8-17b1-9a9c-b64f5470ce00",
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
								9913,
							},
							uuid = "accac1a5-d4a0-47bd-98bb-efb1bd98e67c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "P2 transition rotate once per cone volley",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 14,
				timerStartOffset = -90,
				uuid = "0254f835-9199-8632-b357-c0fb2bccddfe",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif R and R.current() and eventArgs.entityContentID==1482 and R.slotOf(eventArgs.targetID) then data.ucobLastTwinAggro=eventArgs.targetID end\nself.used=true",
							conditions = 
							{
								
								{
									"efcb6605-c4b8-d270-ac7d-e0dfcdbbaa6d",
									true,
								},
							},
							name = "P1 last Twintania aggro capture",
							uuid = "1dbc7920-bbcc-cc38-8fd6-7e3c95ca7e44",
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
								9895,
							},
							uuid = "efcb6605-c4b8-d270-ac7d-e0dfcdbbaa6d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "P1 last Twintania aggro capture",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 16,
				timerStartOffset = -200,
				uuid = "2ec3292b-a053-977e-a893-a7014e1e24a3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityContentID==1482 and not eventArgs.isTargetable then\n local R=AnyoneCore and AnyoneCore.Roster\n local e=TensorCore.mGetEntity(eventArgs.entityID)\n local id=data.ucobLastTwinAggro\n if R and R.current() and e and R.slotOf(e.targetid) then id=e.targetid end\n data.ucobLandingMark={id=id,volley=0,last=0,active=false}\nend\nself.used=true",
							name = "P2 freeze last Twintania aggro",
							uuid = "594636f6-b860-2f9f-98f7-bd4d8fdc662a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 26,
				loop = true,
				mechanicTime = 200,
				name = "P2 freeze last Twintania aggro",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 16,
				timerStartOffset = -90,
				uuid = "13e6936f-2bf4-2744-b674-d7f106acae35",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLandingMark\nif s and Now()-s.last>1500 then\n s.last=Now();s.volley=s.volley+1\n if s.volley==2 then s.active=true end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"27b133d9-22fa-cf43-8d16-908cb8e486a8",
									true,
								},
							},
							name = "P2 landing target after transition cones",
							uuid = "de39b209-927d-a8cb-bbe0-bda00837b9e6",
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
								9913,
							},
							uuid = "27b133d9-22fa-cf43-8d16-908cb8e486a8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "P2 landing target after transition cones",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 16,
				timerStartOffset = -90,
				uuid = "aed2c200-03fb-9449-87c1-a480f7aa4813",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLandingMark\nif s and s.active and s.id then\n local e=TensorCore.mGetEntity(s.id)\n if e then\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.15,0.15,0.65),2)\n d:addCircle(e.pos.x,e.pos.y,e.pos.z,5,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n end\nend\nself.used=true",
							name = "P2 last aggro landing target circle",
							uuid = "8160c5fe-cfcb-3314-a339-3ba43c0447ff",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 200,
				name = "P2 last aggro landing target circle",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 16,
				timerStartOffset = -90,
				uuid = "dce8e4f2-f439-aabe-9efc-625c99baf6ed",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobLandingMark=nil\ndata.ucobLastTwinAggro=nil\nself.used=true",
							conditions = 
							{
								
								{
									"e3b3828a-23f7-7db5-bde9-d0591f3e86c4",
									true,
								},
							},
							name = "P2 landing target first hit cleanup",
							uuid = "fe352ab3-6039-abcc-b023-987b8c6e2eb0",
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
								9921,
							},
							uuid = "e3b3828a-23f7-7db5-bde9-d0591f3e86c4",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "P2 landing target first hit cleanup",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 16,
				timerStartOffset = -90,
				uuid = "05b1c338-bf84-f9c5-b019-532d5295ff09",
				version = 2,
			},
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "3bcdee53-a356-18cc-a677-e6713ed05252",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal now=Now()\nlocal s=data.ucobOpeningSpreads\nif not s or now-s.started>20000 then s={started=now,resolved={},shapes={}} data.ucobOpeningSpreads=s end\nlocal slots={\"T1\",\"T2\",\"H1\",\"H2\",\"M1\",\"M2\",\"R1\",\"R2\"}\nfor _,slot in ipairs(slots) do\n local e=R.entOf(slot)\n if e and not s.resolved[e.id] then\n  if s.shapes[e.id] then Argus.deleteTimedShape(s.shapes[e.id]) end\n  local safe=true\n  for _,otherSlot in ipairs(slots) do\n   local other=R.entOf(otherSlot)\n   if other and other.id~=e.id then\n    local dx,dz=e.pos.x-other.pos.x,e.pos.z-other.pos.z\n    if dx*dx+dz*dz<16 then safe=false break end\n   end\n  end\n  local color=safe and GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65) or GUI:ColorConvertFloat4ToU32(1,0.15,0.1,0.65)\n  local drawer=TensorCore.getStaticDrawer(color,2)\n  s.shapes[e.id]=drawer:addTimedCircleOnEnt(350,e.id,4,0,false,true,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n end\nend\nself.used=true",
							name = "P2 opener Meteor Stream spacing circles",
							uuid = "4d1c93d4-0595-d9ed-887d-fadf80334c31",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 205.5,
				name = "P2 opener Meteor Stream spacing circles",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 40,
				timerEndOffset = 3.0999999046326,
				timerStartOffset = -5.5999999046326,
				uuid = "0806959d-1cbe-624b-9de6-ecce5f382c5e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobOpeningSpreads\nif s then\n s.resolved[eventArgs.targetID]=true\n if s.shapes[eventArgs.targetID] then Argus.deleteTimedShape(s.shapes[eventArgs.targetID]) s.shapes[eventArgs.targetID]=nil end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"691cb2f2-8052-79be-9e4b-ac3a9cf87355",
									true,
								},
							},
							name = "P2 opener Meteor Stream circle hit cleanup",
							uuid = "7703eb4f-6e35-f8eb-bd57-89f64688a4f1",
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
								9920,
							},
							uuid = "691cb2f2-8052-79be-9e4b-ac3a9cf87355",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 205.5,
				name = "P2 opener Meteor Stream circle hit cleanup",
				timeRange = true,
				timelineIndex = 40,
				timerEndOffset = 4,
				timerStartOffset = -6,
				uuid = "97a387d9-0aad-9300-90c2-2979dd2ff00b",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "7ddecad6-eac9-2882-7776-8c8c271e33c6",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "7de50f15-08ee-d0be-b96a-ed2f352faee4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobP2LandingRegroup={boss=eventArgs.entityID,expires=Now()+9000}\nself.used=true",
							conditions = 
							{
								
								{
									"29f8327c-e118-f47f-ab62-5595f22c8882",
									true,
								},
							},
							name = "Landing Resolved Capture",
							uuid = "267f5ddb-2213-99f3-b1ba-9478da54a1c4",
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
								9921,
							},
							uuid = "29f8327c-e118-f47f-ab62-5595f22c8882",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 211.5,
				name = "[LPDU] P2 Opener - Landing Resolved Capture",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 3,
				timerStartOffset = -2,
				uuid = "c123987e-743c-ce7e-bd0b-ee277fbb70b8",
				version = 2,
			},
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "f4aec149-35f7-fb95-40f4-f877201cb1f9",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "4ae11575-ae15-fe2c-b61e-09dc71ae9e24",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal s=data.ucobP2LandingRegroup\nif not R or not R.current() or not R.isReady() or not p or not s or Now()>=s.expires then self.used=true return end\nlocal slot=R.mySlot()\nif not slot or slot==\"T1\" or slot==\"T2\" then self.used=true return end\nlocal b=TensorCore.mGetEntity(s.boss)\nif not b or b.contentid~=2612 then self.used=true return end\nlocal dest={x=b.pos.x-math.sin(b.pos.h)*3,y=b.pos.y,z=b.pos.z-math.cos(b.pos.h)*3}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Regroup Behind Boss - Non Tanks",
							uuid = "b5621ea9-a979-4ece-bdda-652698e4bd09",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 213.5,
				name = "[LPDU] P2 Opener - Regroup Behind Boss - Non Tanks",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 6.5,
				uuid = "0389878e-ad5d-bc2c-aac0-15e4b87140fb",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "569e523f-b684-55bb-7c3d-5c418398686f",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "6710c34b-27d3-47ee-8aef-6e586e57e0aa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local t=eventArgs.line.line\nlocal mode=nil\nlocal nextMode=nil\nif t:find(\"O hallowed moon, shine you the iron path\",1,true) then mode=\"in\";nextMode=\"out\"\nelseif t:find(\"O hallowed moon, take fire and scorch my foes\",1,true) or t:find(\"Take fire, O hallowed moon\",1,true) or t:find(\"From on high I descend, the hallowed moon to call\",1,true) then mode=\"in\"\nelseif t:find(\"Blazing path, lead me to iron rule\",1,true) or t:find(\"From on high I descend, the iron path to walk\",1,true) then mode=\"out\" end\nif mode then\n data.ucobThunderMode={mode=mode,nextMode=nextMode}\n for id,e in pairs(EntityList(\"\")) do if e.contentid==2612 then data.ucobThunderNael=id;break end end\nend\nself.used=true",
							name = "P2 Thunder in out quote capture",
							uuid = "ad8304a3-b311-0268-9799-2428c3904769",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Thunder in out quote capture",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "d9128fa6-fb6b-618d-a23f-39cdca0204b6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobThunderMode\nif s and s.nextMode then s.mode=s.nextMode;s.nextMode=nil end\nself.used=true",
							conditions = 
							{
								
								{
									"b0dc52b5-2826-07fc-8492-9bb2195e9636",
									true,
								},
							},
							name = "P2 Thunder update after Dynamo",
							uuid = "5e7e0dda-fbf6-d156-af19-b2ea5c26aa38",
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
								9916,
							},
							uuid = "b0dc52b5-2826-07fc-8492-9bb2195e9636",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Thunder update after Dynamo",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "08a2ab7e-e97f-4003-8bee-8b2652f485ad",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif R and R.current() then\n local targets={}\n for _,id in ipairs(eventArgs.hitTargets) do if R.slotOf(id) then targets[#targets+1]=id end end\n local order={T1=1,H1=2,M1=3,R1=4,T2=5,H2=6,M2=7,R2=8}\n table.sort(targets,function(a,b) return order[R.slotOf(a)]<order[R.slotOf(b)] end)\n data.ucobThunderTargets=targets\nend\nself.used=true",
							conditions = 
							{
								
								{
									"5a4c2701-ffbf-5297-9cfd-1079e8dba9ed",
									true,
								},
							},
							name = "P2 Thunder both targets capture",
							uuid = "2682927b-f603-484b-ac2e-29102c2dc628",
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
								9927,
							},
							uuid = "5a4c2701-ffbf-5297-9cfd-1079e8dba9ed",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Thunder both targets capture",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "17d2de97-5b51-f73b-ae9c-961160f28cf0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal targets=data.ucobThunderTargets\nif not R or not R.current() or not targets then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.15,0.15,0.5),2)\nfor _,id in ipairs(targets) do\n local e=TensorCore.mGetEntity(id)\n if e then d:addCircle(e.pos.x,e.pos.y,e.pos.z,5,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end\nend\nif not R.isReady() then self.used=true return end\nlocal rank=nil\nfor i,id in ipairs(targets) do if id==R.idOf(R.mySlot()) then rank=i end end\nlocal s=data.ucobThunderMode\nlocal n=data.ucobThunderNael and TensorCore.mGetEntity(data.ucobThunderNael)\nif not rank or not s or not n then self.used=true return end\nlocal radius=s.mode==\"out\" and 11 or 5\nlocal side=rank==1 and -1 or 1\nlocal dest={x=n.pos.x+side*radius*0.70710678,y=n.pos.y,z=n.pos.z-radius*0.70710678}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P2 Thunder circles and north personal arrows",
							uuid = "8895186c-bacf-e694-89bf-e2f46419f059",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Thunder circles and north personal arrows",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "2a4e18a4-8585-9258-9982-dd7e0ffb21e5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobThunderTargets=nil\nself.used=true",
							conditions = 
							{
								
								{
									"9554450f-faa3-81e6-af93-be557b72475d",
									true,
								},
							},
							name = "P2 Thunder explosion cleanup",
							uuid = "06c060f8-fda9-2e97-8e23-3b06a78d88e5",
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
								9928,
							},
							uuid = "9554450f-faa3-81e6-af93-be557b72475d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Thunder explosion cleanup",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "faf42297-696b-a37c-8d8c-9d7f4a651503",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobDoomWave={started=Now(),seen=false,first=nil,warned=false}\nself.used=true",
							conditions = 
							{
								
								{
									"1d26f13b-1a9f-48b6-978a-ba1d69a5bc4a",
									true,
								},
							},
							name = "Doom priority tracking",
							uuid = "6190aa6e-b85d-a3d1-97ba-a6c499281782",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Dodge clockwise around boss",
							conditions = 
							{
								
								{
									"1d26f13b-1a9f-48b6-978a-ba1d69a5bc4a",
									true,
								},
							},
							uuid = "29806dbc-2060-2c9c-a3cc-fd2a5b2782b0",
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
								9929,
							},
							uuid = "1d26f13b-1a9f-48b6-978a-ba1d69a5bc4a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Doom clockwise dodge alert",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "c63b7751-9a4d-ec76-a40d-25c3927ccc41",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobDoomWave\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not s or not R or not R.current() then self.used=true return end\nlocal slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\nlocal first=nil\nlocal remaining=math.huge\nfor _,slot in ipairs(slots) do\n local id=R.idOf(slot)\n if id then\n local b=TensorCore.getBuff(id,210)\n if b and b.duration>0 and b.duration<remaining then first=id;remaining=b.duration end\n end\nend\ns.first=first;s.remaining=remaining\nif first then s.seen=true\nelseif s.seen or Now()-s.started>2500 then data.ucobDoomWave=nil end\nself.used=true",
							name = "Doom priority tracking",
							uuid = "f126103b-6394-bbb6-9836-b500ec2a3d0c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Doom shortest remaining duration tracking",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "ed7e2970-05e1-7f2b-a3c7-9f5e5f25cfaa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobDoomWave\nif s and s.first then\n local e=TensorCore.mGetEntity(s.first)\n if e and TensorCore.getBuff(e,210) then\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.7,0.15,1,0.8),2)\n d:addCircle(e.pos.x,e.pos.y,e.pos.z,1,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n end\nend\nself.used=true",
							name = "Doom priority tracking",
							uuid = "7605d3d6-2b75-69a5-89d7-6c94324296eb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Doom purple circle shortest player only",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "dbf1d1d5-544c-93dc-b874-18f756231f8c",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Cleanse Doom",
							conditions = 
							{
								
								{
									"3079025d-870a-13e0-8352-44365c2a0d32",
									true,
								},
							},
							uuid = "b0cf00b8-4183-f74b-9ac2-5d74644e8d5a",
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
							conditionLua = "local s=data.ucobDoomWave\nlocal p=TensorCore.mGetPlayer()\nif not s or not p or s.warned then return false end\nlocal b=TensorCore.getBuff(p,210)\nif b and b.duration>0 and b.duration<=3 then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal Doom near expiry once",
							uuid = "3079025d-870a-13e0-8352-44365c2a0d32",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 222.1,
				name = "P2 Doom personal cleanse alert",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "1b07af74-6e37-a911-a489-f0b7bf1eba1b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobCleansePatches={patches={},owner=nil}\nself.used=true",
							conditions = 
							{
								
								{
									"b02d25a8-b5dd-63c6-bf9c-95bfd87e77c1",
									true,
								},
							},
							name = "P2 Doom Cleanse - New Wave",
							uuid = "24d97619-8594-b0e6-9b1f-281d6313a65f",
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
								9929,
							},
							uuid = "b02d25a8-b5dd-63c6-bf9c-95bfd87e77c1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 222.1,
				name = "[LPDU] P2 Doom Cleanse - New Wave",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "5b97623a-9c4f-a91a-bcec-030f8c670ac0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityContentID==2003412 and eventArgs.radius>0 and eventArgs.radius<=1.1 then\n local s=data.ucobCleansePatches\n if s then\n  local duplicate=false\n  for _,q in ipairs(s.patches) do if q.id==eventArgs.entityID then duplicate=true break end end\n  if not duplicate then s.patches[#s.patches+1]={id=eventArgs.entityID,x=eventArgs.x,y=eventArgs.y,z=eventArgs.z,expires=Now()+12000} end\n end\nend\nself.used=true",
							name = "P2 Doom Cleanse - Actual Patch Capture",
							uuid = "454f5e5d-5c1a-b6d3-98ea-d315eae7b807",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 29,
				loop = true,
				mechanicTime = 222.1,
				name = "[LPDU] P2 Doom Cleanse - Actual Patch Capture",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "d1303b50-7091-ea0e-b202-98f7c2d1284d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobCleansePatches\nlocal wave=data.ucobDoomWave\nif not s then self.used=true return end\nlocal first=wave and wave.first or nil\nif s.owner and s.owner~=first then table.remove(s.patches,1) end\ns.owner=first\nwhile s.patches[1] and Now()>=s.patches[1].expires do table.remove(s.patches,1) end\nself.used=true",
							name = "P2 Doom Cleanse - Priority Handoff",
							uuid = "6f0be4ab-c063-32fe-9437-21522b43f65a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 222.1,
				name = "[LPDU] P2 Doom Cleanse - Priority Handoff",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "92f1da41-7029-a89a-b78a-0c8c984b3446",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobCleansePatches\nlocal wave=data.ucobDoomWave\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or not wave or not p or not R or not R.current() or not R.isReady() or wave.first~=p.id or s.owner~=p.id or not TensorCore.getBuff(p,210) then self.used=true return end\nlocal q=s.patches[1]\nif q and Now()<q.expires then\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1,0.85,1,0.7),2)\n d:addCircle(q.x,q.y,q.z,1,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n local dest={x=q.x,y=q.y,z=q.z}\n local dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\n local distance=math.sqrt(dx*dx+dz*dz)\n if distance>0.8 then\n  local tip=math.min(1.5,distance*0.35)\n  local arrow=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\n  arrow:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n end\nend\nself.used=true",
							name = "P2 Doom Cleanse - Shortest Doom Personal Patch",
							uuid = "0bbb9009-6544-b9d9-b1a0-bd5caaf95c29",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 222.1,
				name = "[LPDU] P2 Doom Cleanse - Shortest Doom Personal Patch",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 200,
				timerStartOffset = -25,
				uuid = "52d84831-072a-ce13-b05d-e5d09a711614",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobLPDUDragons={slots={},count=0}\ndata.ucobLPDUDives=nil\nself.used=true",
							conditions = 
							{
								
								{
									"78d9b514-16e5-3a18-b2c1-df71d71626c7",
									true,
								},
							},
							name = "Dragon Pattern Reset",
							uuid = "3713e044-ba06-05b5-9ea6-72f4217e2c73",
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
								9922,
							},
							uuid = "78d9b514-16e5-3a18-b2c1-df71d71626c7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 222.1,
				name = "[LPDU] P2 Dragon Dives - Dragon Pattern Reset",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 10,
				timerStartOffset = -25,
				uuid = "a9d5d8be-be36-cf8b-89b7-c73bafe35658",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local cid=eventArgs.entityContentID\nif cid==2630 or cid==2631 or cid==2632 or cid==6957 or cid==6958 then\n local e=TensorCore.mGetEntity(eventArgs.entityID)\n local s=data.ucobLPDUDragons\n if e and s then\n  local x,z=e.pos.x,e.pos.z\n  if x*x+z*z>400 then\n   local angle=math.atan2(x,-z)\n   local slot=math.floor(angle/(math.pi/4)+0.5)%8\n   if not s.slots[slot] then s.slots[slot]=true s.count=s.count+1 end\n  end\n end\nend\nself.used=true",
							name = "Dragon Position Capture",
							uuid = "f5cf169c-08bb-a14b-ba6a-1f91356ce05a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 5,
				loop = true,
				mechanicTime = 222.1,
				name = "[LPDU] P2 Dragon Dives - Dragon Position Capture",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 20,
				timerStartOffset = -25,
				uuid = "104c7a66-2a20-26d3-9f4a-c79f9e02f58a",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "f256f562-b6d6-ec76-7653-4bb8ce10f9d2",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "cb1889f4-1356-ce5f-bdd9-3b7307f13baf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local t=eventArgs.line.line:gsub(\"%s+\",\" \")\nlocal seq=nil\nif t:find(\"O hallowed moon, shine you the iron path\",1,true) then seq={9916,9915}\nelseif t:find(\"O hallowed moon, take fire and scorch my foes\",1,true) then seq={9916,9917}\nelseif t:find(\"Take fire, O hallowed moon\",1,true) then seq={9917,9916}\nelseif t:find(\"Blazing path, lead me to iron rule\",1,true) then seq={9917,9915}\nelseif t:find(\"From on high I descend, the hallowed moon to call\",1,true) then seq={9918,9916}\nelseif t:find(\"From on high I descend, the iron path to walk\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the iron path to call\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the moon and stars to bring\",1,true) then seq={9918,9916,9920}\nelseif t:find(\"From hallowed moon I descend, a rain of stars to bring\",1,true) then seq={9916,9918,9920}\nelseif t:find(\"From hallowed moon I descend, upon burning earth to tread\",1,true) then seq={9916,9918,9917}\nelseif t:find(\"From hallowed moon I bare iron, in my descent to wield\",1,true) then seq={9916,9915,9918}\nelseif t:find(\"Unbending iron, take fire and descend\",1,true) then seq={9915,9917,9918}\nelseif t:find(\"Unbending iron, descend with fiery edge\",1,true) then seq={9915,9918,9917}\nend\nif seq then\n local now=Now()\n local previous=data.ucobNaelPersonalCallouts\n if not previous or previous.text~=t or now>=previous.expires then\n  data.ucobNaelPersonalCallouts={seq=seq,step=1,text=t,started=now,expires=now+20000,initialCalled=false}\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"cc02b125-cc1c-3f6d-8e20-4eef58ca07c5",
									true,
								},
							},
							name = "Capture quote state",
							uuid = "478a33b1-349f-dc77-9203-cd4cd7475f75",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobNaelPersonalCallouts\nif s and Now()<s.expires and s.seq[s.step] and s.calledStep~=s.step then\n s.calledStep=s.step\n self.used=true\nend",
							conditions = 
							{
								
								{
									"23dc5c1f-d4c3-41a8-ab1f-6f3d7668a109",
									true,
								},
								
								{
									"78c2f6bf-73a2-6518-9538-995fca8104de",
									true,
								},
							},
							name = "Claim one callout per step",
							uuid = "23b46a17-988b-ea90-ad99-fa58df435116",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "In",
							conditions = 
							{
								
								{
									"9417c312-e372-0705-910b-b64ce6197822",
									true,
								},
								
								{
									"6b59f28b-fe0b-6260-83c5-11b4a5829ca8",
									true,
								},
							},
							endIfUsed = true,
							uuid = "3da996ff-773a-d6dd-a634-35d93f96e155",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Out",
							conditions = 
							{
								
								{
									"9417c312-e372-0705-910b-b64ce6197822",
									true,
								},
								
								{
									"ed3fa211-5aa5-ac89-b623-4776e091802c",
									true,
								},
							},
							endIfUsed = true,
							uuid = "a8aace30-169f-c100-906d-3d05e7acb272",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Stack",
							conditions = 
							{
								
								{
									"9417c312-e372-0705-910b-b64ce6197822",
									true,
								},
								
								{
									"7ef5e16d-56b2-6fbb-8286-9b76291ed970",
									true,
								},
							},
							endIfUsed = true,
							uuid = "f70caacd-127a-0a42-b3ff-069adced5720",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Spread",
							conditions = 
							{
								
								{
									"9417c312-e372-0705-910b-b64ce6197822",
									true,
								},
								
								{
									"87326fb6-dfd1-993d-a707-58d52355dc6d",
									true,
								},
							},
							endIfUsed = true,
							uuid = "7182fe6f-26a2-38a3-97be-8bc8987d2a58",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Spread",
							conditions = 
							{
								
								{
									"9417c312-e372-0705-910b-b64ce6197822",
									true,
								},
								
								{
									"abc2f3d5-861e-db3e-85f0-bb9c32047863",
									true,
								},
							},
							endIfUsed = true,
							uuid = "992d71c5-0a00-d6b9-81cc-d0fb028fc078",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true",
							endIfUsed = true,
							name = "Finish duplicate callout queue",
							uuid = "b4655a46-45a8-0610-a002-52800a5e7f09",
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
							conditionLua = "local t=eventArgs.line.line:gsub(\"%s+\",\" \")\nlocal seq=nil\nif t:find(\"O hallowed moon, shine you the iron path\",1,true) then seq={9916,9915}\nelseif t:find(\"O hallowed moon, take fire and scorch my foes\",1,true) then seq={9916,9917}\nelseif t:find(\"Take fire, O hallowed moon\",1,true) then seq={9917,9916}\nelseif t:find(\"Blazing path, lead me to iron rule\",1,true) then seq={9917,9915}\nelseif t:find(\"From on high I descend, the hallowed moon to call\",1,true) then seq={9918,9916}\nelseif t:find(\"From on high I descend, the iron path to walk\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the iron path to call\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the moon and stars to bring\",1,true) then seq={9918,9916,9920}\nelseif t:find(\"From hallowed moon I descend, a rain of stars to bring\",1,true) then seq={9916,9918,9920}\nelseif t:find(\"From hallowed moon I descend, upon burning earth to tread\",1,true) then seq={9916,9918,9917}\nelseif t:find(\"From hallowed moon I bare iron, in my descent to wield\",1,true) then seq={9916,9915,9918}\nelseif t:find(\"Unbending iron, take fire and descend\",1,true) then seq={9915,9917,9918}\nelseif t:find(\"Unbending iron, descend with fiery edge\",1,true) then seq={9915,9918,9917}\nend\nlocal previous=data.ucobNaelPersonalCallouts\nreturn seq~=nil and (previous==nil or previous.text~=t or Now()>=previous.expires)",
							dequeueIfLuaFalse = true,
							name = "Recognized quote",
							uuid = "cc02b125-cc1c-3f6d-8e20-4eef58ca07c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9916",
							name = "In",
							uuid = "6b59f28b-fe0b-6260-83c5-11b4a5829ca8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9915",
							name = "Out",
							uuid = "ed3fa211-5aa5-ac89-b623-4776e091802c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9917",
							name = "Stack",
							uuid = "7ef5e16d-56b2-6fbb-8286-9b76291ed970",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9918",
							name = "Spread",
							uuid = "87326fb6-dfd1-993d-a707-58d52355dc6d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9920",
							name = "Spread",
							uuid = "abc2f3d5-861e-db3e-85f0-bb9c32047863",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionUUID = "478a33b1-349f-dc77-9203-cd4cd7475f75",
							category = "Action",
							name = "Quote step updated",
							uuid = "23dc5c1f-d4c3-41a8-ab1f-6f3d7668a109",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]~=nil and s.calledStep~=s.step",
							name = "Current step not announced",
							uuid = "78c2f6bf-73a2-6518-9538-995fca8104de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionUUID = "23b46a17-988b-ea90-ad99-fa58df435116",
							category = "Action",
							name = "Callout claimed in this queue",
							uuid = "9417c312-e372-0705-910b-b64ce6197822",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 230.6,
				name = "[LPDU] Nael Quotes - First Step",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 755,
				timerStartOffset = -15,
				uuid = "12c277ac-2691-9559-8ba1-ba24f45e015f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobNaelPersonalCallouts\nif s and Now()<s.expires and s.seq[s.step]==eventArgs.spellID then s.step=s.step+1 end\nself.used=true",
							conditions = 
							{
								
								{
									"55f63b8c-501e-20a9-b157-8bd2ba5a9427",
									true,
								},
								
								{
									"42055d24-56da-9cd2-982b-eb518a9fad74",
									true,
								},
							},
							name = "Advance resolved step",
							uuid = "7ef9748f-7cfb-e83a-a317-85f955862208",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobNaelPersonalCallouts\nif s and Now()<s.expires and s.seq[s.step] and s.calledStep~=s.step then\n s.calledStep=s.step\n self.used=true\nend",
							conditions = 
							{
								
								{
									"a391dc47-e7a0-cee8-91e3-163473e65324",
									true,
								},
								
								{
									"6d6910ba-177b-8174-8195-802cfaae09e1",
									true,
								},
							},
							name = "Claim one callout per step",
							uuid = "c09c56e5-decc-658c-98f5-da248092b36e",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "In",
							conditions = 
							{
								
								{
									"a7888a14-2ded-f255-9eb0-dfa05bc9728e",
									true,
								},
								
								{
									"c9fdfc4b-bdde-1a01-9aca-8fbf8d6b337d",
									true,
								},
							},
							endIfUsed = true,
							uuid = "ed0bec36-c340-bb82-9516-7cfa740c70ff",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Out",
							conditions = 
							{
								
								{
									"a7888a14-2ded-f255-9eb0-dfa05bc9728e",
									true,
								},
								
								{
									"551fc9fc-4600-2a28-9bfc-cec1e7417cc6",
									true,
								},
							},
							endIfUsed = true,
							uuid = "9764fe1c-25a7-95ad-a15e-9cd9e6ee3063",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Stack",
							conditions = 
							{
								
								{
									"a7888a14-2ded-f255-9eb0-dfa05bc9728e",
									true,
								},
								
								{
									"53b8e121-a2bb-7542-be73-cb81b1806f8c",
									true,
								},
							},
							endIfUsed = true,
							uuid = "653cfc6a-4a23-2d75-b039-b87f754bb9cb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Spread",
							conditions = 
							{
								
								{
									"a7888a14-2ded-f255-9eb0-dfa05bc9728e",
									true,
								},
								
								{
									"33bcd0bd-8818-5f75-a469-af89e04dd1ef",
									true,
								},
							},
							endIfUsed = true,
							uuid = "3316661d-aecc-0c3e-9b06-9b01d20b67a2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Spread",
							conditions = 
							{
								
								{
									"a7888a14-2ded-f255-9eb0-dfa05bc9728e",
									true,
								},
								
								{
									"166373eb-3312-42f2-be4b-1f0d85508745",
									true,
								},
							},
							endIfUsed = true,
							uuid = "be9c2739-94b4-8a94-968b-559abbdd270b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true",
							conditions = 
							{
								
								{
									"a391dc47-e7a0-cee8-91e3-163473e65324",
									true,
								},
								
								{
									"3b8be373-e09f-c19b-bff3-3e0ec14d169f",
									true,
								},
							},
							endIfUsed = true,
							name = "Finish completed sequence",
							uuid = "6ac096bf-39f6-e5cd-ba11-749750aaf737",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used=true",
							endIfUsed = true,
							name = "Finish duplicate callout queue",
							uuid = "886ec4cd-c772-c3f3-8103-ce52d8261d6f",
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
								9915,
								9916,
								9917,
								9918,
								9920,
							},
							uuid = "55f63b8c-501e-20a9-b157-8bd2ba5a9427",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==eventArgs.spellID",
							dequeueIfLuaFalse = true,
							name = "Resolve current quote step",
							uuid = "42055d24-56da-9cd2-982b-eb518a9fad74",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9916",
							name = "In",
							uuid = "c9fdfc4b-bdde-1a01-9aca-8fbf8d6b337d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9915",
							name = "Out",
							uuid = "551fc9fc-4600-2a28-9bfc-cec1e7417cc6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9917",
							name = "Stack",
							uuid = "53b8e121-a2bb-7542-be73-cb81b1806f8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9918",
							name = "Spread",
							uuid = "33bcd0bd-8818-5f75-a469-af89e04dd1ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]==9920",
							name = "Spread",
							uuid = "166373eb-3312-42f2-be4b-1f0d85508745",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionUUID = "7ef9748f-7cfb-e83a-a317-85f955862208",
							category = "Action",
							name = "Quote step updated",
							uuid = "a391dc47-e7a0-cee8-91e3-163473e65324",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and s.seq[s.step]==nil",
							name = "Sequence complete",
							uuid = "3b8be373-e09f-c19b-bff3-3e0ec14d169f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobNaelPersonalCallouts\nreturn s~=nil and Now()<s.expires and s.seq[s.step]~=nil and s.calledStep~=s.step",
							name = "Current step not announced",
							uuid = "6d6910ba-177b-8174-8195-802cfaae09e1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionUUID = "c09c56e5-decc-658c-98f5-da248092b36e",
							category = "Action",
							name = "Callout claimed in this queue",
							uuid = "a7888a14-2ded-f255-9eb0-dfa05bc9728e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 230.6,
				name = "[LPDU] Nael Quotes - Next Step",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 755,
				timerStartOffset = -15,
				uuid = "4d1c8790-fced-9181-aa8a-f9df06a75dea",
				version = 2,
			},
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "b22d24f5-8f48-8ee9-def5-36c3f5f94ae5",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[51] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "8ce47f38-adcb-52ac-f8ea-6cde8abb4ca8",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "5ce3cbf7-125c-36a9-8f15-92b3b51d0567",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFireGuide51={target=eventArgs.newTargetID,warned=false,expires=Now()+7000}\nself.used=true",
							conditions = 
							{
								
								{
									"3304c236-49cc-23d5-8358-a98e961f98ba",
									true,
								},
							},
							name = "Nael Fire Tether 1 - Target capture",
							uuid = "ee9fd96a-a4be-99e8-a67c-7d4aed90b314",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nreturn R and R.current() and eventArgs.newTetherID==5 and R.slotOf(eventArgs.newTargetID)~=nil",
							dequeueIfLuaFalse = true,
							name = "Fire tether on party",
							uuid = "3304c236-49cc-23d5-8358-a98e961f98ba",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 15,
				loop = true,
				mechanicTime = 241.1,
				name = "[LPDU] Nael Fire Tether 1 - Target capture",
				timeRange = true,
				timelineIndex = 51,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "fc39a95f-ba0a-ba80-a08b-6012ab813077",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire: stack with tether",
							conditions = 
							{
								
								{
									"32d4555f-68eb-7855-bd57-a978295415a9",
									true,
								},
							},
							uuid = "87d184be-2e40-c155-b2cd-3e48919ad8c8",
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
							conditionLua = "local s=data.ucobFireGuide51\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=1==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"stack\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "32d4555f-68eb-7855-bd57-a978295415a9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 241.1,
				name = "[LPDU] Nael Fire Tether 1 - Stack",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 51,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "74ac2185-1057-d117-8774-baa6e8220e09",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire tether: move out",
							conditions = 
							{
								
								{
									"40270b26-04a2-6e75-8ab3-a80d068901e0",
									true,
								},
							},
							uuid = "a44a6cfd-e927-baac-a96c-b6d83f2db558",
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
							conditionLua = "local s=data.ucobFireGuide51\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=1==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"out\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "40270b26-04a2-6e75-8ab3-a80d068901e0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 241.1,
				name = "[LPDU] Nael Fire Tether 1 - Out",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 51,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "77f89d04-38f2-fd3b-8379-c2de703ab272",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire: stay away from tether",
							conditions = 
							{
								
								{
									"6d9738cf-361a-aa85-839a-b4ff36c007f3",
									true,
								},
							},
							uuid = "a413b1c4-d285-1ce1-b2dc-d4a6bcd89730",
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
							conditionLua = "local s=data.ucobFireGuide51\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=1==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"avoid\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "6d9738cf-361a-aa85-839a-b4ff36c007f3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 241.1,
				name = "[LPDU] Nael Fire Tether 1 - Avoid",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 51,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "0572d0ac-874a-4fc3-bcc2-8c2d94002b97",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFireGuide51=nil\nself.used=true",
							conditions = 
							{
								
								{
									"04929fe2-5a84-76c7-ab0a-c3dacb2bae24",
									true,
								},
							},
							name = "Nael Fire Tether 1 - Resolution",
							uuid = "845c9600-deb4-0a9d-ba7a-23a62da408a4",
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
								9925,
							},
							uuid = "04929fe2-5a84-76c7-ab0a-c3dacb2bae24",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 241.1,
				name = "[LPDU] Nael Fire Tether 1 - Resolution",
				timeRange = true,
				timelineIndex = 51,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "3f65dddd-2ff9-53a3-871a-b7075e33f877",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "ae93062f-9b51-cc2b-0651-6e55e192e05f",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "80e5bec6-49b9-a47f-b52c-7b3757326d94",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFireGuide54={target=eventArgs.newTargetID,warned=false,expires=Now()+7000}\nself.used=true",
							conditions = 
							{
								
								{
									"b1aaab11-db4f-9422-a97c-2e4ca764d862",
									true,
								},
							},
							name = "Nael Fire Tether 2 - Target capture",
							uuid = "4825e7e9-cff3-1ab1-85f6-fbb1377199fa",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nreturn R and R.current() and eventArgs.newTetherID==5 and R.slotOf(eventArgs.newTargetID)~=nil",
							dequeueIfLuaFalse = true,
							name = "Fire tether on party",
							uuid = "b1aaab11-db4f-9422-a97c-2e4ca764d862",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 15,
				loop = true,
				mechanicTime = 256,
				name = "[LPDU] Nael Fire Tether 2 - Target capture",
				timeRange = true,
				timelineIndex = 54,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "4b114a16-88a7-18a4-a599-6f5b6b4b7ecb",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire: stack with tether",
							conditions = 
							{
								
								{
									"3079816a-91d7-c471-a767-1a5f16c829cd",
									true,
								},
							},
							uuid = "c2bef4ff-6a0d-fee8-8177-365c017bb215",
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
							conditionLua = "local s=data.ucobFireGuide54\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=2==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"stack\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "3079816a-91d7-c471-a767-1a5f16c829cd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 256,
				name = "[LPDU] Nael Fire Tether 2 - Stack",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 54,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "dff4fdc3-7904-eb0e-9eda-a3338e4efe02",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire tether: move out",
							conditions = 
							{
								
								{
									"60e427b5-a876-4f22-9fc5-db1a6c4a95ba",
									true,
								},
							},
							uuid = "5609af10-8bf2-8f2f-9538-4fba43dc2c0d",
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
							conditionLua = "local s=data.ucobFireGuide54\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=2==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"out\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "60e427b5-a876-4f22-9fc5-db1a6c4a95ba",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 256,
				name = "[LPDU] Nael Fire Tether 2 - Out",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 54,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "6ecdc4f3-7b0e-89aa-9b02-f7e3e52bab70",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire: stay away from tether",
							conditions = 
							{
								
								{
									"7844947b-7f6e-8758-9dc3-ffdf69d8552b",
									true,
								},
							},
							uuid = "54347f85-5b46-ca44-906b-f407c783f742",
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
							conditionLua = "local s=data.ucobFireGuide54\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=2==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"avoid\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "7844947b-7f6e-8758-9dc3-ffdf69d8552b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 256,
				name = "[LPDU] Nael Fire Tether 2 - Avoid",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 54,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "c56a3ad3-2d62-3613-95f8-a0b1c90a07f9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFireGuide54=nil\nself.used=true",
							conditions = 
							{
								
								{
									"7ec4fe99-47c0-1c4a-ad76-3022d5f9e7ac",
									true,
								},
							},
							name = "Nael Fire Tether 2 - Resolution",
							uuid = "80759936-6491-e6d7-b923-ec60c2007503",
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
								9925,
							},
							uuid = "7ec4fe99-47c0-1c4a-ad76-3022d5f9e7ac",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 256,
				name = "[LPDU] Nael Fire Tether 2 - Resolution",
				timeRange = true,
				timelineIndex = 54,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "3aa2a042-e474-24f4-82fc-9f5de7925502",
				version = 2,
			},
		},
	},
	[55] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "1a6a2f04-2d78-5e80-de7e-c542343a0534",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[56] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "fccb33b9-968b-52c5-935c-5e7b43339b69",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "54c3a460-4c8e-20a4-c3a7-6d364160c190",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "4abe5320-9be4-5ad4-bcab-a93abd34fd50",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "fb46e884-654f-ff35-8714-6f48297ba0bc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFireGuide60={target=eventArgs.newTargetID,warned=false,expires=Now()+7000}\nself.used=true",
							conditions = 
							{
								
								{
									"c464d3f2-b7e7-bff2-8ba8-d27c104143bd",
									true,
								},
							},
							name = "Nael Fire Tether 3 - Target capture",
							uuid = "dcf1414b-9550-1c87-a9e3-7c467895712a",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nreturn R and R.current() and eventArgs.newTetherID==5 and R.slotOf(eventArgs.newTargetID)~=nil",
							dequeueIfLuaFalse = true,
							name = "Fire tether on party",
							uuid = "c464d3f2-b7e7-bff2-8ba8-d27c104143bd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 15,
				loop = true,
				mechanicTime = 281.9,
				name = "[LPDU] Nael Fire Tether 3 - Target capture",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "35e75626-33e6-412b-aec4-a98a2654ce35",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire: stack with tether",
							conditions = 
							{
								
								{
									"a57b7dd7-84f3-2306-b7f9-a659243d6dcb",
									true,
								},
							},
							uuid = "b99fc2a9-c603-bbb4-981b-e6e10493758d",
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
							conditionLua = "local s=data.ucobFireGuide60\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=3==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"stack\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "a57b7dd7-84f3-2306-b7f9-a659243d6dcb",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 281.9,
				name = "[LPDU] Nael Fire Tether 3 - Stack",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "56bae871-bf1d-2e9e-a83a-9a57043e43e0",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire tether: move out",
							conditions = 
							{
								
								{
									"949ca82d-422e-2ac6-b0ef-ac78d2ad1470",
									true,
								},
							},
							uuid = "92a7e775-3c2f-2b1c-9ae0-3dfc1f733dc1",
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
							conditionLua = "local s=data.ucobFireGuide60\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=3==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"out\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "949ca82d-422e-2ac6-b0ef-ac78d2ad1470",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 281.9,
				name = "[LPDU] Nael Fire Tether 3 - Out",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "d85e7aa3-aad8-277e-b9cd-36eaf3687e25",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire: stay away from tether",
							conditions = 
							{
								
								{
									"cd3dd76f-19f8-4d9b-b010-3f0cfb7b23e8",
									true,
								},
							},
							uuid = "15cf1249-cf4e-cc54-b686-b5aebd8ff936",
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
							conditionLua = "local s=data.ucobFireGuide60\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=3==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"avoid\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "cd3dd76f-19f8-4d9b-b010-3f0cfb7b23e8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 281.9,
				name = "[LPDU] Nael Fire Tether 3 - Avoid",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "5dfa2273-5756-d6b9-b3ce-414c1a50acab",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFireGuide60=nil\nself.used=true",
							conditions = 
							{
								
								{
									"1bf7b0ad-1fc9-8cfb-9624-8a9f7fe062d4",
									true,
								},
							},
							name = "Nael Fire Tether 3 - Resolution",
							uuid = "e682fa30-fe5c-0c0e-81d6-909104aceb42",
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
								9925,
							},
							uuid = "1bf7b0ad-1fc9-8cfb-9624-8a9f7fe062d4",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 281.9,
				name = "[LPDU] Nael Fire Tether 3 - Resolution",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "455e1f93-ce5e-3904-96e6-cec3a97fb128",
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
				name = "LPDU Personal Guidance",
				uuid = "525e39ea-d8d3-48d8-bc08-3005b187ddb1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobP2DiveCallout={mode=\"In\",expires=Now()+15000}\nself.used=true",
							conditions = 
							{
								
								{
									"87ce4fdc-3a90-0f4d-a550-c1e283e937b9",
									true,
								},
							},
							name = "P2 Dive Quote - In",
							uuid = "82277b1a-08b3-d104-b12b-fe4b5883942b",
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
							conditionLua = "return eventArgs.line.line:find(\"From on high I descend, the hallowed moon to call\",1,true)~=nil",
							dequeueIfLuaFalse = true,
							name = "Dive quote In",
							uuid = "87ce4fdc-3a90-0f4d-a550-c1e283e937b9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 290.4,
				name = "[LPDU] P2 Dive Quote - In",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = 10,
				timerStartOffset = -15,
				uuid = "d34570eb-3198-8b4e-b943-2d7e65c4ac51",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "In",
							conditions = 
							{
								
								{
									"82c674eb-8521-73b7-9ed9-ce0eae2f7fb2",
									true,
								},
								
								{
									"35f838a9-eab0-bbc9-a563-1812d4afa9ce",
									true,
								},
							},
							uuid = "f5f93062-da39-e045-8aa2-f6bcf76c08f3",
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
								9918,
							},
							uuid = "82c674eb-8521-73b7-9ed9-ce0eae2f7fb2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobP2DiveCallout\nreturn s and Now()<s.expires and s.mode==\"In\"",
							dequeueIfLuaFalse = true,
							name = "Next In",
							uuid = "35f838a9-eab0-bbc9-a563-1812d4afa9ce",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				enabled = false,
				eventType = 2,
				loop = true,
				mechanicTime = 290.4,
				name = "[LPDU] P2 Dive Quote - In Callout",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = 10,
				timerStartOffset = -15,
				uuid = "df0d365e-cf65-06bd-b15f-3cf4fae75fb5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobP2DiveCallout={mode=\"Out\",expires=Now()+15000}\nself.used=true",
							conditions = 
							{
								
								{
									"a23b3551-3366-f046-bdb0-d9d7df2f59c6",
									true,
								},
							},
							name = "P2 Dive Quote - Out",
							uuid = "34f92c0b-0dc8-c63d-9022-f37304828a87",
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
							conditionLua = "return eventArgs.line.line:find(\"From on high I descend, the iron path to walk\",1,true)~=nil",
							dequeueIfLuaFalse = true,
							name = "Dive quote Out",
							uuid = "a23b3551-3366-f046-bdb0-d9d7df2f59c6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 290.4,
				name = "[LPDU] P2 Dive Quote - Out",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = 10,
				timerStartOffset = -15,
				uuid = "fedf0a3e-f1b5-d5fb-b4a5-37e5829c53bf",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Out",
							conditions = 
							{
								
								{
									"be8c620d-0480-2bbd-af27-71e2c7e0fc1d",
									true,
								},
								
								{
									"1998079f-d4b0-9a07-9003-dda3fb993f53",
									true,
								},
							},
							uuid = "88f0e9d8-b087-1ee9-a363-d39d3e5875e0",
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
								9918,
							},
							uuid = "be8c620d-0480-2bbd-af27-71e2c7e0fc1d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobP2DiveCallout\nreturn s and Now()<s.expires and s.mode==\"Out\"",
							dequeueIfLuaFalse = true,
							name = "Next Out",
							uuid = "1998079f-d4b0-9a07-9003-dda3fb993f53",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				enabled = false,
				eventType = 2,
				loop = true,
				mechanicTime = 290.4,
				name = "[LPDU] P2 Dive Quote - Out Callout",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = 10,
				timerStartOffset = -15,
				uuid = "7e6a096a-5e01-9b64-9172-f78d5b024714",
				version = 2,
			},
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "6acb2465-e057-5f09-ac74-0013f471b4d5",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "1512858c-65d2-6c21-b989-8fdfbded4f4f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFireGuide63={target=eventArgs.newTargetID,warned=false,expires=Now()+7000}\nself.used=true",
							conditions = 
							{
								
								{
									"57c1639f-b6ba-5f91-9740-e928498a965a",
									true,
								},
							},
							name = "Nael Fire Tether 4 - Target capture",
							uuid = "d8116779-5ad2-0065-8c9e-d3977f8f7133",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nreturn R and R.current() and eventArgs.newTetherID==5 and R.slotOf(eventArgs.newTargetID)~=nil",
							dequeueIfLuaFalse = true,
							name = "Fire tether on party",
							uuid = "57c1639f-b6ba-5f91-9740-e928498a965a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 15,
				loop = true,
				mechanicTime = 302.9,
				name = "[LPDU] Nael Fire Tether 4 - Target capture",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "76438063-75cc-1e24-ad6c-30db083c09cb",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire: stack with tether",
							conditions = 
							{
								
								{
									"8ec258b0-99f6-3fdd-87cf-de765ee5b10d",
									true,
								},
							},
							uuid = "5ff715ae-9ccc-7c32-a6f3-cf7e6729f69b",
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
							conditionLua = "local s=data.ucobFireGuide63\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=4==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"stack\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "8ec258b0-99f6-3fdd-87cf-de765ee5b10d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 302.9,
				name = "[LPDU] Nael Fire Tether 4 - Stack",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "6048d5f9-8494-c84f-94f2-9324d6426b9f",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire tether: move out",
							conditions = 
							{
								
								{
									"2d5193c7-aefc-1da7-bf1b-5c5211cb26c7",
									true,
								},
							},
							uuid = "3945a9b8-1c3b-8be7-a33c-e4facb708691",
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
							conditionLua = "local s=data.ucobFireGuide63\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=4==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"out\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "2d5193c7-aefc-1da7-bf1b-5c5211cb26c7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 302.9,
				name = "[LPDU] Nael Fire Tether 4 - Out",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "b8db75de-0aab-9895-a2dc-5d81445111cd",
				version = 2,
			},
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
							alertDuration = 4000,
							alertPriority = 2,
							alertText = "Fire: stay away from tether",
							conditions = 
							{
								
								{
									"272f2721-6f8f-cb32-aceb-0a35a67b2806",
									true,
								},
							},
							uuid = "a9a32b33-b0f3-0b96-94ae-5637a3ef41cd",
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
							conditionLua = "local s=data.ucobFireGuide63\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or s.warned or Now()>=s.expires or not R or not R.current() or not p then return false end\nlocal ice=TensorCore.getBuff(p,465)~=nil\nlocal burned=TensorCore.getBuff(p,464)~=nil\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then return false end\nlocal fireOut=4==2 and TensorCore.getBuff(target,465)==nil\nlocal decision\nif p.id==s.target and (fireOut or burned) then decision=\"out\"\nelseif burned or (fireOut and not ice) then decision=\"avoid\"\nelse decision=\"stack\" end\nif decision==\"avoid\" then s.warned=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Personal fire eligibility",
							uuid = "272f2721-6f8f-cb32-aceb-0a35a67b2806",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 302.9,
				name = "[LPDU] Nael Fire Tether 4 - Avoid",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "75af360e-c1b6-b1bf-a035-709d67cd76c4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFireGuide63=nil\nself.used=true",
							conditions = 
							{
								
								{
									"3459ad0e-5baa-aec2-bcf4-22e3921e181c",
									true,
								},
							},
							name = "Nael Fire Tether 4 - Resolution",
							uuid = "5b8ccc21-369f-5ebe-93f4-4ee131acc761",
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
								9925,
							},
							uuid = "3459ad0e-5baa-aec2-bcf4-22e3921e181c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 302.9,
				name = "[LPDU] Nael Fire Tether 4 - Resolution",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "1159ce22-676f-4cef-b34c-c8e03077a39d",
				version = 2,
			},
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "5972c7b7-e6a9-3a13-a622-2509881f9327",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "72a4f1f8-79ce-ec9c-3256-872293a10c68",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "30f93d8e-a8a5-47eb-800e-3932342b5a84",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobNaelDiveBaits\nif not s or now-s.started>30000 then s={started=now,count=0} data.ucobNaelDiveBaits=s end\ns.count=s.count+1\nif s.count==1 then s.target=eventArgs.entityID s.expires=now+7000 end\nself.used=true",
							conditions = 
							{
								
								{
									"c0301b0c-d42d-340c-a6d8-20c7a6e09d6e",
									true,
								},
							},
							name = "Nael first dive overhead capture",
							uuid = "ac95b7fd-6341-338e-bb41-8982437c5ede",
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
							eventMarkerID = 20,
							uuid = "c0301b0c-d42d-340c-a6d8-20c7a6e09d6e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				enabled = false,
				eventType = 4,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Legacy First Bait (Disabled) Capture",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "a7709c35-bffa-9bff-9f89-e3e818383b19",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal s=data.ucobNaelDiveBaits\nif not R or not R.current() or not R.isReady() or not s or not p or s.target~=p.id or Now()>=s.expires then self.used=true return end\nlocal dest={x=18.149,y=0,z=-9.531}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Nael first overhead personal dive bait arrow",
							uuid = "7ad64196-674f-32d5-8e91-e10ebbd4d90c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Legacy First Bait (Disabled) Arrow",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 4,
				timerStartOffset = -8,
				uuid = "d9d250b3-41f2-7e07-be23-aba91289f90d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLPDUDives\nif not s or Now()>=s.expires then\n local dragons=data.ucobLPDUDragons\n local complete=dragons and dragons.count==5\n local adjusted=complete and dragons.slots[4] and dragons.slots[5] and dragons.slots[6] and dragons.slots[7] or false\n s={count=0,targets={},order={},nova=0,locked=0,casters={},expires=Now()+26000,adjusted=adjusted,patternComplete=complete}\n data.ucobLPDUDives=s\nend\nif not s.order[eventArgs.entityID] and s.count<3 then\n s.count=s.count+1\n s.order[eventArgs.entityID]=s.count\n s.targets[s.count]=eventArgs.entityID\nend\nself.used=true",
							conditions = 
							{
								
								{
									"542b843a-e669-071a-84a0-576ad83ce157",
									true,
								},
							},
							name = "Three Personal Bait Assignments",
							uuid = "a39e05f8-1a67-6303-b5f3-dbf0fbb146dc",
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
							eventMarkerID = 20,
							uuid = "542b843a-e669-071a-84a0-576ad83ce157",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Three Personal Bait Assignments",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 15,
				timerStartOffset = -8,
				uuid = "ec9df766-895c-5c56-bf60-eac5f3f9738d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLPDUDives\nif s and Now()<s.expires then s.nova=math.min(4,s.nova+1) end\nself.used=true",
							conditions = 
							{
								
								{
									"98b7576b-b51f-945b-a9a2-deafe06e9a69",
									true,
								},
							},
							name = "Hypernova Route Steps",
							uuid = "5aa033ca-5b72-10a6-b95d-231056a45a91",
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
								9919,
							},
							uuid = "98b7576b-b51f-945b-a9a2-deafe06e9a69",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Hypernova Route Steps",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 15,
				timerStartOffset = -8,
				uuid = "153894af-fbb3-7941-9aad-17e9d5df5dac",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLPDUDives\nif s and Now()<s.expires and not s.casters[eventArgs.entityID] then\n s.casters[eventArgs.entityID]=true\n local n=0\n for _ in pairs(s.casters) do n=n+1 end\n s.locked=n<=2 and 1 or n==3 and 2 or 3\nend\nself.used=true",
							conditions = 
							{
								
								{
									"dddb7793-d163-de4b-9a1f-2e5c0c7d5aca",
									true,
								},
							},
							name = "Native Dive Lock Cleanup",
							uuid = "29b1c8c5-7c55-cd2c-8741-ed034d4fe65c",
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
								9931,
								9932,
								9933,
								9934,
								9935,
							},
							uuid = "dddb7793-d163-de4b-9a1f-2e5c0c7d5aca",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Native Dive Lock Cleanup",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 15,
				timerStartOffset = -8,
				uuid = "2a832c8c-49ce-b62d-b7b5-c126ef300587",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal s=data.ucobLPDUDives\nif not R or not R.current() or not R.isReady() or not p or not s or Now()>=s.expires then self.used=true return end\nlocal order=s.order[p.id]\nif not order then self.used=true return end\nlocal returning=order<=s.locked\nif returning then\n local untilTime=s.returnUntil and s.returnUntil[order]\n if not untilTime or Now()>=untilTime or s.returnSpread or s.returnDone then self.used=true return end\n local slot=R.mySlot()\n if s.returnBuster and (slot==\"T1\" or slot==\"T2\") then self.used=true return end\nend\n-- Estimated LPDU coordinates, independent of replay waymarks.\nlocal dest\nif returning then\n dest={x=0,y=0,z=0}\nelseif order==1 then\n dest={x=18.149,y=0,z=-9.531}\n if s.nova>=1 then\n  local a=math.atan2(dest.x,-dest.z)+math.pi/12\n  dest={x=math.sin(a)*20.5,y=0,z=-math.cos(a)*20.5}\n end\nelseif order==2 then\n -- Suppress the second arrow if the full dragon pattern was not captured.\n if not s.patternComplete then self.used=true return end\n dest={x=s.adjusted and -8 or 8,y=0,z=18.874}\n if s.nova<3 then\n  local a=math.atan2(dest.x,-dest.z)-math.pi/12\n  dest={x=math.sin(a)*20.5,y=0,z=-math.cos(a)*20.5}\n end\nelse\n dest={x=-17.667,y=0,z=10.398}\nend\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Personal PF Route Arrow",
							uuid = "28e48c5a-839c-6b87-bf63-e72115a24e83",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Personal PF Route Arrow",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 15,
				timerStartOffset = -8,
				uuid = "6a421288-8149-fdee-948b-540dfef22171",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLPDUDives\nif s and Now()<s.expires then\n local spell=eventArgs.spellID\n if spell>=9931 and spell<=9935 then\n  s.returnCasters=s.returnCasters or {}\n  if not s.returnCasters[eventArgs.entityID] then\n   s.returnCasters[eventArgs.entityID]=true\n   local n=0\n   for _ in pairs(s.returnCasters) do n=n+1 end\n   local order=n==2 and 1 or n==3 and 2 or n==5 and 3 or nil\n   if order then s.returnUntil=s.returnUntil or {};s.returnUntil[order]=Now()+4000 end\n  end\n elseif spell==9920 then\n  s.returnSpreadHits=s.returnSpreadHits or {}\n  for _,id in ipairs(eventArgs.hitTargets) do s.returnSpreadHits[id]=true end\n  local n=0\n  for _ in pairs(s.returnSpreadHits) do n=n+1 end\n  if n>=4 then s.returnSpread=false end\n elseif spell==9918 then s.returnBuster=false\n elseif spell==9917 then s.returnDone=true end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"f85cedfc-dd72-98c5-9815-1339a44b01fe",
									true,
								},
							},
							name = "Return to Middle after Bait Damage",
							uuid = "ff6b9fe2-9f41-b414-8f66-a27effeea0c7",
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
								9931,
								9932,
								9933,
								9934,
								9935,
								9920,
								9918,
								9917,
							},
							uuid = "f85cedfc-dd72-98c5-9815-1339a44b01fe",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Return to Middle after Bait Damage",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 15,
				timerStartOffset = -8,
				uuid = "15654521-f9b7-c885-89c8-26c130c42922",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLPDUDives\nlocal t=eventArgs.line.line\nif s and Now()<s.expires and t:find(\"Fleeting light!\",1,true) then\n s.returnSpread=t:find(\"rain of stars\",1,true)~=nil\n s.returnBuster=t:find(\"red moon\",1,true)~=nil\n s.returnSpreadHits={}\nend\nself.used=true",
							name = "Regroup Quote Safety",
							uuid = "eced3039-5756-2446-9f34-4ac90460b333",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Regroup Quote Safety",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 15,
				timerStartOffset = -8,
				uuid = "6f28614e-ab1e-f715-9070-d8e13ec06b4c",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Spread — stay clear of the main tank",
							conditions = 
							{
								
								{
									"7cdcd6cd-f753-fc8e-b268-37cd693a07bf",
									true,
								},
							},
							uuid = "fdfef0e4-95e6-e535-bebe-b39a611e07bb",
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
							conditionLua = "local t=eventArgs.line.line\nreturn t:find(\"Fleeting light!\",1,true)~=nil and t:find(\"rain of stars\",1,true)~=nil",
							dequeueIfLuaFalse = true,
							name = "Meteor Stream quote",
							uuid = "7cdcd6cd-f753-fc8e-b268-37cd693a07bf",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 333.5,
				name = "[LPDU] P2 Dragon Dives - Meteor Stream Spread Alert",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 15,
				timerStartOffset = -8,
				uuid = "cb59ba6f-c776-486c-af2b-07f56d515c03",
				version = 2,
			},
		},
	},
	[73] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "7ac2817c-2201-6d20-6411-aaea4b3770ec",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "b6329b10-122c-05cc-38fd-ed464b595fc0",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "128470e4-7655-3370-bb00-953ee68cef14",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "f9593bde-14f3-d4ff-a5b4-49bbf6d507ad",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityContentID==2612 then\n if eventArgs.isTargetable then data.ucobEraTransition=nil\n else\n  local dives=data.ucobLPDUDives\n  if dives and dives.locked==3 then data.ucobEraTransition={start=Now(),expires=Now()+9000} end\n end\nend\nself.used=true",
							name = "Transition Capture",
							uuid = "42feded1-9fc9-4a7e-b800-409bc139b5c4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 26,
				loop = true,
				mechanicTime = 403.2,
				name = "[LPDU] P2-P3 Seventh Umbral Era - Transition Capture",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 110,
				timerStartOffset = -120,
				uuid = "a4604485-b05b-c93c-85b0-bd157e89931f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nlocal s=data.ucobEraTransition\nif not R or not R.current() or not R.isReady() or not p or not s or s.knockbackAt or Now()>=s.expires then self.used=true return end\nlocal x,y,z,active=Argus.getWaymarkInfo(1)\nif not active then self.used=true return end\nlocal dest={x=x,y=y,z=z}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Party Knockback Position Arrow",
							uuid = "e2a5a8ea-19d9-f502-bb68-b29ff1f40d56",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 403.2,
				name = "[LPDU] P2-P3 Seventh Umbral Era - Party Knockback Position Arrow",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 110,
				timerStartOffset = -120,
				uuid = "83ff047f-7b4f-fc9d-bd51-3d34ade80387",
				version = 2,
			},
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
							alertDuration = 3500,
							alertPriority = 2,
							alertText = "Tank LB now - Seventh Umbral Era",
							conditions = 
							{
								
								{
									"e2146de3-b716-f994-a86d-201e1fdb5f7a",
									true,
								},
							},
							uuid = "bd7910d4-1456-2d18-b389-3401654d0be4",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobEraTransition\nif not R or not R.current() or not s or s.alerted or Now()>=s.expires or not s.knockbackAt or Now()<s.knockbackAt+1000 then return false end\nlocal slot=R.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\ns.alerted=true\nreturn true",
							name = "Tank transition once",
							uuid = "e2146de3-b716-f994-a86d-201e1fdb5f7a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 403.2,
				name = "[LPDU] P2-P3 Seventh Umbral Era - Tank LB Alert",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 110,
				timerStartOffset = -120,
				uuid = "cdd61806-2704-f961-8062-214bfb1f5c8a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobEraTransition\nif s then s.knockbackAt=Now();s.expires=Now()+12000 end\nself.used=true",
							conditions = 
							{
								
								{
									"d8bd5de2-6dbc-fb1b-baaf-bd9aa2f744b0",
									true,
								},
							},
							name = "Knockback Cleanup",
							uuid = "b21aaa19-c872-004c-9a84-02b12e85dc90",
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
								9937,
							},
							uuid = "d8bd5de2-6dbc-fb1b-baaf-bd9aa2f744b0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 403.2,
				name = "[LPDU] P2-P3 Seventh Umbral Era - Knockback Cleanup",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 110,
				timerStartOffset = -120,
				uuid = "3a4b817b-dc7c-58f3-aa29-ac272b67b63e",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "ca7a9a8a-32f1-687e-c0df-4330fa2ca87a",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "418824fd-7f63-ce91-5cee-ecdb90b8772d",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[87] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "10cdfca3-f88b-ac47-cb80-f83577ba5e53",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "65ef44ce-aaa4-5cfa-ae10-0d548279b3fe",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Draw Flare Breath",
				uuid = "414df4a6-dd06-d407-98bd-db99bccb77aa",
				version = 2,
			},
			inheritedObjectUUID = "e96b8ee0-2a83-37cc-b2ee-95334cb12487",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "13c83d8b-e16e-93ce-a2d2-7b903ee89208",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath88\nif not s then s={nextSearch=0} data.ucobFlareBreath88=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss then self.used=true return end\nlocal target=boss.targetid and boss.targetid~=0 and boss.targetid~=boss.id and TensorCore.mGetEntity(boss.targetid)\nlocal heading=target and TensorCore.getHeadingToTarget(boss.pos,target.pos) or boss.pos.h\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),heading,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "3e14fad3-e0ee-0b57-8958-0c96a392ec32",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 517,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = 1,
				timerStartOffset = -2.5,
				uuid = "ab0c4d88-3d67-dfdc-9c5d-b64686dc865a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath88\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"16e2366b-70f4-98f1-85f1-eb2971cd7079",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "dcdae39b-95f8-8b4c-95bc-ba55b4875678",
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
								9940,
							},
							uuid = "16e2366b-70f4-98f1-85f1-eb2971cd7079",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 517,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "185827df-3138-f53c-ade7-0ad30e505f86",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "d09a9fa1-4130-2bad-d62d-677fceec1a11",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "66d60d42-7b0f-24aa-a82b-a2e0b5ca169e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobQuickmarch={boss=eventArgs.entityID,started=Now(),shakers={}}\nself.used=true",
							conditions = 
							{
								
								{
									"0477888d-68a4-6a4f-b8dd-dcfe277596b1",
									true,
								},
							},
							name = "Quickmarch capture dive reference",
							uuid = "a471f558-690c-fa0a-94a5-42d252ebcf3a",
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
								9954,
							},
							uuid = "0477888d-68a4-6a4f-b8dd-dcfe277596b1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 532,
				name = "Quickmarch capture dive reference",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "9045bfb4-bb06-f023-a68b-b74439f6c201",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "c4a140d4-dcca-6be0-5aee-f71af1f94204",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "09144509-95ac-e525-71cd-df73d45a46b9",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "a2ae935b-1cff-3803-a0a6-fa51c2a262ed",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobQuickmarch\nif not s or Now()-s.started>35000 then self.used=true return end\nif not s.north then\n local boss=TensorCore.mGetEntity(s.boss)\n if boss then\n  local length=math.sqrt(boss.pos.x*boss.pos.x+boss.pos.z*boss.pos.z)\n  if length>20 then s.north={x=boss.pos.x/length,z=boss.pos.z/length} end\n end\nend\nif not s.north then self.used=true return end\nlocal n=s.north\nlocal rx,rz=-n.z,n.x\nlocal order={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal angle=math.rad(60+order[slot]*20)\nlocal side=left and -1 or 1\nlocal dest={x=20*(n.x*math.cos(angle)+side*rx*math.sin(angle)),y=0,z=20*(n.z*math.cos(angle)+side*rz*math.sin(angle))}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Quickmarch personal dive and Twister bait",
							uuid = "6e33f7c5-3808-be16-bd68-bdf4dedbcc50",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 540,
				name = "Quickmarch personal dive and Twister bait",
				timeRange = true,
				timelineIndex = 92,
				timerEndOffset = -0.1,
				timerStartOffset = -4.5,
				uuid = "443c7a7d-7725-c23a-881e-a362de3817d8",
				version = 2,
			},
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
							alertDuration = 2500,
							alertPriority = 2,
							alertScale = 1.2,
							alertTTS = true,
							alertText = "Move for Twister",
							endIfUsed = true,
							uuid = "ab1f58e0-1d42-95b9-b324-1efaa06e5529",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				mechanicTime = 540,
				name = "[LPDU] P3 Quickmarch - Twister Move",
				timelineIndex = 92,
				timerOffset = -2,
				uuid = "b22422b3-4eef-b0eb-9886-938c43685ff6",
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
				name = "LPDU Personal Guidance",
				uuid = "76dc18ce-2069-3f54-b586-560bb6a126a6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobQuickmarch\nif not s or Now()-s.started>35000 then self.used=true return end\nif not s.north then\n local boss=TensorCore.mGetEntity(s.boss)\n if boss then\n  local length=math.sqrt(boss.pos.x*boss.pos.x+boss.pos.z*boss.pos.z)\n  if length>20 then s.north={x=boss.pos.x/length,z=boss.pos.z/length} end\n end\nend\nif not s.north then self.used=true return end\nlocal n=s.north\nlocal rx,rz=-n.z,n.x\nlocal order={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal angle=math.rad(22.5+order[slot]*45)\nlocal side=left and -1 or 1\nlocal dest={x=12*(n.x*math.cos(angle)+side*rx*math.sin(angle)),y=0,z=12*(n.z*math.cos(angle)+side*rz*math.sin(angle))}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Quickmarch personal spread positions",
							uuid = "297b6429-8f37-3670-afc9-778fd9a11983",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 544,
				name = "Quickmarch personal spread positions",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = -0.1,
				timerStartOffset = -3,
				uuid = "091e5ae3-5df8-4a8e-b46e-83d31da6a83e",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "0f662013-df8c-f377-b976-15e9cd157d43",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[96] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "8be97c62-ef09-e7a5-bf7d-209663700f9d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobQuickmarch\nif not s or Now()-s.started>35000 then self.used=true return end\nif not s.north then\n local boss=TensorCore.mGetEntity(s.boss)\n if boss then\n  local length=math.sqrt(boss.pos.x*boss.pos.x+boss.pos.z*boss.pos.z)\n  if length>20 then s.north={x=boss.pos.x/length,z=boss.pos.z/length} end\n end\nend\nif not s.north then self.used=true return end\nlocal n=s.north\nlocal rx,rz=-n.z,n.x\nlocal order={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal p=TensorCore.mGetPlayer()\nif string.sub(slot,1,1)==\"T\" or string.sub(slot,1,1)==\"H\" or s.shakers[p.id] then self.used=true return end\nlocal dest={x=-n.x*8,y=0,z=-n.z*8}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Quickmarch DPS south stack arrow",
							uuid = "af32b593-a170-fb12-bc47-2cf15e32b7da",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 548,
				name = "Quickmarch DPS south stack arrow",
				timeRange = true,
				timelineIndex = 96,
				timerEndOffset = 0.1,
				timerStartOffset = -3,
				uuid = "d670a8df-b85b-174e-a782-088390421662",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobQuickmarch\nif s then s.stackDone=true end\nself.used=true",
							conditions = 
							{
								
								{
									"5fe50871-5630-3263-9677-6c9b332a1531",
									true,
								},
							},
							name = "Quickmarch - Stack Resolved",
							uuid = "d8314ed4-447b-3001-b1cf-4cb0cbf86cc9",
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
								9950,
							},
							uuid = "5fe50871-5630-3263-9677-6c9b332a1531",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 548,
				name = "[LPDU] P3 Quickmarch - Stack Resolved",
				timeRange = true,
				timelineIndex = 96,
				timerEndOffset = 3,
				timerStartOffset = -2,
				uuid = "f274c598-678a-59e3-8be4-1eb63a815d7d",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Pick up Tempest tethers, then stand in front of your healer",
							conditions = 
							{
								
								{
									"715f48cc-66d6-bc03-b8e8-bb7ae18d71dd",
									true,
								},
								
								{
									"d0e78f1a-fcb5-b3b0-8665-0bad64b6a851",
									true,
								},
							},
							uuid = "deb336d6-1cdd-f23e-9108-1fb40a206854",
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
								9950,
							},
							uuid = "715f48cc-66d6-bc03-b8e8-bb7ae18d71dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s==\"T1\" or s==\"T2\"",
							dequeueIfLuaFalse = true,
							name = "Tank only",
							uuid = "d0e78f1a-fcb5-b3b0-8665-0bad64b6a851",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 548,
				name = "[LPDU] P3 Quickmarch - Tank Pick Up Tethers",
				timeRange = true,
				timelineIndex = 96,
				timerEndOffset = 3,
				timerStartOffset = -2,
				uuid = "87b9a88d-0b22-5bee-b3e1-8e95f0723a02",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "1f9dc93a-1cee-70ee-aa7c-7fb4dbada32a",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "35ebc967-99b0-66aa-9b61-58603a1ee89e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobQuickmarch\nif s then s.shakers[eventArgs.entityID]=true end\nself.used=true",
							conditions = 
							{
								
								{
									"c64b576e-1da6-5904-98ca-9c1c9aa3bfc9",
									true,
								},
							},
							name = "Quickmarch Earthshaker assignments",
							uuid = "ceca4aac-c8d5-4784-b002-7faa76f27e9b",
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
							eventMarkerID = 40,
							uuid = "c64b576e-1da6-5904-98ca-9c1c9aa3bfc9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 550,
				name = "Quickmarch Earthshaker assignments",
				timeRange = true,
				timelineIndex = 97,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "cc43f7b7-85e1-dfe1-8a41-5ccd261b2a22",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobQuickmarch\nif not s or Now()-s.started>35000 then self.used=true return end\nif not s.north then\n local boss=TensorCore.mGetEntity(s.boss)\n if boss then\n  local length=math.sqrt(boss.pos.x*boss.pos.x+boss.pos.z*boss.pos.z)\n  if length>20 then s.north={x=boss.pos.x/length,z=boss.pos.z/length} end\n end\nend\nif not s.north then self.used=true return end\nlocal n=s.north\nlocal rx,rz=-n.z,n.x\nlocal order={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal p=TensorCore.mGetPlayer()\nif not s.shakers[p.id] then self.used=true return end\nlocal dest\nif slot==\"H1\" then dest={x=-rx*20,y=0,z=-rz*20}\nelseif slot==\"H2\" then dest={x=rx*20,y=0,z=rz*20}\nelse dest={x=n.x*20,y=0,z=n.z*20} end\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Quickmarch personal Earthshaker arrow",
							uuid = "eb391bc5-5ddd-e165-889a-8dd4f3dc1ab4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 550,
				name = "Quickmarch personal Earthshaker arrow",
				timeRange = true,
				timelineIndex = 97,
				timerEndOffset = 0.1,
				timerStartOffset = -3,
				uuid = "48e8dd46-7cb2-839a-8767-4a07f490fe86",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "64679287-7d8d-31c3-6025-82952f153ef7",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "d1b9038b-0199-cdc1-b00c-fd2de236c30a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobQuickmarch\nif (slot~=\"T1\" and slot~=\"T2\") or not s or not s.stackDone or not s.north or s.wingsDone then self.used=true return end\nlocal n=s.north\nlocal side=slot==\"T1\" and -1 or 1\nlocal dest={x=-n.z*side*6,y=0,z=n.x*side*6}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Quickmarch - Tank Tether Position",
							uuid = "65a45039-02a2-b1cb-a9bb-377686b685c3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 552,
				name = "[LPDU] P3 Quickmarch - Tank Tether Position",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "28a8c268-d28a-6599-8fc8-e0b40f0d3497",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobQuickmarch\nif s then s.wingsDone=true end\nself.used=true",
							conditions = 
							{
								
								{
									"14bb4610-d57f-4179-bd3a-7b21b4cf3e17",
									true,
								},
							},
							name = "Quickmarch - Tether Hit Cleanup",
							uuid = "59dc6fbe-1ed6-6905-a796-c0d73dc692f5",
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
								9943,
							},
							uuid = "14bb4610-d57f-4179-bd3a-7b21b4cf3e17",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 552,
				name = "[LPDU] P3 Quickmarch - Tether Hit Cleanup",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "07ece250-9d67-1968-bc73-afdf68f70ed8",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "a28bd29c-14eb-46b8-14f6-af826596d30c",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "3da66a53-0914-7367-b660-f2c2479f73ca",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath99\nif not s then s={nextSearch=0} data.ucobFlareBreath99=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "afff50e8-9749-6f56-b759-83e6ca6eecd8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 555.9,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "c5e473c7-f290-742f-849f-09eb40bf0917",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath99\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"f3299529-2212-3b33-b290-3bd5a58733f6",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "f91d430c-ef25-0793-a53b-1331864fcd13",
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
								9940,
							},
							uuid = "f3299529-2212-3b33-b290-3bd5a58733f6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 555.9,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "da788e6d-db29-f080-985e-4f150be63b5f",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "baa978c7-0b66-ce1b-abea-5fa13daff4f7",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[101] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "754f33df-1777-fd9f-86ef-81ec277bec8a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobBlackfireGuide={hits=0,expires=Now()+20000}\nself.used=true",
							conditions = 
							{
								
								{
									"60d3b8b7-1ae0-7b5c-bfd8-a76f1c5cf0ec",
									true,
								},
							},
							name = "Blackfire Trio - Bait capture",
							uuid = "93d650a1-0b15-4b11-9607-7a9554cab8a0",
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
								9955,
							},
							uuid = "60d3b8b7-1ae0-7b5c-bfd8-a76f1c5cf0ec",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 572,
				name = "[LPDU] Blackfire Trio - Bait capture",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 2,
				timerStartOffset = -5,
				uuid = "90dd9f5a-6d7b-92b7-a9e4-dc3386d13eb7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobBlackfireGuide\nif not s or Now()>=s.expires then self.used=true return end\nlocal dest={x=0,y=0,z=0}\nif s.hits>0 then\n if not s.dest then self.used=true return end\n dest=s.dest\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Blackfire Trio - Center then Nael",
							uuid = "09ae2e79-ebbc-d480-9e7a-42f93bcab335",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 572,
				name = "[LPDU] Blackfire Trio - Center then Nael",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 10,
				timerStartOffset = -3,
				uuid = "a8e71612-ef03-de75-b5d6-05e77b8a407c",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Stack middle",
							conditions = 
							{
								
								{
									"73702a4b-1126-39ce-8e87-96c865d73fe2",
									true,
								},
							},
							uuid = "280485d3-e775-e78c-a99c-7f52ba2bc723",
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
								9955,
							},
							uuid = "73702a4b-1126-39ce-8e87-96c865d73fe2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 572,
				name = "[LPDU] P3 Blackfire Trio - Stack Middle",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 1,
				timerStartOffset = -6,
				uuid = "5f8730b6-807b-449d-8798-bc82b1a03349",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "41819b11-6306-1675-ea4c-4bd778f858c1",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[103] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "f50f34fe-a32f-e6e2-b35a-deec7b11726e",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "d7727552-d05e-2048-aed9-0eca85084e17",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobBlackfireGuide\nif s then\n s.hits=s.hits+1\n if not s.dest then\n  for _,e in pairs(EntityList(\"\")) do\n   if e.contentid==2612 then\n    local r=math.sqrt(e.pos.x*e.pos.x+e.pos.z*e.pos.z)\n    if r>20 then s.dest={x=e.pos.x/r*16,y=0,z=e.pos.z/r*16} end\n    break\n   end\n  end\n end\n if s.hits>=5 then data.ucobBlackfireGuide=nil end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"a9da9bf6-660e-f1d8-b5b4-186a20cf0fb1",
									true,
								},
							},
							name = "Blackfire Trio - Move toward Nael capture",
							uuid = "3fb87d52-57f9-48dd-954b-6b742f891d5c",
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
								9901,
							},
							uuid = "a9da9bf6-660e-f1d8-b5b4-186a20cf0fb1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 576,
				name = "[LPDU] Blackfire Trio - Move toward Nael capture",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 7,
				timerStartOffset = -3,
				uuid = "aa3bf50f-3ca7-1758-b3be-95edea3ca862",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "a4b2709b-215d-d647-0437-1405ab45548b",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[106] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "fc51b8f5-a835-f891-8a06-686bf3cfe6a5",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[108] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "a0c2e63f-5104-3cd3-fe37-059994bccf2f",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "c36bc7e0-b9cc-36e8-ad43-dcdc22f9897b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobBlackfireTowerChoice\nif not s then\n s={towers={},marked={},markerCount=0,hyper=0,expires=Now()+11000}\n for _,e in pairs(TensorCore.entityList(\"\")) do\n  if e.contentid==2612 then\n   local r=math.sqrt(e.pos.x^2+e.pos.z^2)\n   if r>20 then s.nx=e.pos.x/r s.nz=e.pos.z/r end\n   break\n  end\n end\n data.ucobBlackfireTowerChoice=s\nend\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif e then s.towers[eventArgs.entityID]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\nself.used=true",
							conditions = 
							{
								
								{
									"ea235b53-a140-b4c8-8274-231aee739cdd",
									true,
								},
							},
							name = "Tower Capture",
							uuid = "9e3e54dc-1803-3a6b-a77f-e01eccb51047",
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
								9951,
							},
							uuid = "ea235b53-a140-b4c8-8274-231aee739cdd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 590,
				name = "[LPDU] Blackfire DPS Towers - Tower Capture",
				timeRange = true,
				timelineIndex = 108,
				timerStartOffset = -10,
				uuid = "6ac908db-a7fc-9505-a1d7-b09785585a10",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobBlackfireTowerChoice\nif s and not s.marked[eventArgs.entityID] then\n s.marked[eventArgs.entityID]=true s.markerCount=s.markerCount+1\nend\nself.used=true",
							conditions = 
							{
								
								{
									"3b8b0210-45e3-e67d-9042-e5bf5ddc5c11",
									true,
								},
							},
							name = "Stack Marker Capture",
							uuid = "1e0bc32d-ae5c-443e-bf8b-136d7fd61213",
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
							eventMarkerID = 39,
							uuid = "3b8b0210-45e3-e67d-9042-e5bf5ddc5c11",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 590,
				name = "[LPDU] Blackfire DPS Towers - Stack Marker Capture",
				timeRange = true,
				timelineIndex = 108,
				timerStartOffset = -10,
				uuid = "fcb05295-6ce1-26aa-a99f-5dbeb1d40326",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobBlackfireTowerChoice\nif s then s.hyper=s.hyper+1 end\nself.used=true",
							conditions = 
							{
								
								{
									"2dfe25b3-49b2-e8df-854c-05e364118d5a",
									true,
								},
							},
							name = "Hypernova Entry",
							uuid = "2288931e-0a39-b69b-baa7-4271b99ce0e7",
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
								9919,
							},
							uuid = "2dfe25b3-49b2-e8df-854c-05e364118d5a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 590,
				name = "[LPDU] Blackfire DPS Towers - Hypernova Entry",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = 1,
				timerStartOffset = -7,
				uuid = "8525db0a-2dd4-2dff-9e2f-6f4f82d5404a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobBlackfireTowerChoice=nil\nself.used=true",
							conditions = 
							{
								
								{
									"86fb15ad-4a88-3f21-b263-42fbfff5cebd",
									true,
								},
							},
							name = "Resolution Cleanup",
							uuid = "e90085a3-e6fa-4f3a-a41b-4498b7e304ac",
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
								9951,
							},
							uuid = "86fb15ad-4a88-3f21-b263-42fbfff5cebd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 590,
				name = "[LPDU] Blackfire DPS Towers - Resolution Cleanup",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "b98b8298-c0b2-6126-9c90-33548dd68f4a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobBlackfireTowerChoice\nif s then s.stackDone=true end\nself.used=true",
							conditions = 
							{
								
								{
									"b865ada2-1345-b86e-af25-891cef912cd6",
									true,
								},
							},
							name = "Stack Resolution",
							uuid = "62eca1a3-4b05-bfbb-b478-107c803f76b9",
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
								9950,
							},
							uuid = "b865ada2-1345-b86e-af25-891cef912cd6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 590,
				name = "[LPDU] Blackfire DPS Towers - Stack Resolution",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = 1,
				timerStartOffset = -4,
				uuid = "299985f2-0855-8388-8a6f-2397f2857019",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobBlackfireTowerChoice\nlocal R=AnyoneCore and AnyoneCore.Roster\nif not s or Now()>=s.expires or not s.nx or s.markerCount~=4 or not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif slot~=\"M1\" and slot~=\"M2\" and slot~=\"R1\" and slot~=\"R2\" then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal choice=Settings.FFXIVMINION.LPDU_UCOB_BlackfireTower\nif choice~=\"Close\" and choice~=\"Far\" then\n choice=(slot==\"M1\" or slot==\"M2\") and \"Close\" or \"Far\"\nend\nlocal dest=nil\nif s.marked[p.id] then\n if s.stackDone then self.used=true return end\n s.stackDest=s.stackDest or {x=-s.nx*8,y=0,z=-s.nz*8}\n dest=s.stackDest\nelse\n if choice~=\"Close\" and choice~=\"Far\" then self.used=true return end\n if s.choice~=choice then\n  local selected=nil local score=nil local count=0\n  -- Facing Nael: LPDU DPS left, supports right.\n  for _,t in pairs(s.towers) do\n   if t.x*s.nz-t.z*s.nx>0 then\n    count=count+1\n    local n=t.x*s.nx+t.z*s.nz\n    if not score or (choice==\"Close\" and n>score) or (choice==\"Far\" and n<score) then selected=t score=n end\n   end\n  end\n  if count~=2 or not selected then self.used=true return end\n  s.choice=choice s.selected=selected\n  local r=math.sqrt(selected.x^2+selected.z^2)\n  s.stage={x=selected.x/r*(r+4),y=selected.y,z=selected.z/r*(r+4)}\n end\n dest=s.hyper>=2 and s.selected or s.stage\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Close-Far Personal Arrow",
							uuid = "6d1dfcec-1baa-eedf-97ef-c38a75752e92",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 590,
				name = "[LPDU] Blackfire DPS Towers - Close-Far Personal Arrow",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "5aeed29c-6eea-d9ac-a953-6395bdcd19ef",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobBlackfireTowerChoice\nif not s or Now()>=s.expires or not s.nx or s.markerCount~=4 or (slot~=\"T1\" and slot~=\"T2\" and slot~=\"H1\" and slot~=\"H2\") then self.used=true return end\nlocal dest\nif s.marked[p.id] then\n if s.stackDone then self.used=true return end\n dest=s.stackDest or {x=-s.nx*8,y=0,z=-s.nz*8}\nelse\n local count=0\n local score=nil\n local selected=nil\n local close=slot==\"T1\" or slot==\"T2\"\n for _,t in pairs(s.towers) do\n  if t.x*s.nz-t.z*s.nx<0 then\n   count=count+1\n   local n=t.x*s.nx+t.z*s.nz\n   if not score or (close and n>score) or (not close and n<score) then selected=t;score=n end\n  end\n end\n if count~=2 or not selected then self.used=true return end\n dest=selected\n if s.hyper<2 then\n  local r=math.sqrt(dest.x^2+dest.z^2)\n  if r<1 then self.used=true return end\n  dest={x=dest.x/r*(r+4),y=dest.y,z=dest.z/r*(r+4)}\n end\nend\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Blackfire - Support Tower and Stack Arrow",
							uuid = "c29ce067-c5f1-2921-915a-209aa5146193",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 590,
				name = "[LPDU] P3 Blackfire - Support Tower and Stack Arrow",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "ef827278-2966-5e26-91ea-099f02521e1a",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "59227014-21d5-e108-07f7-92e60093f804",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "eb2e260e-01f0-a5b2-2558-6b50911469fe",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[111] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "f60dee36-ab4f-e451-b5c0-d48382fe798e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath111\nif not s then s={nextSearch=0} data.ucobFlareBreath111=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "95c4c3b4-c9a2-f466-bd3a-3081f85afccb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 605,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 111,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "90aaabb5-4bcb-11f0-9a9f-f05c4f6a2169",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath111\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"c862616c-6262-bde7-8df6-b529cb5b8223",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "29cebbaa-a5c2-e01e-8e77-cd288cdd9b9b",
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
								9940,
							},
							uuid = "c862616c-6262-bde7-8df6-b529cb5b8223",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 605,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 111,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "e4e938b1-0c35-b352-a746-77fb2b8900a9",
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
				name = "LPDU Personal Guidance",
				uuid = "c6eb4652-5655-6d43-9a78-0e2d57284256",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath112\nif not s then s={nextSearch=0} data.ucobFlareBreath112=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "7523e84b-2598-e45a-8103-956f30945c65",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 607,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "466402f8-dcec-c9ae-a43f-739e07179807",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath112\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"4f563028-9d08-fd3a-ad06-cdeae84a1c4b",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "e6e476fe-edfc-f850-9830-a182de9ca24a",
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
								9940,
							},
							uuid = "4f563028-9d08-fd3a-ad06-cdeae84a1c4b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 607,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "2229c10e-5df6-bd47-968a-69355898aa6a",
				version = 2,
			},
		},
	},
	[113] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "36a21117-8ce9-782b-5c95-22d556aeadc7",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "4af54728-0bbf-7c62-8133-91f0e76a9fd8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath113\nif not s then s={nextSearch=0} data.ucobFlareBreath113=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "b3472b9e-f48f-3e53-85a9-5a222e5c5a77",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 609,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "dbc5d069-7053-787f-99ee-b0335217d7bd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath113\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"1ccd9724-221a-7709-a58b-7cc74ae457a1",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "314da43c-08f8-8e2d-a83f-89024c47643f",
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
								9940,
							},
							uuid = "1ccd9724-221a-7709-a58b-7cc74ae457a1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 609,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "acc44013-c3ac-e9e7-9ff8-7d158c290bb6",
				version = 2,
			},
		},
	},
	[115] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "216ea145-d9f3-b061-f043-01279856edf5",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[116] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "b85bad00-9f62-feac-4f2e-215ed47834f0",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "8e6bb59a-f9df-3f35-aa1c-41d4a567603c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local t=eventArgs.line.line\nlocal seq=nil\nif t:find(\"From on high I descend, the moon and stars to bring\",1,true) then seq={9918,9916}\nelseif t:find(\"From hallowed moon I descend, a rain of stars to bring\",1,true) then seq={9916,9918} end\nif seq then\n local nael=nil\n for _,e in pairs(EntityList(\"\")) do if e.contentid==2612 then nael=e.id;break end end\n data.ucobFellruinGuide={seq=seq,step=1,nael=nael,expires=Now()+18000}\nend\nself.used=true",
							name = "Fellruin - Quote Sequence",
							uuid = "7341ecf2-f502-43e2-b298-b09474db661d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 626.6,
				name = "[LPDU] P3 Fellruin - Quote Sequence",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 10,
				timerStartOffset = -6,
				uuid = "db98b70e-143a-45b2-abf4-6c8ea4de50ae",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFellruinGuide\nif s and s.seq[s.step]==eventArgs.spellID then s.step=s.step+1 end\nif s and eventArgs.spellID==9905 then s.profDone=true end\nif s and eventArgs.spellID==9920 then data.ucobFellruinGuide=nil end\nself.used=true",
							conditions = 
							{
								
								{
									"7b73a266-7f53-4c39-a695-b4fd1d1bdb8d",
									true,
								},
							},
							name = "Fellruin - Quote Damage Steps",
							uuid = "fdea0223-1fb3-ef3c-aafb-3a8bd873aa78",
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
								9918,
								9916,
								9905,
								9920,
							},
							uuid = "7b73a266-7f53-4c39-a695-b4fd1d1bdb8d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 626.6,
				name = "[LPDU] P3 Fellruin - Quote Damage Steps",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 17,
				timerStartOffset = -6,
				uuid = "7fcb2b91-21cc-92b5-9e06-13ca66c8b848",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobFellruinGuide\nif not s or Now()>=s.expires or not s.nael then self.used=true return end\nlocal nael=TensorCore.mGetEntity(s.nael)\nif not nael then self.used=true return end\nlocal np=nael.pos\nlocal dest\nif s.seq[s.step]==9916 then\n local r=math.sqrt(np.x^2+np.z^2)\n if r<1 then self.used=true return end\n -- Behind Nael, away from middle; tanks move between the party and Bahamut.\n if slot==\"T1\" or slot==\"T2\" then\n  local b=nil\n  for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then b=e.pos;break end end\n  if not b then self.used=true return end\n  local dx,dz=b.x-np.x,b.z-np.z;local d=math.sqrt(dx^2+dz^2)\n  if d<1 then self.used=true return end\n  dest={x=np.x+dx/d*2,y=np.y,z=np.z+dz/d*2}\n else dest={x=np.x+np.x/r*2,y=np.y,z=np.z+np.z/r*2} end\nelseif s.seq[s.step]==9918 or s.profDone then\n local r=math.sqrt(np.x^2+np.z^2)\n if r<1 then self.used=true return end\n local nx,nz=-np.x/r,-np.z/r\n local rank={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\n local left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\n local angle=math.rad(22.5+rank[slot]*45);local side=left and -1 or 1\n dest={x=np.x+8*(nx*math.cos(angle)-side*nz*math.sin(angle)),y=np.y,z=np.z+8*(nz*math.cos(angle)+side*nx*math.sin(angle))}\nelse self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Fellruin - Quickmarch Spread and Dynamo",
							uuid = "c5660c77-9c28-4d54-b0a1-5e1a54686e7f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 626.6,
				name = "[LPDU] P3 Fellruin - Quickmarch Spread and Dynamo",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 17,
				timerStartOffset = -6,
				uuid = "aca9d950-a390-9b72-9077-ab1cb908396d",
				version = 2,
			},
		},
	},
	[118] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "aeb3c126-b981-3a4a-fbc4-7a68640893d6",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "2ce49414-307b-0d3c-b07a-064075d7f348",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local links={}\nlocal nael=nil\nfor _,e in pairs(EntityList(\"\")) do\n if e.contentid==2612 then nael=e.pos end\n if e.contentid==2001151 then links[#links+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\nend\nif nael and #links==3 then\n table.sort(links,function(a,b) return (a.x-nael.x)^2+(a.z-nael.z)^2<(b.x-nael.x)^2+(b.z-nael.z)^2 end)\n local r=math.sqrt(nael.x*nael.x+nael.z*nael.z)\n if r>1 then\n  local lx,lz=-nael.z/r,nael.x/r\n  if links[2].x*lx+links[2].z*lz<links[3].x*lx+links[3].z*lz then links[2],links[3]=links[3],links[2] end\n  data.ucobFellruinLinks={party=links[1],T1=links[2],T2=links[3],expires=Now()+eventArgs.channelTimeMax*1000}\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"0715f608-bb2d-dd04-8024-2dc9a430b40b",
									true,
								},
							},
							name = "Fellruin Aetheric Profusion - Links capture",
							uuid = "fee5b6b7-5eac-013d-86bd-ff3945ccc726",
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
								9905,
							},
							uuid = "0715f608-bb2d-dd04-8024-2dc9a430b40b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 638.1,
				name = "[LPDU] Fellruin Aetheric Profusion - Links capture",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "5452d5ec-422e-ea85-82fa-7bd4f386fd40",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobFellruinLinks\nif not s or Now()>s.expires or s.expires-Now()>3000 then self.used=true return end\nlocal dest=s[slot] or s.party\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Fellruin Aetheric Profusion - Assigned Neurolink",
							uuid = "fb3b20b0-c8e6-f7e1-a67d-d0e59699e9ad",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 638.1,
				name = "[LPDU] Fellruin Aetheric Profusion - Assigned Neurolink",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 0.5,
				timerStartOffset = -5,
				uuid = "8894aeff-7a57-aeb4-9201-12f7e770f916",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobFellruinLinks=nil\nself.used=true",
							conditions = 
							{
								
								{
									"a3d676a0-eac3-5dc5-8e8d-46d2b69cafec",
									true,
								},
							},
							name = "Fellruin Aetheric Profusion - Resolution",
							uuid = "7a1c9191-de02-8d7a-ba11-0a35c7f82e7f",
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
								9905,
							},
							uuid = "a3d676a0-eac3-5dc5-8e8d-46d2b69cafec",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 638.1,
				name = "[LPDU] Fellruin Aetheric Profusion - Resolution",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "0f90bf79-2ede-42bd-a788-1b654d347abf",
				version = 2,
			},
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "f4960dd9-e50d-eebd-c4bd-79b3dad88a49",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[122] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "4167a43b-1f3f-7fdf-e068-4a4dc23a4fab",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "f22c480c-f1da-9c4d-85d5-b22259ddaacc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath122\nif not s then s={nextSearch=0} data.ucobFlareBreath122=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "7ff75d2f-dbc0-3324-89f0-cf6a93b1ae7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 651.4,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "eec4a1ed-0fdd-abe5-a8e8-f5da668a379c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath122\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"e4d2d51b-a99e-7e52-b34e-c3217bff7ba7",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "4f929ffd-6dfe-b031-8148-4df92771cc34",
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
								9940,
							},
							uuid = "e4d2d51b-a99e-7e52-b34e-c3217bff7ba7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 651.4,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "4a1d68cd-770a-fcd9-82a4-567a801c50f1",
				version = 2,
			},
		},
	},
	[123] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "18590390-71e6-a4b4-4ccf-ea9a5460e200",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[124] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "406a3d31-b5f1-7bcd-49b6-4e5f0f4487e1",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "61d4e187-46aa-bda6-9889-a3392047b52e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath124\nif not s then s={nextSearch=0} data.ucobFlareBreath124=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "087edfd6-d783-da54-8bed-42b0098d035f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 665.4,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "219acdf0-d62b-728e-a720-0d74f47e90ec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath124\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"87d276e8-a05b-a7d9-b532-7534e4f98ec0",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "87e3e3d8-a063-5862-a84e-79eed06f5f68",
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
								9940,
							},
							uuid = "87d276e8-a05b-a7d9-b532-7534e4f98ec0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 665.4,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "c45658c1-b79b-eb49-a12c-82dc55997a65",
				version = 2,
			},
		},
	},
	[125] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "c19f177c-ceb2-3242-94ef-f3f2f03dff5b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobHeavensfallTowers\nif not s or now-s.started>25000 then s={started=now,towers={},kb=false} data.ucobHeavensfallTowers=s end\nif not s.reference then\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==2612 then\n   local length=math.sqrt(e.pos.x*e.pos.x+e.pos.z*e.pos.z)\n   if length>15 then s.reference=math.atan2(e.pos.x,-e.pos.z) break end\n  end\n end\nend\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif e then s.towers[e.id]={id=e.id,x=e.pos.x,y=e.pos.y,z=e.pos.z,expires=now+eventArgs.channelTimeMax*1000} end\nself.used=true",
							conditions = 
							{
								
								{
									"e70b1e05-df90-9158-8e26-88f08447cc7a",
									true,
								},
							},
							name = "Heavensfall eight tower position capture",
							uuid = "43cfe947-d274-ace1-834d-9b8177526412",
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
								9951,
							},
							uuid = "e70b1e05-df90-9158-8e26-88f08447cc7a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 673.4,
				name = "Heavensfall eight tower position capture",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = 18,
				timerStartOffset = 5,
				uuid = "32a25ba0-b8bd-47e1-bbf8-39f52acf36da",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobHFGuide={expires=Now()+40000,hits=0}\nself.used=true",
							conditions = 
							{
								
								{
									"00cbd419-91cf-9916-92f1-6bf700ceef75",
									true,
								},
							},
							name = "Heavensfall - Center Bait Capture",
							uuid = "c5fbb840-a670-f43a-991b-e95a45b852ae",
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
								9957,
							},
							uuid = "00cbd419-91cf-9916-92f1-6bf700ceef75",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 673.4,
				name = "[LPDU] P3 Heavensfall - Center Bait Capture",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "de4c1562-4de8-899e-b5d9-50b170ec3927",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobHFGuide\nif not s or s.divesLocked or Now()>=s.expires then self.used=true return end\nlocal dest={x=0,y=0,z=0}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Heavensfall - Center Bait Arrow",
							uuid = "d9724d57-3c47-4340-afe8-16ef4cf8c947",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 673.4,
				name = "[LPDU] P3 Heavensfall - Center Bait Arrow",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = 9,
				timerStartOffset = -4,
				uuid = "b6d2d5c4-45a3-dc52-958c-89b8a9365c2f",
				version = 2,
			},
		},
	},
	[126] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "06684867-3938-0473-ab57-0969d2a74617",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "dce8e9fc-c867-ec28-d2e5-66f6d4b3d62c",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "14b55a78-d595-c233-b576-feb178df9e40",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHFGuide\nif s then s.divesLocked=true end\nself.used=true",
							conditions = 
							{
								
								{
									"92cb2fc3-c45a-767b-a220-ae523b862db8",
									true,
								},
							},
							name = "Heavensfall - Dive Marker Lock",
							uuid = "f728022d-27cf-584a-ac9b-93b4e6770a88",
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
							conditionLua = "local id=eventArgs.markerID\nreturn id==41 or id==42",
							dequeueIfLuaFalse = true,
							name = "Relevant overhead",
							uuid = "92cb2fc3-c45a-767b-a220-ae523b862db8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 681.4,
				name = "[LPDU] P3 Heavensfall - Dive Marker Lock",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "616f2c02-41d9-d5d0-9ca8-26b23d1abaae",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHFGuide\nif not s or s.geometry then self.used=true return end\nlocal nael,twin,baha=nil,nil,nil\nfor _,e in pairs(EntityList(\"\")) do\n local pos=e.pos\n if pos.x^2+pos.z^2>400 then\n  if e.contentid==2612 then nael=pos elseif e.contentid==1482 then twin=pos elseif e.contentid==3210 then baha=pos end\n end\nend\nif nael and twin and baha then\n local function angle(p) return math.atan2(p.x,-p.z) end\n local function wrap(a) return (a+math.pi)%(2*math.pi)-math.pi end\n local n=angle(nael)\n local t=wrap(angle(twin)-n);local b=wrap(angle(baha)-n)\n local center=t*b<0\n s.geometry={axis=n+(center and 0 or (t+b)/2),angles=center and {10,80,100,170} or {60,80,100,120}}\nend\nself.used=true",
							conditions = 
							{
								
								{
									"f88129c7-5e4b-6482-92e5-96a4bd47fcb2",
									true,
								},
							},
							name = "Heavensfall - Dive Geometry Capture",
							uuid = "184404f4-2a6b-dcb3-8bac-a238a8cd939e",
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
							conditionLua = "local id=eventArgs.markerID\nreturn id==41 or id==42",
							dequeueIfLuaFalse = true,
							name = "Relevant overhead",
							uuid = "f88129c7-5e4b-6482-92e5-96a4bd47fcb2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 681.4,
				name = "[LPDU] P3 Heavensfall - Dive Geometry Capture",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "632db3be-2e05-1167-83f7-8dfca4a68293",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobHFGuide\nif not s or not s.divesLocked or not s.geometry or s.diveDone or Now()>=s.expires then self.used=true return end\nlocal rank={T1=1,H1=2,M1=3,R1=4,T2=1,H2=2,M2=3,R2=4}\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal a=s.geometry.axis+(left and -1 or 1)*math.rad(s.geometry.angles[rank[slot]])\nlocal dest={x=math.sin(a)*20,y=0,z=-math.cos(a)*20}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Heavensfall - Quickmarch Dive Safespot",
							uuid = "daa2032a-181e-9752-a1b4-7de53e46f9be",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 681.4,
				name = "[LPDU] P3 Heavensfall - Quickmarch Dive Safespot",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "0a44bc6a-7e5c-9139-9c30-3df5266d9b9e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHFGuide\nif s then s.diveDone=true end\nself.used=true",
							conditions = 
							{
								
								{
									"d40a04e8-391b-9d79-80ab-4e902c43d9f0",
									true,
								},
							},
							name = "Heavensfall - Dive Resolution",
							uuid = "d106f21b-0876-9991-9cc1-97fd787ba914",
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
								9906,
							},
							uuid = "d40a04e8-391b-9d79-80ab-4e902c43d9f0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 681.4,
				name = "[LPDU] P3 Heavensfall - Dive Resolution",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "2acd26d7-d58d-2e0e-bb31-facaa0c656c3",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "4f3d1e4d-a71e-9ab1-d292-d03b1a5ec63d",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "d6774ce6-76ff-d7e8-838f-b4520235ce9b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHeavensfallTowers\nif s then s.kb=true end\nself.used=true",
							conditions = 
							{
								
								{
									"9d30515e-c1de-075f-8412-2ae076477118",
									true,
								},
							},
							name = "Heavensfall tower arrows after knockback",
							uuid = "0fdcd952-44d1-942a-8b43-3cbdaade9f8a",
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
								9912,
							},
							uuid = "9d30515e-c1de-075f-8412-2ae076477118",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 686.9,
				name = "Heavensfall tower arrows after knockback",
				timeRange = true,
				timelineIndex = 128,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "4fe0e4f3-6a35-07a3-a2ad-0fdeb7dfb231",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobHeavensfallTowers\nif not s or not s.kb or not s.reference or Now()-s.started>15000 then self.used=true return end\nlocal towers={}\nfor _,t in pairs(s.towers) do\n if Now()<t.expires then\n  local angle=(math.atan2(t.x,-t.z)-s.reference)%(2*math.pi)\n  if angle>2*math.pi-math.rad(5) then angle=angle-2*math.pi end\n  towers[#towers+1]={x=t.x,y=t.y,z=t.z,angle=angle}\n end\nend\nif #towers~=8 then self.used=true return end\ntable.sort(towers,function(a,b) return a.angle<b.angle end)\nlocal rank={T2=1,H2=2,M2=3,R2=4,R1=5,M1=6,H1=7,T1=8}\nlocal dest=towers[rank[slot]]\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Heavensfall personal assigned tower arrow",
							uuid = "739699fe-2510-c477-b5c4-7049749b1967",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 686.9,
				name = "Heavensfall personal assigned tower arrow",
				timeRange = true,
				timelineIndex = 128,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "f762d7f7-c7c9-0d5e-9c24-00c56c4ddf24",
				version = 2,
			},
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "6a72dd03-f4c7-cb92-97fb-7d4e375d1138",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHFGuide\nif s then s.hits=s.hits+1;if s.hits>=16 then s.conesDone=true end end\nself.used=true",
							conditions = 
							{
								
								{
									"f4ed27c7-2562-9c96-9e3b-eb6694448630",
									true,
								},
							},
							name = "Heavensfall - Final Cone Resolution",
							uuid = "733c831b-60ad-40fb-8885-14920e8a934a",
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
								9913,
							},
							uuid = "f4ed27c7-2562-9c96-9e3b-eb6694448630",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 696,
				name = "[LPDU] P3 Heavensfall - Final Cone Resolution",
				timeRange = true,
				timelineIndex = 133,
				timerEndOffset = 8,
				timerStartOffset = -6,
				uuid = "e951c2cd-5e56-633a-9c5a-0062faa5119b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHFGuide\nif not s or s.conesDone then self.used=true return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then self.used=true return end\nlocal r=s.rotation\nlocal phi=math.pi-e.pos.h\nif not r then\n r={first=phi,active={},puddles={},resolved=-1,expires=Now()+12000}\n s.rotation=r\nelse\n local delta=(phi-r.first+math.pi/2)%math.pi-math.pi/2\n if not r.direction and math.abs(math.abs(delta)-math.pi/8)<0.03 then r.direction=delta>0 and 1 or -1 end\nend\nr.active[eventArgs.entityID]={phi=phi,expires=Now()+eventArgs.channelTimeMax*1000+500}\nself.used=true",
							conditions = 
							{
								
								{
									"e877a3a6-f414-466e-b6b8-ad04c5597350",
									true,
								},
							},
							name = "Heavensfall - Cone Rotation Capture",
							uuid = "18b9d0ff-27e7-f607-b53b-3ba6eb6b5b90",
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
								9913,
							},
							uuid = "e877a3a6-f414-466e-b6b8-ad04c5597350",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 696,
				name = "[LPDU] P3 Heavensfall - Cone Rotation Capture",
				timeRange = true,
				timelineIndex = 133,
				timerEndOffset = 5,
				timerStartOffset = -6,
				uuid = "5a83ea89-b71a-73f1-9606-7a804ee94385",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHFGuide\nlocal r=s and s.rotation\nif r then\n if eventArgs.spellID==9913 then\n  local cone=r.active[eventArgs.entityID]\n  if cone and r.direction then\n   local delta=((cone.phi-r.first)*r.direction)%math.pi\n   local index=math.floor(delta/(math.pi/8)+0.5)%8\n   r.resolved=math.max(r.resolved,index)\n  end\n  r.active[eventArgs.entityID]=nil\n elseif eventArgs.spellID==9919 and eventArgs.castPosX and eventArgs.castPosZ then\n  r.puddles[#r.puddles+1]={x=eventArgs.castPosX,z=eventArgs.castPosZ}\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"d4aee2f1-697c-4543-8a2a-2620b90bca8c",
									true,
								},
							},
							name = "Heavensfall - Resolved Cone and Puddle Capture",
							uuid = "b5ca4951-7788-cd7d-a5cd-d32a5bdc687d",
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
								9913,
								9919,
							},
							uuid = "d4aee2f1-697c-4543-8a2a-2620b90bca8c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 696,
				name = "[LPDU] P3 Heavensfall - Resolved Cone and Puddle Capture",
				timeRange = true,
				timelineIndex = 133,
				timerEndOffset = 8,
				timerStartOffset = -6,
				uuid = "ecf29c6e-ae73-64a9-ba8f-73124b30b32d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHFGuide\nif s and not s.rotation and eventArgs.castPosX and eventArgs.castPosZ then\n s.earlyPuddles=s.earlyPuddles or {}\n s.earlyPuddles[#s.earlyPuddles+1]={x=eventArgs.castPosX,z=eventArgs.castPosZ}\nend\nself.used=true",
							conditions = 
							{
								
								{
									"63bcc9b5-a203-21eb-81da-574657cf93ff",
									true,
								},
							},
							name = "Heavensfall - Early Hypernova Capture",
							uuid = "98eef9ef-6cc7-1f1d-bb6a-18c83a5b5901",
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
								9919,
							},
							uuid = "63bcc9b5-a203-21eb-81da-574657cf93ff",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 696,
				name = "[LPDU] P3 Heavensfall - Early Hypernova Capture",
				timeRange = true,
				timelineIndex = 133,
				timerEndOffset = 5,
				timerStartOffset = -6,
				uuid = "9555c19a-e01c-e46d-b4c8-fdb73f28d6a3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobHFGuide\nlocal r=s and s.rotation\nif not r or not r.direction or s.conesDone or Now()>=r.expires then self.used=true return end\nlocal function wrap(a) return (a+math.pi)%(2*math.pi)-math.pi end\nlocal pa=math.atan2(p.pos.x,-p.pos.z)\nif not r.gap then\n local a,b=r.first+math.pi/2,r.first-math.pi/2\n r.gap=math.abs(wrap(a-pa))<math.abs(wrap(b-pa)) and a or b\nend\nlocal desired=r.gap\nlocal radius=20\nif r.direction then\n local lead=r.gap+r.direction*math.pi/2\n if r.resolved<0 then desired=lead-r.direction*math.rad(16)\n else\n  desired=lead+r.direction*(r.resolved*math.pi/8+math.rad(5))\n  radius=20-4.5*math.min(1,(r.resolved+1)/8)\n end\nend\nlocal progress=wrap(desired-pa)*r.direction\n-- Never reverse against the observed cone rotation to catch an old waypoint.\nif progress<=0 then self.used=true return end\nlocal step=r.direction*math.min(math.pi/15,progress)\nlocal angle=pa+step\nlocal function safe(x,z)\n local dx,dz=x-p.pos.x,z-p.pos.z\n local len=dx*dx+dz*dz\n local function circleClear(cx,cz,rad)\n  local px,pz=p.pos.x-cx,p.pos.z-cz\n  if px*px+pz*pz<rad*rad then return (px*dx+pz*dz)>=0 and (x-cx)^2+(z-cz)^2>px*px+pz*pz end\n  local t=len>0 and math.max(0,math.min(1,-(px*dx+pz*dz)/len)) or 0\n  return (px+t*dx)^2+(pz+t*dz)^2>=rad*rad\n end\n if not circleClear(0,0,14.5) then return false end\n for _,list in ipairs({s.earlyPuddles or {},r.puddles}) do\n  for _,v in ipairs(list) do if not circleClear(v.x,v.z,5.4) then return false end end\n end\n -- Don't point into telegraphed cones, even before their deadlines.\n for _,v in pairs(r.active) do\n  if Now()<v.expires then\n   local startBad=math.abs(wrap(pa-v.phi))<math.rad(13.25)\n   if not startBad then\n    for i=1,4 do\n     local t=i/4\n     local a=math.atan2(p.pos.x+dx*t,-(p.pos.z+dz*t))\n     if math.abs(wrap(a-v.phi))<math.rad(13.25) then return false end\n    end\n   elseif math.abs(wrap(angle-v.phi))<=math.abs(wrap(pa-v.phi)) then return false end\n  end\n end\n return true\nend\nlocal dest=nil\nfor _,rad in ipairs({radius,20,18,16,15.5}) do\n local x,z=math.sin(angle)*rad,-math.cos(angle)*rad\n if safe(x,z) then dest={x=x,y=0,z=z};break end\nend\nif not dest then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Heavensfall - Follow Cones Inward Arrow",
							uuid = "9dff9337-cfc4-388e-9282-928bec37e8c9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 696,
				name = "[LPDU] P3 Heavensfall - Follow Cones Inward Arrow",
				timeRange = true,
				timelineIndex = 133,
				timerEndOffset = 8,
				timerStartOffset = -6,
				uuid = "fb95fc3a-27b3-663d-a460-3fb6bbd58cb4",
				version = 2,
			},
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "d4cb5a78-3c90-7ec4-8f41-a1c6fdb8c3a8",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "a1b11783-c145-07ef-8840-1ff96e88dbf3",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "ec2b0e4c-e604-201a-aa84-de010488db2c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobHFGuide\nif not s or not s.conesDone or s.done or Now()>=s.expires then self.used=true return end\nlocal dest={x=0,y=0,z=0}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Heavensfall - Middle Fireball Regroup",
							uuid = "7b41c570-91f4-79ee-b0ff-9793b2265418",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 703.5,
				name = "[LPDU] P3 Heavensfall - Middle Fireball Regroup",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = 1,
				timerStartOffset = -8,
				uuid = "66aeeb63-420e-1549-9466-f40d54dee4f4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobHFGuide\nif s then s.done=true end\nself.used=true",
							conditions = 
							{
								
								{
									"6aa027f1-a5cc-cd01-a19e-45d7838c8ca1",
									true,
								},
							},
							name = "Heavensfall - Fireball Cleanup",
							uuid = "413be48f-0f8d-b904-bc11-72a6cf4e74c6",
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
								9900,
							},
							uuid = "6aa027f1-a5cc-cd01-a19e-45d7838c8ca1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 703.5,
				name = "[LPDU] P3 Heavensfall - Fireball Cleanup",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "e651d1a8-8363-b190-924f-59735d255ba2",
				version = 2,
			},
		},
	},
	[137] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "1eb40244-1963-903a-8eb8-acef5bb534f5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath137\nif not s then s={nextSearch=0} data.ucobFlareBreath137=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "78b87032-de09-a7ac-bae8-20a2eda5f560",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 717.5,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 137,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "8dcb4f56-3678-0616-9b27-5a1938b4549c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath137\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"7554c211-77c1-e616-9436-a010d71659c1",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "8301f8ce-9345-869f-be23-02ba4c3478c0",
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
								9940,
							},
							uuid = "7554c211-77c1-e616-9436-a010d71659c1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 717.5,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 137,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "a2a32433-bb55-3a14-8aa1-389d3a12e4e1",
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
				name = "LPDU Personal Guidance",
				uuid = "dc56acc6-bb0d-2ae6-bf01-7ad4a86ec935",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath138\nif not s then s={nextSearch=0} data.ucobFlareBreath138=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "345e37ec-9aeb-327e-8986-aefc1e9596a6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 719.5,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "2330e930-2485-10db-ac8a-1e2f24ee1818",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath138\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"fe695afd-522b-a3d9-9f49-cf7c5ebfe3a6",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "758d2231-7886-d483-ac03-226ac7912ac5",
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
								9940,
							},
							uuid = "fe695afd-522b-a3d9-9f49-cf7c5ebfe3a6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 719.5,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "1a71468b-d292-e227-ac57-57a0c7fbaec2",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "bb993037-cf04-144b-5e1c-b8e5a26d7d67",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "f4154289-5286-fbfa-a2a2-4f1ec1ffbf1a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath139\nif not s then s={nextSearch=0} data.ucobFlareBreath139=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "b95ed710-6575-7a9d-af72-7dbbc366d324",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 721.5,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "fb261195-31ec-e80c-80ee-da8cb11d483c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath139\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"48ca91fa-451d-7307-93f1-1d7898ce6d9c",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "2916b34c-8363-402b-bde1-f816abdaf1b5",
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
								9940,
							},
							uuid = "48ca91fa-451d-7307-93f1-1d7898ce6d9c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 721.5,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "0c059fd6-b970-b292-bdcd-b93e08458323",
				version = 2,
			},
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "fe2cfec8-d82d-bdc4-cda6-b56270d08f78",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[142] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "affd1f6d-f966-9079-35dd-9c9b2be11ddd",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "b80f70d3-3c4d-68ec-828a-09bc136667da",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal order={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal angle=math.rad(22.5+order[slot]*45)\nlocal dest={x=(left and -1 or 1)*math.sin(angle)*9,y=0,z=-math.cos(angle)*9}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Tenstrike initial Quickmarch position arrows",
							uuid = "37069428-cc4f-91b2-b4fb-5ab51c72af4a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 740.5,
				name = "Tenstrike initial Quickmarch position arrows",
				timeRange = true,
				timelineIndex = 142,
				timerEndOffset = -0.1,
				timerStartOffset = -4,
				uuid = "9bf39d4e-102f-4eac-ad60-9a1b5e2a0cbb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal now=Now()\nlocal s=data.ucobMultiHatch142\nif not s or now-s.started>25000 then\n s={started=now,lastMarker=now,targets={},positions={},links={},hit={},ready=true}\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n for _,slot in ipairs(slots) do\n  local e=R.entOf(slot)\n  if e then s.positions[e.id]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\n end\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==2001151 then s.links[#s.links+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z,id=e.id} end\n end\n table.sort(s.links,function(a,b) if math.abs(a.z-b.z)>1 then return a.z<b.z end return a.x<b.x end)\n if #s.links>=2 and s.links[1].x>s.links[2].x then s.links[1],s.links[2]=s.links[2],s.links[1] end\n data.ucobMultiHatch142=s\nend\nif not s.assignments then s.targets[eventArgs.entityID]=true s.lastMarker=now end\nself.used=true",
							conditions = 
							{
								
								{
									"dc539cc6-9a58-16a8-adba-02811f283987",
									true,
								},
							},
							name = "Tenstrike Hatch target and link capture",
							uuid = "a4641027-aaee-dfc9-b658-48b04237e3aa",
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
							eventMarkerID = 118,
							uuid = "dc539cc6-9a58-16a8-adba-02811f283987",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 740.5,
				name = "Tenstrike Hatch target and link capture",
				timeRange = true,
				timelineIndex = 142,
				timerEndOffset = 18,
				timerStartOffset = -8,
				uuid = "7137648e-e743-e3d0-81ee-f79b707478c6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobMultiHatch142\nif not R or not R.current() or not R.isReady() or not s or Now()-s.started>25000 then self.used=true return end\nif not s.assignments then\n if Now()-s.lastMarker<150 then self.used=true return end\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n local marked,unmarked={},{}\n for _,slot in ipairs(slots) do\n  local id=R.idOf(slot)\n  if id and s.positions[id] then\n   if s.targets[id] then marked[#marked+1]=id else unmarked[#unmarked+1]=id end\n  end\n end\n if #marked~=3 or #s.links<3 then self.used=true return end\n -- Each target chooses its nearest unclaimed link in Quickmarch priority.\n -- IDs are already ordered L1,L2,L3,L4,R1,R2,R3,R4.\n local function match(ids,links)\n  local result,used={},{}\n  for _,id in ipairs(ids) do\n   local pos=s.positions[id]\n   local best,cost=nil,math.huge\n   for i,link in ipairs(links) do\n    if not used[i] then\n     local dx,dz=pos.x-link.x,pos.z-link.z\n     local dist=dx*dx+dz*dz\n     if dist<cost-0.001 then best=i;cost=dist end\n    end\n   end\n   if best then result[best]=id;used[best]=true end\n  end\n  return result\n end\n local links={}\n for i=1,3 do links[i]=s.links[i] end\n local assigned=match(marked,links)\n \n s.assignments={}\n local backups=true and match(unmarked,links) or nil\n for i,link in ipairs(links) do\n  local pair={target=assigned[i],link=link,phase=0}\n  if backups then pair.backup=backups[i] end\n  s.assignments[assigned[i]]=pair\n  if backups then s.assignments[backups[i]]=pair end\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal pair=s.assignments[p.id]\nif not pair or pair.phase>=2 or not s.ready then self.used=true return end\nlocal link=pair.link\nlocal dest=link\nif true then\n local r=math.sqrt(link.x*link.x+link.z*link.z)\n if r<1 then self.used=true return end\n if p.id==pair.target then\n  if pair.phase==1 then dest={x=link.x/r*20.5,y=link.y,z=link.z/r*20.5} end\n elseif pair.phase==0 then\n  local distance=math.min(20.5,r+8.5)\n  dest={x=link.x/r*distance,y=link.y,z=link.z/r*distance}\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Tenstrike Hatch deterministic personal arrows",
							uuid = "8e7fa717-e534-7225-8187-9cdfdbf751b3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 740.5,
				name = "Tenstrike Hatch deterministic personal arrows",
				timeRange = true,
				timelineIndex = 142,
				timerEndOffset = 18,
				timerStartOffset = -8,
				uuid = "cf69c05b-ae05-4a84-ab1d-e0a5fdd4d1f1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch142\nif s and s.assignments then\n local pair=s.assignments[eventArgs.entityID]\n if pair then\n  if eventArgs.entityID==pair.target and pair.phase==0 then pair.phase=1\n  elseif eventArgs.entityID==pair.backup then pair.phase=2 end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"d87efcdc-f5d5-2546-b499-6d60818a112c",
									true,
								},
							},
							name = "Tenstrike Hatch individual soak resolution",
							uuid = "110ce25e-d6fa-9aa6-b8e5-b0d985e7be7c",
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
							eventBuffID = 1434,
							uuid = "d87efcdc-f5d5-2546-b499-6d60818a112c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 8,
				loop = true,
				mechanicTime = 740.5,
				name = "Tenstrike Hatch individual soak resolution",
				timeRange = true,
				timelineIndex = 142,
				timerEndOffset = 18,
				timerStartOffset = -8,
				uuid = "0512ca7e-a556-d60d-bcac-4ada2982a249",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"55300f01-46ce-6973-a737-60805c660a41",
									true,
								},
							},
							uuid = "71870fe1-c597-3aef-9fa2-2e29b0c13ffc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch142\nlocal p=TensorCore.mGetPlayer()\nif s and p then s.entryAlerts=s.entryAlerts or {};s.entryAlerts[p.id]=true end\nself.used=true",
							conditions = 
							{
								
								{
									"55300f01-46ce-6973-a737-60805c660a41",
									true,
								},
							},
							name = "Personal alert used",
							uuid = "93a4e494-44f3-d895-a2b4-adc402d7d479",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobMultiHatch142\nif not s or s.entryAlerts and s.entryAlerts[p.id] then return false end\nif Now()-s.started>25000 then return false end\nlocal a=s.assignments and s.assignments[p.id]\nif not a then return false end\nreturn s.ready and ((a.target==p.id and a.phase==0) or (a.backup==p.id and a.phase==1))",
							dequeueIfLuaFalse = true,
							name = "Your soak ready",
							uuid = "55300f01-46ce-6973-a737-60805c660a41",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 740.5,
				name = "[LPDU] P3 Tenstrike Hatch - Personal Neurolink Entry",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 142,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "d1578e43-ad84-bdaa-bf5b-44d7c2dadfe2",
				version = 2,
			},
		},
	},
	[143] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "81c431ba-0068-1246-c99e-2bf0c52f686a",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "6b3aad89-922d-855d-4bd4-a4c7931a28f9",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "9dc89f4b-33fa-67fe-b5f7-c74048c856f5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal s=data.ucobMultiHatch142\nif not s or not s.assignments then self.used=true return end\nlocal done=0\nfor id,pair in pairs(s.assignments) do\n if id==pair.target and pair.phase>=2 then done=done+1 end\nend\nif done~=3 then self.used=true return end\nlocal dest={x=0,y=0,z=0}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Tenstrike - Regroup after Hatches",
							uuid = "7007d13e-da4d-9e9d-9a02-932558162c7a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 754.4,
				name = "[LPDU] Tenstrike - Regroup after Hatches",
				timeRange = true,
				timelineIndex = 146,
				timerStartOffset = -8,
				uuid = "c8ce377e-4818-0ed3-b3c0-971eca2afb0c",
				version = 2,
			},
		},
	},
	[147] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "afacb488-521b-8cb0-9ca3-f9d8a98263ea",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobTenShakerAlert\nif not s or Now()>=s.expires then s={waves={},current=1,expires=Now()+18000,hits={},hitCount=0,lastMarker=0} data.ucobTenShakerAlert=s end\nif Now()-s.lastMarker>1000 then s.waves[#s.waves+1]={targets={},count=0} end\ns.lastMarker=Now()\nlocal w=s.waves[#s.waves]\nif not w.targets[eventArgs.entityID] then w.targets[eventArgs.entityID]=true w.count=w.count+1 end\nself.used=true",
							conditions = 
							{
								
								{
									"315318c8-aa11-ea4d-997f-251e88acd140",
									true,
								},
							},
							name = "Tenstrike Earthshaker - Wave Targets",
							uuid = "ffe0ae20-2d25-4cb3-935b-7bb2b5e2469b",
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
							eventMarkerID = 40,
							uuid = "315318c8-aa11-ea4d-997f-251e88acd140",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 754.4,
				name = "[LPDU] Tenstrike Earthshaker - Wave Targets",
				timeRange = true,
				timelineIndex = 147,
				timerEndOffset = 6,
				timerStartOffset = -8,
				uuid = "8e9f3feb-9733-b7d8-a998-e9df97c8807a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobTenShakerAlert\nif s and not s.hits[eventArgs.entityID] then\n s.hits[eventArgs.entityID]=true s.hitCount=s.hitCount+1\n if s.hitCount>=4 then\n  s.current=s.current+1 s.hits={} s.hitCount=0\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"38848b96-48a8-a608-a574-ed271847914d",
									true,
								},
							},
							name = "Tenstrike Earthshaker - Wave Resolution",
							uuid = "821fc406-ac24-299c-894d-0faaa30f52ab",
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
								9946,
							},
							uuid = "38848b96-48a8-a608-a574-ed271847914d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 754.4,
				name = "[LPDU] Tenstrike Earthshaker - Wave Resolution",
				timeRange = true,
				timelineIndex = 147,
				timerEndOffset = 8,
				timerStartOffset = -2,
				uuid = "155e1e2e-eaa8-9a7f-95c3-b45b1ea868b1",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Earthshaker: spread away from north; avoid other cones",
							conditions = 
							{
								
								{
									"7d49c4c8-1506-424f-b289-301234e8ced8",
									true,
								},
							},
							uuid = "44022bc3-195e-925e-84c2-51ec02fb99eb",
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
							conditionLua = "local s=data.ucobTenShakerAlert\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or Now()>=s.expires or not p or not R or not R.current() then return false end\nlocal w=s.waves[s.current]\nif not w or w.count~=4 or w.alerted then return false end\nlocal targeted=w.targets[p.id]==true\nif targeted~=true then return false end\nw.alerted=true\nreturn true",
							name = "Personal wave once",
							uuid = "7d49c4c8-1506-424f-b289-301234e8ced8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 754.4,
				name = "[LPDU] Tenstrike Earthshaker - Targeted Player Alert",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 147,
				timerEndOffset = 8,
				timerStartOffset = -8,
				uuid = "6ccbd5cf-bdb4-ae59-8705-6e6142de9bfb",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "No Earthshaker: wait at north marker 4",
							conditions = 
							{
								
								{
									"9e4bd0ec-da62-4d02-89be-cd6047ea330d",
									true,
								},
							},
							uuid = "2e1337e6-58de-776f-8ac1-9e3981768308",
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
							conditionLua = "local s=data.ucobTenShakerAlert\nlocal R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not s or Now()>=s.expires or not p or not R or not R.current() then return false end\nlocal w=s.waves[s.current]\nif not w or w.count~=4 or w.alerted then return false end\nlocal targeted=w.targets[p.id]==true\nif targeted~=false then return false end\nw.alerted=true\nreturn true",
							name = "Personal wave once",
							uuid = "9e4bd0ec-da62-4d02-89be-cd6047ea330d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 754.4,
				name = "[LPDU] Tenstrike Earthshaker - North Waiting Alert",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 147,
				timerEndOffset = 8,
				timerStartOffset = -8,
				uuid = "b04c30c7-52fe-08a5-82c8-15a850e5d8af",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "d5a688db-bdea-ccb7-9479-242d0454ebcb",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "2ca1030a-3edf-f496-689c-9b241dc966ba",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "a3ae8d7d-6d8c-4a09-f984-f1cf4c02546d",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "5603a9b2-2813-be13-9cc7-8e1944798f47",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobFlareBreath151\nif not s then s={nextSearch=0} data.ucobFlareBreath151=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==3210 then boss=e;s.boss=e.id;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,29.2,math.rad(92),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P3 Flare Breath - Actual Aggro Cone",
							uuid = "9715d4b2-622b-7cf8-b155-b53d161846c7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 781.4,
				name = "[LPDU] P3 Flare Breath - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 0.5,
				timerStartOffset = -1.8,
				uuid = "d6153977-021c-a800-b1ba-9a1d947eda59",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobFlareBreath151\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"fdfc768a-ecfb-e6fc-bcc2-42101b516b9a",
									true,
								},
							},
							name = "P3 Flare Breath - Hit Cleanup",
							uuid = "939017fe-52e8-74cf-a27f-c51a56a77773",
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
								9940,
							},
							uuid = "fdfc768a-ecfb-e6fc-bcc2-42101b516b9a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 781.4,
				name = "[LPDU] P3 Flare Breath - Hit Cleanup",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "9e7b4cde-dde5-44e3-b986-358354751ed2",
				version = 2,
			},
		},
	},
	[152] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "e1d990fc-676d-fd4d-82c3-50e3bbf3b624",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobOctetGuide={marked={},count=0,towers={},expires=Now()+45000}\nself.used=true",
							conditions = 
							{
								
								{
									"e4ceb9e5-8c28-914d-aaae-8b284005c4fd",
									true,
								},
							},
							name = "Grand Octet - Reset",
							uuid = "76402f54-5c7a-24e5-b24b-5f428566d78f",
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
								9959,
							},
							uuid = "e4ceb9e5-8c28-914d-aaae-8b284005c4fd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 789.4,
				name = "[LPDU] P3 Grand Octet - Reset",
				timeRange = true,
				timelineIndex = 152,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "19d4074c-62b9-7b47-b49c-da47fab44aac",
				version = 2,
			},
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "72f46523-5136-9fff-85c1-39d90d91bd93",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "8ece3b66-8415-ce3a-e65e-a9d8d8938d16",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "cce5c163-e4a8-4d08-8191-14884eb39058",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobOctetGuide\nif not s or Now()>=s.expires then self.used=true return end\nlocal id=eventArgs.markerID\nif not s.marked[eventArgs.entityID] then s.marked[eventArgs.entityID]=true;s.count=s.count+1 end\nif id==39 then\n s.nonTower=s.nonTower or {};s.nonTower[eventArgs.entityID]=true\n self.used=true return\nend\nif id==119 then\n s.naelMarkedAt=Now()\n local baha,nael=nil,nil\n for _,e in pairs(EntityList(\"\")) do\n  if e.pos.x*e.pos.x+e.pos.z*e.pos.z>400 then\n   if e.contentid==3210 then baha=e.pos elseif e.contentid==2612 then nael=e.pos elseif e.contentid==1482 then s.twin={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\n  end\n end\n if baha and nael then\n  local r=math.sqrt(baha.x^2+baha.z^2)\n  if r>20 then\n   local a=math.atan2(baha.x,-baha.z)\n   local oct=math.floor(a/(math.pi/4)+0.5)%8\n   s.cw=oct%2==1\n   local opposite=a+math.pi\n   local nr=math.sqrt(nael.x^2+nael.z^2)\n   if nr>20 and (-baha.x*nael.x-baha.z*nael.z)/(r*nr)>0.9 then opposite=opposite+(s.cw and 1 or -1)*math.pi/4 end\n   s.start={x=math.sin(opposite)*20,y=0,z=-math.cos(opposite)*20}\n  end\n end\nelseif id==41 then s.center=true\nelseif id==42 then s.baiter=eventArgs.entityID;s.twinLocked=true end\nif s.count==7 and not s.baiter then\n local R=AnyoneCore and AnyoneCore.Roster\n if R and R.current() and R.isReady() then\n  for _,slot in ipairs({\"T1\",\"T2\",\"H1\",\"H2\",\"M1\",\"M2\",\"R1\",\"R2\"}) do local e=R.entOf(slot);if e and not s.marked[e.id] then s.baiter=e.id end end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"45879947-7fa7-0b61-99ba-5c992a5f99b9",
									true,
								},
							},
							name = "Grand Octet - Dive Recipients and Directions",
							uuid = "391bb065-4423-4e43-838c-f667daca56b5",
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
							conditionLua = "local id=eventArgs.markerID\nreturn id==119 or id==20 or id==41 or id==42 or id==39",
							dequeueIfLuaFalse = true,
							name = "Relevant overhead",
							uuid = "45879947-7fa7-0b61-99ba-5c992a5f99b9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 797.4,
				name = "[LPDU] P3 Grand Octet - Dive Recipients and Directions",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 30,
				timerStartOffset = -3,
				uuid = "3be50c73-75d2-eaff-8d68-196f080fc657",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobOctetGuide\nif not s or Now()>=s.expires or s.finished then self.used=true return end\n-- Preview the next route point 0.4s before the recorded 4s Nael dive impact.\nif not s.running and s.naelMarkedAt and Now()-s.naelMarkedAt>=3600 then\n s.running=true;s.startReached=nil\n if s.start and s.cw~=nil then s.routeAngle=math.atan2(s.start.x,-s.start.z)+(s.cw and 1 or -1)*math.pi/12 end\nend\nlocal dest=nil\nif s.baiter==p.id and not s.twinLocked and s.twin then\n local t=s.twin;local r=math.sqrt(t.x^2+t.z^2)\n if r>20 then local a=math.atan2(t.x,-t.z)-math.pi/8;dest={x=math.sin(a)*20,y=0,z=-math.cos(a)*20} end\nelseif s.center and not s.towersSpawned then\n if p.pos.x*p.pos.x+p.pos.z*p.pos.z<=4 then self.used=true return end\n dest={x=0,y=0,z=0}\nelseif not s.running then\n if s.startReached then self.used=true return end\n dest=s.start\n if dest and (p.pos.x-dest.x)^2+(p.pos.z-dest.z)^2<=2.25 then\n  s.startReached=true;self.used=true return\n end\nelseif s.cw~=nil and not s.center and not s.towersSpawned then\n if not s.routeAngle then\n  if not s.start then self.used=true return end\n  s.routeAngle=math.atan2(s.start.x,-s.start.z)+(s.cw and 1 or -1)*math.pi/12\n end\n dest={x=math.sin(s.routeAngle)*20,y=0,z=-math.cos(s.routeAngle)*20}\n local direction=s.cw and 1 or -1\n local playerAngle=math.atan2(p.pos.x,-p.pos.z)\n -- Skip waypoints already passed, including a delayed first handoff.\n for step=1,24 do\n  local delta=(playerAngle-s.routeAngle)*direction\n  delta=(delta+math.pi)%(2*math.pi)-math.pi\n  local close=(p.pos.x-dest.x)^2+(p.pos.z-dest.z)^2<=4\n  if not close and delta<0 then break end\n  s.routeAngle=s.routeAngle+direction*math.pi/12\n  dest={x=math.sin(s.routeAngle)*20,y=0,z=-math.cos(s.routeAngle)*20}\n end\nend\nif not dest then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Grand Octet - Start Middle and Twin Bait Arrows",
							uuid = "2d4602dd-c0a0-5f89-8d75-2ac9b16a7a14",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 797.4,
				name = "[LPDU] P3 Grand Octet - Start Middle and Twin Bait Arrows",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 26,
				timerStartOffset = -3,
				uuid = "b6495281-1eb3-f602-9e1e-ec817d0aa919",
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
				name = "LPDU Personal Guidance",
				uuid = "89904067-56f6-937b-ba05-d08533f3bb5a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobOctetGuide\nif s then\n s.running=true\n s.startReached=nil\n if s.start and s.cw~=nil then\n  s.routeAngle=math.atan2(s.start.x,-s.start.z)+(s.cw and 1 or -1)*math.pi/12\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"85b69f0d-2364-1335-b113-28a5f12d5af6",
									true,
								},
							},
							name = "Grand Octet - Nael Dive Start Cleanup",
							uuid = "d0a8c971-c7cf-75c4-a44c-51b20467021b",
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
								9923,
							},
							uuid = "85b69f0d-2364-1335-b113-28a5f12d5af6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 801.4,
				name = "[LPDU] P3 Grand Octet - Nael Dive Start Cleanup",
				timeRange = true,
				timelineIndex = 155,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "ee54af67-94f5-38ee-bb27-0c8680626452",
				version = 2,
			},
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "8b0dbc85-ff6c-e0d1-c7cd-3d17e03dc935",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[165] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "9d8bd892-911f-d7e6-c0f5-aa503f9c82c2",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[166] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "2952cb21-03ba-eded-968c-162cee3f5fca",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobOctetGuide\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif s and e then s.towersSpawned=true;s.towers[eventArgs.entityID]={x=e.pos.x,y=e.pos.y,z=e.pos.z,expires=Now()+eventArgs.channelTimeMax*1000+400} end\nself.used=true",
							conditions = 
							{
								
								{
									"2b713ac2-2bbc-b6e6-8662-56c89d76d056",
									true,
								},
							},
							name = "Grand Octet - Available Tower Draws",
							uuid = "b9b96052-1f50-1231-bb10-48bd9166c540",
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
								9951,
							},
							uuid = "2b713ac2-2bbc-b6e6-8662-56c89d76d056",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 828.4,
				name = "[LPDU] P3 Grand Octet - Available Tower Draws",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "3a0d5f82-4f10-815a-9c88-ba67cfc8fc54",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobOctetGuide\nif not s or Now()>=s.expires or s.finished then self.used=true return end\nlocal p=TensorCore.mGetPlayer()\nif not p or (s.nonTower and s.nonTower[p.id]) then self.used=true return end\nlocal now=Now()\nif not s.occupants or now>=(s.nextOccupancyCheck or 0) then\n s.nextOccupancyCheck=now+150\n s.occupants={}\n local R=AnyoneCore and AnyoneCore.Roster\n local p=TensorCore.mGetPlayer()\n if R and R.current() and R.isReady() and p then\n  for _,slot in ipairs({\"T1\",\"T2\",\"H1\",\"H2\",\"M1\",\"M2\",\"R1\",\"R2\"}) do\n   local e=R.entOf(slot)\n   if e and e.id~=p.id then\n    s.occupants[#s.occupants+1]={x=e.pos.x,z=e.pos.z}\n   end\n  end\n end\nend\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nfor _,t in pairs(s.towers) do\n if now<t.expires then\n  local occupied=false\n  for _,p in ipairs(s.occupants) do\n   if (p.x-t.x)^2+(p.z-t.z)^2<=9 then occupied=true;break end\n  end\n  if not occupied then d:addCircle(t.x,t.y,t.z,3,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY) end\n end\nend\nself.used=true",
							name = "Grand Octet - Green Tower Circles",
							uuid = "0c64a571-81d9-1fa9-b970-3b134314688a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 828.4,
				name = "[LPDU] P3 Grand Octet - Green Tower Circles",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "23fd8675-1121-8761-bbc4-33395061eef3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobOctetGuide\nif s then s.towers[eventArgs.entityID]=nil;s.finished=true end\nself.used=true",
							conditions = 
							{
								
								{
									"73a092e2-1216-899e-8b29-658466ab5de9",
									true,
								},
							},
							name = "Grand Octet - Tower Hit Cleanup",
							uuid = "d7ba182b-30c2-a378-948d-5009ea0dc5e0",
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
								9951,
							},
							uuid = "73a092e2-1216-899e-8b29-658466ab5de9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 828.4,
				name = "[LPDU] P3 Grand Octet - Tower Hit Cleanup",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "512d1362-4275-fd36-8f9b-2e0069ed91bf",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Tank LB3 now; fill towers, then move for Twisters",
							conditions = 
							{
								
								{
									"26281ec4-9d8f-1456-b42b-67dc8847748e",
									true,
								},
								
								{
									"49c76196-7540-5352-99c6-f644c8ea08f5",
									true,
								},
							},
							uuid = "6d2a2474-f74c-8554-9366-b00225aa3582",
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
								9951,
							},
							uuid = "26281ec4-9d8f-1456-b42b-67dc8847748e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer();local s=data.ucobOctetGuide\nif not R or not R.current() or not p or not s or not s.baiter or s.lbAlert then return false end\nlocal slot=R.mySlot()\nif (slot==\"T1\" or slot==\"T2\") and p.id~=s.baiter then s.lbAlert=true;return true end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Nonbaiting tank once",
							uuid = "49c76196-7540-5352-99c6-f644c8ea08f5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 828.4,
				name = "[LPDU] P3 Grand Octet - Nonbaiting Tank LB",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "b2a5cc80-ffca-903f-9274-5dbcddaa716b",
				version = 2,
			},
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "ab5288b9-8d5f-5905-6b83-d31f494fb529",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "e1ee8a86-a908-4702-b470-d9c8ab36fbd8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobAddsPlummet170\nif not s then s={nextSearch=0};data.ucobAddsPlummet170=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==1482 then s.boss=e.id;boss=e;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,12,math.rad(120),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P4 Plummet - Actual Aggro Cone",
							uuid = "d37a7716-284a-cb40-bde6-d283736d760b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 852.9,
				name = "[LPDU] P4 Plummet - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "46b7bbc7-85cd-f021-b688-540829ededed",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobAddsPlummet170\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"5557724b-f0c8-019f-9c76-4164c6d80f63",
									true,
								},
							},
							name = "P4 Plummet - Hit Cleanup",
							uuid = "089b8ae4-d182-4590-9ce3-1605fa0e9c30",
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
								9896,
							},
							uuid = "5557724b-f0c8-019f-9c76-4164c6d80f63",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 852.9,
				name = "[LPDU] P4 Plummet - Hit Cleanup",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "ff21bc71-50d0-9835-9613-a8bb8a47e391",
				version = 2,
			},
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "0915319b-085f-1d77-6e1e-4fc10fa8158b",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "5e7c2ee9-09b7-7cc2-8d24-6683fe1d246a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nif slot~=\"R1\" then self.used=true return end\nlocal s=data.ucobAddsLiquidRoute171\nif not s or Now()>=s.expires then self.used=true return end\nlocal dest={x=math.sin(math.rad(165))*21,y=0,z=-math.cos(math.rad(165))*21}\nif s.hits>0 then\n -- Keep moving along the southern/back edge through each puddle.\n -- CW here is a profile route, corroborated by the logged south-to-west volleys.\n local a=math.atan2(p.pos.x,-p.pos.z)+math.rad(10)\n dest={x=math.sin(a)*21,y=p.pos.y,z=-math.cos(a)*21}\n if s.hits>=5 then\n  local q=s.last\n  if not q then self.used=true return end\n  if (p.pos.x-q.x)^2+(p.pos.z-q.z)^2>=49 then\n   data.ucobAddsLiquidRoute171=nil;self.used=true return\n  end\n end\nend\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "[LPDU] P4 Liquid Hell - L4 South Edge Volley Route",
							uuid = "e3ee299a-fa64-0789-a994-69e48e0e24ec",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 856,
				name = "[LPDU] P4 Liquid Hell - L4 South Edge Volley Route",
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = 9,
				timerStartOffset = -4,
				uuid = "053fb878-4016-35db-a16b-98a9c7b7e6c4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsLiquidRoute171={hits=0,expires=Now()+16000}\nself.used=true",
							name = "P4 Liquid Hell - South Route Reset",
							uuid = "40e717fc-8e57-336b-8f7e-aae8ed35a12f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				mechanicTime = 856,
				name = "[LPDU] P4 Liquid Hell - South Route Reset",
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "a19f471d-3291-1ab5-bd2f-b7ad586b03b5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobAddsLiquidRoute171\nif not s or Now()>=s.expires or s.hits>=5 then self.used=true return end\nif eventArgs.castPosX==nil or eventArgs.castPosZ==nil then self.used=true return end\ns.hits=s.hits+1\ns.last={x=eventArgs.castPosX,z=eventArgs.castPosZ}\nif s.hits==5 then s.expires=Now()+2500 end\nself.used=true",
							conditions = 
							{
								
								{
									"01cb024f-9e97-9a3e-a596-ec3c7206bfa1",
									true,
								},
							},
							name = "P4 Liquid Hell - Five Puddle Progress",
							uuid = "59c14010-d14f-892a-81ec-54aba5fb538f",
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
								9901,
							},
							uuid = "01cb024f-9e97-9a3e-a596-ec3c7206bfa1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 856,
				name = "[LPDU] P4 Liquid Hell - Five Puddle Progress",
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = 7,
				timerStartOffset = -1,
				uuid = "ed467cb9-aa8d-f8c8-9513-5c663120e875",
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
				name = "LPDU Personal Guidance",
				uuid = "22a3f01e-5957-9180-a273-564179338670",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal now=Now()\nlocal s=data.ucobMultiHatch172\nif not s or now-s.started>15000 then\n s={started=now,lastMarker=now,targets={},positions={},links={},hit={},ready=false}\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n for _,slot in ipairs(slots) do\n  local e=R.entOf(slot)\n  if e then s.positions[e.id]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\n end\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==2001151 then s.links[#s.links+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z,id=e.id} end\n end\n table.sort(s.links,function(a,b) if math.abs(a.z-b.z)>1 then return a.z<b.z end return a.x<b.x end)\n if #s.links>=2 and s.links[1].x>s.links[2].x then s.links[1],s.links[2]=s.links[2],s.links[1] end\n data.ucobMultiHatch172=s\nend\nif not s.assignments then s.targets[eventArgs.entityID]=true s.lastMarker=now end\nself.used=true",
							conditions = 
							{
								
								{
									"e83147bc-1977-34fb-a59b-a3c5bfb9085a",
									true,
								},
							},
							name = "Adds triple Hatch target and link capture",
							uuid = "47419652-fba3-1172-b436-92425b1be9c7",
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
							eventMarkerID = 118,
							uuid = "e83147bc-1977-34fb-a59b-a3c5bfb9085a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 864.5,
				name = "Adds triple Hatch target and link capture",
				timeRange = true,
				timelineIndex = 172,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "e26bf3ea-9783-2e2a-af16-a09e38158a54",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobMultiHatch172\nif not R or not R.current() or not R.isReady() or not s or Now()-s.started>25000 then self.used=true return end\nif not s.assignments then\n if Now()-s.lastMarker<150 then self.used=true return end\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n local marked,unmarked={},{}\n for _,slot in ipairs(slots) do\n  local id=R.idOf(slot)\n  if id and s.positions[id] then\n   if s.targets[id] then marked[#marked+1]=id else unmarked[#unmarked+1]=id end\n  end\n end\n if #marked~=3 or #s.links<3 then self.used=true return end\n -- Fixed roster priority: L1,L2,L3,L4,right R1,right R2,right R3,right R4.\n -- Marked players and unmarked backups are each ranked independently.\n local function match(ids,links)\n  local result={}\n  for i=1,#links do result[i]=ids[i] end\n  return result\n end\n local links={}\n for i=1,3 do links[i]=s.links[i] end\n local assigned=match(marked,links)\n assigned={}\n local used={}\n local function take(slot,index)\n  local id=R.idOf(slot)\n  if s.targets[id] then assigned[index]=id used[id]=true end\n end\n take(\"M1\",1) take(\"M2\",2)\n for _,slot in ipairs({\"R1\",\"R2\",\"M1\",\"M2\"}) do\n  local id=R.idOf(slot)\n  if s.targets[id] and not used[id] then\n   local index=not assigned[3] and 3 or not assigned[1] and 1 or 2\n   assigned[index]=id used[id]=true\n  end\n end\n s.assignments={}\n local backups=false and match(unmarked,links) or nil\n for i,link in ipairs(links) do\n  local pair={target=assigned[i],link=link,linkIndex=i,phase=0}\n  if backups then pair.backup=backups[i] end\n  s.assignments[assigned[i]]=pair\n  if backups then s.assignments[backups[i]]=pair end\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal pair=s.assignments[p.id]\nif not pair or pair.phase>=1 then self.used=true return end\n-- North links soak first. South receives only its entry arrow after Twister.\nlocal link=pair.link\nlocal dest=link\nif pair.linkIndex==3 and not s.ready then self.used=true return end\nif false then\n local r=math.sqrt(link.x*link.x+link.z*link.z)\n if r<1 then self.used=true return end\n if p.id==pair.target then\n  if pair.phase==1 then dest={x=link.x/r*20.5,y=link.y,z=link.z/r*20.5} end\n elseif pair.phase==0 then\n  local distance=math.min(20.5,r+8.5)\n  dest={x=link.x/r*distance,y=link.y,z=link.z/r*distance}\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "[LPDU] P4 Hatch - Assigned Link and South Twister Staging",
							uuid = "e2e9802a-036d-a5fb-b4bd-0b2f6cf70e41",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 864.5,
				name = "[LPDU] P4 Hatch - Assigned Neurolink Entry",
				timeRange = true,
				timelineIndex = 172,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "643cd1aa-9169-680c-b41f-df5d9417f593",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch172\nif s and s.assignments then\n local pair=s.assignments[eventArgs.entityID]\n if pair then\n  if eventArgs.entityID==pair.target and pair.phase==0 then pair.phase=1\n  elseif eventArgs.entityID==pair.backup then pair.phase=2 end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"36fa756d-8798-f972-8be2-dbfa93054835",
									true,
								},
							},
							name = "Adds triple Hatch individual soak resolution",
							uuid = "974a0cde-1f94-dfa2-a264-5bc710665edb",
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
							eventBuffID = 1434,
							uuid = "36fa756d-8798-f972-8be2-dbfa93054835",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 8,
				loop = true,
				mechanicTime = 864.5,
				name = "Adds triple Hatch individual soak resolution",
				timeRange = true,
				timelineIndex = 172,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "297f018c-6b13-89c7-b831-5c764a356c6b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch172\nif s then s.ready=true end\nself.used=true",
							conditions = 
							{
								
								{
									"f8123a2d-2c9e-1b5f-935c-810b5738f487",
									true,
								},
							},
							name = "Adds triple Hatch wait for Twister",
							uuid = "c2d9d7b0-9e72-d09a-9a32-c3476685138d",
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
								9898,
							},
							uuid = "f8123a2d-2c9e-1b5f-935c-810b5738f487",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 864.5,
				name = "Adds triple Hatch wait for Twister",
				timeRange = true,
				timelineIndex = 172,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "99c3cf81-76d6-ced0-8970-abc01fae2994",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"ba9fe7ae-4fc6-1c0a-91e8-a0686b4bcaba",
									true,
								},
							},
							uuid = "3fc99449-1dad-de79-b36b-2b1c51002f70",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch172\nlocal p=TensorCore.mGetPlayer()\nif s and p then s.entryAlerts=s.entryAlerts or {};s.entryAlerts[p.id]=true end\nself.used=true",
							conditions = 
							{
								
								{
									"ba9fe7ae-4fc6-1c0a-91e8-a0686b4bcaba",
									true,
								},
							},
							name = "Personal alert used",
							uuid = "114b5e81-18cb-11e5-b192-4ae258342420",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobMultiHatch172\nif not s or s.entryAlerts and s.entryAlerts[p.id] then return false end\nif Now()-s.started>25000 then return false end\nlocal a=s.assignments and s.assignments[p.id]\nif not a then return false end\nreturn a.target==p.id and a.phase==0 and (a.linkIndex~=3 or s.ready)",
							dequeueIfLuaFalse = true,
							name = "Your soak ready",
							uuid = "ba9fe7ae-4fc6-1c0a-91e8-a0686b4bcaba",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 864.5,
				name = "[LPDU] P4 Hatch - Personal Neurolink Entry",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 172,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "65b0b83d-b353-f025-b296-88b603cb05bf",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "60b479f5-43a7-8141-32d5-ebf75832a7a5",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "fcaf4a57-e0d8-55ed-b590-4663ca96c886",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsTwister173={expires=Now()+eventArgs.channelTimeMax*1000+300}\nself.used=true",
							conditions = 
							{
								
								{
									"ca6012ed-27d5-17fb-8529-926e8898db75",
									true,
								},
							},
							name = "P4 Twister - Capture",
							uuid = "61cb6a15-b685-d362-acad-c362e63f8cb4",
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
								9898,
							},
							uuid = "ca6012ed-27d5-17fb-8529-926e8898db75",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 868.6,
				name = "[LPDU] P4 Twister - Capture",
				timeRange = true,
				timelineIndex = 173,
				timerStartOffset = -5,
				uuid = "e00406fd-4425-848a-8f12-bd930dd7a385",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAddsTwister173\nif not s or Now()>=s.expires then self.used=true return end\nlocal hatch=data.ucobMultiHatch172\nlocal pair=hatch and hatch.assignments and hatch.assignments[p.id]\n-- Active Hatch recipients retain their existing Neurolink guidance.\nif pair and pair.phase==0 then self.used=true return end\nlocal rank={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nif rank[slot]==nil then self.used=true return end\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal a=math.rad(22.5+rank[slot]*45)\nlocal dest={x=(left and -1 or 1)*math.sin(a)*9,y=0,z=-math.cos(a)*9}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P4 Twister - Quickmarch Direction",
							uuid = "ae5335b8-70e1-51eb-b054-482a8ea5c970",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 868.6,
				name = "[LPDU] P4 Twister - Quickmarch Direction",
				timeRange = true,
				timelineIndex = 173,
				timerEndOffset = 0.5,
				timerStartOffset = -5,
				uuid = "28d87515-34f5-ceda-8f18-bf57d8aa1f0a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsTwister173=nil\nself.used=true",
							conditions = 
							{
								
								{
									"7ed35663-2a01-1e45-aa94-ab5c74d02ceb",
									true,
								},
							},
							name = "P4 Twister - Hit Cleanup",
							uuid = "dbcfb6df-cd8f-2530-ad7d-984e8ad0d8f0",
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
								9898,
							},
							uuid = "7ed35663-2a01-1e45-aa94-ab5c74d02ceb",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 868.6,
				name = "[LPDU] P4 Twister - Hit Cleanup",
				timeRange = true,
				timelineIndex = 173,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "6977a1fa-2ccb-19b2-b0c0-76c9ad5eb990",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "3eab76dc-059c-95e0-ca54-4392d8944a0c",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "2319802b-6f2b-e1cb-83dc-9792010493d0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local t=eventArgs.line.line\nlocal seq=nil\nlocal north=false\nif t:find(\"From hallowed moon I descend, upon burning earth to tread\",1,true) then seq={9916,9918,9917};north=true\nelseif t:find(\"Unbending iron, take fire and descend\",1,true) then seq={9915,9917,9918}\nelseif t:find(\"Unbending iron, descend with fiery edge\",1,true) then seq={9915,9918,9917}\nelseif t:find(\"From hallowed moon I bare iron, in my descent to wield\",1,true) then seq={9916,9915,9918};north=true end\nif seq then data.ucobAddsQuote174={seq=seq,step=1,north=north,expires=Now()+16000} end\nself.used=true",
							name = "Adds Nael Quote - Sequence capture",
							uuid = "bec45670-6447-b349-b311-c6cb84ee6f82",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 871.6,
				name = "[LPDU] Adds Nael Quote - Sequence capture",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 14,
				timerStartOffset = -3,
				uuid = "08fff582-8a86-1317-812d-78e6dfa26506",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobAddsQuote174\nif s and s.seq[s.step]==eventArgs.spellID then\n s.step=s.step+1\n if s.step>#s.seq then data.ucobAddsQuote174=nil end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"7b85870a-5fe7-ff71-9cdf-b1d06f8d3b65",
									true,
								},
							},
							name = "Adds Nael Quote - Advance on hit",
							uuid = "0b4f3371-94ec-44bf-ad6e-901b4f193fab",
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
								9915,
								9916,
								9917,
								9918,
							},
							uuid = "7b85870a-5fe7-ff71-9cdf-b1d06f8d3b65",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 871.6,
				name = "[LPDU] Adds Nael Quote - Advance on hit",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 16,
				timerStartOffset = -3,
				uuid = "23ed8c16-373d-045c-b83d-c680c8bd7164",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAddsQuote174\nif not s or Now()>=s.expires or s.seq[s.step]~=9917 then self.used=true return end\nlocal dest={x=0,y=0,z=s.north and -9 or 0}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Adds Thermionic Beam - Quote stack",
							uuid = "74855a5c-92a6-38b7-b306-10860659b1d7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 871.6,
				name = "[LPDU] Adds Thermionic Beam - Quote stack",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 16,
				timerStartOffset = -3,
				uuid = "d737fb21-2029-7a46-9c11-37ce0af6c875",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAddsQuote174\nif not s or Now()>=s.expires then self.used=true return end\nlocal next=s.seq[s.step]\nif next~=9918 and next~=9915 and next~=9916 then self.used=true return end\nlocal rank={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nif rank[slot]==nil then self.used=true return end\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal a=math.rad(22.5+rank[slot]*45)\nlocal dest={x=(left and -1 or 1)*math.sin(a)*9,y=0,z=-math.cos(a)*9}\nif next~=9918 then\n local n=nil\n for _,e in pairs(EntityList(\"\")) do if e.contentid==2612 then n=e.pos;break end end\n if not n then self.used=true return end\n local dx,dz=dest.x-n.x,dest.z-n.z;local length=math.sqrt(dx*dx+dz*dz)\n if next==9916 then\n  local r=math.sqrt(n.x*n.x+n.z*n.z)\n  if r<1 then self.used=true return end\n  dest={x=n.x-n.x/r*2,y=n.y,z=n.z-n.z/r*2}\n elseif length<10 then\n  if length<0.1 then self.used=true return end\n  dest={x=n.x+dx/length*10,y=n.y,z=n.z+dz/length*10}\n end\nend\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P4 Adds Quote - Quickmarch Spread and In/Out",
							uuid = "9aaff82c-0546-6c0f-8234-b5595284a248",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 871.6,
				name = "[LPDU] P4 Adds Quote - Quickmarch Spread and In/Out",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 16,
				timerStartOffset = -3,
				uuid = "a31234c6-8e98-7d34-97cb-a209b471e2f5",
				version = 2,
			},
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "9da34152-6618-09ce-b20b-37d3679f1914",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsTwister175={expires=Now()+eventArgs.channelTimeMax*1000+300}\nself.used=true",
							conditions = 
							{
								
								{
									"394f006c-5bfb-f092-a098-8fcb55cd5c81",
									true,
								},
							},
							name = "P4 Twister - Capture",
							uuid = "1b470504-5dcf-a2dc-b1e4-dcddc25b1ddf",
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
								9898,
							},
							uuid = "394f006c-5bfb-f092-a098-8fcb55cd5c81",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 885.5,
				name = "[LPDU] P4 Twister - Capture",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -5,
				uuid = "6b43010a-3bd3-3250-9756-3cdc4c27ea45",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAddsTwister175\nif not s or Now()>=s.expires then self.used=true return end\nlocal hatch=data.ucobMultiHatch172\nlocal pair=hatch and hatch.assignments and hatch.assignments[p.id]\n-- Active Hatch recipients retain their existing Neurolink guidance.\nif pair and pair.phase==0 then self.used=true return end\nlocal rank={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nif rank[slot]==nil then self.used=true return end\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal a=math.rad(22.5+rank[slot]*45)\nlocal dest={x=(left and -1 or 1)*math.sin(a)*9,y=0,z=-math.cos(a)*9}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P4 Twister - Quickmarch Direction",
							uuid = "db6ff1da-2ef0-c39b-943e-42d4f8bc500d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 885.5,
				name = "[LPDU] P4 Twister - Quickmarch Direction",
				timeRange = true,
				timelineIndex = 175,
				timerEndOffset = 0.5,
				timerStartOffset = -5,
				uuid = "dec89eb0-e714-1da1-9838-8c2657d8c6d7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsTwister175=nil\nself.used=true",
							conditions = 
							{
								
								{
									"b7949879-9cf0-32d5-8a17-7b9b298fa1e4",
									true,
								},
							},
							name = "P4 Twister - Hit Cleanup",
							uuid = "e21ee859-5d3c-f8a8-b669-edbc854c1a1b",
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
								9898,
							},
							uuid = "b7949879-9cf0-32d5-8a17-7b9b298fa1e4",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 885.5,
				name = "[LPDU] P4 Twister - Hit Cleanup",
				timeRange = true,
				timelineIndex = 175,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "31bc2674-4fa9-fe99-a29e-ed236ddffb93",
				version = 2,
			},
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "ae32c5a4-440b-da0a-9fff-62fe0565f88b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal s=data.ucobAddsPlummet179\nif not s then s={nextSearch=0};data.ucobAddsPlummet179=s end\nif s.hit then self.used=true return end\nlocal boss=s.boss and TensorCore.mGetEntity(s.boss)\nif not boss and now>=s.nextSearch then\n s.nextSearch=now+1000\n for _,e in pairs(EntityList(\"\")) do if e.contentid==1482 then s.boss=e.id;boss=e;break end end\nend\nif not boss or not boss.targetid or boss.targetid==0 or boss.targetid==boss.id then self.used=true return end\nlocal target=TensorCore.mGetEntity(boss.targetid)\nif not target then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.1,0.1,0.35),2)\nd:addCone(boss.pos.x,boss.pos.y,boss.pos.z,12,math.rad(120),TensorCore.getHeadingToTarget(boss.pos,target.pos),false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P4 Plummet - Actual Aggro Cone",
							uuid = "72e95be6-b7e9-799c-8527-dce2d53e4c0a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 908.6,
				name = "[LPDU] P4 Plummet - Actual Aggro Cone",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "958461ff-58e9-7d4e-b675-9de51d5e6d8f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobAddsPlummet179\nif s then s.hit=true end\nself.used=true",
							conditions = 
							{
								
								{
									"bde67b42-386c-8df2-b0ca-d8318d4e98a8",
									true,
								},
							},
							name = "P4 Plummet - Hit Cleanup",
							uuid = "5688ebec-bca7-d1ba-9620-f0585f99a621",
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
								9896,
							},
							uuid = "bde67b42-386c-8df2-b0ca-d8318d4e98a8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 908.6,
				name = "[LPDU] P4 Plummet - Hit Cleanup",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "d8959d31-ad47-930d-8cde-30ff512dc0cb",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "3bd43024-2089-fe68-7e4d-e2b6598a6614",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "dbd61267-9de7-5078-896c-f44c0a74dd42",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nif slot~=\"R1\" then self.used=true return end\nlocal s=data.ucobAddsLiquidRoute181\nif not s or Now()>=s.expires then self.used=true return end\nlocal dest={x=math.sin(math.rad(165))*21,y=0,z=-math.cos(math.rad(165))*21}\nif s.hits>0 then\n -- Keep moving along the southern/back edge through each puddle.\n -- CW here is a profile route, corroborated by the logged south-to-west volleys.\n local a=math.atan2(p.pos.x,-p.pos.z)+math.rad(10)\n dest={x=math.sin(a)*21,y=p.pos.y,z=-math.cos(a)*21}\n if s.hits>=5 then\n  local q=s.last\n  if not q then self.used=true return end\n  if (p.pos.x-q.x)^2+(p.pos.z-q.z)^2>=49 then\n   data.ucobAddsLiquidRoute181=nil;self.used=true return\n  end\n end\nend\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "[LPDU] P4 Liquid Hell - L4 South Edge Volley Route",
							uuid = "65c098df-00e3-7835-a881-25f1545ea11e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 917.7,
				name = "[LPDU] P4 Liquid Hell - L4 South Edge Volley Route",
				timeRange = true,
				timelineIndex = 181,
				timerEndOffset = 9,
				timerStartOffset = -4,
				uuid = "6c63934c-b5ca-0703-a80b-33e42c46697e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsLiquidRoute181={hits=0,expires=Now()+16000}\nself.used=true",
							name = "P4 Liquid Hell - South Route Reset",
							uuid = "39c9ca27-fe09-4726-883a-a943dbb4769e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				mechanicTime = 917.7,
				name = "[LPDU] P4 Liquid Hell - South Route Reset",
				timeRange = true,
				timelineIndex = 181,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "b14268fe-c0bb-bbe6-a340-dface80cfe1b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobAddsLiquidRoute181\nif not s or Now()>=s.expires or s.hits>=5 then self.used=true return end\nif eventArgs.castPosX==nil or eventArgs.castPosZ==nil then self.used=true return end\ns.hits=s.hits+1\ns.last={x=eventArgs.castPosX,z=eventArgs.castPosZ}\nif s.hits==5 then s.expires=Now()+2500 end\nself.used=true",
							conditions = 
							{
								
								{
									"af98829b-ae81-5a1d-b1b2-c63f3f3cb594",
									true,
								},
							},
							name = "P4 Liquid Hell - Five Puddle Progress",
							uuid = "f275129c-0186-ac0b-af88-07659d9e3cf2",
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
								9901,
							},
							uuid = "af98829b-ae81-5a1d-b1b2-c63f3f3cb594",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 917.7,
				name = "[LPDU] P4 Liquid Hell - Five Puddle Progress",
				timeRange = true,
				timelineIndex = 181,
				timerEndOffset = 7,
				timerStartOffset = -1,
				uuid = "976a2b32-7cee-13bd-8002-7211014a7c2e",
				version = 2,
			},
		},
	},
	[182] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "7bb30f53-3286-e2ac-83f6-1b760ef87d8b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal now=Now()\nlocal s=data.ucobMultiHatch182\nif not s or now-s.started>15000 then\n s={started=now,lastMarker=now,targets={},positions={},links={},hit={},ready=false}\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n for _,slot in ipairs(slots) do\n  local e=R.entOf(slot)\n  if e then s.positions[e.id]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\n end\n for _,e in pairs(EntityList(\"\")) do\n  if e.contentid==2001151 then s.links[#s.links+1]={x=e.pos.x,y=e.pos.y,z=e.pos.z,id=e.id} end\n end\n table.sort(s.links,function(a,b) if math.abs(a.z-b.z)>1 then return a.z<b.z end return a.x<b.x end)\n if #s.links>=2 and s.links[1].x>s.links[2].x then s.links[1],s.links[2]=s.links[2],s.links[1] end\n data.ucobMultiHatch182=s\nend\nif not s.assignments then s.targets[eventArgs.entityID]=true s.lastMarker=now end\nself.used=true",
							conditions = 
							{
								
								{
									"e025b971-9f7a-e069-887a-e673130ba926",
									true,
								},
							},
							name = "Adds triple Hatch target and link capture",
							uuid = "0ea5148f-ae28-d7e4-9e22-a76d50375f93",
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
							eventMarkerID = 118,
							uuid = "e025b971-9f7a-e069-887a-e673130ba926",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 4,
				loop = true,
				mechanicTime = 926.5,
				name = "Adds triple Hatch target and link capture",
				timeRange = true,
				timelineIndex = 182,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "379f7954-6a97-6a06-b7fc-2df057776cf7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal s=data.ucobMultiHatch182\nif not R or not R.current() or not R.isReady() or not s or Now()-s.started>25000 then self.used=true return end\nif not s.assignments then\n if Now()-s.lastMarker<150 then self.used=true return end\n local slots={\"T1\",\"H1\",\"M1\",\"R1\",\"T2\",\"H2\",\"M2\",\"R2\"}\n local marked,unmarked={},{}\n for _,slot in ipairs(slots) do\n  local id=R.idOf(slot)\n  if id and s.positions[id] then\n   if s.targets[id] then marked[#marked+1]=id else unmarked[#unmarked+1]=id end\n  end\n end\n if #marked~=3 or #s.links<3 then self.used=true return end\n -- Fixed roster priority: L1,L2,L3,L4,right R1,right R2,right R3,right R4.\n -- Marked players and unmarked backups are each ranked independently.\n local function match(ids,links)\n  local result={}\n  for i=1,#links do result[i]=ids[i] end\n  return result\n end\n local links={}\n for i=1,3 do links[i]=s.links[i] end\n local assigned=match(marked,links)\n assigned={}\n local used={}\n local function take(slot,index)\n  local id=R.idOf(slot)\n  if s.targets[id] then assigned[index]=id used[id]=true end\n end\n take(\"M1\",1) take(\"M2\",2)\n for _,slot in ipairs({\"R1\",\"R2\",\"M1\",\"M2\"}) do\n  local id=R.idOf(slot)\n  if s.targets[id] and not used[id] then\n   local index=not assigned[3] and 3 or not assigned[1] and 1 or 2\n   assigned[index]=id used[id]=true\n  end\n end\n s.assignments={}\n local backups=false and match(unmarked,links) or nil\n for i,link in ipairs(links) do\n  local pair={target=assigned[i],link=link,linkIndex=i,phase=0}\n  if backups then pair.backup=backups[i] end\n  s.assignments[assigned[i]]=pair\n  if backups then s.assignments[backups[i]]=pair end\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal pair=s.assignments[p.id]\nif not pair or pair.phase>=1 then self.used=true return end\n-- North links soak first. South receives only its entry arrow after Twister.\nlocal link=pair.link\nlocal dest=link\nif pair.linkIndex==3 and not s.ready then self.used=true return end\nif false then\n local r=math.sqrt(link.x*link.x+link.z*link.z)\n if r<1 then self.used=true return end\n if p.id==pair.target then\n  if pair.phase==1 then dest={x=link.x/r*20.5,y=link.y,z=link.z/r*20.5} end\n elseif pair.phase==0 then\n  local distance=math.min(20.5,r+8.5)\n  dest={x=link.x/r*distance,y=link.y,z=link.z/r*distance}\n end\nend\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "[LPDU] P4 Hatch - Assigned Link and South Twister Staging",
							uuid = "0d5f2986-227a-04dd-b403-c5f24610270a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 926.5,
				name = "[LPDU] P4 Hatch - Assigned Neurolink Entry",
				timeRange = true,
				timelineIndex = 182,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "ffd1fc69-f96c-8884-943b-93b5b1438a65",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch182\nif s and s.assignments then\n local pair=s.assignments[eventArgs.entityID]\n if pair then\n  if eventArgs.entityID==pair.target and pair.phase==0 then pair.phase=1\n  elseif eventArgs.entityID==pair.backup then pair.phase=2 end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"1ece7599-9b7b-6512-a500-7e5d6a896a09",
									true,
								},
							},
							name = "Adds triple Hatch individual soak resolution",
							uuid = "af95f55c-fed0-cb31-9138-5245dc89bdab",
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
							eventBuffID = 1434,
							uuid = "1ece7599-9b7b-6512-a500-7e5d6a896a09",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 8,
				loop = true,
				mechanicTime = 926.5,
				name = "Adds triple Hatch individual soak resolution",
				timeRange = true,
				timelineIndex = 182,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "6962ff5e-5ff0-864e-aed3-43ab0972347a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch182\nif s then s.ready=true end\nself.used=true",
							conditions = 
							{
								
								{
									"914f91a5-09e6-d1f8-a1e9-38c741d0cc01",
									true,
								},
							},
							name = "Adds triple Hatch wait for Twister",
							uuid = "89893ce1-f53e-3c07-827e-5b48f147a099",
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
								9898,
							},
							uuid = "914f91a5-09e6-d1f8-a1e9-38c741d0cc01",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 926.5,
				name = "Adds triple Hatch wait for Twister",
				timeRange = true,
				timelineIndex = 182,
				timerEndOffset = 14,
				timerStartOffset = -8,
				uuid = "35b899ef-c4a1-53af-bbed-2a525ac8c683",
				version = 2,
			},
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
							alertDuration = 4500,
							alertPriority = 2,
							alertText = "Step into Neurolink",
							conditions = 
							{
								
								{
									"626006ba-1748-f199-8dc4-2e15642573cb",
									true,
								},
							},
							uuid = "72a9f84b-dc24-8ae5-b729-4fd9e94674ee",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMultiHatch182\nlocal p=TensorCore.mGetPlayer()\nif s and p then s.entryAlerts=s.entryAlerts or {};s.entryAlerts[p.id]=true end\nself.used=true",
							conditions = 
							{
								
								{
									"626006ba-1748-f199-8dc4-2e15642573cb",
									true,
								},
							},
							name = "Personal alert used",
							uuid = "aa08bdf2-e229-50b4-bf55-3368944412fd",
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
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then return false end\nlocal s=data.ucobMultiHatch182\nif not s or s.entryAlerts and s.entryAlerts[p.id] then return false end\nif Now()-s.started>25000 then return false end\nlocal a=s.assignments and s.assignments[p.id]\nif not a then return false end\nreturn a.target==p.id and a.phase==0 and (a.linkIndex~=3 or s.ready)",
							dequeueIfLuaFalse = true,
							name = "Your soak ready",
							uuid = "626006ba-1748-f199-8dc4-2e15642573cb",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				loop = true,
				mechanicTime = 926.5,
				name = "[LPDU] P4 Hatch - Personal Neurolink Entry",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 182,
				timerEndOffset = 14,
				timerStartOffset = -20,
				uuid = "d389699a-19bc-c665-9594-faf8f9ed81a2",
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
				name = "LPDU Personal Guidance",
				uuid = "ba50188a-9f7d-38e6-9659-757e2c6c8330",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsTwister183={expires=Now()+eventArgs.channelTimeMax*1000+300}\nself.used=true",
							conditions = 
							{
								
								{
									"3ea09589-3796-be8e-a429-14ac328bd9da",
									true,
								},
							},
							name = "P4 Twister - Capture",
							uuid = "4ddc968d-af0c-66c3-b8c0-8461d3ae4623",
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
								9898,
							},
							uuid = "3ea09589-3796-be8e-a429-14ac328bd9da",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 930.7,
				name = "[LPDU] P4 Twister - Capture",
				timeRange = true,
				timelineIndex = 183,
				timerStartOffset = -5,
				uuid = "f96fba9d-0041-bfc5-8624-68336fc9c96d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAddsTwister183\nif not s or Now()>=s.expires then self.used=true return end\nlocal hatch=data.ucobMultiHatch182\nlocal pair=hatch and hatch.assignments and hatch.assignments[p.id]\n-- Active Hatch recipients retain their existing Neurolink guidance.\nif pair and pair.phase==0 then self.used=true return end\nlocal rank={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nif rank[slot]==nil then self.used=true return end\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal a=math.rad(22.5+rank[slot]*45)\nlocal dest={x=(left and -1 or 1)*math.sin(a)*9,y=0,z=-math.cos(a)*9}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P4 Twister - Quickmarch Direction",
							uuid = "6fa83164-5d21-9dde-8703-0ee627e28597",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 930.7,
				name = "[LPDU] P4 Twister - Quickmarch Direction",
				timeRange = true,
				timelineIndex = 183,
				timerEndOffset = 0.5,
				timerStartOffset = -5,
				uuid = "bb928723-b265-002a-ae98-ff3404dfcc8a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsTwister183=nil\nself.used=true",
							conditions = 
							{
								
								{
									"8d4eddd3-ad9b-9d2e-8b74-c4db101b8577",
									true,
								},
							},
							name = "P4 Twister - Hit Cleanup",
							uuid = "0b855606-bc0c-ac8a-818b-cee4c327cee3",
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
								9898,
							},
							uuid = "8d4eddd3-ad9b-9d2e-8b74-c4db101b8577",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 930.7,
				name = "[LPDU] P4 Twister - Hit Cleanup",
				timeRange = true,
				timelineIndex = 183,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "5eea61e9-23cc-faf9-b1dd-43bb01750733",
				version = 2,
			},
		},
	},
	[184] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "ad32b6e3-f4ac-181f-72a1-890deab7d553",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "9457149c-9567-4b7a-a93f-6a6a6a60fda6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local t=eventArgs.line.line\nlocal seq=nil\nlocal north=false\nif t:find(\"From hallowed moon I descend, upon burning earth to tread\",1,true) then seq={9916,9918,9917};north=true\nelseif t:find(\"Unbending iron, take fire and descend\",1,true) then seq={9915,9917,9918}\nelseif t:find(\"Unbending iron, descend with fiery edge\",1,true) then seq={9915,9918,9917}\nelseif t:find(\"From hallowed moon I bare iron, in my descent to wield\",1,true) then seq={9916,9915,9918};north=true end\nif seq then data.ucobAddsQuote184={seq=seq,step=1,north=north,expires=Now()+16000} end\nself.used=true",
							name = "Adds Nael Quote - Sequence capture",
							uuid = "889c64d4-ff2b-0761-b3e0-bf65570f503c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 7,
				loop = true,
				mechanicTime = 934.7,
				name = "[LPDU] Adds Nael Quote - Sequence capture",
				timeRange = true,
				timelineIndex = 184,
				timerEndOffset = 14,
				timerStartOffset = -3,
				uuid = "0d716a8e-2680-ceaa-aadc-f3fc8851283f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobAddsQuote184\nif s and s.seq[s.step]==eventArgs.spellID then\n s.step=s.step+1\n if s.step>#s.seq then data.ucobAddsQuote184=nil end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"63968660-c2dd-935a-8f12-ed1383ea519a",
									true,
								},
							},
							name = "Adds Nael Quote - Advance on hit",
							uuid = "17a56d71-8f09-3e6b-8412-5adbf4750969",
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
								9915,
								9916,
								9917,
								9918,
							},
							uuid = "63968660-c2dd-935a-8f12-ed1383ea519a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 934.7,
				name = "[LPDU] Adds Nael Quote - Advance on hit",
				timeRange = true,
				timelineIndex = 184,
				timerEndOffset = 16,
				timerStartOffset = -3,
				uuid = "c02555ea-6385-0311-88ec-4733aa24b4ca",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAddsQuote184\nif not s or Now()>=s.expires or s.seq[s.step]~=9917 then self.used=true return end\nlocal dest={x=0,y=0,z=s.north and -9 or 0}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Adds Thermionic Beam - Quote stack",
							uuid = "f975fe42-5ae8-206c-9b66-137e0ac119b0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 934.7,
				name = "[LPDU] Adds Thermionic Beam - Quote stack",
				timeRange = true,
				timelineIndex = 184,
				timerEndOffset = 16,
				timerStartOffset = -3,
				uuid = "831a13de-04cf-fa9f-93a8-a8a9d60b1fcc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAddsQuote184\nif not s or Now()>=s.expires then self.used=true return end\nlocal next=s.seq[s.step]\nif next~=9918 and next~=9915 and next~=9916 then self.used=true return end\nlocal rank={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nif rank[slot]==nil then self.used=true return end\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal a=math.rad(22.5+rank[slot]*45)\nlocal dest={x=(left and -1 or 1)*math.sin(a)*9,y=0,z=-math.cos(a)*9}\nif next~=9918 then\n local n=nil\n for _,e in pairs(EntityList(\"\")) do if e.contentid==2612 then n=e.pos;break end end\n if not n then self.used=true return end\n local dx,dz=dest.x-n.x,dest.z-n.z;local length=math.sqrt(dx*dx+dz*dz)\n if next==9916 then\n  local r=math.sqrt(n.x*n.x+n.z*n.z)\n  if r<1 then self.used=true return end\n  dest={x=n.x-n.x/r*2,y=n.y,z=n.z-n.z/r*2}\n elseif length<10 then\n  if length<0.1 then self.used=true return end\n  dest={x=n.x+dx/length*10,y=n.y,z=n.z+dz/length*10}\n end\nend\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P4 Adds Quote - Quickmarch Spread and In/Out",
							uuid = "32054e3f-e379-a0d1-b97d-05f92d0420f7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 934.7,
				name = "[LPDU] P4 Adds Quote - Quickmarch Spread and In/Out",
				timeRange = true,
				timelineIndex = 184,
				timerEndOffset = 16,
				timerStartOffset = -3,
				uuid = "c7c9d6a8-a68b-b5aa-adcf-137b638a2247",
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
				name = "LPDU Personal Guidance",
				uuid = "9fe18642-d200-f630-a29a-eb5d52a55782",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsTwister185={expires=Now()+eventArgs.channelTimeMax*1000+300}\nself.used=true",
							conditions = 
							{
								
								{
									"bb2369f4-1dc2-3a9f-9a13-deefe50768ab",
									true,
								},
							},
							name = "P4 Twister - Capture",
							uuid = "d6b8f79d-6a02-ff82-8781-6c09a930b6fa",
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
								9898,
							},
							uuid = "bb2369f4-1dc2-3a9f-9a13-deefe50768ab",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 947.9,
				name = "[LPDU] P4 Twister - Capture",
				timeRange = true,
				timelineIndex = 185,
				timerStartOffset = -5,
				uuid = "6a7cffff-f64c-f4fe-815b-aa6f46311f18",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif not R or not R.current() or not R.isReady() or not p then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAddsTwister185\nif not s or Now()>=s.expires then self.used=true return end\nlocal hatch=data.ucobMultiHatch182\nlocal pair=hatch and hatch.assignments and hatch.assignments[p.id]\n-- Active Hatch recipients retain their existing Neurolink guidance.\nif pair and pair.phase==0 then self.used=true return end\nlocal rank={T1=0,H1=1,M1=2,R1=3,T2=0,H2=1,M2=2,R2=3}\nif rank[slot]==nil then self.used=true return end\nlocal left=slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\"\nlocal a=math.rad(22.5+rank[slot]*45)\nlocal dest={x=(left and -1 or 1)*math.sin(a)*9,y=0,z=-math.cos(a)*9}\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "P4 Twister - Quickmarch Direction",
							uuid = "610602c8-e40c-7ef5-96fe-54575218f064",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 947.9,
				name = "[LPDU] P4 Twister - Quickmarch Direction",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = 0.5,
				timerStartOffset = -5,
				uuid = "35b89789-d33a-d277-b64a-c32039f52f2f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAddsTwister185=nil\nself.used=true",
							conditions = 
							{
								
								{
									"e58aecab-98d0-83ea-a459-c6a1cae65252",
									true,
								},
							},
							name = "P4 Twister - Hit Cleanup",
							uuid = "f1657030-55cb-85f8-993e-0f64603aec15",
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
								9898,
							},
							uuid = "e58aecab-98d0-83ea-a459-c6a1cae65252",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 947.9,
				name = "[LPDU] P4 Twister - Hit Cleanup",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "19746a2d-d07a-47ee-ac21-674c69e8db2e",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "9d11622c-4a1d-ef50-b390-e25edab0abdc",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[193] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "1cede35f-59fe-6f43-a7db-df9d68c1bbcf",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Draw Exaflares",
				uuid = "b157ced2-ce8f-cfba-958b-da31f3aafa52",
				version = 2,
			},
			inheritedObjectUUID = "3301ef44-bece-80b8-862f-e2c351c2f32a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "20077f9a-8ce5-8b86-be7f-71045334d2ca",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "b2dc58e0-3592-4471-9883-a39e33cfc831",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah194={target=eventArgs.targetID,boss=eventArgs.entityID,expires=Now()+eventArgs.channelTimeMax*1000+500}\nself.used=true",
							conditions = 
							{
								
								{
									"c3f6acbd-1820-ad4e-bfc6-dce5736c8ff0",
									true,
								},
							},
							name = "Golden Morn Afah target capture",
							uuid = "0a79dbdb-2fdc-c8a0-a019-a92b331f675f",
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
								9964,
							},
							uuid = "c3f6acbd-1820-ad4e-bfc6-dce5736c8ff0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1251.1,
				name = "Golden Morn Afah target capture",
				timeRange = true,
				timelineIndex = 194,
				timerStartOffset = -8,
				uuid = "303fa719-e1df-520e-a07d-0cf559379292",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAfah194\nif not s or Now()>s.expires then self.used=true return end\nlocal target=TensorCore.mGetEntity(s.boss)\nif not target then self.used=true return end\nlocal dest={x=target.pos.x,y=target.pos.y,z=target.pos.z}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Golden dps Morn Afah personal stack arrow",
							uuid = "11d9c061-6107-5869-a1a0-b3628b506a75",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1251.1,
				name = "[LPDU] P5 Morn Afah - Party Stack",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 0.2,
				timerStartOffset = -6,
				uuid = "e1b2d8cd-b685-35a6-9e74-aac71a0e1a3f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah194=nil\nself.used=true",
							conditions = 
							{
								
								{
									"ebbbfa0f-260d-bd2b-ba7b-a145b1a80343",
									true,
								},
							},
							name = "Golden Morn Afah arrow hit cleanup",
							uuid = "b68242a8-6af6-93db-9345-f96196b9bb26",
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
								9964,
							},
							uuid = "ebbbfa0f-260d-bd2b-ba7b-a145b1a80343",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1251.1,
				name = "Golden Morn Afah arrow hit cleanup",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "8ba84e48-e8ba-44dc-8477-37d8208043f7",
				version = 2,
			},
		},
	},
	[195] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "777abdc7-f54a-84c3-9206-3038b1dd0a0c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobMorn195={target=eventArgs.targetID,started=Now(),hits=0}\nself.used=true",
							conditions = 
							{
								
								{
									"23c21a82-2006-50dc-aaca-5001fa89a89f",
									true,
								},
							},
							name = "Golden shared Akh Morn capture",
							uuid = "3cf77f06-ad8e-e482-81ea-da44ad20f4b1",
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
								9962,
							},
							uuid = "23c21a82-2006-50dc-aaca-5001fa89a89f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1257.5,
				name = "Golden shared Akh Morn capture",
				timeRange = true,
				timelineIndex = 195,
				timerStartOffset = -5,
				uuid = "586386c9-de9b-c1fc-ad92-22c787061e7d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nif slot~=\"T1\" and slot~=\"T2\" then self.used=true return end\nlocal s=data.ucobMorn195\nif not s or Now()-s.started>14000 then self.used=true return end\nlocal dest={x=0,y=0,z=-9}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Golden shared Akh Morn tank arrow",
							uuid = "97872b1a-b966-3113-82d6-4a8aa2034ea3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1257.5,
				name = "[LPDU] P5 Shared Akh Morn - Tank Arrow",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 8,
				timerStartOffset = -3,
				uuid = "98e5ac9e-1c45-5453-9224-d5d17f0b4ff0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMorn195\nif s then s.hits=s.hits+1 if s.hits>=3 then data.ucobMorn195=nil end end\nself.used=true",
							conditions = 
							{
								
								{
									"611a3dd3-1b7b-d689-a440-dc7aa5511a51",
									true,
								},
							},
							name = "Golden shared Akh Morn final hit cleanup",
							uuid = "5a2cac0b-f0d8-ce6c-88e3-ee379ee38da1",
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
								9962,
								9963,
							},
							uuid = "611a3dd3-1b7b-d689-a440-dc7aa5511a51",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1257.5,
				name = "Golden shared Akh Morn final hit cleanup",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 9,
				timerStartOffset = -1,
				uuid = "b16425f6-c560-8fed-8fbe-aaa8b7088f1d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobGoldenAkhDanger195={target=eventArgs.targetID,hits=0,expires=Now()+14000}\nself.used=true",
							conditions = 
							{
								
								{
									"36e31511-4a5d-2f4f-94fe-41055cdd1056",
									true,
								},
							},
							name = "P5 Akh Morn - Actual Tank Target",
							uuid = "fbff14e8-7683-003f-9080-71308927f4b7",
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
								9962,
							},
							uuid = "36e31511-4a5d-2f4f-94fe-41055cdd1056",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1257.5,
				name = "[LPDU] P5 Akh Morn - Actual Tank Target",
				timeRange = true,
				timelineIndex = 195,
				timerStartOffset = -6,
				uuid = "04a2f2d0-b08a-295e-a803-3dee41acbe83",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobGoldenAkhDanger195\nif not s or Now()>=s.expires then self.used=true return end\nlocal t=TensorCore.mGetEntity(s.target)\nif not t then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.15,0.1,0.65),2)\nd:addCircle(t.pos.x,t.pos.y,t.pos.z,4,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P5 Akh Morn - Red Tank Circle",
							uuid = "164716b9-ca92-0143-8c1f-02583eee5032",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1257.5,
				name = "[LPDU] P5 Akh Morn - Red Tank Circle",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 10,
				timerStartOffset = -6,
				uuid = "a9ead667-c610-c40b-8c27-4422e9b18cb2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobGoldenAkhDanger195\nif s then s.hits=s.hits+1;if s.hits>=3 then data.ucobGoldenAkhDanger195=nil end end\nself.used=true",
							conditions = 
							{
								
								{
									"a6cd269f-0873-62f9-83e0-081e8f94f62c",
									true,
								},
							},
							name = "P5 Akh Morn - Final Hit Cleanup",
							uuid = "f5b6d32c-c5b6-f8bd-b73a-cb80afbc44a6",
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
								9962,
								9963,
							},
							uuid = "a6cd269f-0873-62f9-83e0-081e8f94f62c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1257.5,
				name = "[LPDU] P5 Akh Morn - Final Hit Cleanup",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 10,
				timerStartOffset = -1,
				uuid = "8977de63-72d9-07cb-b7f1-29dbe016097d",
				version = 2,
			},
		},
	},
	[196] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "8b7bcc2a-1d39-4698-902f-200251a2307b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobLPDUExaflares={lines={}}\nself.used=true",
							conditions = 
							{
								
								{
									"257d4417-ac9e-8a60-b1b3-2bc6089efbeb",
									true,
								},
							},
							name = "Native Wave Reset",
							uuid = "0884530c-aff8-0974-9afc-e55c5b7a84b4",
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
								9967,
							},
							uuid = "257d4417-ac9e-8a60-b1b3-2bc6089efbeb",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 1270,
				name = "[LPDU] P5 Exaflares - Native Wave Reset",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 175,
				timerStartOffset = -10,
				uuid = "7249c458-4685-39bd-b39d-874b32532a0f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local e=TensorCore.mGetEntity(eventArgs.entityID)\nif e then\n local s=data.ucobLPDUExaflares\n if not s then s={lines={}} data.ucobLPDUExaflares=s end\n if not s.clipChannel then s.clipChannel=Argus2.getNextUnusedChannel(true) end\n local now=Now()\n -- Recorded 3.7s channel plus approximately 0.3s effect delay.\n local lead=eventArgs.channelTimeMax*1000+300\n s.lines[e.id]={x=e.pos.x,y=e.pos.y,z=e.pos.z,dx=math.sin(e.pos.h)*8,dz=math.cos(e.pos.h)*8,nextAt=now+lead,expires=now+20000}\n local flags=Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n local drawer=TensorCore.getCachedDrawer(0xFF00FFFF,0xFF0088FF,0xFF0000FF,0xFFFFFFFF,2,s.clipChannel,flags)\n drawer.gradientDistance=1.5\n drawer.gradientIntensity=2\n drawer.gradientMinOpacity=0.15\n local dx,dz=math.sin(e.pos.h)*8,math.cos(e.pos.h)*8\n -- Match Lj's timed-circle appearance with UCOB's observed 8-yalm / 1.5s movement.\n for step=0,2 do\n  local x,z=e.pos.x+dx*step,e.pos.z+dz*step\n  if x*x+z*z<=27*27 then\n   local timeout=lead+1500*step\n   drawer:addTimedCircle3D(timeout,x,e.pos.y,z,6,0,0,0,false,false,flags)\n  end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"9802f05f-6b7a-5765-b880-36153eafb619",
									true,
								},
							},
							name = "Lj style rolling three circles",
							uuid = "7c7ef08f-6ae4-50e8-9a4c-e3a8ba506321",
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
								9968,
							},
							uuid = "9802f05f-6b7a-5765-b880-36153eafb619",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 1270,
				name = "[LPDU] P5 Exaflares - Lj Style Three Blast Preview",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 175,
				timerStartOffset = -10,
				uuid = "4fabd904-c2cd-f62c-b752-4b6ff98ea8f8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLPDUExaflares\nlocal q=s and s.lines[eventArgs.entityID]\nif q then\n q.x=q.x+q.dx q.z=q.z+q.dz\n q.nextAt=Now()+1500\n -- No more circles can touch the 21-yalm arena once this line exits.\n if q.x*q.x+q.z*q.z>27*27 then\n  s.lines[eventArgs.entityID]=nil\n else\n  -- Reveal only the new third blast after this line's leading blast resolves.\n  local x,z=q.x+q.dx*2,q.z+q.dz*2\n  if x*x+z*z<=27*27 then\n local flags=Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n local drawer=TensorCore.getCachedDrawer(0xFF00FFFF,0xFF0088FF,0xFF0000FF,0xFFFFFFFF,2,s.clipChannel,flags)\n drawer.gradientDistance=1.5\n drawer.gradientIntensity=2\n drawer.gradientMinOpacity=0.15\n\n   local timeout=4500\n   drawer:addTimedCircle3D(timeout,x,q.y,z,6,0,0,0,false,false,flags)\n  end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"d2beb6a6-dc7a-b6ac-abe9-21b2f8595c46",
									true,
								},
							},
							name = "Native Blast Advance and Cleanup",
							uuid = "005ea072-74e9-2032-9356-3b75e3512d55",
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
								9968,
								9969,
							},
							uuid = "d2beb6a6-dc7a-b6ac-abe9-21b2f8595c46",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 1270,
				name = "[LPDU] P5 Exaflares - Native Blast Advance and Cleanup",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 175,
				timerStartOffset = -10,
				uuid = "2ab0328e-0499-b626-9736-d1c4c13dda33",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLPDUExaflares\nif not s then self.used=true return end\nlocal now=Now()\nif not s.colors then\n s.colors={outline=GUI:ColorConvertFloat4ToU32(1,0.25,0.05,0.9),base=GUI:ColorConvertFloat4ToU32(1,0.25,0.05,0.07),fill=GUI:ColorConvertFloat4ToU32(1,0.25,0.05,0.4)}\nend\nlocal flags=Argus2.RenderFlags.FLAG_WARP_TERRAIN\nfor id,q in pairs(s.lines) do\n if now>=q.expires or now>q.nextAt+500 then\n  s.lines[id]=nil\n else\n  for j=0,2 do\n   local x,z=q.x+j*q.dx,q.z+j*q.dz\n   local due=q.nextAt+j*1500\n   local remaining=due-now\n   if remaining<=4000 and x*x+z*z<=27*27 then\n    Argus.addCircleFilled(x,q.y,z,6,50,s.colors.base,s.colors.outline,1.5,0,1,0,false,flags)\n    local progress=math.max(0,math.min(1,1-remaining/4000))\n    if progress>0 then\n     Argus.addCircleFilled(x,q.y,z,6*math.sqrt(progress),50,s.colors.fill,nil,0,0,1,0,false,flags)\n    end\n   end\n  end\n end\nend\nself.used=true",
							name = "Early Circles with Progressive Fill",
							uuid = "81eda5e7-707e-559d-b871-02d8dd4d2d4c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 1270,
				name = "[LPDU] P5 Exaflares - Early Circles with Progressive Fill",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 175,
				timerStartOffset = -10,
				uuid = "8c5b6981-fee6-6003-9b5f-be36dcc9ce7b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "76710157-7d5b-ab6b-99fc-bf62427b6477",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobLPDUExaflares\nif s and s.clipChannel then\n local now=Now()\n local active=false\n for _,q in pairs(s.lines) do\n  if now<q.expires and now<q.nextAt+500 then active=true break end\n end\n if active then\n  -- UCOB's playable radius is 21y. Only the exterior is invisible-blocked.\n  local flags=Argus2.RenderFlags.FLAG_OCCLUDE\n  local mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,s.clipChannel,flags)\n  mask:addDonut(0,0,0,21,60,false,flags)\n end\nend\nself.used=true",
							name = "P5 Exaflares - Arena Edge Occluder",
							uuid = "7ffe25ae-547a-bdbd-a980-9958cfce1b58",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1270,
				name = "[LPDU] P5 Exaflares - Arena Edge Occluder",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 175,
				timerStartOffset = -10,
				uuid = "98466503-6775-1cf3-8eb5-1756bdd9b7a9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Testing",
				uuid = "3a84c2b7-8faf-7045-bbf8-451e321a4661",
			},
			objectType = "folder",
		},
	},
	[197] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "977de805-b0e5-70b4-9805-972c5372ac6b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobGoldenAkhDanger197={target=eventArgs.targetID,hits=0,expires=Now()+14000}\nself.used=true",
							conditions = 
							{
								
								{
									"252588e2-1ea4-f016-a101-eaaee1ecd653",
									true,
								},
							},
							name = "P5 Akh Morn - Actual Tank Target",
							uuid = "755a567e-f1cb-760a-845f-b7cb343a8b55",
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
								9962,
							},
							uuid = "252588e2-1ea4-f016-a101-eaaee1ecd653",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1289.3,
				name = "[LPDU] P5 Akh Morn - Actual Tank Target",
				timeRange = true,
				timelineIndex = 197,
				timerStartOffset = -6,
				uuid = "f67bb3c3-c842-952e-bcb8-4f3364540348",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobGoldenAkhDanger197\nif not s or Now()>=s.expires then self.used=true return end\nlocal t=TensorCore.mGetEntity(s.target)\nif not t then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.15,0.1,0.65),2)\nd:addCircle(t.pos.x,t.pos.y,t.pos.z,4,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P5 Akh Morn - Red Tank Circle",
							uuid = "2e8d4f85-7689-d79f-9d6b-48f17e560b21",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1289.3,
				name = "[LPDU] P5 Akh Morn - Red Tank Circle",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = 10,
				timerStartOffset = -6,
				uuid = "727f31da-b594-12b4-a9cf-61a3de28bda0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobGoldenAkhDanger197\nif s then s.hits=s.hits+1;if s.hits>=4 then data.ucobGoldenAkhDanger197=nil end end\nself.used=true",
							conditions = 
							{
								
								{
									"28ea2445-1dbf-5d8b-bc27-66f18f6aae4d",
									true,
								},
							},
							name = "P5 Akh Morn - Final Hit Cleanup",
							uuid = "3c804977-e4a5-5e3b-a14e-b8a1b8350258",
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
								9962,
								9963,
							},
							uuid = "28ea2445-1dbf-5d8b-bc27-66f18f6aae4d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1289.3,
				name = "[LPDU] P5 Akh Morn - Final Hit Cleanup",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = 10,
				timerStartOffset = -1,
				uuid = "8c230662-28e2-60ef-a00a-79e79b03b317",
				version = 2,
			},
		},
	},
	[198] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "9f76bd9e-537c-8892-f8d8-e660eb961c0e",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "8efcc061-900e-30e1-9f76-48a007dc6d53",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah198={target=eventArgs.targetID,boss=eventArgs.entityID,expires=Now()+eventArgs.channelTimeMax*1000+500}\nself.used=true",
							conditions = 
							{
								
								{
									"2b65931a-9c84-92d3-8f11-2bc4648c195d",
									true,
								},
							},
							name = "Golden Morn Afah target capture",
							uuid = "ce95297c-b719-86dd-9ffb-8353354a3c45",
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
								9964,
							},
							uuid = "2b65931a-9c84-92d3-8f11-2bc4648c195d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1306.9,
				name = "Golden Morn Afah target capture",
				timeRange = true,
				timelineIndex = 198,
				timerStartOffset = -8,
				uuid = "d64b4085-3c1e-1fd8-aaac-e927401690a4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAfah198\nif not s or Now()>s.expires then self.used=true return end\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then self.used=true return end\nlocal dest={x=target.pos.x,y=target.pos.y,z=target.pos.z}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Golden support Morn Afah personal stack arrow",
							uuid = "91069956-8542-79cd-a436-db16280bf5df",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1306.9,
				name = "[LPDU] P5 Morn Afah - Party Stack",
				timeRange = true,
				timelineIndex = 198,
				timerEndOffset = 0.2,
				timerStartOffset = -6,
				uuid = "9b5157f3-5e76-6e74-a567-7e29e35e8eaf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah198=nil\nself.used=true",
							conditions = 
							{
								
								{
									"d0499529-1679-ca3b-b94e-7810843550ab",
									true,
								},
							},
							name = "Golden Morn Afah arrow hit cleanup",
							uuid = "844412d2-62de-2a3b-925a-49c94e694a20",
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
								9964,
							},
							uuid = "d0499529-1679-ca3b-b94e-7810843550ab",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1306.9,
				name = "Golden Morn Afah arrow hit cleanup",
				timeRange = true,
				timelineIndex = 198,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "21d27e48-c8ad-55e4-bdd3-91ae9141ce64",
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
				name = "store\\anyone\\ucob\\universal",
				uuid = "a4ccfe31-721e-22a5-6930-cd8b73a748e1",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[200] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "6056a126-6395-806a-1dd4-fd541a604756",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "cdeea8f3-810b-b110-988f-c6da4234a115",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah200={target=eventArgs.targetID,boss=eventArgs.entityID,expires=Now()+eventArgs.channelTimeMax*1000+500}\nself.used=true",
							conditions = 
							{
								
								{
									"642bf278-889a-968d-a2d7-776596645f83",
									true,
								},
							},
							name = "Golden Morn Afah target capture",
							uuid = "06ea3df1-f734-9c91-a994-79b1e02ea012",
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
								9964,
							},
							uuid = "642bf278-889a-968d-a2d7-776596645f83",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1340.5,
				name = "Golden Morn Afah target capture",
				timeRange = true,
				timelineIndex = 200,
				timerStartOffset = -8,
				uuid = "93e449e8-b55a-a1c4-a322-e9abb5e2e2b9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAfah200\nif not s or Now()>s.expires then self.used=true return end\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then self.used=true return end\nlocal dest={x=target.pos.x,y=target.pos.y,z=target.pos.z}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Golden all Morn Afah personal stack arrow",
							uuid = "f2c11886-bbd6-add0-a314-acd99053ff95",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1340.5,
				name = "[LPDU] P5 Morn Afah - Party Stack",
				timeRange = true,
				timelineIndex = 200,
				timerEndOffset = 0.2,
				timerStartOffset = -6,
				uuid = "f1d41633-bad2-0f82-8088-68625afe836d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah200=nil\nself.used=true",
							conditions = 
							{
								
								{
									"72da2362-31e1-4f65-9888-bd586d857cfc",
									true,
								},
							},
							name = "Golden Morn Afah arrow hit cleanup",
							uuid = "794e9e77-0bad-9d02-bd91-b2106b88cd93",
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
								9964,
							},
							uuid = "72da2362-31e1-4f65-9888-bd586d857cfc",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1340.5,
				name = "Golden Morn Afah arrow hit cleanup",
				timeRange = true,
				timelineIndex = 200,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "93fea73d-8d2a-4013-906a-00214c611339",
				version = 2,
			},
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "06e9f13c-af55-5950-8a4f-18aa82454c8f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobGoldenAkhDanger201={target=eventArgs.targetID,hits=0,expires=Now()+14000}\nself.used=true",
							conditions = 
							{
								
								{
									"b6000bc6-6618-7cab-8d56-3b3b6cbc824f",
									true,
								},
							},
							name = "P5 Akh Morn - Actual Tank Target",
							uuid = "ead4cd59-3b51-e3d3-818f-1fd4f24cbe29",
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
								9962,
							},
							uuid = "b6000bc6-6618-7cab-8d56-3b3b6cbc824f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1352.7,
				name = "[LPDU] P5 Akh Morn - Actual Tank Target",
				timeRange = true,
				timelineIndex = 201,
				timerStartOffset = -6,
				uuid = "35fc1dad-24de-eebc-913a-ba857fb40d31",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobGoldenAkhDanger201\nif not s or Now()>=s.expires then self.used=true return end\nlocal t=TensorCore.mGetEntity(s.target)\nif not t then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.15,0.1,0.65),2)\nd:addCircle(t.pos.x,t.pos.y,t.pos.z,4,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P5 Akh Morn - Red Tank Circle",
							uuid = "b1cac681-f51d-bca3-a768-20d3aa84f33b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1352.7,
				name = "[LPDU] P5 Akh Morn - Red Tank Circle",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 10,
				timerStartOffset = -6,
				uuid = "90f15e16-f612-4b05-ab98-9ec5319ad4c8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobGoldenAkhDanger201\nif s then s.hits=s.hits+1;if s.hits>=5 then data.ucobGoldenAkhDanger201=nil end end\nself.used=true",
							conditions = 
							{
								
								{
									"5b2f90e0-448f-2fc3-8e4c-551bfb2a67f3",
									true,
								},
							},
							name = "P5 Akh Morn - Final Hit Cleanup",
							uuid = "b138143a-6bcd-d4f0-a408-2daada357704",
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
								9962,
								9963,
							},
							uuid = "5b2f90e0-448f-2fc3-8e4c-551bfb2a67f3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1352.7,
				name = "[LPDU] P5 Akh Morn - Final Hit Cleanup",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 10,
				timerStartOffset = -1,
				uuid = "8eca8271-c748-e3b0-99f5-6014581c9eb5",
				version = 2,
			},
		},
	},
	[202] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "89144f24-0f36-a778-339b-ac16ab7f5894",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[203] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "19fca5cf-dc1c-6483-6248-0189f31fcebf",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "5c3e459d-c049-2cb1-a770-8ae7ab0509c7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah203={target=eventArgs.targetID,boss=eventArgs.entityID,expires=Now()+eventArgs.channelTimeMax*1000+500}\nself.used=true",
							conditions = 
							{
								
								{
									"ee38028e-9870-93ba-8ed7-456f5960226c",
									true,
								},
							},
							name = "Golden Morn Afah target capture",
							uuid = "28d76725-400f-6770-a2ab-5441e01c13b9",
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
								9964,
							},
							uuid = "ee38028e-9870-93ba-8ed7-456f5960226c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1390.6,
				name = "Golden Morn Afah target capture",
				timeRange = true,
				timelineIndex = 203,
				timerStartOffset = -8,
				uuid = "5d92c3e2-b141-2388-a068-f3bf0cea449b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAfah203\nif not s or Now()>s.expires then self.used=true return end\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then self.used=true return end\nlocal dest={x=target.pos.x,y=target.pos.y,z=target.pos.z}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Golden dps Morn Afah personal stack arrow",
							uuid = "ef550c88-3a31-6642-8962-51acaccf6d25",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1390.6,
				name = "[LPDU] P5 Morn Afah - Party Stack",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = 0.2,
				timerStartOffset = -6,
				uuid = "8750562c-7dce-7a38-8b34-72df05ab529f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah203=nil\nself.used=true",
							conditions = 
							{
								
								{
									"911cddff-4a48-1432-b1d9-85f9b0da4b79",
									true,
								},
							},
							name = "Golden Morn Afah arrow hit cleanup",
							uuid = "2a68fafb-0546-1927-bff9-bea2a7c41ec0",
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
								9964,
							},
							uuid = "911cddff-4a48-1432-b1d9-85f9b0da4b79",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1390.6,
				name = "Golden Morn Afah arrow hit cleanup",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "5d0a5521-0870-19a5-a248-69ea1d2d3b2b",
				version = 2,
			},
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "c3a6c10d-de87-d939-8a0c-93a6604da50e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobMorn204={target=eventArgs.targetID,started=Now(),hits=0}\nself.used=true",
							conditions = 
							{
								
								{
									"25efa7de-5890-c9e8-8f13-f4f93a9c0025",
									true,
								},
							},
							name = "Golden shared Akh Morn capture",
							uuid = "58602ec1-5985-17a3-8551-fb1b2a49911a",
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
								9962,
							},
							uuid = "25efa7de-5890-c9e8-8f13-f4f93a9c0025",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1402.7,
				name = "Golden shared Akh Morn capture",
				timeRange = true,
				timelineIndex = 204,
				timerStartOffset = -5,
				uuid = "856fe1bd-59ef-9d53-9cef-2f95e1560c52",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nif slot~=\"T1\" and slot~=\"T2\" then self.used=true return end\nlocal s=data.ucobMorn204\nif not s or Now()-s.started>14000 then self.used=true return end\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then self.used=true return end\nlocal dest={x=target.pos.x,y=target.pos.y,z=target.pos.z}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Golden shared Akh Morn tank arrow",
							uuid = "99671d90-bdb3-7b5a-93a1-8375b93af153",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1402.7,
				name = "[LPDU] P5 Shared Akh Morn - Tank Arrow",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 8,
				timerStartOffset = -6,
				uuid = "8078bda5-dc83-c8e0-9df5-802d5598bd2f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobMorn204\nif s then s.hits=s.hits+1 if s.hits>=6 then data.ucobMorn204=nil end end\nself.used=true",
							conditions = 
							{
								
								{
									"8bce3027-b029-3282-9f42-6f2fbde73a6f",
									true,
								},
							},
							name = "Golden shared Akh Morn final hit cleanup",
							uuid = "0687ec7c-ebee-8778-96ee-4b12ab74c3a2",
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
								9962,
								9963,
							},
							uuid = "8bce3027-b029-3282-9f42-6f2fbde73a6f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1402.7,
				name = "Golden shared Akh Morn final hit cleanup",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 9,
				timerStartOffset = -1,
				uuid = "459de03d-5206-cece-b395-e38c7931d4f3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobGoldenAkhDanger204={target=eventArgs.targetID,hits=0,expires=Now()+14000}\nself.used=true",
							conditions = 
							{
								
								{
									"768b0a9d-56ef-02de-89bb-c74747411b9e",
									true,
								},
							},
							name = "P5 Akh Morn - Actual Tank Target",
							uuid = "38189bd3-f778-8a25-a37b-b5fc16a9bb5d",
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
								9962,
							},
							uuid = "768b0a9d-56ef-02de-89bb-c74747411b9e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1402.7,
				name = "[LPDU] P5 Akh Morn - Actual Tank Target",
				timeRange = true,
				timelineIndex = 204,
				timerStartOffset = -6,
				uuid = "ca1d78ec-fd19-96a3-bd96-f9be7148983d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobGoldenAkhDanger204\nif not s or Now()>=s.expires then self.used=true return end\nlocal t=TensorCore.mGetEntity(s.target)\nif not t then self.used=true return end\nlocal d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1,0.15,0.1,0.65),2)\nd:addCircle(t.pos.x,t.pos.y,t.pos.z,4,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "P5 Akh Morn - Red Tank Circle",
							uuid = "7b6556d7-feb7-af7b-9d6e-81b3b8eec8ed",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1402.7,
				name = "[LPDU] P5 Akh Morn - Red Tank Circle",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 10,
				timerStartOffset = -6,
				uuid = "6b5e409e-9790-152b-8e20-90c0fa4726a9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobGoldenAkhDanger204\nif s then s.hits=s.hits+1;if s.hits>=6 then data.ucobGoldenAkhDanger204=nil end end\nself.used=true",
							conditions = 
							{
								
								{
									"8fc1e759-d84f-28b8-a7c0-6f5482052b0f",
									true,
								},
							},
							name = "P5 Akh Morn - Final Hit Cleanup",
							uuid = "2034a414-1a39-265c-8459-ef30355f7ce0",
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
								9962,
								9963,
							},
							uuid = "8fc1e759-d84f-28b8-a7c0-6f5482052b0f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1402.7,
				name = "[LPDU] P5 Akh Morn - Final Hit Cleanup",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 10,
				timerStartOffset = -1,
				uuid = "c01b9e66-9d27-9fab-9967-f7d94dd95c14",
				version = 2,
			},
		},
	},
	[205] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "2ffc713d-3180-40f9-6899-dc9355aae0ad",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
	},
	[206] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\ucob\\universal",
				uuid = "06d65dd8-1047-6e44-78d1-85ba0d7e6c08",
			},
			inheritanceRoot = "store\\anyone\\ucob\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Personal Guidance",
				uuid = "586518e4-1520-66c3-aef2-ccceb2662121",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah206={target=eventArgs.targetID,boss=eventArgs.entityID,expires=Now()+eventArgs.channelTimeMax*1000+500}\nself.used=true",
							conditions = 
							{
								
								{
									"ec3b8c4a-2910-af91-8874-bba75902cf00",
									true,
								},
							},
							name = "Golden Morn Afah target capture",
							uuid = "39cd8966-1cca-4733-b0d7-ba460950c052",
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
								9964,
							},
							uuid = "ec3b8c4a-2910-af91-8874-bba75902cf00",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 1441.6,
				name = "Golden Morn Afah target capture",
				timeRange = true,
				timelineIndex = 206,
				timerStartOffset = -8,
				uuid = "6b7d04b8-8279-95a6-80dc-43b5a7b7ab33",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() or not R.isReady() then self.used=true return end\nlocal slot=R.mySlot()\nif not slot then self.used=true return end\nlocal s=data.ucobAfah206\nif not s or Now()>s.expires then self.used=true return end\nlocal target=TensorCore.mGetEntity(s.target)\nif not target then self.used=true return end\nlocal dest={x=target.pos.x,y=target.pos.y,z=target.pos.z}\nlocal p=TensorCore.mGetPlayer()\nif not p then self.used=true return end\nlocal dx,dz=dest.x-p.pos.x,dest.z-p.pos.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15,1,0.2,0.65),2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nif distance>0.8 then\n local tip=math.min(1.5,distance*0.35)\n drawer:addArrow(p.pos.x,p.pos.y,p.pos.z,TensorCore.getHeadingToTarget(p.pos,dest),math.max(0.1,distance-tip),0.55,tip,1.1,false,flags)\nend\ndrawer:addCircle(dest.x,dest.y,dest.z,0.8,false,flags)\nself.used=true",
							name = "Golden all Morn Afah personal stack arrow",
							uuid = "36f36e96-36ea-31f7-a6c9-6b3f71fdd32d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 1441.6,
				name = "[LPDU] P5 Morn Afah - Party Stack",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = 0.2,
				timerStartOffset = -6,
				uuid = "b06d239a-09cd-7bae-96be-269a16cef127",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAfah206=nil\nself.used=true",
							conditions = 
							{
								
								{
									"52341375-b8ca-c617-8b6a-bfe98e377e43",
									true,
								},
							},
							name = "Golden Morn Afah arrow hit cleanup",
							uuid = "7c70454b-666b-1666-a0aa-7bc3575639a0",
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
								9964,
							},
							uuid = "52341375-b8ca-c617-8b6a-bfe98e377e43",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Personal Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 1441.6,
				name = "Golden Morn Afah arrow hit cleanup",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "dee47bc7-485d-b55c-b234-ac3debf6ba06",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"store\\anyone\\ucob\\universal",
	},
	timelineName = "ucob",
	version = "1.0.3",
}



return tbl
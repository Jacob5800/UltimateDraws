local tbl = 
{
	[2] = 
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
				eventType = 16,
				execute = "local acr = TensorCore.API.TensorACR\nacr.setAutoSimKillTime(1200)\nacr.addAutoSimPhase(\"FullDowntime\", 109.1, 229.1)\nacr.addAutoSimPhase(\"FullDowntime\", 376.9, 511.4)\nacr.addAutoSimPhase(\"FullDowntime\", 541.0, 600.3)\nacr.addAutoSimPhase(\"FullDowntime\", 632.3, 674.3)\nacr.addAutoSimPhase(\"FullDowntime\", 774.0, 845.4)\nacr.addAutoSimPhase(\"FullDowntime\", 985.6, 998.8)\nacr.addAutoSimPhase(\"FullDowntime\", 1073.3, 1098.5)\nacr.addAutoSimPhase(\"Stun\", 500.0, 511.4)\n-- Planned movement while a boss remains attackable. Shared schedule: unused phase types are ignored by each AutoSim job.\nacr.addAutoSimPhase(\"CasterDowntime\", 68.0, 76.0) -- first Protean baits\nacr.addAutoSimPhase(\"CasterDowntime\", 105.0, 109.1) -- second Protean baits\nacr.addAutoSimPhase(\"CasterDowntime\", 260.8, 265.0) -- Photon / first Nisi pass\nacr.addAutoSimPhase(\"CasterDowntime\", 275.8, 279.8) -- Water movement\nacr.addAutoSimPhase(\"CasterDowntime\", 291.7, 295.0) -- Enumeration / Nisi pass\nacr.addAutoSimPhase(\"CasterDowntime\", 305.7, 309.7) -- Water movement\nacr.addAutoSimPhase(\"CasterDowntime\", 334.8, 339.0) -- Water movement\nacr.addAutoSimPhase(\"CasterDowntime\", 365.8, 370.0) -- Photon / Nisi pass\nacr.addAutoSimPhase(\"MeleeDowntime\", 255.8, 260.3) -- Chakrams\nacr.addAutoSimPhase(\"MeleeDowntime\", 261.8, 265.0) -- Photon / Nisi pass\nacr.addAutoSimPhase(\"MeleeDowntime\", 275.8, 279.8) -- Water movement\nacr.addAutoSimPhase(\"MeleeDowntime\", 291.7, 295.0) -- Enumeration / Nisi pass\nacr.addAutoSimPhase(\"MeleeDowntime\", 305.7, 309.7) -- Water movement\nacr.addAutoSimPhase(\"MeleeDowntime\", 334.8, 339.0) -- Water movement\nacr.addAutoSimPhase(\"MeleeDowntime\", 365.8, 370.0) -- Photon / Nisi pass\nacr.addAutoSimPhase(\"CasterDowntime\", 1128.5, 1136.0) -- Almighty Judgment first three-wave dodge\nacr.addAutoSimPhase(\"CasterDowntime\", 1170.5, 1178.0) -- Almighty Judgment second three-wave dodge",
				executeType = 2,
				mechanicTime = 11.4,
				name = "TEA AutoSim baseline",
				timelineIndex = 2,
				timerOffset = -11.39999961853,
				uuid = "c38c5655-2f33-5355-91f9-3b42b148c046",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "8bd034a9-0adf-78af-b4e0-ecceb231ad47",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Setup and cleanup",
				uuid = "cd015373-743b-19c9-bd38-3a58d56837ac",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "gStartCombat=false\ndata.teaPrecast={deadline=eventArgs.timeQueued+eventArgs.time*1000,cancelled=false}\nself.used=true",
							conditions = 
							{
								
								{
									"b183ee11-4ce8-e7e1-90f2-c00b1c244359",
									true,
								},
								
								{
									"634a742a-ae3d-87c7-b9ff-f23a006712cb",
									false,
								},
							},
							name = "Keep Start Combat off",
							uuid = "8f39cd83-5438-1c51-b11b-2d4b07721c61",
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
									"b183ee11-4ce8-e7e1-90f2-c00b1c244359",
									true,
								},
								
								{
									"634a742a-ae3d-87c7-b9ff-f23a006712cb",
									false,
								},
								
								{
									"290e0a04-1fde-ef0b-90a2-66a1861b3354",
									true,
								},
								
								{
									"a6dedf7d-ca45-acbf-ba73-a327af627032",
									true,
								},
							},
							name = "Select boss for precast",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "87b30673-0781-0ce5-86f0-e81e049cdc47",
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
							name = "TEA",
							uuid = "b183ee11-4ce8-e7e1-90f2-c00b1c244359",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							uuid = "634a742a-ae3d-87c7-b9ff-f23a006712cb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.teaPrecast\nreturn s and not s.cancelled and Now()<s.deadline",
							name = "Countdown still active",
							uuid = "290e0a04-1fde-ef0b-90a2-66a1861b3354",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e=TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal p=TensorCore.mGetPlayer()\nreturn e and p and e.contentid==9211 and e.attackable and e.targetable and e.hp.current>0 and TensorCore.getDistance2d(p.pos,e.pos)<=60+e.hitradius",
							name = "Nearby Living Liquid",
							uuid = "f5492581-ca44-c416-b4c2-0c2453cef5b2",
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
									"f5492581-ca44-c416-b4c2-0c2453cef5b2",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Nearest eligible boss",
							uuid = "a6dedf7d-ca45-acbf-ba73-a327af627032",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 16,
				loop = true,
				mechanicTime = 11.4,
				name = "[TEA] Countdown boss targeting",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "d267f120-c0c9-d5d1-a8ef-88cfd5f84dd4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.teaPrecast;if s then s.cancelled=true end\nself.used=true",
							conditions = 
							{
								
								{
									"b8f2ffcd-1c4c-5a09-a52c-1a6619b8cbec",
									true,
								},
							},
							name = "Cancel countdown selection",
							uuid = "d4746521-642e-b27c-9d44-28673ebeeb8c",
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
							name = "TEA",
							uuid = "b8f2ffcd-1c4c-5a09-a52c-1a6619b8cbec",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 17,
				loop = true,
				mechanicTime = 11.4,
				name = "[TEA] Countdown target cancellation",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "4ef37e4a-6f83-200f-92b3-4b13ccffa6c1",
				version = 2,
			},
		},
	},
	[156] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal finish = acr.getAutoSimTime() + eventArgs.channelTimeMax\nacr.addAutoSimPhase(\"CasterDowntime\", finish - 1.0, finish + 0.2)",
							conditions = 
							{
								
								{
									"925fb108-c1f5-4d75-8fd1-75347db9069d",
									true,
								},
							},
							name = "BLM Motion caster downtime",
							uuid = "aed56223-c35b-e928-b859-2f6804af5d7e",
							version = 2.1,
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
							eventSpellID = 18558,
							name = "Ordained Motion",
							uuid = "925fb108-c1f5-4d75-8fd1-75347db9069d",
							version = 3,
						},
					},
				},
				eventType = 3,
				mechanicTime = 916.1,
				name = "TEA P4 Motion BLM AutoSim",
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 16,
				timerStartOffset = -12,
				uuid = "ccefc69e-57d7-6a6a-a5c2-f4bb4d20e5af",
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
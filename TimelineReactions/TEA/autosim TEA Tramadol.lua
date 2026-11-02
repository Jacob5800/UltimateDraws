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
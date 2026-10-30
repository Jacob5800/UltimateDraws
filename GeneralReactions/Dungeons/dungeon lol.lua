local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Lunar Subterrane",
			uuid = "4417d755-dc6f-a593-b0ef-b4a4e54837a4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Lunar Subterrane",
			name = "AutoSim",
			uuid = "015f1b21-c852-f045-b185-07679eb6bae7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not LunarSubterraneAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill12500=125.891, kill12484=132.86, kill12584=175.298,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\LunarSubterrane.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12500\",\"kill12484\",\"kill12584\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12500=math.max(15,math.min(1200,C.kill12500))\n    C.kill12484=math.max(15,math.min(1200,C.kill12484))\n    C.kill12584=math.max(15,math.min(1200,C.kill12584))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    LunarSubterraneAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif LunarSubterraneAutoSimConfig.poolFinal==nil then\n LunarSubterraneAutoSimConfig.poolFinal=true\n table.insert(LunarSubterraneAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1164, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1164 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=LunarSubterraneAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.lunar_subterrane_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill12500=C.kill12500,kill12484=C.kill12484,kill12584=C.kill12584,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true}\ndata.lunar_subterrane_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[12500]={[\"name\"]=\"Dark Elf\",[\"movement\"]={{49.0,50.5},{52.0,53.0}},[\"anchors\"]={[34777]={4.469,29.258,61.828,134.734},[35205]={10.61,53.219,91.844},[34779]={19.117,83.727},[34778]={37.422,69.945,142.953},[34781]={46.586,79.102,152.101},[35204]={102.024},[34782]={113.219,122.368}}},[12484]={[\"name\"]=\"Damcyan Antlion\",[\"movement\"]={{22.5,24.0},{48.5,50.5},{63.5,64.5},{66.5,69.5},{97.0,98.0},{104.5,108.5},{109.5,111.0},{112.5,114.5},{125.5,130.0}},[\"anchors\"]={[34813]={8.188,77.164,137.969},[34818]={15.32,41.446,102.25},[34816]={30.32,91.188,152.0},[34821]={57.875,118.672},[34443]={67.023,127.844}}},[12584]={[\"name\"]=\"Durante\",[\"movement\"]={{22.5,23.5},{38.0,39.0},{59.5,62.0},{104.5,107.5},{138.0,140.0},{157.5,162.0},{165.0,166.0}},[\"anchors\"]={[35011]={6.179,116.812,206.219},[36057]={15.64,50.96,219.859},[35003]={31.367,72.07,95.531,187.031},[35905]={77.148,100.641,192.109},[35007]={129.094},[35009]={136.68},[36055]={147.132},[35001]={156.452},[34995]={173.43}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- one normal-party sample: do not claim exact kill timing\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    if aid==34780 then aid=34779 end\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local movementEnd=now\n    local fieldEnd=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now then\n            if phase.kind==\"CasterDowntime\" then movementEnd=phase.b end\n            if phase.kind==\"GroundFieldMovement\" then fieldEnd=phase.b end\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=phase.kind==\"CasterDowntime\" and movementEnd or math.max(fieldEnd,movementEnd)\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b\n                if phase.kind==\"CasterDowntime\" then movementEnd=b else fieldEnd=b end\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"ecf61cc4-c424-0b87-ab8e-4a5d5aed8a6f",
								true,
							},
							
							{
								"73e7752f-b502-afbe-9a9d-d2bd29a59e6c",
								true,
							},
							
							{
								"5c00f2a9-7436-2434-8d3a-2bd34c70212f",
								true,
							},
							
							{
								"c20f63ac-ab6b-6356-9d52-65a94a1796c5",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "76476c79-55d8-1556-8c74-aaea97636e21",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "ecf61cc4-c424-0b87-ab8e-4a5d5aed8a6f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "73e7752f-b502-afbe-9a9d-d2bd29a59e6c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "5c00f2a9-7436-2434-8d3a-2bd34c70212f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.lunar_subterrane_autosim == nil",
						name = "Setup not completed",
						uuid = "c20f63ac-ab6b-6356-9d52-65a94a1796c5",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Set up this combat",
			timeout = 2,
			uuid = "67809e45-cb36-20ee-8bca-8cf731faf45f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.lunar_subterrane_autosim=nil\ndata.lunar_final_trash=nil\ndata.lunar_pool_next=nil\nself.used=true",
						conditions = 
						{
							
							{
								"da7e7424-e1c0-3fa7-b547-2807b45c712b",
								true,
							},
							
							{
								"5c8256cd-c227-175f-b7ca-96e2ef1aedf4",
								true,
							},
							
							{
								"9554b7f0-5bfb-7a30-9806-12961165fb02",
								true,
							},
							
							{
								"c80e5724-ac3d-9240-9826-d1fc567df2f6",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "da1c600c-7626-c401-94a6-e60aa9c6e948",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "da7e7424-e1c0-3fa7-b547-2807b45c712b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "5c8256cd-c227-175f-b7ca-96e2ef1aedf4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "9554b7f0-5bfb-7a30-9806-12961165fb02",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.lunar_subterrane_autosim ~= nil",
						name = "Has combat state",
						uuid = "c80e5724-ac3d-9240-9826-d1fc567df2f6",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Reset between combats",
			timeout = 2,
			uuid = "008402e2-9751-183c-9dc8-0afe01b32db5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.lunar_subterrane_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"512cf679-169c-8bb6-8af8-e47c8df4d9e3",
								true,
							},
							
							{
								"6b33b75e-7bb1-fd63-83a2-7a7ff4a014b4",
								true,
							},
							
							{
								"301b1e26-2aa9-2957-aa98-0d852f7faab9",
								true,
							},
							
							{
								"833c6375-8817-af3e-956f-f0ad204c658f",
								true,
							},
							
							{
								"5e88d868-88ef-48ac-8b17-66c49472362c",
								true,
							},
						},
						name = "Dark Elf cast anchors",
						uuid = "f68185e4-147b-3bd8-8a40-d845ef3adbb2",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "512cf679-169c-8bb6-8af8-e47c8df4d9e3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "6b33b75e-7bb1-fd63-83a2-7a7ff4a014b4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "301b1e26-2aa9-2957-aa98-0d852f7faab9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12500,
						name = "Dark Elf",
						uuid = "833c6375-8817-af3e-956f-f0ad204c658f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.lunar_subterrane_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "5e88d868-88ef-48ac-8b17-66c49472362c",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			eventType = 3,
			name = "[Lunar AutoSim] Dark Elf cast anchors",
			timeout = 2,
			uuid = "42afc92c-b8da-cf25-8612-99af83e1cf74",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.lunar_subterrane_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"ac9215c2-053f-fdd8-a59a-aefb09b5ad94",
								true,
							},
							
							{
								"fced8f6b-fcec-be3e-9a70-9d39f25f8e46",
								true,
							},
							
							{
								"841b5dc8-2987-892a-a8fd-7ce9921ff413",
								true,
							},
							
							{
								"52ebe4ac-6761-96bd-9b6c-b48722e5e96d",
								true,
							},
							
							{
								"2479bfb9-bb9b-d140-bab9-0117f6f978f6",
								true,
							},
						},
						name = "Damcyan Antlion cast anchors",
						uuid = "081bd9d5-068a-5985-8fc3-5ebd5d74d4db",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "ac9215c2-053f-fdd8-a59a-aefb09b5ad94",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "fced8f6b-fcec-be3e-9a70-9d39f25f8e46",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "841b5dc8-2987-892a-a8fd-7ce9921ff413",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12484,
						name = "Damcyan Antlion",
						uuid = "52ebe4ac-6761-96bd-9b6c-b48722e5e96d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.lunar_subterrane_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "2479bfb9-bb9b-d140-bab9-0117f6f978f6",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			eventType = 3,
			name = "[Lunar AutoSim] Damcyan Antlion cast anchors",
			timeout = 2,
			uuid = "92af2988-bd9d-d985-8b49-fe83a07991fa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.lunar_subterrane_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"ab76b1a5-0903-53f0-9f85-d80140800c65",
								true,
							},
							
							{
								"6d24ce10-e878-0975-ac0c-8913ce2d616e",
								true,
							},
							
							{
								"2f3b5820-5033-d457-aa21-89b5595d0786",
								true,
							},
							
							{
								"bfbebe9d-adff-e8bf-bfce-60e853eeed39",
								true,
							},
							
							{
								"1654f2eb-2c8a-8728-a9e6-47f3ef96ce34",
								true,
							},
						},
						name = "Durante cast anchors",
						uuid = "ecbed827-e867-b3c7-b3cd-e65f1527e973",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "ab76b1a5-0903-53f0-9f85-d80140800c65",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "6d24ce10-e878-0975-ac0c-8913ce2d616e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "2f3b5820-5033-d457-aa21-89b5595d0786",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12584,
						name = "Durante",
						uuid = "bfbebe9d-adff-e8bf-bfce-60e853eeed39",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.lunar_subterrane_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "1654f2eb-2c8a-8728-a9e6-47f3ef96ce34",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			eventType = 3,
			name = "[Lunar AutoSim] Durante cast anchors",
			timeout = 2,
			uuid = "6a1abf12-905c-4aa8-a041-3e9910ca3284",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not LunarSubterraneAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill12500=125.891, kill12484=132.86, kill12584=175.298,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\LunarSubterrane.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12500\",\"kill12484\",\"kill12584\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12500=math.max(15,math.min(1200,C.kill12500))\n    C.kill12484=math.max(15,math.min(1200,C.kill12484))\n    C.kill12584=math.max(15,math.min(1200,C.kill12584))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    LunarSubterraneAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif LunarSubterraneAutoSimConfig.poolFinal==nil then\n LunarSubterraneAutoSimConfig.poolFinal=true\n table.insert(LunarSubterraneAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=LunarSubterraneAutoSimConfig\nlocal visible=GUI:Begin(\"Lunar Subterrane - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from your logged positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. The optional values below come from one four-player run, not the slower Duty Support samples.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Dark Elf (seconds)\",C.kill12500,5,15,\"%.1f\")\n        if changed then C.kill12500=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Damcyan Antlion (seconds)\",C.kill12484,5,15,\"%.1f\")\n        if changed then C.kill12484=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Durante (seconds)\",C.kill12584,5,15,\"%.1f\")\n        if changed then C.kill12584=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"32895e05-b638-ac9e-ab06-506b9ef11f4a",
								true,
							},
							
							{
								"47f0e817-88e7-d237-b595-ee9ff8a997d1",
								true,
							},
						},
						name = "Settings",
						uuid = "b4b30e83-2dc3-4820-83e2-209ef0ae6576",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "32895e05-b638-ac9e-ab06-506b9ef11f4a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "47f0e817-88e7-d237-b595-ee9ff8a997d1",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			eventType = 13,
			name = "[Lunar AutoSim] Settings",
			timeout = 2,
			uuid = "bf8ca967-5169-4ad0-842c-709a97328f48",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.lunar_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"54d8196a-628e-5a62-85b8-9ff4fa0165e1",
								true,
							},
							
							{
								"b37a6fbf-5e9d-8883-80e6-385a7b0e58f3",
								true,
							},
							
							{
								"d78656ad-92ac-2b8c-8b0d-e79e790c4032",
								true,
							},
							
							{
								"39db88ad-ebb1-9e80-be65-f005e154d902",
								true,
							},
							
							{
								"84f3b18b-184a-b922-aecb-6f1542d7a61e",
								true,
							},
						},
						name = "Recognize final trash before Dark Elf",
						uuid = "c77161bf-e079-10a5-87e1-a2c8fe4d70a8",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "54d8196a-628e-5a62-85b8-9ff4fa0165e1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b37a6fbf-5e9d-8883-80e6-385a7b0e58f3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "d78656ad-92ac-2b8c-8b0d-e79e790c4032",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=LunarSubterraneAutoSimConfig\nlocal s=data.lunar_subterrane_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.lunar_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "39db88ad-ebb1-9e80-be65-f005e154d902",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "565413ac-fd1d-f7b5-a29c-e40fae46e1fd",
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
								"565413ac-fd1d-f7b5-a29c-e40fae46e1fd",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12652",
						partyTargetContentID = 12652,
						uuid = "e69c7292-b8dc-4e30-a53d-63717cca1a0b",
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
								"565413ac-fd1d-f7b5-a29c-e40fae46e1fd",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12653",
						partyTargetContentID = 12653,
						uuid = "01fb6de8-910e-bd73-b802-6c7dc4bfa91c",
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
								"e69c7292-b8dc-4e30-a53d-63717cca1a0b",
								true,
							},
							
							{
								"01fb6de8-910e-bd73-b802-6c7dc4bfa91c",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "84f3b18b-184a-b922-aecb-6f1542d7a61e",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Recognize final trash before Dark Elf",
			timeout = 2,
			uuid = "c5b4036f-2927-a69a-b809-5a89d7d6f4a3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.lunar_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"30cd4e06-611c-bf0a-8819-bb78422a7db0",
								true,
							},
							
							{
								"d6416b9f-7302-97af-a83b-4af4c30a6d5d",
								true,
							},
							
							{
								"98bed067-ee65-c2bb-a2d6-b7871f078ece",
								true,
							},
							
							{
								"418bfcfb-6fd8-636d-9c74-757d872c191c",
								true,
							},
							
							{
								"79a056ea-bd7f-9cec-9de4-8078fa4daf48",
								true,
							},
						},
						name = "Recognize final trash before Damcyan Antlion",
						uuid = "7fe6bfca-c7ad-e50d-9a0a-0bcc364939b4",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "30cd4e06-611c-bf0a-8819-bb78422a7db0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "d6416b9f-7302-97af-a83b-4af4c30a6d5d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "98bed067-ee65-c2bb-a2d6-b7871f078ece",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=LunarSubterraneAutoSimConfig\nlocal s=data.lunar_subterrane_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.lunar_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "418bfcfb-6fd8-636d-9c74-757d872c191c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "4489904e-87b2-6375-8133-47cc749a891c",
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
								"4489904e-87b2-6375-8133-47cc749a891c",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12575",
						partyTargetContentID = 12575,
						uuid = "1931653e-fd62-613d-91f4-170eee56f6e8",
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
								"4489904e-87b2-6375-8133-47cc749a891c",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12655",
						partyTargetContentID = 12655,
						uuid = "697d9891-cde9-f3d1-aebd-4953ca2612e6",
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
								"4489904e-87b2-6375-8133-47cc749a891c",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12656",
						partyTargetContentID = 12656,
						uuid = "06fee9d2-6003-3b00-9b34-3de3a0505e8f",
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
								"1931653e-fd62-613d-91f4-170eee56f6e8",
								true,
							},
							
							{
								"697d9891-cde9-f3d1-aebd-4953ca2612e6",
								true,
							},
							
							{
								"06fee9d2-6003-3b00-9b34-3de3a0505e8f",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "79a056ea-bd7f-9cec-9de4-8078fa4daf48",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Recognize final trash before Damcyan Antlion",
			timeout = 2,
			uuid = "59578cfb-cfc6-4b7d-8d04-30f195504628",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.lunar_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"a92f1aa2-bae3-bfa2-9f0f-8b216a96aafa",
								true,
							},
							
							{
								"707c9da6-e4a2-e820-b47b-9c969c582f50",
								true,
							},
							
							{
								"5d0d4ec0-1b21-a398-884b-2559f7d7638a",
								true,
							},
							
							{
								"172b0bf5-c565-2209-a905-fe678779b0af",
								true,
							},
							
							{
								"9f3234e7-b126-f95a-aaf7-fdd3986c1fc2",
								true,
							},
						},
						name = "Recognize final trash before Durante",
						uuid = "86b55441-0571-5b73-8b48-e8a3cda2e46b",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "a92f1aa2-bae3-bfa2-9f0f-8b216a96aafa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "707c9da6-e4a2-e820-b47b-9c969c582f50",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "5d0d4ec0-1b21-a398-884b-2559f7d7638a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=LunarSubterraneAutoSimConfig\nlocal s=data.lunar_subterrane_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.lunar_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "172b0bf5-c565-2209-a905-fe678779b0af",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "a3484ca4-a30d-7c7a-8d14-f85ac65d8d40",
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
								"a3484ca4-a30d-7c7a-8d14-f85ac65d8d40",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12581",
						partyTargetContentID = 12581,
						uuid = "5f45e8e9-d3a3-669c-ac32-8c42391eb322",
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
								"a3484ca4-a30d-7c7a-8d14-f85ac65d8d40",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12582",
						partyTargetContentID = 12582,
						uuid = "c8ec82f2-a70a-ab4b-adf6-a9e37efff626",
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
								"a3484ca4-a30d-7c7a-8d14-f85ac65d8d40",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12583",
						partyTargetContentID = 12583,
						uuid = "e2ab8bdd-536d-6431-b136-cf9b186d05e2",
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
								"a3484ca4-a30d-7c7a-8d14-f85ac65d8d40",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12660",
						partyTargetContentID = 12660,
						uuid = "5b749ce5-f610-6077-8812-4871d4b1f9ac",
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
								"a3484ca4-a30d-7c7a-8d14-f85ac65d8d40",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12661",
						partyTargetContentID = 12661,
						uuid = "40fe84e2-ad8e-c5b3-98f0-275552a617c0",
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
								"5f45e8e9-d3a3-669c-ac32-8c42391eb322",
								true,
							},
							
							{
								"c8ec82f2-a70a-ab4b-adf6-a9e37efff626",
								true,
							},
							
							{
								"e2ab8bdd-536d-6431-b136-cf9b186d05e2",
								true,
							},
							
							{
								"5b749ce5-f610-6077-8812-4871d4b1f9ac",
								true,
							},
							
							{
								"40fe84e2-ad8e-c5b3-98f0-275552a617c0",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "9f3234e7-b126-f95a-aaf7-fdd3986c1fc2",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Recognize final trash before Durante",
			timeout = 2,
			uuid = "7851a0cc-03c2-115a-9259-20471c40afeb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=LunarSubterraneAutoSimConfig\nlocal s=data.lunar_subterrane_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==12500 or target.contentid==12484 or target.contentid==12584) then data.lunar_final_trash=nil;self.used=true;return end\nlocal now=Now()\nif not data.lunar_pool_next or now>=data.lunar_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.lunar_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"a48ce733-e5cc-bb74-99b7-6ce2fb8786cc",
								true,
							},
							
							{
								"b792aee8-2a3e-6dd2-a0d7-2f8a9ae28790",
								true,
							},
							
							{
								"24235c62-5ff7-dd0c-98af-a6f33bed12f7",
								true,
							},
							
							{
								"8f0f17bf-a64f-ed59-bdcc-92c796c54e68",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "c34d7c7e-fa88-f923-bc20-67927ce8e001",
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
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "a48ce733-e5cc-bb74-99b7-6ce2fb8786cc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b792aee8-2a3e-6dd2-a0d7-2f8a9ae28790",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "24235c62-5ff7-dd0c-98af-a6f33bed12f7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.lunar_final_trash==true",
						name = "Final trash detected",
						uuid = "8f0f17bf-a64f-ed59-bdcc-92c796c54e68",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "54676787-b5ee-e8c3-95af-1f2d9f16c919",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Mistwake",
			uuid = "862c3e8c-4287-83e4-9ec5-ccb18feaa444",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Mistwake",
			name = "AutoSim",
			uuid = "1ff87392-605f-86a9-9bf3-4371fefc8289",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not MistwakeAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill14270=124.141, kill14271=137.749, kill14288=185.438,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Mistwake.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill14270\",\"kill14271\",\"kill14288\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill14270=math.max(15,math.min(1200,C.kill14270))\n    C.kill14271=math.max(15,math.min(1200,C.kill14271))\n    C.kill14288=math.max(15,math.min(1200,C.kill14288))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    MistwakeAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif MistwakeAutoSimConfig.poolFinal==nil then\n MistwakeAutoSimConfig.poolFinal=true\n table.insert(MistwakeAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1314, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1314 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=MistwakeAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.mistwake_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill14270=C.kill14270,kill14271=C.kill14271,kill14288=C.kill14288,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true,activeEnds={}}\ndata.mistwake_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[14270]={[\"name\"]=\"Treno Catoblepas\",[\"movement\"]={{19.0,21.5},{28.0,31.0},{35.5,37.5},{56.5,57.5},{60.5,62.0},{63.0,65.0},{72.0,78.0},{79.5,85.0},{90.0,91.0},{94.5,96.0},{97.0,102.0},{103.5,106.5},{113.5,114.5},{115.5,116.5},{118.0,121.0}},[\"anchors\"]={[43327]={6.188,35.195,110.922,119.062},[43331]={17.422,53.5,93.117},[43330]={27.085,63.18,102.773},[43329]={43.375,130.272},[44825]={72.413},[43335]={81.867}},[\"downtime\"]={}},[14271]={[\"name\"]=\"Amdusias\",[\"movement\"]={{38.0,40.0},{49.0,52.0},{53.0,54.5},{67.0,69.0},{70.0,71.0},{74.5,75.5},{76.5,78.0},{88.5,90.0},{92.5,95.0},{98.0,99.0}},[\"anchors\"]={[45341]={8.085,20.477,87.789},[45344]={36.961,122.171},[45346]={44.742,130.078},[45350]={64.461},[45355]={72.484},[45352]={103.493}},[\"downtime\"]={}},[14288]={[\"name\"]=\"Thundergust Griffin\",[\"movement\"]={{19.5,21.5},{29.5,31.0},{37.5,44.0},{45.0,48.0},{66.0,67.0},{68.0,70.0},{79.0,81.5},{86.0,87.5},{119.5,122.0},{130.5,133.0},{140.5,141.5},{154.0,157.0},{174.5,175.5}},[\"anchors\"]={[45291]={6.203,87.82,177.078},[45292]={18.953,108.429,197.711},[45295]={29.172,40.071,78.196,118.906,130.257,167.485,208.117},[45305]={51.719,141.891},[45301]={67.085,156.351},[45299]={102.257,191.547}},[\"downtime\"]={{72.993,76.789},{162.305,166.079}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    C.poolStatus=nil\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- three normal-party samples: do not claim exact kill timing\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    -- Native targetability transitions corroborate these short Griffin jumps.\n    -- Attackability forecasting is independent of the optional movement forecast.\n    for i=1,#def.downtime do\n        local w=def.downtime[i]\n        if origin+w[2]>now then S.add(\"FullDowntime\",math.max(origin+w[1],now),origin+w[2],1,true) end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    if aid==45336 then aid=45341 end -- the cone order varies, its timing sequence does not\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local ends=S.activeEnds\n    ends.CasterDowntime=now;ends.GroundFieldMovement=now;ends.FullDowntime=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now and phase.relative then\n            ends[phase.kind]=math.max(ends[phase.kind],phase.b)\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=ends[phase.kind]\n            if phase.kind==\"GroundFieldMovement\" then minimum=math.max(minimum,ends.CasterDowntime) end\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b;ends[phase.kind]=b\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"9b27bb6d-eb86-1f8f-9d76-c2f236db1541",
								true,
							},
							
							{
								"f11f7fc0-50c3-c2cb-954e-9433aa5c7664",
								true,
							},
							
							{
								"f5bcefa2-72cb-d1a0-9187-a3ca4c49b191",
								true,
							},
							
							{
								"4cf54e11-1e0d-267c-a6e8-6286f4686fb9",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "9bb9b6ae-5f83-7340-9d9d-18a7956f9802",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "9b27bb6d-eb86-1f8f-9d76-c2f236db1541",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "f11f7fc0-50c3-c2cb-954e-9433aa5c7664",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "f5bcefa2-72cb-d1a0-9187-a3ca4c49b191",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.mistwake_autosim == nil",
						name = "Setup not completed",
						uuid = "4cf54e11-1e0d-267c-a6e8-6286f4686fb9",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			name = "[Mistwake AutoSim] Set up this combat",
			timeout = 2,
			uuid = "2cbdf22d-0374-318b-8500-e4640a2c2feb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.mistwake_autosim=nil\ndata.mistwake_final_trash=nil\ndata.mistwake_pool_next=nil\nif MistwakeAutoSimConfig then MistwakeAutoSimConfig.poolStatus=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"4d6637e4-2dd6-727c-bba9-c9aaecef6720",
								true,
							},
							
							{
								"7ea588ce-f7c7-e800-8c84-f3bd8bf2e0a2",
								true,
							},
							
							{
								"e25e3993-683e-77ca-8eef-89f3df77167d",
								true,
							},
							
							{
								"0df3d51d-e811-d3b4-bb64-deee64f071f2",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "d19d2d69-09a8-29b1-9998-bc37d89a80bc",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "4d6637e4-2dd6-727c-bba9-c9aaecef6720",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "7ea588ce-f7c7-e800-8c84-f3bd8bf2e0a2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "e25e3993-683e-77ca-8eef-89f3df77167d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.mistwake_autosim ~= nil",
						name = "Has combat state",
						uuid = "0df3d51d-e811-d3b4-bb64-deee64f071f2",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			name = "[Mistwake AutoSim] Reset between combats",
			timeout = 2,
			uuid = "71ac0231-05b3-d94e-9d45-fc58c0e1fe2f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.mistwake_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"f3d8c851-0302-3afd-82c7-107e57973de4",
								true,
							},
							
							{
								"30ffd668-7e65-0369-8cbd-38c324a4294f",
								true,
							},
							
							{
								"6e101be9-26e5-ce07-8ba3-03ff0b931e51",
								true,
							},
							
							{
								"0c84b3ed-9d1d-ec8f-95a6-31e583384531",
								true,
							},
							
							{
								"8f9ad738-c1ca-0a60-9ff4-a94a73a6fc88",
								true,
							},
						},
						name = "Treno Catoblepas cast anchors",
						uuid = "bfaae4b1-285a-03bc-b027-759fb17b040d",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "f3d8c851-0302-3afd-82c7-107e57973de4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "30ffd668-7e65-0369-8cbd-38c324a4294f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "6e101be9-26e5-ce07-8ba3-03ff0b931e51",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14270,
						name = "Treno Catoblepas",
						uuid = "0c84b3ed-9d1d-ec8f-95a6-31e583384531",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.mistwake_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "8f9ad738-c1ca-0a60-9ff4-a94a73a6fc88",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			eventType = 3,
			name = "[Mistwake AutoSim] Treno Catoblepas cast anchors",
			timeout = 2,
			uuid = "fed0e7e0-be99-f31f-95bc-037f68dc6ed8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.mistwake_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"7237835f-469a-3032-88da-a36afe19af3f",
								true,
							},
							
							{
								"21b99eb1-b5f0-bbdd-b3ca-7491e7078aad",
								true,
							},
							
							{
								"9dfdb3a0-2178-1d80-8c48-8921fa1bc00a",
								true,
							},
							
							{
								"68e2b4d2-882f-5f22-8865-cc00b45a4512",
								true,
							},
							
							{
								"f9391d29-292d-287e-9c93-f28975fe0876",
								true,
							},
						},
						name = "Amdusias cast anchors",
						uuid = "2b710776-ded0-d4d7-9525-7eca5532555f",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "7237835f-469a-3032-88da-a36afe19af3f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "21b99eb1-b5f0-bbdd-b3ca-7491e7078aad",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "9dfdb3a0-2178-1d80-8c48-8921fa1bc00a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14271,
						name = "Amdusias",
						uuid = "68e2b4d2-882f-5f22-8865-cc00b45a4512",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.mistwake_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "f9391d29-292d-287e-9c93-f28975fe0876",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			eventType = 3,
			name = "[Mistwake AutoSim] Amdusias cast anchors",
			timeout = 2,
			uuid = "2f82a410-2cec-4081-97f5-b186a1eeab11",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.mistwake_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"b6b97e44-5f16-13f5-9179-01a962dccd75",
								true,
							},
							
							{
								"ca26fe4e-d654-07e6-933d-6e6d4e173110",
								true,
							},
							
							{
								"82e42e95-345b-2797-ab1f-479b648f915c",
								true,
							},
							
							{
								"bfd429eb-f701-a569-968d-18b2acbca39a",
								true,
							},
							
							{
								"9af2f3e6-ce25-29ce-abe5-38e73c8111af",
								true,
							},
						},
						name = "Thundergust Griffin cast anchors",
						uuid = "17ccfb30-7b6c-d8cc-9d3d-785a4bfdf774",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "b6b97e44-5f16-13f5-9179-01a962dccd75",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "ca26fe4e-d654-07e6-933d-6e6d4e173110",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "82e42e95-345b-2797-ab1f-479b648f915c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14288,
						name = "Thundergust Griffin",
						uuid = "bfd429eb-f701-a569-968d-18b2acbca39a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.mistwake_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "9af2f3e6-ce25-29ce-abe5-38e73c8111af",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			eventType = 3,
			name = "[Mistwake AutoSim] Thundergust Griffin cast anchors",
			timeout = 2,
			uuid = "391d647c-ac71-e38c-861a-dab652869be6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not MistwakeAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill14270=124.141, kill14271=137.749, kill14288=185.438,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Mistwake.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill14270\",\"kill14271\",\"kill14288\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill14270=math.max(15,math.min(1200,C.kill14270))\n    C.kill14271=math.max(15,math.min(1200,C.kill14271))\n    C.kill14288=math.max(15,math.min(1200,C.kill14288))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    MistwakeAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif MistwakeAutoSimConfig.poolFinal==nil then\n MistwakeAutoSimConfig.poolFinal=true\n table.insert(MistwakeAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=MistwakeAutoSimConfig\nlocal visible=GUI:Begin(\"Mistwake - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Level 100, four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from sampled BLM positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. The optional values below come from three four-player runs, not the slower Duty Support samples.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Treno Catoblepas (seconds)\",C.kill14270,5,15,\"%.1f\")\n        if changed then C.kill14270=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Amdusias (seconds)\",C.kill14271,5,15,\"%.1f\")\n        if changed then C.kill14271=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Thundergust Griffin (seconds)\",C.kill14288,5,15,\"%.1f\")\n        if changed then C.kill14288=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"58c5131a-e9e8-574a-865e-66a6d37250b6",
								true,
							},
							
							{
								"4b2fe35e-addf-07b0-857b-4351ef7228b7",
								true,
							},
						},
						name = "Settings",
						uuid = "c3f81abf-4627-1ea0-9b33-e24491ce663b",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "58c5131a-e9e8-574a-865e-66a6d37250b6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "4b2fe35e-addf-07b0-857b-4351ef7228b7",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			eventType = 13,
			name = "[Mistwake AutoSim] Settings",
			timeout = 2,
			uuid = "5d714cb3-9448-1773-adf8-fe3361909dc6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.mistwake_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"15b53c01-f8e5-c2a8-843f-110c1102ea8f",
								true,
							},
							
							{
								"3551ee10-43a1-b59d-8005-f7107a5a6377",
								true,
							},
							
							{
								"d57c27ce-b739-e44a-8dbb-2de649f6d929",
								true,
							},
							
							{
								"fea30695-c361-2f3c-91b9-5b710ad25740",
								true,
							},
							
							{
								"3a70e504-3ad7-eae2-ae38-15ccdca1afb1",
								true,
							},
						},
						name = "Recognize final trash before Treno Catoblepas",
						uuid = "ac9bc436-b1c5-4171-8ac7-3c3251b371b2",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "15b53c01-f8e5-c2a8-843f-110c1102ea8f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "3551ee10-43a1-b59d-8005-f7107a5a6377",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "d57c27ce-b739-e44a-8dbb-2de649f6d929",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=MistwakeAutoSimConfig\nlocal s=data.mistwake_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.mistwake_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "fea30695-c361-2f3c-91b9-5b710ad25740",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "25b37f66-c3ab-3112-a5c6-6382fe9523b9",
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
								"25b37f66-c3ab-3112-a5c6-6382fe9523b9",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14311",
						partyTargetContentID = 14311,
						uuid = "02df7770-822f-8cd7-abf0-a00926cf3f3d",
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
								"25b37f66-c3ab-3112-a5c6-6382fe9523b9",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14312",
						partyTargetContentID = 14312,
						uuid = "b95575b3-3ec0-42b2-8c12-f682266f975c",
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
								"02df7770-822f-8cd7-abf0-a00926cf3f3d",
								true,
							},
							
							{
								"b95575b3-3ec0-42b2-8c12-f682266f975c",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "3a70e504-3ad7-eae2-ae38-15ccdca1afb1",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			name = "[Mistwake AutoSim] Recognize final trash before Treno Catoblepas",
			timeout = 2,
			uuid = "7f89cca0-8d9c-a6ad-933c-c9b51a3edd0a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.mistwake_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"a08cf136-73c5-06c7-a8ef-1b5061e62984",
								true,
							},
							
							{
								"3f7e44f1-9c1e-8f87-a1bd-aa96c5813cf6",
								true,
							},
							
							{
								"d3032058-62c2-c0aa-86af-942f37368811",
								true,
							},
							
							{
								"20d201f1-2e88-7176-8d87-eaaa2de95873",
								true,
							},
							
							{
								"19c5f194-ffcf-a233-863b-1b5c6457404c",
								true,
							},
						},
						name = "Recognize final trash before Amdusias",
						uuid = "f1a9fbc0-49ea-7cba-ad68-4cf5aea17487",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "a08cf136-73c5-06c7-a8ef-1b5061e62984",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "3f7e44f1-9c1e-8f87-a1bd-aa96c5813cf6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "d3032058-62c2-c0aa-86af-942f37368811",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=MistwakeAutoSimConfig\nlocal s=data.mistwake_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.mistwake_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "20d201f1-2e88-7176-8d87-eaaa2de95873",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "bda2e6bf-3940-d052-a98f-89cf6d42dbe6",
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
								"bda2e6bf-3940-d052-a98f-89cf6d42dbe6",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14315",
						partyTargetContentID = 14315,
						uuid = "e05a6c42-2469-ed70-bc0b-afe0d457c7aa",
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
								"e05a6c42-2469-ed70-bc0b-afe0d457c7aa",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "19c5f194-ffcf-a233-863b-1b5c6457404c",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			name = "[Mistwake AutoSim] Recognize final trash before Amdusias",
			timeout = 2,
			uuid = "5495a613-d6c3-5d26-8e86-e49883703900",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.mistwake_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"f0b5e433-8abd-22a3-9b71-fb7de88e82ff",
								true,
							},
							
							{
								"440ce3c3-6d3e-63b8-9a98-97c19fef59f2",
								true,
							},
							
							{
								"4a0d3d21-3696-a9d3-9e51-f0253e666072",
								true,
							},
							
							{
								"90dc35ae-eafe-4e73-b987-bfebf0df98a8",
								true,
							},
							
							{
								"f8a9d3a5-6ce4-a048-8d9d-23900f041472",
								true,
							},
						},
						name = "Recognize final trash before Thundergust Griffin",
						uuid = "cbfef96d-3429-59b5-9da1-76f78ae66430",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "f0b5e433-8abd-22a3-9b71-fb7de88e82ff",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "440ce3c3-6d3e-63b8-9a98-97c19fef59f2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "4a0d3d21-3696-a9d3-9e51-f0253e666072",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=MistwakeAutoSimConfig\nlocal s=data.mistwake_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.mistwake_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "90dc35ae-eafe-4e73-b987-bfebf0df98a8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "16869411-3055-699e-afff-a401360c295c",
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
								"16869411-3055-699e-afff-a401360c295c",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14317",
						partyTargetContentID = 14317,
						uuid = "64f9efbd-db50-79bb-b6b6-2bb1d4c5ff6c",
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
								"16869411-3055-699e-afff-a401360c295c",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14320",
						partyTargetContentID = 14320,
						uuid = "3017e9b8-a1e7-dac7-9d47-390a239ced32",
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
								"64f9efbd-db50-79bb-b6b6-2bb1d4c5ff6c",
								true,
							},
							
							{
								"3017e9b8-a1e7-dac7-9d47-390a239ced32",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "f8a9d3a5-6ce4-a048-8d9d-23900f041472",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			name = "[Mistwake AutoSim] Recognize final trash before Thundergust Griffin",
			timeout = 2,
			uuid = "05fdeaf9-db1f-ad68-9fd1-a190594c4a45",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=MistwakeAutoSimConfig\nlocal s=data.mistwake_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then if c then c.poolStatus=nil end;self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==14270 or target.contentid==14271 or target.contentid==14288) then data.mistwake_final_trash=nil;c.poolStatus=nil;self.used=true;return end\nlocal now=Now()\nif not data.mistwake_pool_next or now>=data.mistwake_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.mistwake_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"d872039b-5f1d-6e5e-9f85-7209d3bce007",
								true,
							},
							
							{
								"b4697694-0677-9cd8-b1a8-9f5ca7412eb7",
								true,
							},
							
							{
								"c8dd7312-3ca2-3f95-a29b-dfd51dfa021b",
								true,
							},
							
							{
								"3c84ad10-dc15-e0f3-95bc-0ce2760ed3cc",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "7eb4c6fe-888a-129d-8488-1a07585c60a5",
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
						localmapid = 1314,
						name = "Mistwake (1314)",
						uuid = "d872039b-5f1d-6e5e-9f85-7209d3bce007",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b4697694-0677-9cd8-b1a8-9f5ca7412eb7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "c8dd7312-3ca2-3f95-a29b-dfd51dfa021b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.mistwake_final_trash==true",
						name = "Final trash detected",
						uuid = "3c84ad10-dc15-e0f3-95bc-0ce2760ed3cc",
						version = 3,
					},
				},
			},
			displayPath = "Mistwake/AutoSim",
			name = "[Mistwake AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "24993263-bdea-9279-84a3-4cafc2c59c3d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Clyteum",
			uuid = "a150701e-a297-9157-ae5a-b01c455e57c0",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Clyteum",
			name = "AutoSim",
			uuid = "fcebb0b3-61f7-b78d-a8da-217352d961ac",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not ClyteumAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill14716=144.043, kill14734=138.778, kill14758=181.846,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Clyteum.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill14716\",\"kill14734\",\"kill14758\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill14716=math.max(15,math.min(1200,C.kill14716))\n    C.kill14734=math.max(15,math.min(1200,C.kill14734))\n    C.kill14758=math.max(15,math.min(1200,C.kill14758))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    ClyteumAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif ClyteumAutoSimConfig.poolFinal==nil then\n ClyteumAutoSimConfig.poolFinal=true\n table.insert(ClyteumAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1345, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1345 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=ClyteumAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.clyteum_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill14716=C.kill14716,kill14734=C.kill14734,kill14758=C.kill14758,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true,activeEnds={}}\ndata.clyteum_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[14716]={[\"name\"]=\"Eye of the Scorpion\",[\"movement\"]={{21.0,26.0},{29.5,31.0},{33.0,35.0},{64.0,65.0},{76.5,79.0},{81.5,83.5},{85.0,87.0},{88.5,89.5},{93.0,94.5},{118.5,120.5},{126.5,127.5},{144.5,145.5},{147.5,149.0},{151.0,152.0}},[\"downtime\"]={},[\"aliases\"]={[50176]=50175},[\"anchors\"]={[48893]={48.492,107.618,166.969},[48896]={4.727,41.087,100.32,133.313,159.61},[50175]={18.0,28.242,86.766,145.883}}},[14734]={[\"name\"]=\"Chort\",[\"movement\"]={{19.5,21.5},{38.0,39.0},{51.0,53.0},{54.5,61.5},{62.5,64.0},{65.0,66.5},{81.5,82.5},{86.5,88.0},{110.5,113.0},{117.5,119.0},{139.0,140.5},{141.5,143.0},{145.5,146.5}},[\"downtime\"]={{21.938,31.07},{88.453,102.867}},[\"aliases\"]={[48868]=48870},[\"anchors\"]={[48870]={17.008},[48879]={48.453,131.804},[48884]={4.351,70.797,154.086},[48886]={108.57},[50361]={36.93,114.328},[50417]={102.867}}},[14758]={[\"name\"]=\"Malphas\",[\"movement\"]={{19.0,20.5},{40.5,42.0},{47.0,48.5},{52.0,53.0},{57.5,59.0},{88.0,91.0},{93.5,96.0},{104.0,105.0},{107.5,108.5},{132.0,133.0},{137.0,138.0},{154.5,156.0},{160.0,161.0},{162.0,163.5}},[\"downtime\"]={},[\"aliases\"]={},[\"anchors\"]={[48920]={6.21,68.867,122.46,195.118},[48921]={29.727,79.257,136.078,208.656},[48922]={37.484,47.016},[48923]={86.007,215.422},[48925]={143.813,166.781},[48929]={58.375},[48931]={102.946},[50313]={17.18,93.882,159.673,187.945,223.305},[50315]={115.203}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    C.poolStatus=nil\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- limited four-player samples: estimates remain optional\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    -- Native paired targetability transitions corroborate these downtime windows.\n    -- Attackability forecasting is independent of the optional movement forecast.\n    for i=1,#def.downtime do\n        local w=def.downtime[i]\n        if origin+w[2]>now then S.add(\"FullDowntime\",math.max(origin+w[1],now),origin+w[2],1,true) end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    aid=def.aliases[aid] or aid -- documented alternate casts share one occurrence sequence\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local ends=S.activeEnds\n    ends.CasterDowntime=now;ends.GroundFieldMovement=now;ends.FullDowntime=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now and phase.relative then\n            ends[phase.kind]=math.max(ends[phase.kind],phase.b)\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=ends[phase.kind]\n            if phase.kind==\"GroundFieldMovement\" then minimum=math.max(minimum,ends.CasterDowntime) end\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b;ends[phase.kind]=b\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"5c9c57d2-2a3a-92ef-9d20-5e88a2a70111",
								true,
							},
							
							{
								"c8b5ffb7-74df-dffd-ab6d-f7dfec7f685c",
								true,
							},
							
							{
								"7380e8ac-2f3d-9d25-8854-223a6be07eac",
								true,
							},
							
							{
								"634f2c5c-3428-5e7b-be5b-a57a1ad6774f",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "aad6b8d8-3e5c-1b6a-b5fa-e30b81e37bcf",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "5c9c57d2-2a3a-92ef-9d20-5e88a2a70111",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "c8b5ffb7-74df-dffd-ab6d-f7dfec7f685c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "7380e8ac-2f3d-9d25-8854-223a6be07eac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.clyteum_autosim == nil",
						name = "Setup not completed",
						uuid = "634f2c5c-3428-5e7b-be5b-a57a1ad6774f",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			name = "[Clyteum AutoSim] Set up this combat",
			timeout = 2,
			uuid = "1aee939d-d8cb-a575-b547-595f1f40b8cc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.clyteum_autosim=nil\ndata.clyteum_final_trash=nil\ndata.clyteum_pool_next=nil\nif ClyteumAutoSimConfig then ClyteumAutoSimConfig.poolStatus=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"811735b4-d594-7556-be18-a576d2273d18",
								true,
							},
							
							{
								"b1f4bf6c-f91e-7dea-ab27-4d1cb15fd998",
								true,
							},
							
							{
								"cef2bb9e-8056-8bb4-a021-ada349bc08f5",
								true,
							},
							
							{
								"8ff4daf5-a6d2-66b2-a5da-8ddcc52cd34e",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "93f0c3b4-ec9d-038a-82b7-57e3d2fcf141",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "811735b4-d594-7556-be18-a576d2273d18",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b1f4bf6c-f91e-7dea-ab27-4d1cb15fd998",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "cef2bb9e-8056-8bb4-a021-ada349bc08f5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.clyteum_autosim ~= nil",
						name = "Has combat state",
						uuid = "8ff4daf5-a6d2-66b2-a5da-8ddcc52cd34e",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			name = "[Clyteum AutoSim] Reset between combats",
			timeout = 2,
			uuid = "e0f1719b-d9dc-795f-a8d4-4bd5be54e87d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.clyteum_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"356afd6d-ce07-c9a8-bf68-bd6ae6ed9c15",
								true,
							},
							
							{
								"3960d4ad-d57c-722f-bca5-d3ef54ace31b",
								true,
							},
							
							{
								"b568b7b9-b46c-6519-aaa7-857cd8efa444",
								true,
							},
							
							{
								"ae9fcc46-d359-6f1e-994a-b21085a224b9",
								true,
							},
							
							{
								"01188e78-92be-bb18-9fb6-28a639b1b1bf",
								true,
							},
						},
						name = "Eye of the Scorpion cast anchors",
						uuid = "7dca0930-9e11-b414-af9f-30712333123c",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "356afd6d-ce07-c9a8-bf68-bd6ae6ed9c15",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "3960d4ad-d57c-722f-bca5-d3ef54ace31b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "b568b7b9-b46c-6519-aaa7-857cd8efa444",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14716,
						name = "Eye of the Scorpion",
						uuid = "ae9fcc46-d359-6f1e-994a-b21085a224b9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.clyteum_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "01188e78-92be-bb18-9fb6-28a639b1b1bf",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			eventType = 3,
			name = "[Clyteum AutoSim] Eye of the Scorpion cast anchors",
			timeout = 2,
			uuid = "8d166d6a-df8e-1035-86df-a87a77c0e946",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.clyteum_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"1c04ed9f-3727-7834-9576-2796daaf6b2a",
								true,
							},
							
							{
								"84c5a664-cdac-20e5-bec4-428397790690",
								true,
							},
							
							{
								"830be338-1048-3370-9ed9-871ad5f29683",
								true,
							},
							
							{
								"ee18c3f4-9b54-5540-a707-a185cfbd1de0",
								true,
							},
							
							{
								"464877b1-4b99-e106-bf10-3473292d7c8f",
								true,
							},
						},
						name = "Chort cast anchors",
						uuid = "5bc25b18-05d7-5ad1-8cf5-7ccca300f52c",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "1c04ed9f-3727-7834-9576-2796daaf6b2a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "84c5a664-cdac-20e5-bec4-428397790690",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "830be338-1048-3370-9ed9-871ad5f29683",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14734,
						name = "Chort",
						uuid = "ee18c3f4-9b54-5540-a707-a185cfbd1de0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.clyteum_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "464877b1-4b99-e106-bf10-3473292d7c8f",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			eventType = 3,
			name = "[Clyteum AutoSim] Chort cast anchors",
			timeout = 2,
			uuid = "579cb7e1-fb87-e5b3-86bd-18506bc89ba1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.clyteum_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"29a471b2-50c2-04c5-ba95-dedf6f5b104f",
								true,
							},
							
							{
								"07bd26a0-f42e-0a6e-b7e1-49c9843d07d0",
								true,
							},
							
							{
								"1d3073ca-ac97-5164-8283-93b0b2e9bd51",
								true,
							},
							
							{
								"1f135a24-8265-1dab-93f9-967ed1eaf231",
								true,
							},
							
							{
								"ca2c5915-91a3-dc9b-8fd7-d331883b554c",
								true,
							},
						},
						name = "Malphas cast anchors",
						uuid = "2241ddd3-ea91-56ec-886e-ee028cf30dfc",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "29a471b2-50c2-04c5-ba95-dedf6f5b104f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "07bd26a0-f42e-0a6e-b7e1-49c9843d07d0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "1d3073ca-ac97-5164-8283-93b0b2e9bd51",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14758,
						name = "Malphas",
						uuid = "1f135a24-8265-1dab-93f9-967ed1eaf231",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.clyteum_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "ca2c5915-91a3-dc9b-8fd7-d331883b554c",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			eventType = 3,
			name = "[Clyteum AutoSim] Malphas cast anchors",
			timeout = 2,
			uuid = "0c5a7b88-0e82-0b5a-b8a0-f4bfbcddc750",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not ClyteumAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill14716=144.043, kill14734=138.778, kill14758=181.846,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Clyteum.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill14716\",\"kill14734\",\"kill14758\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill14716=math.max(15,math.min(1200,C.kill14716))\n    C.kill14734=math.max(15,math.min(1200,C.kill14734))\n    C.kill14758=math.max(15,math.min(1200,C.kill14758))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    ClyteumAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif ClyteumAutoSimConfig.poolFinal==nil then\n ClyteumAutoSimConfig.poolFinal=true\n table.insert(ClyteumAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=ClyteumAutoSimConfig\nlocal visible=GUI:Begin(\"Clyteum - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Level 100, four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from sampled BLM positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. Manual values are optional estimates from available four-player samples; party pace varies.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Eye of the Scorpion (seconds)\",C.kill14716,5,15,\"%.1f\")\n        if changed then C.kill14716=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Chort (seconds)\",C.kill14734,5,15,\"%.1f\")\n        if changed then C.kill14734=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Malphas (seconds)\",C.kill14758,5,15,\"%.1f\")\n        if changed then C.kill14758=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"2682ac60-40dc-9d15-9bd0-f8bdc47b0f2d",
								true,
							},
							
							{
								"63b4f1dc-cb37-7cf2-9b8e-16177ccee0a2",
								true,
							},
						},
						name = "Settings",
						uuid = "0a13af06-8b64-3f78-8231-6517ae9c69fe",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "2682ac60-40dc-9d15-9bd0-f8bdc47b0f2d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "63b4f1dc-cb37-7cf2-9b8e-16177ccee0a2",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			eventType = 13,
			name = "[Clyteum AutoSim] Settings",
			timeout = 2,
			uuid = "7bc7d6ab-f1dc-0188-80ef-1fc2f8f0027c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.clyteum_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"55ed5abc-b214-a3c2-a65e-d153849414ae",
								true,
							},
							
							{
								"2015623f-5af7-536f-8ea7-f1beabea5271",
								true,
							},
							
							{
								"41e6cf89-a37c-f4bf-82d4-aba36d170dec",
								true,
							},
							
							{
								"485bfe80-28f2-ad64-82e0-f7f68d5a75dc",
								true,
							},
							
							{
								"cd4018c3-364e-b492-a0dc-bab39408c2ce",
								true,
							},
						},
						name = "Recognize final trash before Eye of the Scorpion",
						uuid = "8358a8a3-7762-c9a9-8fe6-88a9f83cd439",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "55ed5abc-b214-a3c2-a65e-d153849414ae",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "2015623f-5af7-536f-8ea7-f1beabea5271",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "41e6cf89-a37c-f4bf-82d4-aba36d170dec",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=ClyteumAutoSimConfig\nlocal s=data.clyteum_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.clyteum_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "485bfe80-28f2-ad64-82e0-f7f68d5a75dc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "dab7279c-b2ed-8da6-9aa1-96e53f351e1a",
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
								"dab7279c-b2ed-8da6-9aa1-96e53f351e1a",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14703",
						partyTargetContentID = 14703,
						uuid = "2bfaedee-cd8a-4bbf-bd50-e8091e541798",
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
								"dab7279c-b2ed-8da6-9aa1-96e53f351e1a",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14704",
						partyTargetContentID = 14704,
						uuid = "f67fb7da-05e8-8fbd-9533-15e479ba1ebf",
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
								"2bfaedee-cd8a-4bbf-bd50-e8091e541798",
								true,
							},
							
							{
								"f67fb7da-05e8-8fbd-9533-15e479ba1ebf",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "cd4018c3-364e-b492-a0dc-bab39408c2ce",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			name = "[Clyteum AutoSim] Recognize final trash before Eye of the Scorpion",
			timeout = 2,
			uuid = "c2f4af86-e784-acc1-937e-823899267077",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.clyteum_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"c9b01f43-327a-aa80-bdfe-43bc04be1ebb",
								true,
							},
							
							{
								"7975a1ca-00da-868c-9a99-f1b2cf241aa9",
								true,
							},
							
							{
								"481b8b0d-c02f-d699-b209-2fb9bbab467e",
								true,
							},
							
							{
								"252749ff-c462-c71e-85bf-e833b4688370",
								true,
							},
							
							{
								"8b1e4a1e-afd3-2937-a94a-593519b9ce15",
								true,
							},
						},
						name = "Recognize final trash before Chort",
						uuid = "39d0bfc6-a520-9488-b5b9-dd1a9ccac909",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "c9b01f43-327a-aa80-bdfe-43bc04be1ebb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "7975a1ca-00da-868c-9a99-f1b2cf241aa9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "481b8b0d-c02f-d699-b209-2fb9bbab467e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=ClyteumAutoSimConfig\nlocal s=data.clyteum_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.clyteum_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "252749ff-c462-c71e-85bf-e833b4688370",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "3dec5f17-58fd-54b3-a3df-aa62f4701d10",
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
								"3dec5f17-58fd-54b3-a3df-aa62f4701d10",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14705",
						partyTargetContentID = 14705,
						uuid = "b844ba78-b055-d3ef-a922-25c978f98358",
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
								"3dec5f17-58fd-54b3-a3df-aa62f4701d10",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14708",
						partyTargetContentID = 14708,
						uuid = "09aeb0d1-75a0-c250-b7a7-47ba20e63908",
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
								"b844ba78-b055-d3ef-a922-25c978f98358",
								true,
							},
							
							{
								"09aeb0d1-75a0-c250-b7a7-47ba20e63908",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "8b1e4a1e-afd3-2937-a94a-593519b9ce15",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			name = "[Clyteum AutoSim] Recognize final trash before Chort",
			timeout = 2,
			uuid = "a5f837b2-d20b-563e-844b-2356d449118a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.clyteum_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"e4bdb084-d351-1582-80ad-3dd2b8a3d1eb",
								true,
							},
							
							{
								"618ec4ae-cfc7-b211-9f60-ca2aa67d301e",
								true,
							},
							
							{
								"bd4cf580-19e4-68e4-83f9-8e64ea1d44a9",
								true,
							},
							
							{
								"da467b18-8db0-aac0-a5ba-da2f12adc615",
								true,
							},
							
							{
								"eacaac50-e35c-0268-9d57-495b2a2cf139",
								true,
							},
						},
						name = "Recognize final trash before Malphas",
						uuid = "e64e1a3e-9ea6-579c-ab5b-c3e29e25236d",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "e4bdb084-d351-1582-80ad-3dd2b8a3d1eb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "618ec4ae-cfc7-b211-9f60-ca2aa67d301e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "bd4cf580-19e4-68e4-83f9-8e64ea1d44a9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=ClyteumAutoSimConfig\nlocal s=data.clyteum_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.clyteum_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "da467b18-8db0-aac0-a5ba-da2f12adc615",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "2e740117-4e1c-5679-9285-17a8069fb617",
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
								"2e740117-4e1c-5679-9285-17a8069fb617",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14711",
						partyTargetContentID = 14711,
						uuid = "4f307bde-74cf-73b8-926c-b4a55a92cf60",
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
								"2e740117-4e1c-5679-9285-17a8069fb617",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14712",
						partyTargetContentID = 14712,
						uuid = "22905218-ba0a-6d59-acd3-a16cd6bf8ee5",
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
								"2e740117-4e1c-5679-9285-17a8069fb617",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14713",
						partyTargetContentID = 14713,
						uuid = "5f745cd1-bf0c-7761-a0a9-d3cafd5bc407",
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
								"4f307bde-74cf-73b8-926c-b4a55a92cf60",
								true,
							},
							
							{
								"22905218-ba0a-6d59-acd3-a16cd6bf8ee5",
								true,
							},
							
							{
								"5f745cd1-bf0c-7761-a0a9-d3cafd5bc407",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "eacaac50-e35c-0268-9d57-495b2a2cf139",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			name = "[Clyteum AutoSim] Recognize final trash before Malphas",
			timeout = 2,
			uuid = "62adcc09-d0c3-5290-8589-985f94161a71",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=ClyteumAutoSimConfig\nlocal s=data.clyteum_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then if c then c.poolStatus=nil end;self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==14716 or target.contentid==14734 or target.contentid==14758) then data.clyteum_final_trash=nil;c.poolStatus=nil;self.used=true;return end\nlocal now=Now()\nif not data.clyteum_pool_next or now>=data.clyteum_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.clyteum_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"4bdcdf60-3bb3-4de0-bf99-8db6c6dadaf4",
								true,
							},
							
							{
								"2d2f3007-f244-b862-9ccc-8d2ad6b265dd",
								true,
							},
							
							{
								"bae5850b-6ea9-ffa4-aa28-40586d4a3b8f",
								true,
							},
							
							{
								"c0d41937-2ae1-997c-8a8d-9fc0846dab83",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "76cf06ba-5c57-523d-a530-d31e526491fc",
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
						localmapid = 1345,
						name = "Clyteum (1345)",
						uuid = "4bdcdf60-3bb3-4de0-bf99-8db6c6dadaf4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "2d2f3007-f244-b862-9ccc-8d2ad6b265dd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "bae5850b-6ea9-ffa4-aa28-40586d4a3b8f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.clyteum_final_trash==true",
						name = "Final trash detected",
						uuid = "c0d41937-2ae1-997c-8a8d-9fc0846dab83",
						version = 3,
					},
				},
			},
			displayPath = "Clyteum/AutoSim",
			name = "[Clyteum AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "ac54e9c9-081b-aa01-89e8-8f3359110f17",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Meso Terminal",
			uuid = "da85c29a-1b65-4f50-bed7-f829613cc92a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Meso Terminal",
			name = "AutoSim",
			uuid = "8a4cb452-77fe-2672-84d0-579b99d282e3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not MesoTerminalAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill13970=130.024, kill14047=136.562, kill13974=205.226,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\MesoTerminal.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill13970\",\"kill14047\",\"kill13974\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill13970=math.max(15,math.min(1200,C.kill13970))\n    C.kill14047=math.max(15,math.min(1200,C.kill14047))\n    C.kill13974=math.max(15,math.min(1200,C.kill13974))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    MesoTerminalAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif MesoTerminalAutoSimConfig.poolFinal==nil then\n MesoTerminalAutoSimConfig.poolFinal=true\n table.insert(MesoTerminalAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1292, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1292 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=MesoTerminalAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.meso_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill13970=C.kill13970,kill14047=C.kill14047,kill13974=C.kill13974,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true,activeEnds={}}\ndata.meso_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[13970]={[\"name\"]=\"Chirurgeon General\",[\"movement\"]={},[\"downtime\"]={},[\"aliases\"]={},[\"anchors\"]={[43797]={48.89,74.25,125.953},[43798]={4.156,103.656},[43799]={64.969,113.718},[43802]={36.593,96.593}}},[14047]={[\"name\"]=\"Bloody Headsman\",[\"movement\"]={{36.5,37.5},{41.5,42.5},{46.0,47.5}},[\"downtime\"]={},[\"aliases\"]={},[\"anchors\"]={[43577]={0.281},[43578]={6.484,105.234},[43581]={17.562},[43586]={24.843},[43588]={59.453},[43591]={49.125},[43593]={34.187},[43597]={84.328}}},[13974]={[\"name\"]=\"Immortal Remains\",[\"movement\"]={{67.5,68.5},{75.0,76.0},{77.5,78.5},{90.0,91.5},{95.0,96.0},{97.5,99.5}},[\"downtime\"]={},[\"aliases\"]={},[\"anchors\"]={[43809]={15.875,53.329,111.047},[43821]={43.078,193.531},[43823]={101.812,202.712},[43825]={5.187,211.899}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    C.poolStatus=nil\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- limited four-player samples: estimates remain optional\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    -- Native paired targetability transitions corroborate these downtime windows.\n    -- Attackability forecasting is independent of the optional movement forecast.\n    for i=1,#def.downtime do\n        local w=def.downtime[i]\n        if origin+w[2]>now then S.add(\"FullDowntime\",math.max(origin+w[1],now),origin+w[2],1,true) end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    aid=def.aliases[aid] or aid -- documented alternate casts share one occurrence sequence\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local ends=S.activeEnds\n    ends.CasterDowntime=now;ends.GroundFieldMovement=now;ends.FullDowntime=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now and phase.relative then\n            ends[phase.kind]=math.max(ends[phase.kind],phase.b)\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=ends[phase.kind]\n            if phase.kind==\"GroundFieldMovement\" then minimum=math.max(minimum,ends.CasterDowntime) end\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b;ends[phase.kind]=b\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"8cc2a669-6cb0-6219-b4aa-aec9a0b3f483",
								true,
							},
							
							{
								"c9ec547e-ffa5-15c7-90b1-9c7bcbf99933",
								true,
							},
							
							{
								"506573ad-a727-2195-9b68-9a73f1097f9f",
								true,
							},
							
							{
								"7f61651a-f6d8-7e76-aedb-05550af3e332",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "0b451de2-955a-3c27-abdd-f90460272e97",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "8cc2a669-6cb0-6219-b4aa-aec9a0b3f483",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "c9ec547e-ffa5-15c7-90b1-9c7bcbf99933",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "506573ad-a727-2195-9b68-9a73f1097f9f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.meso_autosim == nil",
						name = "Setup not completed",
						uuid = "7f61651a-f6d8-7e76-aedb-05550af3e332",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			name = "[Meso Terminal AutoSim] Set up this combat",
			timeout = 2,
			uuid = "109af3a5-0dba-fa42-88e6-c1aee4e2b408",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.meso_autosim=nil\ndata.meso_final_trash=nil\ndata.meso_pool_next=nil\nif MesoTerminalAutoSimConfig then MesoTerminalAutoSimConfig.poolStatus=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"0227879e-438f-1a60-9752-9ae86de170e1",
								true,
							},
							
							{
								"c074f0da-7b73-d095-a5d4-f54ed59b2d87",
								true,
							},
							
							{
								"b240b4c9-24cc-35a3-b1d7-07f0215c74fc",
								true,
							},
							
							{
								"0c22300a-1beb-5496-94d6-3dd7e7b14c0d",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "5a786b6d-8b8d-0520-b98a-b2ed233e0727",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "0227879e-438f-1a60-9752-9ae86de170e1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "c074f0da-7b73-d095-a5d4-f54ed59b2d87",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "b240b4c9-24cc-35a3-b1d7-07f0215c74fc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.meso_autosim ~= nil",
						name = "Has combat state",
						uuid = "0c22300a-1beb-5496-94d6-3dd7e7b14c0d",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			name = "[Meso Terminal AutoSim] Reset between combats",
			timeout = 2,
			uuid = "83c5aeff-c0f6-ccf4-805e-7eee7896ab77",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.meso_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"ae5ad0d1-e0a3-2986-b462-4621625c483c",
								true,
							},
							
							{
								"89ca4892-6984-67f8-8c43-5496d03c57c0",
								true,
							},
							
							{
								"249092fb-294c-5c5f-920b-651bad0ad7db",
								true,
							},
							
							{
								"87de0b94-187f-474e-a675-4be0726b3329",
								true,
							},
							
							{
								"88690b2a-c0d9-726c-a09b-a68a19e3292e",
								true,
							},
						},
						name = "Chirurgeon General cast anchors",
						uuid = "bb337ec9-626a-a0fb-99a7-18bcfd00c6c2",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "ae5ad0d1-e0a3-2986-b462-4621625c483c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "89ca4892-6984-67f8-8c43-5496d03c57c0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "249092fb-294c-5c5f-920b-651bad0ad7db",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13970,
						name = "Chirurgeon General",
						uuid = "87de0b94-187f-474e-a675-4be0726b3329",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.meso_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "88690b2a-c0d9-726c-a09b-a68a19e3292e",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			eventType = 3,
			name = "[Meso Terminal AutoSim] Chirurgeon General cast anchors",
			timeout = 2,
			uuid = "7051416a-6910-0431-bd63-f9a88c9f4bc9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.meso_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"b4cf9794-683b-f8c8-9ff8-c35a7a15b90b",
								true,
							},
							
							{
								"737508ca-d837-76bd-a9c7-5842f1fae1b5",
								true,
							},
							
							{
								"f856add6-565d-43a7-9a5b-590a4e234b2e",
								true,
							},
							
							{
								"466e5666-d22b-e5be-bc69-82c26ff4054a",
								true,
							},
							
							{
								"0440480f-2909-b644-8a14-0539e30e998c",
								true,
							},
						},
						name = "Bloody Headsman cast anchors",
						uuid = "8eaf61f8-0f88-5ddc-aa8a-75a9c85e5884",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "b4cf9794-683b-f8c8-9ff8-c35a7a15b90b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "737508ca-d837-76bd-a9c7-5842f1fae1b5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "f856add6-565d-43a7-9a5b-590a4e234b2e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14047,
						name = "Bloody Headsman",
						uuid = "466e5666-d22b-e5be-bc69-82c26ff4054a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.meso_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "0440480f-2909-b644-8a14-0539e30e998c",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			eventType = 3,
			name = "[Meso Terminal AutoSim] Bloody Headsman cast anchors",
			timeout = 2,
			uuid = "1f781452-8ef2-908d-a634-76cfbf8f136e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.meso_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"d68a153f-2168-1b2d-80ae-5f2aff2dc23f",
								true,
							},
							
							{
								"cfeb743f-b8d8-a44f-bbf7-2eae1fb07f3f",
								true,
							},
							
							{
								"24684702-f223-cf63-855f-67386566994f",
								true,
							},
							
							{
								"d7ea8f2b-b477-e91d-92ea-e43a2c528317",
								true,
							},
							
							{
								"88ff6f5f-f15a-2b48-9893-4d5356426eff",
								true,
							},
						},
						name = "Immortal Remains cast anchors",
						uuid = "2a3e0989-b234-16bd-9a7b-0c8f4dcbb437",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "d68a153f-2168-1b2d-80ae-5f2aff2dc23f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "cfeb743f-b8d8-a44f-bbf7-2eae1fb07f3f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "24684702-f223-cf63-855f-67386566994f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13974,
						name = "Immortal Remains",
						uuid = "d7ea8f2b-b477-e91d-92ea-e43a2c528317",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.meso_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "88ff6f5f-f15a-2b48-9893-4d5356426eff",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			eventType = 3,
			name = "[Meso Terminal AutoSim] Immortal Remains cast anchors",
			timeout = 2,
			uuid = "d5c57743-876b-c60e-b501-b5af1e61c31f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not MesoTerminalAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill13970=130.024, kill14047=136.562, kill13974=205.226,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\MesoTerminal.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill13970\",\"kill14047\",\"kill13974\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill13970=math.max(15,math.min(1200,C.kill13970))\n    C.kill14047=math.max(15,math.min(1200,C.kill14047))\n    C.kill13974=math.max(15,math.min(1200,C.kill13974))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    MesoTerminalAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif MesoTerminalAutoSimConfig.poolFinal==nil then\n MesoTerminalAutoSimConfig.poolFinal=true\n table.insert(MesoTerminalAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=MesoTerminalAutoSimConfig\nlocal visible=GUI:Begin(\"Meso Terminal - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Level 100, four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from sampled BLM positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. Manual values are optional estimates from available four-player samples; party pace varies.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Chirurgeon General (seconds)\",C.kill13970,5,15,\"%.1f\")\n        if changed then C.kill13970=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Bloody Headsman (seconds)\",C.kill14047,5,15,\"%.1f\")\n        if changed then C.kill14047=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Immortal Remains (seconds)\",C.kill13974,5,15,\"%.1f\")\n        if changed then C.kill13974=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"3b7982fb-d211-8679-b361-35eae0034e71",
								true,
							},
							
							{
								"e2dab821-54e4-a393-929b-7cb3bc469b4c",
								true,
							},
						},
						name = "Settings",
						uuid = "4e7382b1-3d5b-e624-8df7-de21ab4e97e7",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "3b7982fb-d211-8679-b361-35eae0034e71",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "e2dab821-54e4-a393-929b-7cb3bc469b4c",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			eventType = 13,
			name = "[Meso Terminal AutoSim] Settings",
			timeout = 2,
			uuid = "c1bddd20-e5b6-8ad8-ab87-23f1a301a1dc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.meso_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"54d2dfaf-014c-f577-83d6-50671c71ca8e",
								true,
							},
							
							{
								"5fa57a13-fad5-0e03-9185-764102d1e638",
								true,
							},
							
							{
								"af7bee1a-310c-bf35-9686-bc3f63036376",
								true,
							},
							
							{
								"64817d50-a3f6-7b8b-8e44-72ae505dfe9b",
								true,
							},
							
							{
								"105553ea-5105-c62f-96ed-ee5f3181c675",
								true,
							},
						},
						name = "Recognize final trash before Chirurgeon General",
						uuid = "bc2eb4bb-8125-5d50-9021-3c063d26c3cd",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "54d2dfaf-014c-f577-83d6-50671c71ca8e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "5fa57a13-fad5-0e03-9185-764102d1e638",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "af7bee1a-310c-bf35-9686-bc3f63036376",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=MesoTerminalAutoSimConfig\nlocal s=data.meso_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.meso_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "64817d50-a3f6-7b8b-8e44-72ae505dfe9b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "94eb705d-97d7-af35-9d87-75b37f472908",
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
								"94eb705d-97d7-af35-9d87-75b37f472908",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14025",
						partyTargetContentID = 14025,
						uuid = "f6c05bba-8c3d-213b-98e2-bf5b7132174d",
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
								"f6c05bba-8c3d-213b-98e2-bf5b7132174d",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "105553ea-5105-c62f-96ed-ee5f3181c675",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			name = "[Meso Terminal AutoSim] Recognize final trash before Chirurgeon General",
			timeout = 2,
			uuid = "6d49adf1-443f-140d-96d5-897e40c86348",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.meso_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"05406304-e3b8-a25d-a7f8-a46d66abd587",
								true,
							},
							
							{
								"dc27d35a-480c-75c8-af8c-cb7b65182041",
								true,
							},
							
							{
								"b0a96013-fb42-abe3-b261-e3e603f929bf",
								true,
							},
							
							{
								"4bedc65f-3e04-2f70-bf8c-23ab9cf6d42e",
								true,
							},
							
							{
								"1803ec77-cfd9-d3cc-86cb-9805109cc5bf",
								true,
							},
						},
						name = "Recognize final trash before Bloody Headsman",
						uuid = "3e1c7b8e-d149-d2a9-a71c-33bd3e5290f3",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "05406304-e3b8-a25d-a7f8-a46d66abd587",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "dc27d35a-480c-75c8-af8c-cb7b65182041",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "b0a96013-fb42-abe3-b261-e3e603f929bf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=MesoTerminalAutoSimConfig\nlocal s=data.meso_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.meso_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "4bedc65f-3e04-2f70-bf8c-23ab9cf6d42e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "1ea62e59-9e27-e57a-a90f-3f160c982449",
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
								"1ea62e59-9e27-e57a-a90f-3f160c982449",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14028",
						partyTargetContentID = 14028,
						uuid = "b9873d2e-8663-d180-bbc5-e30788fae044",
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
								"1ea62e59-9e27-e57a-a90f-3f160c982449",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14030",
						partyTargetContentID = 14030,
						uuid = "c64e11be-da21-178f-8000-41f0c468abbc",
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
								"b9873d2e-8663-d180-bbc5-e30788fae044",
								true,
							},
							
							{
								"c64e11be-da21-178f-8000-41f0c468abbc",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "1803ec77-cfd9-d3cc-86cb-9805109cc5bf",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			name = "[Meso Terminal AutoSim] Recognize final trash before Bloody Headsman",
			timeout = 2,
			uuid = "d85984b4-639f-8935-a728-1f5db1fee0e9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.meso_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"ff25cafd-02a8-1e6b-9687-262dcd64cb38",
								true,
							},
							
							{
								"bd439938-1276-0140-8755-fe465c938280",
								true,
							},
							
							{
								"8704af17-c542-ed0f-b6b7-3cceb93a5a61",
								true,
							},
							
							{
								"768ae648-0126-e487-a66e-6a2262cdb8fc",
								true,
							},
							
							{
								"4ffad1ca-a5b2-6b4b-9b40-44301b350a2f",
								true,
							},
						},
						name = "Recognize final trash before Immortal Remains",
						uuid = "9211ca35-3c8a-289f-80c9-bb0e635041ec",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "ff25cafd-02a8-1e6b-9687-262dcd64cb38",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "bd439938-1276-0140-8755-fe465c938280",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "8704af17-c542-ed0f-b6b7-3cceb93a5a61",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=MesoTerminalAutoSimConfig\nlocal s=data.meso_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.meso_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "768ae648-0126-e487-a66e-6a2262cdb8fc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "94d5aa1c-332a-be7c-a7e9-c0d1c17c78eb",
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
								"94d5aa1c-332a-be7c-a7e9-c0d1c17c78eb",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 14034",
						partyTargetContentID = 14034,
						uuid = "7930239f-4d29-61da-9dbf-0adf7180e170",
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
								"7930239f-4d29-61da-9dbf-0adf7180e170",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "4ffad1ca-a5b2-6b4b-9b40-44301b350a2f",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			name = "[Meso Terminal AutoSim] Recognize final trash before Immortal Remains",
			timeout = 2,
			uuid = "2ef7b998-22b5-812d-a3a7-d881c597c0f1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=MesoTerminalAutoSimConfig\nlocal s=data.meso_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then if c then c.poolStatus=nil end;self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==13970 or target.contentid==14047 or target.contentid==13974) then data.meso_final_trash=nil;c.poolStatus=nil;self.used=true;return end\nlocal now=Now()\nif not data.meso_pool_next or now>=data.meso_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.meso_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"a0a139ae-26fe-fd99-a8dd-81a99231a578",
								true,
							},
							
							{
								"e5b06208-069e-10c4-ad49-ae0c5c8df109",
								true,
							},
							
							{
								"69303568-d876-64e2-9d56-2d7cdd0109ea",
								true,
							},
							
							{
								"cf0cf194-1a7a-d036-a2f6-27970977a996",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "e3a40e6b-e7aa-82dd-b519-fc6180d4e76f",
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
						localmapid = 1292,
						name = "Meso Terminal (1292)",
						uuid = "a0a139ae-26fe-fd99-a8dd-81a99231a578",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "e5b06208-069e-10c4-ad49-ae0c5c8df109",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "69303568-d876-64e2-9d56-2d7cdd0109ea",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.meso_final_trash==true",
						name = "Final trash detected",
						uuid = "cf0cf194-1a7a-d036-a2f6-27970977a996",
						version = 3,
					},
				},
			},
			displayPath = "Meso Terminal/AutoSim",
			name = "[Meso Terminal AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "977995e9-ba6c-f2e5-9d22-c526f9e42632",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Underkeep",
			uuid = "9dcebb4f-edfa-64a7-b0a1-59aa57f969ee",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Underkeep",
			name = "AutoSim",
			uuid = "b5d1a905-489b-d340-977a-9fd394df6440",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not UnderkeepAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill13753=121.343, kill13757=112.39, kill13749=167.391,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Underkeep.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill13753\",\"kill13757\",\"kill13749\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill13753=math.max(15,math.min(1200,C.kill13753))\n    C.kill13757=math.max(15,math.min(1200,C.kill13757))\n    C.kill13749=math.max(15,math.min(1200,C.kill13749))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    UnderkeepAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif UnderkeepAutoSimConfig.poolFinal==nil then\n UnderkeepAutoSimConfig.poolFinal=true\n table.insert(UnderkeepAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1266, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1266 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=UnderkeepAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.underkeep_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill13753=C.kill13753,kill13757=C.kill13757,kill13749=C.kill13749,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true,activeEnds={}}\ndata.underkeep_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[13753]={[\"name\"]=\"Gargant\",[\"movement\"]={{19.0,20.0}},[\"downtime\"]={{27.758,40.124},{79.663,95.101}},[\"aliases\"]={},[\"anchors\"]={[42542]={35.133,90.109},[42544]={69.687},[42546]={15.648,53.851,95.492},[42547]={5.179,45.281},[42548]={109.71}}},[13757]={[\"name\"]=\"Soldier S0\",[\"movement\"]={{44.0,45.0},{71.5,72.5}},[\"downtime\"]={},[\"aliases\"]={[42563]=42562},[\"anchors\"]={[42562]={27.422,46.187,90.359},[42570]={102.75},[42572]={65.906},[42574]={70.031},[42579]={5.133},[43136]={14.258,78.195}}},[13749]={[\"name\"]=\"Valia Pira\",[\"movement\"]={{28.0,29.5},{45.5,46.5}},[\"downtime\"]={},[\"aliases\"]={},[\"anchors\"]={[42513]={17.383,79.618,124.156},[42519]={56.484},[42525]={6.141,112.938},[42540]={102.703,163.656},[42738]={68.391,150.493},[42739]={88.5,136.172}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    C.poolStatus=nil\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- limited four-player samples: estimates remain optional\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    -- Native paired targetability transitions corroborate these downtime windows.\n    -- Attackability forecasting is independent of the optional movement forecast.\n    for i=1,#def.downtime do\n        local w=def.downtime[i]\n        if origin+w[2]>now then S.add(\"FullDowntime\",math.max(origin+w[1],now),origin+w[2],1,true) end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    aid=def.aliases[aid] or aid -- documented alternate casts share one occurrence sequence\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local ends=S.activeEnds\n    ends.CasterDowntime=now;ends.GroundFieldMovement=now;ends.FullDowntime=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now and phase.relative then\n            ends[phase.kind]=math.max(ends[phase.kind],phase.b)\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=ends[phase.kind]\n            if phase.kind==\"GroundFieldMovement\" then minimum=math.max(minimum,ends.CasterDowntime) end\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b;ends[phase.kind]=b\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"c5b31458-f034-c944-9339-0f2ffe3bd908",
								true,
							},
							
							{
								"fc30ac10-f4bb-e176-8d06-101425715a49",
								true,
							},
							
							{
								"595d91fc-1293-5749-aeab-afcbbcaf6ee8",
								true,
							},
							
							{
								"40ac8ce0-6990-a230-8872-c1e57de37706",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "f5d3ac8f-6dc3-3ec5-9fda-45211d5afaea",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "c5b31458-f034-c944-9339-0f2ffe3bd908",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "fc30ac10-f4bb-e176-8d06-101425715a49",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "595d91fc-1293-5749-aeab-afcbbcaf6ee8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.underkeep_autosim == nil",
						name = "Setup not completed",
						uuid = "40ac8ce0-6990-a230-8872-c1e57de37706",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			name = "[Underkeep AutoSim] Set up this combat",
			timeout = 2,
			uuid = "262d8a83-37d9-133d-94c5-47ce5bd361bb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.underkeep_autosim=nil\ndata.underkeep_final_trash=nil\ndata.underkeep_pool_next=nil\nif UnderkeepAutoSimConfig then UnderkeepAutoSimConfig.poolStatus=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"2714dfc2-131b-6da1-bd01-27cc17109dd4",
								true,
							},
							
							{
								"e96d09e9-2a7b-21d4-bc58-cc9ccc1eca23",
								true,
							},
							
							{
								"ef59c0d1-129b-34bf-bd64-8239377abfaa",
								true,
							},
							
							{
								"c84765d3-6f44-0554-8272-59b18cbd6eba",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "0d3852e5-42ce-ca78-9103-c33366e9a5d9",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "2714dfc2-131b-6da1-bd01-27cc17109dd4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "e96d09e9-2a7b-21d4-bc58-cc9ccc1eca23",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "ef59c0d1-129b-34bf-bd64-8239377abfaa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.underkeep_autosim ~= nil",
						name = "Has combat state",
						uuid = "c84765d3-6f44-0554-8272-59b18cbd6eba",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			name = "[Underkeep AutoSim] Reset between combats",
			timeout = 2,
			uuid = "68c0289e-c18b-6b97-a3b0-76fe190e2981",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.underkeep_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"3fa086b4-e6df-599c-9128-a64b1aecfa96",
								true,
							},
							
							{
								"e8c46cc9-95e8-da75-b57d-73f1b611652e",
								true,
							},
							
							{
								"0b7e980d-8156-0e53-be04-30d3d8ab49df",
								true,
							},
							
							{
								"a34ed5de-132a-6510-8d1d-1542116aa84f",
								true,
							},
							
							{
								"a2584adf-1068-3ee3-8597-ed5be1e24882",
								true,
							},
						},
						name = "Gargant cast anchors",
						uuid = "e240f55c-19c7-e350-a1ee-6d2b7b4c72a3",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "3fa086b4-e6df-599c-9128-a64b1aecfa96",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "e8c46cc9-95e8-da75-b57d-73f1b611652e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "0b7e980d-8156-0e53-be04-30d3d8ab49df",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13753,
						name = "Gargant",
						uuid = "a34ed5de-132a-6510-8d1d-1542116aa84f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.underkeep_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "a2584adf-1068-3ee3-8597-ed5be1e24882",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			eventType = 3,
			name = "[Underkeep AutoSim] Gargant cast anchors",
			timeout = 2,
			uuid = "4f3e04b7-a9ab-124f-a394-c1377c416daa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.underkeep_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"bd432a53-3023-e852-80c0-efa059d14bfb",
								true,
							},
							
							{
								"8f184f7f-bf15-7479-ab5d-bc0386f45490",
								true,
							},
							
							{
								"0467b974-f020-871d-93a8-a07a7af923d9",
								true,
							},
							
							{
								"397989d1-8b2e-5ed1-8371-d40d30cf0616",
								true,
							},
							
							{
								"b52faf26-32b6-824e-b1f1-a6041f2ac3e3",
								true,
							},
						},
						name = "Soldier S0 cast anchors",
						uuid = "14836b6c-e9d1-f47c-a9ba-c95782a8e0d2",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "bd432a53-3023-e852-80c0-efa059d14bfb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "8f184f7f-bf15-7479-ab5d-bc0386f45490",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "0467b974-f020-871d-93a8-a07a7af923d9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13757,
						name = "Soldier S0",
						uuid = "397989d1-8b2e-5ed1-8371-d40d30cf0616",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.underkeep_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "b52faf26-32b6-824e-b1f1-a6041f2ac3e3",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			eventType = 3,
			name = "[Underkeep AutoSim] Soldier S0 cast anchors",
			timeout = 2,
			uuid = "cb96266e-4004-e152-930f-3eb1c0bef565",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.underkeep_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"c8ab1fa3-6639-27d1-8a47-4f17cdbf45ac",
								true,
							},
							
							{
								"b42ac307-ee42-e367-92f9-641ccfb07a9a",
								true,
							},
							
							{
								"8bb1d23b-9f9c-4375-9474-57bfe9e0c416",
								true,
							},
							
							{
								"c84e73e5-f68a-9203-8151-abad2922d2de",
								true,
							},
							
							{
								"98576ae7-f898-5533-acf4-38fd3283132c",
								true,
							},
						},
						name = "Valia Pira cast anchors",
						uuid = "8b4c1c82-5a1c-15bb-95cc-ce87c52fb591",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "c8ab1fa3-6639-27d1-8a47-4f17cdbf45ac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b42ac307-ee42-e367-92f9-641ccfb07a9a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "8bb1d23b-9f9c-4375-9474-57bfe9e0c416",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13749,
						name = "Valia Pira",
						uuid = "c84e73e5-f68a-9203-8151-abad2922d2de",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.underkeep_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "98576ae7-f898-5533-acf4-38fd3283132c",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			eventType = 3,
			name = "[Underkeep AutoSim] Valia Pira cast anchors",
			timeout = 2,
			uuid = "da9c4504-34ac-8b24-a55e-51fb17be0cba",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not UnderkeepAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill13753=121.343, kill13757=112.39, kill13749=167.391,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Underkeep.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill13753\",\"kill13757\",\"kill13749\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill13753=math.max(15,math.min(1200,C.kill13753))\n    C.kill13757=math.max(15,math.min(1200,C.kill13757))\n    C.kill13749=math.max(15,math.min(1200,C.kill13749))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    UnderkeepAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif UnderkeepAutoSimConfig.poolFinal==nil then\n UnderkeepAutoSimConfig.poolFinal=true\n table.insert(UnderkeepAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=UnderkeepAutoSimConfig\nlocal visible=GUI:Begin(\"Underkeep - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Level 100, four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from sampled BLM positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. Manual values are optional estimates from available four-player samples; party pace varies.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Gargant (seconds)\",C.kill13753,5,15,\"%.1f\")\n        if changed then C.kill13753=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Soldier S0 (seconds)\",C.kill13757,5,15,\"%.1f\")\n        if changed then C.kill13757=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Valia Pira (seconds)\",C.kill13749,5,15,\"%.1f\")\n        if changed then C.kill13749=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"74be627c-9063-5f6e-a067-380eae022ba4",
								true,
							},
							
							{
								"cd381382-fa51-57d9-a0b7-a7b5cd78becc",
								true,
							},
						},
						name = "Settings",
						uuid = "87393ea1-f444-2411-9cb9-ed223a80f4e5",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "74be627c-9063-5f6e-a067-380eae022ba4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "cd381382-fa51-57d9-a0b7-a7b5cd78becc",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			eventType = 13,
			name = "[Underkeep AutoSim] Settings",
			timeout = 2,
			uuid = "a8615d6a-8d47-c411-a6cf-883444e6d7ab",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.underkeep_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"1995223f-2f33-f4a6-b9e4-402bc6d9612a",
								true,
							},
							
							{
								"6b6796b7-af2b-47ba-9c51-dc5eab10f1d3",
								true,
							},
							
							{
								"4dda5b9e-27ca-d37c-b64b-6982fb03498f",
								true,
							},
							
							{
								"cacba676-80e2-233e-943b-2a1449e365d9",
								true,
							},
							
							{
								"1d99d0a5-e362-5761-b5de-f9cc38d2c6be",
								true,
							},
						},
						name = "Recognize final trash before Gargant",
						uuid = "16abb06c-85a4-6496-ad04-3ee3068be4a2",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "1995223f-2f33-f4a6-b9e4-402bc6d9612a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "6b6796b7-af2b-47ba-9c51-dc5eab10f1d3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "4dda5b9e-27ca-d37c-b64b-6982fb03498f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=UnderkeepAutoSimConfig\nlocal s=data.underkeep_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.underkeep_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "cacba676-80e2-233e-943b-2a1449e365d9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "67b37790-827d-92aa-ac5d-6d191d9aafa0",
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
								"67b37790-827d-92aa-ac5d-6d191d9aafa0",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13766",
						partyTargetContentID = 13766,
						uuid = "1f832df3-7426-3d75-8fea-4ba43e24a3e5",
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
								"1f832df3-7426-3d75-8fea-4ba43e24a3e5",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "1d99d0a5-e362-5761-b5de-f9cc38d2c6be",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			name = "[Underkeep AutoSim] Recognize final trash before Gargant",
			timeout = 2,
			uuid = "4dab5bb0-44bd-ef79-bb80-048ef8176efb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.underkeep_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"1bf197fc-46ed-52b2-99d0-1a86db40eb58",
								true,
							},
							
							{
								"de2c7b42-0403-67ff-ba9b-e69fcf96da4a",
								true,
							},
							
							{
								"561c70a6-8203-7ff6-8ab2-e6c7df8f943b",
								true,
							},
							
							{
								"1eeef059-d946-610e-a43a-316dc81fa578",
								true,
							},
							
							{
								"34cb90e2-189c-5086-a851-353ee1940743",
								true,
							},
						},
						name = "Recognize final trash before Soldier S0",
						uuid = "31704b53-17c8-ae24-8547-33c12f87c457",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "1bf197fc-46ed-52b2-99d0-1a86db40eb58",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "de2c7b42-0403-67ff-ba9b-e69fcf96da4a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "561c70a6-8203-7ff6-8ab2-e6c7df8f943b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=UnderkeepAutoSimConfig\nlocal s=data.underkeep_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.underkeep_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "1eeef059-d946-610e-a43a-316dc81fa578",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "da443ec6-b195-9ad3-9957-e785623febc0",
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
								"da443ec6-b195-9ad3-9957-e785623febc0",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13769",
						partyTargetContentID = 13769,
						uuid = "b94e651a-07db-63f3-8b6f-f3c096037ad4",
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
								"da443ec6-b195-9ad3-9957-e785623febc0",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13771",
						partyTargetContentID = 13771,
						uuid = "bad4b71d-4d7a-e824-bef3-d334c23eee41",
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
								"b94e651a-07db-63f3-8b6f-f3c096037ad4",
								true,
							},
							
							{
								"bad4b71d-4d7a-e824-bef3-d334c23eee41",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "34cb90e2-189c-5086-a851-353ee1940743",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			name = "[Underkeep AutoSim] Recognize final trash before Soldier S0",
			timeout = 2,
			uuid = "53390504-ade3-2569-bcf8-338adcbc92e5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.underkeep_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"0012138b-547a-f30c-8701-a043002dc339",
								true,
							},
							
							{
								"1a6efe92-e3b6-97e5-a623-cdd43e09fd48",
								true,
							},
							
							{
								"8ecc84c0-9f49-3541-93bc-abb681dd799e",
								true,
							},
							
							{
								"9a628a11-245b-96e4-aff7-811a7f1dcc85",
								true,
							},
							
							{
								"d8fc4da7-85f3-a4ca-a93d-0a2f5dc445fb",
								true,
							},
						},
						name = "Recognize final trash before Valia Pira",
						uuid = "27d480aa-2381-a03d-a607-fa6857bc8580",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "0012138b-547a-f30c-8701-a043002dc339",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "1a6efe92-e3b6-97e5-a623-cdd43e09fd48",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "8ecc84c0-9f49-3541-93bc-abb681dd799e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=UnderkeepAutoSimConfig\nlocal s=data.underkeep_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.underkeep_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "9a628a11-245b-96e4-aff7-811a7f1dcc85",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "21e054a4-f0e5-dc18-9397-e9f58bfa4cb9",
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
								"21e054a4-f0e5-dc18-9397-e9f58bfa4cb9",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13775",
						partyTargetContentID = 13775,
						uuid = "c25a2ce4-5f4f-86d4-923f-935410f8d060",
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
								"c25a2ce4-5f4f-86d4-923f-935410f8d060",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "d8fc4da7-85f3-a4ca-a93d-0a2f5dc445fb",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			name = "[Underkeep AutoSim] Recognize final trash before Valia Pira",
			timeout = 2,
			uuid = "62a25e87-b0a6-ddce-92cd-c9c153d743bc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=UnderkeepAutoSimConfig\nlocal s=data.underkeep_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then if c then c.poolStatus=nil end;self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==13753 or target.contentid==13757 or target.contentid==13749) then data.underkeep_final_trash=nil;c.poolStatus=nil;self.used=true;return end\nlocal now=Now()\nif not data.underkeep_pool_next or now>=data.underkeep_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.underkeep_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"57a60742-f091-8e30-854e-b4067c0715b4",
								true,
							},
							
							{
								"4f7974a2-1080-d5dc-be2f-afa01cf1ef9e",
								true,
							},
							
							{
								"2afa34a8-4e37-ebd9-bfdc-1264de2c0f39",
								true,
							},
							
							{
								"d15ea95a-4310-4850-83f0-2606ef638f90",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "ae7bc8a0-137a-ad98-870d-4a61c00cb3ca",
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
						localmapid = 1266,
						name = "Underkeep (1266)",
						uuid = "57a60742-f091-8e30-854e-b4067c0715b4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "4f7974a2-1080-d5dc-be2f-afa01cf1ef9e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "2afa34a8-4e37-ebd9-bfdc-1264de2c0f39",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.underkeep_final_trash==true",
						name = "Final trash detected",
						uuid = "d15ea95a-4310-4850-83f0-2606ef638f90",
						version = 3,
					},
				},
			},
			displayPath = "Underkeep/AutoSim",
			name = "[Underkeep AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "bf51e175-bc4b-3ff8-8ed0-d45c62107a5f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Yuweyawata Field Station",
			uuid = "34542d93-4b66-e0cf-9265-fe60f48c1769",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Yuweyawata Field Station",
			name = "AutoSim",
			uuid = "173fa6de-d961-49f0-a7a4-2f390b781bcc",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not YuweyawataFieldStationAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill13623=136.125, kill13634=143.312, kill13610=247.5,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\YuweyawataFieldStation.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill13623\",\"kill13634\",\"kill13610\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill13623=math.max(15,math.min(1200,C.kill13623))\n    C.kill13634=math.max(15,math.min(1200,C.kill13634))\n    C.kill13610=math.max(15,math.min(1200,C.kill13610))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    YuweyawataFieldStationAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif YuweyawataFieldStationAutoSimConfig.poolFinal==nil then\n YuweyawataFieldStationAutoSimConfig.poolFinal=true\n table.insert(YuweyawataFieldStationAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1242, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1242 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=YuweyawataFieldStationAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.yuweyawata_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill13623=C.kill13623,kill13634=C.kill13634,kill13610=C.kill13610,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true,activeEnds={}}\ndata.yuweyawata_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[13623]={[\"name\"]=\"Lindblum Zaghnal\",[\"movement\"]={{35.5,36.5},{41.0,44.5},{89.0,90.0}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[40624]={24.828},[40630]={66.14},[40632]={96.859},[40635]={5.187},[40636]={53.062},[41266]={19.75,118.468}}},[13634]={[\"name\"]=\"Overseer Kanilokka\",[\"movement\"]={{24.5,25.5},{35.5,36.5},{92.0,93.0},{120.0,122.0}},[\"downtime\"]={{70.437,88.312}},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[40639]={14.969,103.265},[40643]={36.719},[40645]={66.719},[40646]={71.812},[40647]={91.969},[40654]={49.062,126.594},[40658]={5.203}}},[13610]={[\"name\"]=\"Lunipyati\",[\"movement\"]={{9.5,10.5},{38.0,39.5},{52.5,53.5},{67.5,68.5},{128.0,130.0},{131.0,134.5},{136.0,139.5},{143.5,145.0}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[40603]={22.5},[40604]={100.016},[40610]={117.156},[40612]={6.406,137.016},[40618]={157.656,166.844},[40619]={176.0}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    C.poolStatus=nil\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- limited four-player samples: estimates remain optional\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local ceiling=def.intermission and def.intermission.suspendAt or 1200\n            local a,b=origin+w[1],origin+math.min(w[2],ceiling)\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField and (not def.intermission or w[2]<def.intermission.suspendAt) then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    -- Native paired targetability transitions corroborate these downtime windows.\n    -- Attackability forecasting is independent of the optional movement forecast.\n    for i=1,#def.downtime do\n        local w=def.downtime[i]\n        if origin+w[2]>now then S.add(\"FullDowntime\",math.max(origin+w[1],now),origin+w[2],1,true) end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    aid=def.aliases[aid] or aid -- documented alternate casts share one occurrence sequence\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local ends=S.activeEnds\n    ends.CasterDowntime=now;ends.GroundFieldMovement=now;ends.FullDowntime=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now and phase.relative then\n            ends[phase.kind]=math.max(ends[phase.kind],phase.b)\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=ends[phase.kind]\n            if phase.kind==\"GroundFieldMovement\" then minimum=math.max(minimum,ends.CasterDowntime) end\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b;ends[phase.kind]=b\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"c32ae429-71c9-420d-81a3-de8d7d43ab82",
								true,
							},
							
							{
								"c3913fd6-d58b-f250-bf48-311f94b083cc",
								true,
							},
							
							{
								"02c7ea7d-c470-7ea8-939a-e64ddec19aab",
								true,
							},
							
							{
								"de976e45-7271-a5b1-a0bb-ef2de5a3af2f",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "71212812-6d4c-fd69-b9de-1a3c83a16085",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "c32ae429-71c9-420d-81a3-de8d7d43ab82",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "c3913fd6-d58b-f250-bf48-311f94b083cc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "02c7ea7d-c470-7ea8-939a-e64ddec19aab",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.yuweyawata_autosim == nil",
						name = "Setup not completed",
						uuid = "de976e45-7271-a5b1-a0bb-ef2de5a3af2f",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			name = "[Yuweyawata Field Station AutoSim] Set up this combat",
			timeout = 2,
			uuid = "2dc55896-e460-f94f-b61c-9469aca60f4a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.yuweyawata_autosim=nil\ndata.yuweyawata_final_trash=nil\ndata.yuweyawata_pool_next=nil\nif YuweyawataFieldStationAutoSimConfig then YuweyawataFieldStationAutoSimConfig.poolStatus=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"dc79827f-35e2-3ac7-a72d-3bf0ea9cc857",
								true,
							},
							
							{
								"8fe39a22-7cb1-b327-8764-0b4363152286",
								true,
							},
							
							{
								"bb4aba7d-dc36-8e11-979c-ec5be7fcd3a6",
								true,
							},
							
							{
								"61221cae-cbdb-c8dd-94d7-f782cd52dc29",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "c192c6c2-2946-8d5a-9cac-b73ea1e4bb8b",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "dc79827f-35e2-3ac7-a72d-3bf0ea9cc857",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "8fe39a22-7cb1-b327-8764-0b4363152286",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "bb4aba7d-dc36-8e11-979c-ec5be7fcd3a6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.yuweyawata_autosim ~= nil",
						name = "Has combat state",
						uuid = "61221cae-cbdb-c8dd-94d7-f782cd52dc29",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			name = "[Yuweyawata Field Station AutoSim] Reset between combats",
			timeout = 2,
			uuid = "40db544d-7ea1-742d-a891-a3fbb98ee6f7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.yuweyawata_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"22a8555c-a447-9b0d-b5ec-edc5f41472d3",
								true,
							},
							
							{
								"9e9eb582-3e90-4e72-ad88-85eea915316b",
								true,
							},
							
							{
								"762af2e3-94b3-2d54-ba13-2ecc1a37e1df",
								true,
							},
							
							{
								"07505cdf-6641-7fd1-89a8-251ad1943d6e",
								true,
							},
							
							{
								"b17271ef-5b16-e51d-b5ce-0feb6c326ead",
								true,
							},
						},
						name = "Lindblum Zaghnal cast anchors",
						uuid = "44d4fd09-c7f7-74ba-9c84-5178b696a04c",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "22a8555c-a447-9b0d-b5ec-edc5f41472d3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "9e9eb582-3e90-4e72-ad88-85eea915316b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "762af2e3-94b3-2d54-ba13-2ecc1a37e1df",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13623,
						name = "Lindblum Zaghnal",
						uuid = "07505cdf-6641-7fd1-89a8-251ad1943d6e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.yuweyawata_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "b17271ef-5b16-e51d-b5ce-0feb6c326ead",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			eventType = 3,
			name = "[Yuweyawata Field Station AutoSim] Lindblum Zaghnal cast anchors",
			timeout = 2,
			uuid = "7fe26079-d25f-629d-8920-3f65ae721eb7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.yuweyawata_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"548873e2-7db0-c440-81ec-28fa3a4e4f1e",
								true,
							},
							
							{
								"27281139-d687-3c41-8812-8faf6dc396a4",
								true,
							},
							
							{
								"51a083b0-c7e8-d262-990d-913b1f431433",
								true,
							},
							
							{
								"ff2eb189-1b37-0fa4-b2f5-67b3c5fb71f0",
								true,
							},
							
							{
								"cba3f945-9348-f223-96b9-00bb2b6b3c66",
								true,
							},
						},
						name = "Overseer Kanilokka cast anchors",
						uuid = "3c232b91-4adc-e00e-b76e-d7827881119c",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "548873e2-7db0-c440-81ec-28fa3a4e4f1e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "27281139-d687-3c41-8812-8faf6dc396a4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "51a083b0-c7e8-d262-990d-913b1f431433",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13634,
						name = "Overseer Kanilokka",
						uuid = "ff2eb189-1b37-0fa4-b2f5-67b3c5fb71f0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.yuweyawata_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "cba3f945-9348-f223-96b9-00bb2b6b3c66",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			eventType = 3,
			name = "[Yuweyawata Field Station AutoSim] Overseer Kanilokka cast anchors",
			timeout = 2,
			uuid = "79dd037b-50a2-2aae-bcf2-872b1141214a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.yuweyawata_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"5e56f988-c971-55f4-9b1a-52112178bb51",
								true,
							},
							
							{
								"0a9a71b0-0a3e-6bec-8c91-eff1272cb8be",
								true,
							},
							
							{
								"d3ad2672-6d30-f327-8162-8ee13ce257ec",
								true,
							},
							
							{
								"97659535-6535-755b-9953-27f1f2bcae40",
								true,
							},
							
							{
								"f9eb178a-5509-ebc1-b75e-c2ba5fd0a246",
								true,
							},
						},
						name = "Lunipyati cast anchors",
						uuid = "02c685a1-bbb9-0ce7-9372-b48164a76ce5",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "5e56f988-c971-55f4-9b1a-52112178bb51",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "0a9a71b0-0a3e-6bec-8c91-eff1272cb8be",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "d3ad2672-6d30-f327-8162-8ee13ce257ec",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13610,
						name = "Lunipyati",
						uuid = "97659535-6535-755b-9953-27f1f2bcae40",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.yuweyawata_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "f9eb178a-5509-ebc1-b75e-c2ba5fd0a246",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			eventType = 3,
			name = "[Yuweyawata Field Station AutoSim] Lunipyati cast anchors",
			timeout = 2,
			uuid = "625001a4-657b-4e50-ac47-506fd979839c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not YuweyawataFieldStationAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill13623=136.125, kill13634=143.312, kill13610=247.5,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\YuweyawataFieldStation.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill13623\",\"kill13634\",\"kill13610\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill13623=math.max(15,math.min(1200,C.kill13623))\n    C.kill13634=math.max(15,math.min(1200,C.kill13634))\n    C.kill13610=math.max(15,math.min(1200,C.kill13610))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    YuweyawataFieldStationAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif YuweyawataFieldStationAutoSimConfig.poolFinal==nil then\n YuweyawataFieldStationAutoSimConfig.poolFinal=true\n table.insert(YuweyawataFieldStationAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=YuweyawataFieldStationAutoSimConfig\nlocal visible=GUI:Begin(\"Yuweyawata Field Station - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Level 100, four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from sampled BLM positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. Manual values are optional estimates from available four-player samples; party pace varies.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Lindblum Zaghnal (seconds)\",C.kill13623,5,15,\"%.1f\")\n        if changed then C.kill13623=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Overseer Kanilokka (seconds)\",C.kill13634,5,15,\"%.1f\")\n        if changed then C.kill13634=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Lunipyati (seconds)\",C.kill13610,5,15,\"%.1f\")\n        if changed then C.kill13610=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"75045636-ce37-68b7-b537-667d7b37566b",
								true,
							},
							
							{
								"7c33b37d-dae6-0cea-a7d4-0c1e64612588",
								true,
							},
						},
						name = "Settings",
						uuid = "dad46fdb-d385-76e1-80f5-c1e8e941a19d",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "75045636-ce37-68b7-b537-667d7b37566b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "7c33b37d-dae6-0cea-a7d4-0c1e64612588",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			eventType = 13,
			name = "[Yuweyawata Field Station AutoSim] Settings",
			timeout = 2,
			uuid = "0c1d727a-a0b5-1797-9ff2-b6d417a01c9b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.yuweyawata_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"da67002c-9071-830a-9726-03d93fd82d66",
								true,
							},
							
							{
								"6205d282-c8bc-f69f-a991-67756e35f6c4",
								true,
							},
							
							{
								"0ab15528-5f1e-cf30-bf84-4a1d609c53d3",
								true,
							},
							
							{
								"eb40ed98-9565-1736-90a8-ddd89286453b",
								true,
							},
							
							{
								"f09a031c-01d2-5830-84a6-0500bc9f163b",
								true,
							},
						},
						name = "Recognize final trash before Lindblum Zaghnal",
						uuid = "6ab7a48a-8cf3-6693-9c92-870296fe104a",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "da67002c-9071-830a-9726-03d93fd82d66",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "6205d282-c8bc-f69f-a991-67756e35f6c4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "0ab15528-5f1e-cf30-bf84-4a1d609c53d3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=YuweyawataFieldStationAutoSimConfig\nlocal s=data.yuweyawata_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.yuweyawata_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "eb40ed98-9565-1736-90a8-ddd89286453b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "ff669b2a-af7e-5b43-9044-01c5f12a2db1",
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
								"ff669b2a-af7e-5b43-9044-01c5f12a2db1",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13571",
						partyTargetContentID = 13571,
						uuid = "03124426-743d-10f9-b534-133e6cd5b6b6",
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
								"03124426-743d-10f9-b534-133e6cd5b6b6",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "f09a031c-01d2-5830-84a6-0500bc9f163b",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			name = "[Yuweyawata Field Station AutoSim] Recognize final trash before Lindblum Zaghnal",
			timeout = 2,
			uuid = "5c0cd9cb-ead1-4f0c-ae04-f7ff5d82582b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.yuweyawata_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"1570748a-671b-1743-a374-efcf953a2478",
								true,
							},
							
							{
								"6918b911-86c6-783b-9ddf-e8f3732e70ad",
								true,
							},
							
							{
								"7c00a138-a5b4-efb7-a1c0-4268c641cf4f",
								true,
							},
							
							{
								"a7ada78d-b4ff-e9e8-ba63-34a4489b7f54",
								true,
							},
							
							{
								"1b4a2044-08c7-ff35-8967-9b9065319809",
								true,
							},
						},
						name = "Recognize final trash before Overseer Kanilokka",
						uuid = "c1e2c651-00eb-43ca-a933-c67608c864e3",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "1570748a-671b-1743-a374-efcf953a2478",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "6918b911-86c6-783b-9ddf-e8f3732e70ad",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "7c00a138-a5b4-efb7-a1c0-4268c641cf4f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=YuweyawataFieldStationAutoSimConfig\nlocal s=data.yuweyawata_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.yuweyawata_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "a7ada78d-b4ff-e9e8-ba63-34a4489b7f54",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "035f9e77-d022-f957-9d4a-c5fc25ef5ba1",
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
								"035f9e77-d022-f957-9d4a-c5fc25ef5ba1",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13578",
						partyTargetContentID = 13578,
						uuid = "4809b40d-ca92-deac-ad01-a8ed4d0bbe5a",
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
								"4809b40d-ca92-deac-ad01-a8ed4d0bbe5a",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "1b4a2044-08c7-ff35-8967-9b9065319809",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			name = "[Yuweyawata Field Station AutoSim] Recognize final trash before Overseer Kanilokka",
			timeout = 2,
			uuid = "67b0e882-4235-1106-9d84-bb46eddab828",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.yuweyawata_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"125193ed-dfdd-d244-9734-47c1974fc88f",
								true,
							},
							
							{
								"81f46540-977b-56b9-a480-cea4c362b7de",
								true,
							},
							
							{
								"2aa147b0-42a1-750a-9e63-6e8304db0469",
								true,
							},
							
							{
								"f62cd856-39e4-2ddb-9edb-3b6ff7879ae0",
								true,
							},
							
							{
								"ae43856c-5ef3-d383-b6cd-0fc8a01f455a",
								true,
							},
						},
						name = "Recognize final trash before Lunipyati",
						uuid = "872be8f3-54c3-cfe6-b947-07ae299d7d96",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "125193ed-dfdd-d244-9734-47c1974fc88f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "81f46540-977b-56b9-a480-cea4c362b7de",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "2aa147b0-42a1-750a-9e63-6e8304db0469",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=YuweyawataFieldStationAutoSimConfig\nlocal s=data.yuweyawata_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.yuweyawata_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "f62cd856-39e4-2ddb-9edb-3b6ff7879ae0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "49a5d577-3788-ae03-b3ef-800bcbf84b87",
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
								"49a5d577-3788-ae03-b3ef-800bcbf84b87",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13582",
						partyTargetContentID = 13582,
						uuid = "4928168d-3688-9b4a-b9ad-1105ceb20881",
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
								"4928168d-3688-9b4a-b9ad-1105ceb20881",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "ae43856c-5ef3-d383-b6cd-0fc8a01f455a",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			name = "[Yuweyawata Field Station AutoSim] Recognize final trash before Lunipyati",
			timeout = 2,
			uuid = "7a1e2b8b-b32d-d66c-94c4-1b687c962b06",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=YuweyawataFieldStationAutoSimConfig\nlocal s=data.yuweyawata_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then if c then c.poolStatus=nil end;self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==13623 or target.contentid==13634 or target.contentid==13610) then data.yuweyawata_final_trash=nil;c.poolStatus=nil;self.used=true;return end\nlocal now=Now()\nif not data.yuweyawata_pool_next or now>=data.yuweyawata_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.yuweyawata_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"3bde1208-5615-39a8-9612-b3c1d44348bc",
								true,
							},
							
							{
								"7afc792f-50b8-3068-804b-45a2ed0b43c1",
								true,
							},
							
							{
								"6eb70b9f-c9f6-6aba-8f30-d5731aa89e82",
								true,
							},
							
							{
								"962f5d43-cfd5-57f3-980e-7bd8747a991e",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "83dd8b8e-545f-7ef4-8187-3be8b060f5c7",
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
						localmapid = 1242,
						name = "Yuweyawata Field Station (1242)",
						uuid = "3bde1208-5615-39a8-9612-b3c1d44348bc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "7afc792f-50b8-3068-804b-45a2ed0b43c1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "6eb70b9f-c9f6-6aba-8f30-d5731aa89e82",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.yuweyawata_final_trash==true",
						name = "Final trash detected",
						uuid = "962f5d43-cfd5-57f3-980e-7bd8747a991e",
						version = 3,
					},
				},
			},
			displayPath = "Yuweyawata Field Station/AutoSim",
			name = "[Yuweyawata Field Station AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "2ef1651a-81d9-0351-9575-3138e698c799",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Strayborough Deadwalk",
			uuid = "602301b8-e70d-ae3b-a98c-712229e5e239",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Strayborough Deadwalk",
			name = "AutoSim",
			uuid = "e93c3a39-820d-143f-b496-369c9760818f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not StrayboroughDeadwalkAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill13073=116.39, kill12760=109.413, kill12763=169.383,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\StrayboroughDeadwalk.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill13073\",\"kill12760\",\"kill12763\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill13073=math.max(15,math.min(1200,C.kill13073))\n    C.kill12760=math.max(15,math.min(1200,C.kill12760))\n    C.kill12763=math.max(15,math.min(1200,C.kill12763))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    StrayboroughDeadwalkAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif StrayboroughDeadwalkAutoSimConfig.poolFinal==nil then\n StrayboroughDeadwalkAutoSimConfig.poolFinal=true\n table.insert(StrayboroughDeadwalkAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1204, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1204 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=StrayboroughDeadwalkAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.strayborough_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill13073=C.kill13073,kill12760=C.kill12760,kill12763=C.kill12763,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true,activeEnds={}}\ndata.strayborough_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[13073]={[\"name\"]=\"His Royal Headness Leonogg I\",[\"movement\"]={{45.0,46.0},{50.0,51.0},{52.5,53.5},{54.5,56.0},{57.5,59.0},{101.5,103.0}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[36526]={15.343},[36527]={32.788,66.999,100.062},[36529]={6.132},[36530]={110.367},[36598]={38.929,72.179,105.195},[39682]={48.226},[39685]={77.398}}},[12760]={[\"name\"]=\"Jack-in-the-Pot\",[\"movement\"]={{32.5,34.0},{68.5,69.5},{87.5,88.5}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[36716]={8.172,39.984},[36717]={16.312,47.124,110.5},[36722]={72.398},[36726]={92.57}}},[12763]={[\"name\"]=\"Träumerei\",[\"movement\"]={{11.0,12.0},{40.5,42.5},{124.5,125.5},{127.0,128.0}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[37065]={74.289},[37132]={24.555,109.781},[37136]={30.703,117.977,156.516},[37139]={6.204,85.485,169.797},[37140]={16.367,85.391},[37142]={147.32},[37145]={54.984,178.891},[37148]={95.649,136.118},[37168]={66.07}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    C.poolStatus=nil\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- limited four-player samples: estimates remain optional\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local ceiling=def.intermission and def.intermission.suspendAt or 1200\n            local a,b=origin+w[1],origin+math.min(w[2],ceiling)\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField and (not def.intermission or w[2]<def.intermission.suspendAt) then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    -- Native paired targetability transitions corroborate these downtime windows.\n    -- Attackability forecasting is independent of the optional movement forecast.\n    for i=1,#def.downtime do\n        local w=def.downtime[i]\n        if origin+w[2]>now then S.add(\"FullDowntime\",math.max(origin+w[1],now),origin+w[2],1,true) end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    aid=def.aliases[aid] or aid -- documented alternate casts share one occurrence sequence\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local ends=S.activeEnds\n    ends.CasterDowntime=now;ends.GroundFieldMovement=now;ends.FullDowntime=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now and phase.relative then\n            ends[phase.kind]=math.max(ends[phase.kind],phase.b)\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=ends[phase.kind]\n            if phase.kind==\"GroundFieldMovement\" then minimum=math.max(minimum,ends.CasterDowntime) end\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b;ends[phase.kind]=b\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"80a98775-b6af-d876-83d5-103b67694ff2",
								true,
							},
							
							{
								"2fff4404-79ed-018e-ac61-d775aaf998ae",
								true,
							},
							
							{
								"175cb029-1478-168c-94d5-8a748b2ee36d",
								true,
							},
							
							{
								"88d6bcf9-a77e-9885-ad03-f1f062444338",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "e8afa369-3bb2-a6ca-bae8-3eab338959bc",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "80a98775-b6af-d876-83d5-103b67694ff2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "2fff4404-79ed-018e-ac61-d775aaf998ae",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "175cb029-1478-168c-94d5-8a748b2ee36d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.strayborough_autosim == nil",
						name = "Setup not completed",
						uuid = "88d6bcf9-a77e-9885-ad03-f1f062444338",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			name = "[Strayborough Deadwalk AutoSim] Set up this combat",
			timeout = 2,
			uuid = "27978481-a6a6-b131-abcf-0c204a70a2f6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.strayborough_autosim=nil\ndata.strayborough_final_trash=nil\ndata.strayborough_pool_next=nil\nif StrayboroughDeadwalkAutoSimConfig then StrayboroughDeadwalkAutoSimConfig.poolStatus=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"33b37fc8-21fe-44f0-a5c2-580a7ef5ab9c",
								true,
							},
							
							{
								"ba223c36-0954-4c3a-81ff-3985358e0863",
								true,
							},
							
							{
								"1eeebe20-8e3e-7225-bed0-23d64797eeb2",
								true,
							},
							
							{
								"b12180a6-a465-abfa-a361-790f5e28ccfa",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "b3bc8be1-3121-48cf-9963-cadb35a00aa3",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "33b37fc8-21fe-44f0-a5c2-580a7ef5ab9c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "ba223c36-0954-4c3a-81ff-3985358e0863",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "1eeebe20-8e3e-7225-bed0-23d64797eeb2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.strayborough_autosim ~= nil",
						name = "Has combat state",
						uuid = "b12180a6-a465-abfa-a361-790f5e28ccfa",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			name = "[Strayborough Deadwalk AutoSim] Reset between combats",
			timeout = 2,
			uuid = "1c31774a-136c-91f6-b694-b9b1715656ea",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.strayborough_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"dfe11316-4dcf-95ad-ad3a-3869216f8280",
								true,
							},
							
							{
								"12dc85a8-105d-547c-a0c2-cd1b5708e0fc",
								true,
							},
							
							{
								"4e9ec2e4-4e96-aab7-8a09-4a6b77d02f6d",
								true,
							},
							
							{
								"4c7f049f-9a3f-7cbb-9f94-254fa660e3fc",
								true,
							},
							
							{
								"5e7f3c36-2d20-90fc-a184-040786a845d7",
								true,
							},
						},
						name = "His Royal Headness Leonogg I cast anchors",
						uuid = "79f08de9-dd4c-cdf7-9923-66c140cb495b",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "dfe11316-4dcf-95ad-ad3a-3869216f8280",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "12dc85a8-105d-547c-a0c2-cd1b5708e0fc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "4e9ec2e4-4e96-aab7-8a09-4a6b77d02f6d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13073,
						name = "His Royal Headness Leonogg I",
						uuid = "4c7f049f-9a3f-7cbb-9f94-254fa660e3fc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.strayborough_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "5e7f3c36-2d20-90fc-a184-040786a845d7",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			eventType = 3,
			name = "[Strayborough Deadwalk AutoSim] His Royal Headness Leonogg I cast anchors",
			timeout = 2,
			uuid = "45e34cf4-0644-fce5-ab6d-79959646559c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.strayborough_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"26b34ad8-a5ce-85fe-ada6-ae6a32e50733",
								true,
							},
							
							{
								"67f37a9f-6809-4e16-9c60-8ba07aeed977",
								true,
							},
							
							{
								"ce79616c-0419-cbe2-b69a-df68bac900ac",
								true,
							},
							
							{
								"73677d10-7189-5b45-a224-263304a10b61",
								true,
							},
							
							{
								"ff0c1a87-b534-41e6-8b40-d180c10cb6b7",
								true,
							},
						},
						name = "Jack-in-the-Pot cast anchors",
						uuid = "342cfb66-072d-7140-a3d7-f4071c1e9baa",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "26b34ad8-a5ce-85fe-ada6-ae6a32e50733",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "67f37a9f-6809-4e16-9c60-8ba07aeed977",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "ce79616c-0419-cbe2-b69a-df68bac900ac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12760,
						name = "Jack-in-the-Pot",
						uuid = "73677d10-7189-5b45-a224-263304a10b61",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.strayborough_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "ff0c1a87-b534-41e6-8b40-d180c10cb6b7",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			eventType = 3,
			name = "[Strayborough Deadwalk AutoSim] Jack-in-the-Pot cast anchors",
			timeout = 2,
			uuid = "6c72c800-45c4-f68a-a786-49385945bfe2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.strayborough_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"bafd361b-5609-6a75-8801-90906741f762",
								true,
							},
							
							{
								"531b1d1e-e7c6-65e3-8024-9d90d3f8efa0",
								true,
							},
							
							{
								"91b37673-af41-3793-a6f8-09d86b08d64e",
								true,
							},
							
							{
								"828b51c5-ee31-88df-a9be-bf8b15504801",
								true,
							},
							
							{
								"7794c842-948f-8863-a7c8-c4a586a410a8",
								true,
							},
						},
						name = "Träumerei cast anchors",
						uuid = "2132b899-ed71-e9f3-9899-a568223217df",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "bafd361b-5609-6a75-8801-90906741f762",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "531b1d1e-e7c6-65e3-8024-9d90d3f8efa0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "91b37673-af41-3793-a6f8-09d86b08d64e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12763,
						name = "Träumerei",
						uuid = "828b51c5-ee31-88df-a9be-bf8b15504801",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.strayborough_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "7794c842-948f-8863-a7c8-c4a586a410a8",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			eventType = 3,
			name = "[Strayborough Deadwalk AutoSim] Träumerei cast anchors",
			timeout = 2,
			uuid = "200e080c-c8d3-e24c-bbc0-1ecb645c5237",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not StrayboroughDeadwalkAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill13073=116.39, kill12760=109.413, kill12763=169.383,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\StrayboroughDeadwalk.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill13073\",\"kill12760\",\"kill12763\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill13073=math.max(15,math.min(1200,C.kill13073))\n    C.kill12760=math.max(15,math.min(1200,C.kill12760))\n    C.kill12763=math.max(15,math.min(1200,C.kill12763))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    StrayboroughDeadwalkAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif StrayboroughDeadwalkAutoSimConfig.poolFinal==nil then\n StrayboroughDeadwalkAutoSimConfig.poolFinal=true\n table.insert(StrayboroughDeadwalkAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=StrayboroughDeadwalkAutoSimConfig\nlocal visible=GUI:Begin(\"Strayborough Deadwalk - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Level 100, four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from sampled BLM positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. Manual values are optional estimates from available four-player samples; party pace varies.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"His Royal Headness Leonogg I (seconds)\",C.kill13073,5,15,\"%.1f\")\n        if changed then C.kill13073=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Jack-in-the-Pot (seconds)\",C.kill12760,5,15,\"%.1f\")\n        if changed then C.kill12760=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Träumerei (seconds)\",C.kill12763,5,15,\"%.1f\")\n        if changed then C.kill12763=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"ff8be3f1-6009-9111-a2be-69d8a9d689b2",
								true,
							},
							
							{
								"ffc06a92-c6d1-6ee8-a5af-576cea54d408",
								true,
							},
						},
						name = "Settings",
						uuid = "4b85cde2-5496-671e-a951-cff85cd64266",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "ff8be3f1-6009-9111-a2be-69d8a9d689b2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "ffc06a92-c6d1-6ee8-a5af-576cea54d408",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			eventType = 13,
			name = "[Strayborough Deadwalk AutoSim] Settings",
			timeout = 2,
			uuid = "5ef50100-3aa0-d551-b4f0-a48c930b4bd6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.strayborough_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"f70ce8ae-8e74-3e65-9f26-4da0afd0580b",
								true,
							},
							
							{
								"acda53e8-a8f6-fc95-a033-41a6959b3b39",
								true,
							},
							
							{
								"c273baaa-aea7-e619-83c2-4b4c1c4c46a6",
								true,
							},
							
							{
								"dd283e67-9e2d-e1ee-aaf5-4178c9e38ef9",
								true,
							},
							
							{
								"d3b8362e-f385-ec97-a144-0be36a36a6f5",
								true,
							},
						},
						name = "Recognize final trash before His Royal Headness Leonogg I",
						uuid = "579ee20f-1c38-5642-93a3-6315aff84800",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "f70ce8ae-8e74-3e65-9f26-4da0afd0580b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "acda53e8-a8f6-fc95-a033-41a6959b3b39",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "c273baaa-aea7-e619-83c2-4b4c1c4c46a6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=StrayboroughDeadwalkAutoSimConfig\nlocal s=data.strayborough_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.strayborough_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "dd283e67-9e2d-e1ee-aaf5-4178c9e38ef9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "6b63bf5b-d502-25c3-a58d-b616ea59c084",
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
								"6b63bf5b-d502-25c3-a58d-b616ea59c084",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13286",
						partyTargetContentID = 13286,
						uuid = "31829738-411d-0279-afe4-9314ce57c9c0",
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
								"6b63bf5b-d502-25c3-a58d-b616ea59c084",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13291",
						partyTargetContentID = 13291,
						uuid = "9ae4b6fc-252e-4bd3-9f41-0c7aea2d5363",
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
								"31829738-411d-0279-afe4-9314ce57c9c0",
								true,
							},
							
							{
								"9ae4b6fc-252e-4bd3-9f41-0c7aea2d5363",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "d3b8362e-f385-ec97-a144-0be36a36a6f5",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			name = "[Strayborough Deadwalk AutoSim] Recognize final trash before His Royal Headness Leonogg I",
			timeout = 2,
			uuid = "2f4bab0b-9cd9-ef14-adff-45a9ac61093d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.strayborough_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"0e460963-5d1b-02c8-929b-a060a5c367f5",
								true,
							},
							
							{
								"d7362ff1-05b1-4a8e-a509-1e2c3216ca0b",
								true,
							},
							
							{
								"315aeb6a-d1bb-a56e-b89b-0d6b24eb1bfd",
								true,
							},
							
							{
								"dd0cb855-711d-a09d-9cdc-849358ec385a",
								true,
							},
							
							{
								"46319931-56e4-7ca4-a264-628c2513ad5f",
								true,
							},
						},
						name = "Recognize final trash before Jack-in-the-Pot",
						uuid = "547f6529-c104-2024-90cd-d798e9fbf8a9",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "0e460963-5d1b-02c8-929b-a060a5c367f5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "d7362ff1-05b1-4a8e-a509-1e2c3216ca0b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "315aeb6a-d1bb-a56e-b89b-0d6b24eb1bfd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=StrayboroughDeadwalkAutoSimConfig\nlocal s=data.strayborough_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.strayborough_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "dd0cb855-711d-a09d-9cdc-849358ec385a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "1b41188b-a2fe-c793-a21d-4702fd037f25",
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
								"1b41188b-a2fe-c793-a21d-4702fd037f25",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13295",
						partyTargetContentID = 13295,
						uuid = "a3c3402c-bf6d-433a-9080-e17f418553c2",
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
								"1b41188b-a2fe-c793-a21d-4702fd037f25",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13296",
						partyTargetContentID = 13296,
						uuid = "c8b1e36d-fc2c-3e5e-b8c8-7d142662a05c",
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
								"1b41188b-a2fe-c793-a21d-4702fd037f25",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13405",
						partyTargetContentID = 13405,
						uuid = "639fa863-3318-5f79-9586-7796d6391a9d",
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
								"a3c3402c-bf6d-433a-9080-e17f418553c2",
								true,
							},
							
							{
								"c8b1e36d-fc2c-3e5e-b8c8-7d142662a05c",
								true,
							},
							
							{
								"639fa863-3318-5f79-9586-7796d6391a9d",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "46319931-56e4-7ca4-a264-628c2513ad5f",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			name = "[Strayborough Deadwalk AutoSim] Recognize final trash before Jack-in-the-Pot",
			timeout = 2,
			uuid = "0943a42e-951c-c216-8f61-b8dc38c0af56",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.strayborough_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"e060b22c-afd0-93d5-93a5-d15caff69d49",
								true,
							},
							
							{
								"eab32cb9-d3b9-d87f-97a0-9bcbe5b5d59e",
								true,
							},
							
							{
								"720a0d5e-1741-fb79-99f9-5c0f53d7b61f",
								true,
							},
							
							{
								"90d311b2-2471-c9e5-865c-81000722fda5",
								true,
							},
							
							{
								"0f9df85f-a5e9-68b0-9c40-54c6ff886fe8",
								true,
							},
						},
						name = "Recognize final trash before Träumerei",
						uuid = "af423593-6af4-0858-bf3a-814562a60cad",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "e060b22c-afd0-93d5-93a5-d15caff69d49",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "eab32cb9-d3b9-d87f-97a0-9bcbe5b5d59e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "720a0d5e-1741-fb79-99f9-5c0f53d7b61f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=StrayboroughDeadwalkAutoSimConfig\nlocal s=data.strayborough_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.strayborough_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "90d311b2-2471-c9e5-865c-81000722fda5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "2dc07641-d2b9-e0e0-9bd0-b952137cd4a2",
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
								"2dc07641-d2b9-e0e0-9bd0-b952137cd4a2",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13298",
						partyTargetContentID = 13298,
						uuid = "93b2f7ac-7a86-0ba6-aaa8-3fa397bdc0e6",
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
								"2dc07641-d2b9-e0e0-9bd0-b952137cd4a2",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13299",
						partyTargetContentID = 13299,
						uuid = "d9a57a91-632b-d03f-b416-59c0eb7887cd",
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
								"2dc07641-d2b9-e0e0-9bd0-b952137cd4a2",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13303",
						partyTargetContentID = 13303,
						uuid = "8fa55526-692d-7dad-8129-f2dac6055357",
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
								"93b2f7ac-7a86-0ba6-aaa8-3fa397bdc0e6",
								true,
							},
							
							{
								"d9a57a91-632b-d03f-b416-59c0eb7887cd",
								true,
							},
							
							{
								"8fa55526-692d-7dad-8129-f2dac6055357",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "0f9df85f-a5e9-68b0-9c40-54c6ff886fe8",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			name = "[Strayborough Deadwalk AutoSim] Recognize final trash before Träumerei",
			timeout = 2,
			uuid = "b1251a2d-bf7e-f30d-a661-e0375f30fd23",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=StrayboroughDeadwalkAutoSimConfig\nlocal s=data.strayborough_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then if c then c.poolStatus=nil end;self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==13073 or target.contentid==12760 or target.contentid==12763) then data.strayborough_final_trash=nil;c.poolStatus=nil;self.used=true;return end\nlocal now=Now()\nif not data.strayborough_pool_next or now>=data.strayborough_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.strayborough_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"cd9e6ecd-60b7-fb69-ab45-0e6321f4b9f0",
								true,
							},
							
							{
								"579f6b40-3667-705c-babb-17cbdf0cdc54",
								true,
							},
							
							{
								"1a760450-1f31-e0ba-9d1a-27f81a858e44",
								true,
							},
							
							{
								"571eb101-c67f-9c1c-971a-328cee63e024",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "9c2e570f-772a-7d4a-929d-b2768a4789f1",
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
						localmapid = 1204,
						name = "Strayborough Deadwalk (1204)",
						uuid = "cd9e6ecd-60b7-fb69-ab45-0e6321f4b9f0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "579f6b40-3667-705c-babb-17cbdf0cdc54",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "1a760450-1f31-e0ba-9d1a-27f81a858e44",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.strayborough_final_trash==true",
						name = "Final trash detected",
						uuid = "571eb101-c67f-9c1c-971a-328cee63e024",
						version = 3,
					},
				},
			},
			displayPath = "Strayborough Deadwalk/AutoSim",
			name = "[Strayborough Deadwalk AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "dc1e2974-94a2-a5eb-9d49-93e67808dc2a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Tender Valley",
			uuid = "4c63ca60-8d9b-bc34-b5c9-c8c9e0e07dba",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Tender Valley",
			name = "AutoSim",
			uuid = "e6a87a93-b9ab-62e0-975b-d53bd2aa5f66",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not TenderValleyAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill12889=117.344, kill12853=113.781, kill12709=156.758,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\TenderValley.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12889\",\"kill12853\",\"kill12709\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12889=math.max(15,math.min(1200,C.kill12889))\n    C.kill12853=math.max(15,math.min(1200,C.kill12853))\n    C.kill12709=math.max(15,math.min(1200,C.kill12709))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    TenderValleyAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif TenderValleyAutoSimConfig.poolFinal==nil then\n TenderValleyAutoSimConfig.poolFinal=true\n table.insert(TenderValleyAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1203, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1203 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=TenderValleyAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.tender_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill12889=C.kill12889,kill12853=C.kill12853,kill12709=C.kill12709,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true,activeEnds={}}\ndata.tender_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[12889]={[\"name\"]=\"Barreltender\",[\"movement\"]={{21.0,22.0},{64.0,65.0},{67.0,68.5},{82.0,83.0}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={[39154]=39155},[\"anchors\"]={[37384]={17.758,28.898,115.234},[37387]={46.46,107.891},[37390]={54.586},[37391]={68.836},[37392]={4.156},[39155]={82.336},[39242]={94.461}}},[12853]={[\"name\"]=\"Anthracite\",[\"movement\"]={{94.0,95.0}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[36542]={7.14,20.547,35.828},[36547]={60.266,116.063},[36548]={70.883,78.453},[36554]={92.07},[36556]={49.477},[38467]={103.727}}},[12709]={[\"name\"]=\"The Greatest Serpent of Tural\",[\"movement\"]={{56.5,58.0},{78.0,79.0},{108.5,109.5},{132.0,134.0},{137.5,139.0}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[36744]={37.726},[36745]={72.609},[36746]={16.718,48.82},[36748]={5.156}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    C.poolStatus=nil\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- limited four-player samples: estimates remain optional\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local ceiling=def.intermission and def.intermission.suspendAt or 1200\n            local a,b=origin+w[1],origin+math.min(w[2],ceiling)\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField and (not def.intermission or w[2]<def.intermission.suspendAt) then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    -- Native paired targetability transitions corroborate these downtime windows.\n    -- Attackability forecasting is independent of the optional movement forecast.\n    for i=1,#def.downtime do\n        local w=def.downtime[i]\n        if origin+w[2]>now then S.add(\"FullDowntime\",math.max(origin+w[1],now),origin+w[2],1,true) end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    aid=def.aliases[aid] or aid -- documented alternate casts share one occurrence sequence\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local ends=S.activeEnds\n    ends.CasterDowntime=now;ends.GroundFieldMovement=now;ends.FullDowntime=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now and phase.relative then\n            ends[phase.kind]=math.max(ends[phase.kind],phase.b)\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=ends[phase.kind]\n            if phase.kind==\"GroundFieldMovement\" then minimum=math.max(minimum,ends.CasterDowntime) end\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b;ends[phase.kind]=b\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"0db8c8ff-b987-b99f-96b2-7b4ad155c1aa",
								true,
							},
							
							{
								"b7eb03f1-72cd-0d86-8343-c72380aebe1f",
								true,
							},
							
							{
								"3809c7b6-0b93-e7d9-ae12-56831fd120b3",
								true,
							},
							
							{
								"88102284-0853-9d65-80de-5c56d7f601a5",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "773e3701-37b4-6e30-a67a-c2781aa32418",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "0db8c8ff-b987-b99f-96b2-7b4ad155c1aa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b7eb03f1-72cd-0d86-8343-c72380aebe1f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "3809c7b6-0b93-e7d9-ae12-56831fd120b3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.tender_autosim == nil",
						name = "Setup not completed",
						uuid = "88102284-0853-9d65-80de-5c56d7f601a5",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			name = "[Tender Valley AutoSim] Set up this combat",
			timeout = 2,
			uuid = "86a5867d-4288-bc29-a83a-deef1fb471b8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.tender_autosim=nil\ndata.tender_final_trash=nil\ndata.tender_pool_next=nil\nif TenderValleyAutoSimConfig then TenderValleyAutoSimConfig.poolStatus=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"f50c390e-3257-c3a1-b713-8b24b1d659da",
								true,
							},
							
							{
								"5b8b0170-6921-8c89-8e41-5e3e1000da87",
								true,
							},
							
							{
								"ecf26c1e-4f65-cbed-84c1-720ce4401a56",
								true,
							},
							
							{
								"d80b4e60-f09d-e2c6-8aef-08de39f47c8c",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "6803c579-037f-6dee-a732-554b6a493a87",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "f50c390e-3257-c3a1-b713-8b24b1d659da",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "5b8b0170-6921-8c89-8e41-5e3e1000da87",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "ecf26c1e-4f65-cbed-84c1-720ce4401a56",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.tender_autosim ~= nil",
						name = "Has combat state",
						uuid = "d80b4e60-f09d-e2c6-8aef-08de39f47c8c",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			name = "[Tender Valley AutoSim] Reset between combats",
			timeout = 2,
			uuid = "33bc46b7-7204-01e2-8dad-30cc37dbc96d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.tender_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"5754114b-4e01-5d1f-832e-d80dc55410ed",
								true,
							},
							
							{
								"223bd761-c89b-13b7-8004-edb69c91714e",
								true,
							},
							
							{
								"13eccd09-c6e1-f490-be41-d596c229233d",
								true,
							},
							
							{
								"66735052-7692-0f35-bf42-e80cb8cdfeca",
								true,
							},
							
							{
								"cafbb6ed-6bc6-304b-b122-db0c6d3581c6",
								true,
							},
						},
						name = "Barreltender cast anchors",
						uuid = "5a0b0e07-5c31-b2fe-9901-f950acd2e968",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "5754114b-4e01-5d1f-832e-d80dc55410ed",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "223bd761-c89b-13b7-8004-edb69c91714e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "13eccd09-c6e1-f490-be41-d596c229233d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12889,
						name = "Barreltender",
						uuid = "66735052-7692-0f35-bf42-e80cb8cdfeca",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.tender_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "cafbb6ed-6bc6-304b-b122-db0c6d3581c6",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			eventType = 3,
			name = "[Tender Valley AutoSim] Barreltender cast anchors",
			timeout = 2,
			uuid = "c7ddc1f8-4cdb-093d-b345-17d12bb958b5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.tender_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"dce0b200-b3e9-ddd9-8144-b359741bfd97",
								true,
							},
							
							{
								"ceb9e081-0c42-d00c-9970-b117b735b789",
								true,
							},
							
							{
								"f9148151-6f7c-a44a-8ba6-d9750dc63334",
								true,
							},
							
							{
								"5b1177ee-1efc-23a7-b2c6-f33bb64471f8",
								true,
							},
							
							{
								"714a5ac3-046f-26f7-a3a3-e5bcc43c999f",
								true,
							},
						},
						name = "Anthracite cast anchors",
						uuid = "b27b9123-1182-7430-b6c0-b092a5e4b470",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "dce0b200-b3e9-ddd9-8144-b359741bfd97",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "ceb9e081-0c42-d00c-9970-b117b735b789",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "f9148151-6f7c-a44a-8ba6-d9750dc63334",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12853,
						name = "Anthracite",
						uuid = "5b1177ee-1efc-23a7-b2c6-f33bb64471f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.tender_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "714a5ac3-046f-26f7-a3a3-e5bcc43c999f",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			eventType = 3,
			name = "[Tender Valley AutoSim] Anthracite cast anchors",
			timeout = 2,
			uuid = "3dd79144-48b7-3600-ae2a-1ed762c0b34e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.tender_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"bfc6d822-58eb-c175-837e-3e4b270bc20e",
								true,
							},
							
							{
								"c8705ae9-21eb-3aa5-b9f4-9973d75df5f3",
								true,
							},
							
							{
								"37a71068-b2f5-0200-a115-576938d37c95",
								true,
							},
							
							{
								"dbb28a3d-e7cb-c85a-bc31-a60f7dae843d",
								true,
							},
							
							{
								"f1f5827d-d2f7-05fe-b4b2-357f75b62063",
								true,
							},
						},
						name = "The Greatest Serpent of Tural cast anchors",
						uuid = "a0fc0cb5-2e06-439d-970c-19f32a4d10f2",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "bfc6d822-58eb-c175-837e-3e4b270bc20e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "c8705ae9-21eb-3aa5-b9f4-9973d75df5f3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "37a71068-b2f5-0200-a115-576938d37c95",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12709,
						name = "The Greatest Serpent of Tural",
						uuid = "dbb28a3d-e7cb-c85a-bc31-a60f7dae843d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.tender_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "f1f5827d-d2f7-05fe-b4b2-357f75b62063",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			eventType = 3,
			name = "[Tender Valley AutoSim] The Greatest Serpent of Tural cast anchors",
			timeout = 2,
			uuid = "de1ab17d-7116-02a5-a463-f46edc728975",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not TenderValleyAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill12889=117.344, kill12853=113.781, kill12709=156.758,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\TenderValley.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12889\",\"kill12853\",\"kill12709\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12889=math.max(15,math.min(1200,C.kill12889))\n    C.kill12853=math.max(15,math.min(1200,C.kill12853))\n    C.kill12709=math.max(15,math.min(1200,C.kill12709))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    TenderValleyAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif TenderValleyAutoSimConfig.poolFinal==nil then\n TenderValleyAutoSimConfig.poolFinal=true\n table.insert(TenderValleyAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=TenderValleyAutoSimConfig\nlocal visible=GUI:Begin(\"Tender Valley - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Level 100, four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from sampled BLM positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. Manual values are optional estimates from available four-player samples; party pace varies.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Barreltender (seconds)\",C.kill12889,5,15,\"%.1f\")\n        if changed then C.kill12889=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Anthracite (seconds)\",C.kill12853,5,15,\"%.1f\")\n        if changed then C.kill12853=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"The Greatest Serpent of Tural (seconds)\",C.kill12709,5,15,\"%.1f\")\n        if changed then C.kill12709=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"930bd58a-ad74-1590-bc42-10ba8e8fa915",
								true,
							},
							
							{
								"75a0dc5c-2442-e2f6-9c43-ea317335e2a2",
								true,
							},
						},
						name = "Settings",
						uuid = "84eca223-0bd6-bba9-8fcd-4165972998f0",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "930bd58a-ad74-1590-bc42-10ba8e8fa915",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "75a0dc5c-2442-e2f6-9c43-ea317335e2a2",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			eventType = 13,
			name = "[Tender Valley AutoSim] Settings",
			timeout = 2,
			uuid = "39e95565-9cb2-2370-8b92-1ac4149d5718",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.tender_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"5d5bb247-acfa-5624-95b7-fdaf842e8d17",
								true,
							},
							
							{
								"9a6af98a-79a4-ba27-8359-ed209e7cb721",
								true,
							},
							
							{
								"5f700ad4-21bd-c1e9-9698-3f92c9c8410f",
								true,
							},
							
							{
								"133d6d1a-ae9f-5fae-985e-47322236d400",
								true,
							},
							
							{
								"6efd0bef-39b7-9d2c-98c9-d780749bcb05",
								true,
							},
						},
						name = "Recognize final trash before Barreltender",
						uuid = "5e356385-6137-3a12-95c9-24dcbc56fcc0",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "5d5bb247-acfa-5624-95b7-fdaf842e8d17",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "9a6af98a-79a4-ba27-8359-ed209e7cb721",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "5f700ad4-21bd-c1e9-9698-3f92c9c8410f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=TenderValleyAutoSimConfig\nlocal s=data.tender_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.tender_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "133d6d1a-ae9f-5fae-985e-47322236d400",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "e46d4d1e-a63c-af40-9463-3c610e0eeb19",
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
								"e46d4d1e-a63c-af40-9463-3c610e0eeb19",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12787",
						partyTargetContentID = 12787,
						uuid = "b5e859f8-f798-b3aa-ad9c-fee733ec944c",
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
								"e46d4d1e-a63c-af40-9463-3c610e0eeb19",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12790",
						partyTargetContentID = 12790,
						uuid = "9e2b79d6-bf32-90fc-90e3-936a99ee78bd",
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
								"e46d4d1e-a63c-af40-9463-3c610e0eeb19",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12793",
						partyTargetContentID = 12793,
						uuid = "73af2a8a-66b1-2e1e-b0c2-5979444c052c",
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
								"b5e859f8-f798-b3aa-ad9c-fee733ec944c",
								true,
							},
							
							{
								"9e2b79d6-bf32-90fc-90e3-936a99ee78bd",
								true,
							},
							
							{
								"73af2a8a-66b1-2e1e-b0c2-5979444c052c",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "6efd0bef-39b7-9d2c-98c9-d780749bcb05",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			name = "[Tender Valley AutoSim] Recognize final trash before Barreltender",
			timeout = 2,
			uuid = "cbcde6f9-19c5-a946-8690-75a167bf6693",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.tender_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"82f28afb-ebc9-4d90-a183-5a050d0226be",
								true,
							},
							
							{
								"bd5af679-bc1e-3cfb-9a2e-70148c6608bd",
								true,
							},
							
							{
								"9f97ab1a-7614-b7a2-91f1-8c3b866033b5",
								true,
							},
							
							{
								"49de5b0c-b635-57c9-860f-9a9ea770918e",
								true,
							},
							
							{
								"5caf2ae9-70bd-0b54-866f-9b7474a6a222",
								true,
							},
						},
						name = "Recognize final trash before Anthracite",
						uuid = "42a188ac-e99c-16d8-b020-e087ae9b546b",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "82f28afb-ebc9-4d90-a183-5a050d0226be",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "bd5af679-bc1e-3cfb-9a2e-70148c6608bd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "9f97ab1a-7614-b7a2-91f1-8c3b866033b5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=TenderValleyAutoSimConfig\nlocal s=data.tender_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.tender_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "49de5b0c-b635-57c9-860f-9a9ea770918e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "719f64e5-3ec5-ba19-9db6-e388a6607ef2",
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
								"719f64e5-3ec5-ba19-9db6-e388a6607ef2",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12797",
						partyTargetContentID = 12797,
						uuid = "2af838fa-c813-f6e2-8842-e7b5251af8f1",
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
								"2af838fa-c813-f6e2-8842-e7b5251af8f1",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "5caf2ae9-70bd-0b54-866f-9b7474a6a222",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			name = "[Tender Valley AutoSim] Recognize final trash before Anthracite",
			timeout = 2,
			uuid = "3cece02c-d3ed-06ee-bc11-607a6be7138a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.tender_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"eeda65ef-0383-01a1-99da-546ea273e117",
								true,
							},
							
							{
								"b56eb126-cead-50cf-906b-2d20821823a5",
								true,
							},
							
							{
								"09d129fb-554e-8c85-a3e9-70b7a02e42fb",
								true,
							},
							
							{
								"819b7ff0-0fcf-1c25-8bf8-b91817a1640c",
								true,
							},
							
							{
								"c5aa92a4-7768-e9ea-96a1-bc3f2ffbc9db",
								true,
							},
						},
						name = "Recognize final trash before The Greatest Serpent of Tural",
						uuid = "ae64429c-8a7c-a011-9491-473d51aeb103",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "eeda65ef-0383-01a1-99da-546ea273e117",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b56eb126-cead-50cf-906b-2d20821823a5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "09d129fb-554e-8c85-a3e9-70b7a02e42fb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=TenderValleyAutoSimConfig\nlocal s=data.tender_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.tender_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "819b7ff0-0fcf-1c25-8bf8-b91817a1640c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "d1e4190a-8376-8717-9584-c5b3c957c4be",
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
								"d1e4190a-8376-8717-9584-c5b3c957c4be",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12801",
						partyTargetContentID = 12801,
						uuid = "dfe8842c-7a75-f31e-9c76-e61e60ac5967",
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
								"dfe8842c-7a75-f31e-9c76-e61e60ac5967",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "c5aa92a4-7768-e9ea-96a1-bc3f2ffbc9db",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			name = "[Tender Valley AutoSim] Recognize final trash before The Greatest Serpent of Tural",
			timeout = 2,
			uuid = "f4cd24db-ae39-48e5-aaf6-8735ed2bd79e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=TenderValleyAutoSimConfig\nlocal s=data.tender_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then if c then c.poolStatus=nil end;self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==12889 or target.contentid==12853 or target.contentid==12709) then data.tender_final_trash=nil;c.poolStatus=nil;self.used=true;return end\nlocal now=Now()\nif not data.tender_pool_next or now>=data.tender_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.tender_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"993cd36b-f945-adad-bfc5-0aae5b1f040f",
								true,
							},
							
							{
								"52feb7c4-1bb0-71c9-b28b-e2263e8d61d0",
								true,
							},
							
							{
								"8d4a21d4-78b8-5684-b6f3-4bb9de53a870",
								true,
							},
							
							{
								"ed7bf5a1-8217-d2a1-9902-979dd9ae7b96",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "2f5e7992-391d-11f9-a89a-291a485e7fad",
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
						localmapid = 1203,
						name = "Tender Valley (1203)",
						uuid = "993cd36b-f945-adad-bfc5-0aae5b1f040f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "52feb7c4-1bb0-71c9-b28b-e2263e8d61d0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "8d4a21d4-78b8-5684-b6f3-4bb9de53a870",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.tender_final_trash==true",
						name = "Final trash detected",
						uuid = "ed7bf5a1-8217-d2a1-9902-979dd9ae7b96",
						version = 3,
					},
				},
			},
			displayPath = "Tender Valley/AutoSim",
			name = "[Tender Valley AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "a5d056e2-4d06-1b62-acd7-8d0bb8090396",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Alexandria",
			uuid = "2264fc06-b017-8ada-be7b-6e74438c62a3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Alexandria",
			name = "AutoSim",
			uuid = "812c2e65-e24d-9d17-b42f-fc4af40a0021",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not AlexandriaAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill12844=127.952, kill12864=129.047, kill12729=179.031,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Alexandria.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12844\",\"kill12864\",\"kill12729\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12844=math.max(15,math.min(1200,C.kill12844))\n    C.kill12864=math.max(15,math.min(1200,C.kill12864))\n    C.kill12729=math.max(15,math.min(1200,C.kill12729))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    AlexandriaAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif AlexandriaAutoSimConfig.poolFinal==nil then\n AlexandriaAutoSimConfig.poolFinal=true\n table.insert(AlexandriaAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1199, BLM and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1199 or p.job~=25 or not p.incombat then self.used=true;return end\nlocal C=AlexandriaAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.alexandria_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement,returnField=C.returnField,trash=C.trash,\n    killOverride=C.killOverride,kill12844=C.kill12844,kill12864=C.kill12864,kill12729=C.kill12729,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true,activeEnds={}}\ndata.alexandria_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[12844]={[\"name\"]=\"Antivirus X\",[\"movement\"]={{33.5,35.0},{44.0,45.5},{49.0,50.5},{84.5,86.0},{88.0,90.0}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={[36380]=36378},[\"anchors\"]={[36378]={8.14,18.281,49.578,78.89,89.093},[36384]={60.671,99.249},[36387]={107.39}}},[12864]={[\"name\"]=\"Amalgam\",[\"movement\"]={{42.0,43.0},{49.0,50.0},{111.0,112.0},{113.5,114.5},{116.0,117.0},{118.5,119.5}},[\"downtime\"]={},[\"intermission\"]=false,[\"aliases\"]={},[\"anchors\"]={[36323]={14.578,58.594,104.25},[36327]={40.391,84.25},[36329]={47.609},[36337]={6.141},[36339]={93.312}}},[12729]={[\"name\"]=\"Eliminator\",[\"movement\"]={{71.5,72.5},{157.0,158.5},{183.5,184.5}},[\"downtime\"]={},[\"intermission\"]={[\"suspendAt\"]=92.188,[\"resumeAt\"]=116.781},[\"aliases\"]={[36769]=36768,[39248]=39247,[39600]=39599},[\"anchors\"]={[36765]={5.219},[36768]={15.734},[36772]={39.875},[36775]={57.641},[36779]={75.563},[36781]={87.063},[36795]={},[39247]={23.172,45.125},[39599]={62.891}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    C.poolStatus=nil\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- limited four-player samples: estimates remain optional\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local ceiling=def.intermission and def.intermission.suspendAt or 1200\n            local a,b=origin+w[1],origin+math.min(w[2],ceiling)\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField and (not def.intermission or w[2]<def.intermission.suspendAt) then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    -- Native paired targetability transitions corroborate these downtime windows.\n    -- Attackability forecasting is independent of the optional movement forecast.\n    for i=1,#def.downtime do\n        local w=def.downtime[i]\n        if origin+w[2]>now then S.add(\"FullDowntime\",math.max(origin+w[1],now),origin+w[2],1,true) end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    aid=def.aliases[aid] or aid -- documented alternate casts share one occurrence sequence\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local ends=S.activeEnds\n    ends.CasterDowntime=now;ends.GroundFieldMovement=now;ends.FullDowntime=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now and phase.relative then\n            ends[phase.kind]=math.max(ends[phase.kind],phase.b)\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=ends[phase.kind]\n            if phase.kind==\"GroundFieldMovement\" then minimum=math.max(minimum,ends.CasterDowntime) end\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b;ends[phase.kind]=b\n            end\n        end\n    end\n    S.origin=candidate\nend\n\n\n-- Generator kill time varies. Later movement starts from the observed boss return.\nfunction S.targetability(args)\n    if not S.enabled or S.resumeForecastDone or args.entityID~=S.entityID or args.entityContentID~=S.boss then return true end\n    local def=S.definitions[S.boss]\n    if not def or not def.intermission then return true end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 then return false end\n    if not args.isTargetable then\n        if now>=S.origin+def.intermission.suspendAt-2 then S.intermissionSeen=true end\n        return true\n    end\n    if not S.intermissionSeen then return true end\n    S.resumeForecastDone=true\n    S.returnOrigin=now-def.intermission.resumeAt\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            if w[2]>def.intermission.resumeAt then\n                local a=S.returnOrigin+math.max(w[1],def.intermission.resumeAt)\n                local b=S.returnOrigin+w[2]\n                if b>now then\n                    S.add(\"CasterDowntime\",math.max(a,now),b,1,false)\n                    if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,false) end\n                end\n            end\n        end\n    end\n    C.status=\"Eliminator returned. Later movement forecasts follow the observed return.\"\n    return true\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"c928750d-3b9a-ef62-886a-57555c6c7458",
								true,
							},
							
							{
								"d918dae3-4d09-f96c-a182-71e1ace8aed1",
								true,
							},
							
							{
								"f65e8dc2-a042-8d50-9353-9473dfd37dde",
								true,
							},
							
							{
								"e1cda855-ce99-060c-b71c-27f453918610",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "1905c91b-4488-fbb3-b64e-771865d5c564",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "c928750d-3b9a-ef62-886a-57555c6c7458",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "d918dae3-4d09-f96c-a182-71e1ace8aed1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "f65e8dc2-a042-8d50-9353-9473dfd37dde",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.alexandria_autosim == nil",
						name = "Setup not completed",
						uuid = "e1cda855-ce99-060c-b71c-27f453918610",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			name = "[Alexandria AutoSim] Set up this combat",
			timeout = 2,
			uuid = "2bdc0f14-bd58-7532-a20b-2b51be7b73bf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.alexandria_autosim=nil\ndata.alexandria_final_trash=nil\ndata.alexandria_pool_next=nil\nif AlexandriaAutoSimConfig then AlexandriaAutoSimConfig.poolStatus=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"c1d720b0-360b-d196-933b-220906e1ece1",
								true,
							},
							
							{
								"a8636c76-5849-21a1-8182-988d709f7759",
								true,
							},
							
							{
								"985ae09c-a536-a175-b684-028a49a0c2ed",
								true,
							},
							
							{
								"da19a849-d0f5-aa83-90b3-2658df2451e0",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "508e0d29-98ab-6a80-9a10-38476a07edfd",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "c1d720b0-360b-d196-933b-220906e1ece1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "a8636c76-5849-21a1-8182-988d709f7759",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "985ae09c-a536-a175-b684-028a49a0c2ed",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.alexandria_autosim ~= nil",
						name = "Has combat state",
						uuid = "da19a849-d0f5-aa83-90b3-2658df2451e0",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			name = "[Alexandria AutoSim] Reset between combats",
			timeout = 2,
			uuid = "a7c4f74e-a80e-bfd3-bce1-b8ec1d5e77fb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.alexandria_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"0af42732-0127-f5e3-b4e5-ecf3828974d2",
								true,
							},
							
							{
								"b5cba81e-6791-3882-b027-638b7627bd8c",
								true,
							},
							
							{
								"0993b790-ab4d-f743-89a8-70bed0123307",
								true,
							},
							
							{
								"d7fed095-b837-7b8b-8d10-8788302a2223",
								true,
							},
							
							{
								"bb19d098-1f61-0190-9a7a-661fcc0adab3",
								true,
							},
						},
						name = "Antivirus X cast anchors",
						uuid = "f826169d-d377-dfa5-802c-f7c925792a30",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "0af42732-0127-f5e3-b4e5-ecf3828974d2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b5cba81e-6791-3882-b027-638b7627bd8c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "0993b790-ab4d-f743-89a8-70bed0123307",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12844,
						name = "Antivirus X",
						uuid = "d7fed095-b837-7b8b-8d10-8788302a2223",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.alexandria_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "bb19d098-1f61-0190-9a7a-661fcc0adab3",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			eventType = 3,
			name = "[Alexandria AutoSim] Antivirus X cast anchors",
			timeout = 2,
			uuid = "2207b573-4ec1-96d4-92ad-4f93aadf7562",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.alexandria_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"383ba488-4a73-4ae2-b012-ad65221c4350",
								true,
							},
							
							{
								"2901eb72-f553-eb87-83ef-160de6e110c6",
								true,
							},
							
							{
								"d1a1ab1d-d817-201a-aec5-3e12e747f77c",
								true,
							},
							
							{
								"7fa7631d-1bc7-81b9-a617-11c2e8fec471",
								true,
							},
							
							{
								"8af38c03-f7ca-65ce-9239-a5f9df23a8f4",
								true,
							},
						},
						name = "Amalgam cast anchors",
						uuid = "cd16a50f-af06-83d8-a18b-ef2ccf32ab7e",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "383ba488-4a73-4ae2-b012-ad65221c4350",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "2901eb72-f553-eb87-83ef-160de6e110c6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "d1a1ab1d-d817-201a-aec5-3e12e747f77c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12864,
						name = "Amalgam",
						uuid = "7fa7631d-1bc7-81b9-a617-11c2e8fec471",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.alexandria_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "8af38c03-f7ca-65ce-9239-a5f9df23a8f4",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			eventType = 3,
			name = "[Alexandria AutoSim] Amalgam cast anchors",
			timeout = 2,
			uuid = "205e5034-1433-f12b-9af9-3d52ee76a65c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.alexandria_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"e53c16f7-a0cc-fed7-9e7a-b24cd9d729b9",
								true,
							},
							
							{
								"491771a8-affa-789c-af2d-9876d6126fdd",
								true,
							},
							
							{
								"e5688804-8213-1d01-9f1e-eca9331db206",
								true,
							},
							
							{
								"4a7e7c2c-2d87-051d-9275-9f6a5e7f1efb",
								true,
							},
							
							{
								"f6886956-ac6f-a349-8e19-eeca448c5983",
								true,
							},
						},
						name = "Eliminator cast anchors",
						uuid = "28395770-9df0-d07e-a443-d700bc28f29b",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "e53c16f7-a0cc-fed7-9e7a-b24cd9d729b9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "491771a8-affa-789c-af2d-9876d6126fdd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "e5688804-8213-1d01-9f1e-eca9331db206",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12729,
						name = "Eliminator",
						uuid = "4a7e7c2c-2d87-051d-9275-9f6a5e7f1efb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.alexandria_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "f6886956-ac6f-a349-8e19-eeca448c5983",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			eventType = 3,
			name = "[Alexandria AutoSim] Eliminator cast anchors",
			timeout = 2,
			uuid = "a37256ac-e6b3-a9ca-972b-03d880439276",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not AlexandriaAutoSimConfig then\n    local C = {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=false, kill12844=127.952, kill12864=129.047, kill12729=179.031,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Alexandria.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12844\",\"kill12864\",\"kill12729\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    local file=io.open(C.path,\"r\")\n    if file then\n        for line in file:lines() do\n            local key,value=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if key and C[key]~=nil then\n                if type(C[key])==\"boolean\" then C[key]=value==\"1\"\n                elseif type(C[key])==\"number\" then\n                    local n=tonumber(value)\n                    if n and n==n and n>-math.huge and n<math.huge then C[key]=n end\n                end\n            end\n        end\n        file:close()\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12844=math.max(15,math.min(1200,C.kill12844))\n    C.kill12864=math.max(15,math.min(1200,C.kill12864))\n    C.kill12729=math.max(15,math.min(1200,C.kill12729))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,key in ipairs(C.keys) do\n            local v=C[key]\n            if type(v)==\"boolean\" then v=v and 1 or 0 end\n            f:write(key,\"\\t\",tostring(v),\"\\n\")\n        end\n        f:close()\n        C.status=\"Saved. Changes apply next combat.\"\n    end\n    AlexandriaAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif AlexandriaAutoSimConfig.poolFinal==nil then\n AlexandriaAutoSimConfig.poolFinal=true\n table.insert(AlexandriaAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID and BLM gates precede it.\nlocal C=AlexandriaAutoSimConfig\nlocal visible=GUI:Begin(\"Alexandria - BLM AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Level 100, four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from sampled BLM positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. Manual values are optional estimates from available four-player samples; party pace varies.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Antivirus X (seconds)\",C.kill12844,5,15,\"%.1f\")\n        if changed then C.kill12844=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Amalgam (seconds)\",C.kill12864,5,15,\"%.1f\")\n        if changed then C.kill12864=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Eliminator (seconds)\",C.kill12729,5,15,\"%.1f\")\n        if changed then C.kill12729=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold Ley Lines + Manafont on final trash before each boss\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before all three bosses. Holds only these two abilities while that combat continues; short holds expire automatically when combat ends or the profile stops.\") end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"35e7fdab-97cb-8e1e-83b1-3cfcb7f34e75",
								true,
							},
							
							{
								"c81d6f15-17c3-6eca-aa81-0b019074cc10",
								true,
							},
						},
						name = "Settings",
						uuid = "12885ef5-ebd4-e84b-b858-bb860e9449e7",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "35e7fdab-97cb-8e1e-83b1-3cfcb7f34e75",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "c81d6f15-17c3-6eca-aa81-0b019074cc10",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			eventType = 13,
			name = "[Alexandria AutoSim] Settings",
			timeout = 2,
			uuid = "13a0e519-a979-f253-a099-622b9ee17b69",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.alexandria_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"ddf4f653-4545-5c84-b498-e48652ec5b02",
								true,
							},
							
							{
								"cafbf00b-2eb2-aa35-bfb7-126c032dbfda",
								true,
							},
							
							{
								"9e5de33c-df0a-0352-990e-d376905f6c9e",
								true,
							},
							
							{
								"484c1963-af71-5936-acc9-007f76d36fcb",
								true,
							},
							
							{
								"4d032328-c6c8-f986-a83c-0ba7395b65f9",
								true,
							},
						},
						name = "Recognize final trash before Antivirus X",
						uuid = "8190eb71-1879-3286-a5e6-ba377922c9a9",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "ddf4f653-4545-5c84-b498-e48652ec5b02",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "cafbf00b-2eb2-aa35-bfb7-126c032dbfda",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "9e5de33c-df0a-0352-990e-d376905f6c9e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=AlexandriaAutoSimConfig\nlocal s=data.alexandria_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.alexandria_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "484c1963-af71-5936-acc9-007f76d36fcb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "f55ba0e6-db2e-8375-859b-3b12b00fd31a",
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
								"f55ba0e6-db2e-8375-859b-3b12b00fd31a",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13188",
						partyTargetContentID = 13188,
						uuid = "c52650e9-65f3-f7bc-9c4b-b75ef7efdbd0",
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
								"c52650e9-65f3-f7bc-9c4b-b75ef7efdbd0",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "4d032328-c6c8-f986-a83c-0ba7395b65f9",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			name = "[Alexandria AutoSim] Recognize final trash before Antivirus X",
			timeout = 2,
			uuid = "585a1b97-f635-cceb-9975-fe0e71ca1c45",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.alexandria_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"0bedf423-0749-5c3e-b286-7eac0d231353",
								true,
							},
							
							{
								"27101f70-47bc-d90d-8591-cf35400f10d7",
								true,
							},
							
							{
								"e696ca95-0efe-3d6e-833b-56ed6dc791f6",
								true,
							},
							
							{
								"794e85e9-1121-35f9-8ab0-b4bc1fbab3e4",
								true,
							},
							
							{
								"f7637b1d-40ec-4b39-81d0-8674943e78b4",
								true,
							},
						},
						name = "Recognize final trash before Amalgam",
						uuid = "cd5d728e-794d-e454-96ce-a62112aec6f0",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "0bedf423-0749-5c3e-b286-7eac0d231353",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "27101f70-47bc-d90d-8591-cf35400f10d7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "e696ca95-0efe-3d6e-833b-56ed6dc791f6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=AlexandriaAutoSimConfig\nlocal s=data.alexandria_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.alexandria_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "794e85e9-1121-35f9-8ab0-b4bc1fbab3e4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "be98fc8f-172d-bc2f-98a7-b3e38e76b3cb",
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
								"be98fc8f-172d-bc2f-98a7-b3e38e76b3cb",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13183",
						partyTargetContentID = 13183,
						uuid = "33ece4dd-db0a-3f96-8563-651ae2801347",
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
								"33ece4dd-db0a-3f96-8563-651ae2801347",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "f7637b1d-40ec-4b39-81d0-8674943e78b4",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			name = "[Alexandria AutoSim] Recognize final trash before Amalgam",
			timeout = 2,
			uuid = "ab61fac8-b55a-d1a1-8b57-0d8c76275ab9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.alexandria_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"e61d4382-ab79-1688-b300-14eb09228bdf",
								true,
							},
							
							{
								"0ef97002-6d33-fb8d-96f6-ab2917531a57",
								true,
							},
							
							{
								"af7324f4-317b-0eeb-b651-f47a956f98a5",
								true,
							},
							
							{
								"83218a6f-a803-9c64-9fff-5a7cade08961",
								true,
							},
							
							{
								"58eb3eef-1641-6a99-a771-8d755579fa65",
								true,
							},
						},
						name = "Recognize final trash before Eliminator",
						uuid = "408d274b-8ec2-cbb7-9a0b-b734f6ce2f48",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "e61d4382-ab79-1688-b300-14eb09228bdf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "0ef97002-6d33-fb8d-96f6-ab2917531a57",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "af7324f4-317b-0eeb-b651-f47a956f98a5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=AlexandriaAutoSimConfig\nlocal s=data.alexandria_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.alexandria_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "83218a6f-a803-9c64-9fff-5a7cade08961",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "0577dc31-d4d7-fe8d-b97d-b58e4e5186e0",
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
								"0577dc31-d4d7-fe8d-b97d-b58e4e5186e0",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 13182",
						partyTargetContentID = 13182,
						uuid = "d5552bb6-7aa7-faa3-9a92-28762a47fa9b",
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
								"d5552bb6-7aa7-faa3-9a92-28762a47fa9b",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Final-pull enemy",
						partyTargetNumber = 0,
						uuid = "58eb3eef-1641-6a99-a771-8d755579fa65",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			name = "[Alexandria AutoSim] Recognize final trash before Eliminator",
			timeout = 2,
			uuid = "82c9f965-aeec-e2e9-8c5f-369a09c4e17b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local c=AlexandriaAutoSimConfig\nlocal s=data.alexandria_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then if c then c.poolStatus=nil end;self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==12844 or target.contentid==12864 or target.contentid==12729) then data.alexandria_final_trash=nil;c.poolStatus=nil;self.used=true;return end\nlocal now=Now()\nif not data.alexandria_pool_next or now>=data.alexandria_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.alexandria_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"ffba50b9-68e3-facf-a2e2-bfd576d43aba",
								true,
							},
							
							{
								"51f0b4be-57a4-4d79-934c-efea31153e22",
								true,
							},
							
							{
								"a7d1bbfa-d1b7-8df4-801b-47e370dc4103",
								true,
							},
							
							{
								"d56bc1f4-7671-6806-a8db-efa1bd4253cc",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "492da30b-02f8-f850-94fa-ee0066a0a7a8",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "ffba50b9-68e3-facf-a2e2-bfd576d43aba",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "51f0b4be-57a4-4d79-934c-efea31153e22",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "a7d1bbfa-d1b7-8df4-801b-47e370dc4103",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.alexandria_final_trash==true",
						name = "Final trash detected",
						uuid = "d56bc1f4-7671-6806-a8db-efa1bd4253cc",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			name = "[Alexandria AutoSim] Hold Ley Lines + Manafont on final trash",
			timeout = 2,
			uuid = "16a951d2-7cff-acf8-a33f-e97b517ca0d4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.alexandria_autosim\nif s and s.targetability(eventArgs)==false then return end\nself.used=true",
						conditions = 
						{
							
							{
								"6fbf37e7-9629-67a6-86bf-afa3811cf086",
								true,
							},
							
							{
								"7f8acac1-1987-d077-bc99-f9570ca1a05b",
								true,
							},
							
							{
								"47f61111-6ff4-cab3-9ddb-7a64f4c17f8a",
								true,
							},
							
							{
								"982385bc-2907-c45b-97d7-d7c73704fdc5",
								true,
							},
							
							{
								"965e1af3-5ce6-fb5c-b394-c1c6ddbdbcdb",
								true,
							},
						},
						name = "Resume Eliminator forecast after generators",
						uuid = "ddb26497-3afb-e706-b83e-28d771f353ba",
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
						localmapid = 1199,
						name = "Alexandria (1199)",
						uuid = "6fbf37e7-9629-67a6-86bf-afa3811cf086",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "7f8acac1-1987-d077-bc99-f9570ca1a05b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "47f61111-6ff4-cab3-9ddb-7a64f4c17f8a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12729,
						name = "Eliminator",
						uuid = "982385bc-2907-c45b-97d7-d7c73704fdc5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.alexandria_autosim\nreturn s~=nil and s.enabled and s.boss==12729 and not s.resumeForecastDone",
						name = "Waiting for Eliminator return",
						uuid = "965e1af3-5ce6-fb5c-b394-c1c6ddbdbcdb",
						version = 3,
					},
				},
			},
			displayPath = "Alexandria/AutoSim",
			eventType = 26,
			name = "[Alexandria AutoSim] Resume Eliminator forecast after generators",
			timeout = 2,
			uuid = "85507c06-95db-ee89-92f8-eed6e91124c5",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
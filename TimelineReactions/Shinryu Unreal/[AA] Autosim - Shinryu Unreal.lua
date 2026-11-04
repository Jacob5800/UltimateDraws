local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "255d51f2-c4cd-17ae-5f19-30a481cd68c2",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "9a7cea1a-ca6c-6c13-85cf-e0a226170443",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not ShinryuUnrealAutoSimConfig then\n    local C={autoTarget=true,casterLB=false,diagnostics=true,autoSurecast=true,castBudget=3.2,timingDefaultsVersion=0,enabled=true,movement=true,blacklistGinryu=true,blacklistTail=true,wingKillTime=20,p1End=276,entryGap=55,addsLength=64,returnGap=43.8,killOverride=false,killTime=730,uncertainty=2,unexpectedPct=5,buffEnabled=false,buffPct=0,buffFirst=5,buffDuration=20,buffPeriod=120,status=\"Ready; changes apply next pull.\"}\n    C.keys={\"autoTarget\",\"casterLB\",\"diagnostics\",\"autoSurecast\",\"castBudget\",\"timingDefaultsVersion\",\"blacklistTail\",\"wingKillTime\",\"blacklistGinryu\",\"p1End\",\"entryGap\",\"addsLength\",\"returnGap\",\"enabled\",\"movement\",\"killOverride\",\"killTime\",\"uncertainty\",\"unexpectedPct\",\"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetStartupPath()..[[\\LuaMods\\TensorReactions\\ShinryuUnreal.AutoSim.settings.tsv]]\n    local f=io.open(C.path,\"r\")\n    if f then\n        for line in f:lines() do\n            local k,v=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if k and C[k]~=nil then\n                if type(C[k])==\"boolean\" then C[k]=v==\"1\"\n                elseif type(C[k])==\"number\" then local n=tonumber(v);if n and n==n and n>-math.huge and n<math.huge then C[k]=n end end\n            end\n        end\n        f:close()\n    end\n    C.killTime=math.max(60,math.min(1200,C.killTime));C.uncertainty=math.max(0,math.min(30,C.uncertainty));C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.buffPct=math.max(0,math.min(50,C.buffPct));C.buffFirst=math.max(0,math.min(1200,C.buffFirst));C.buffDuration=math.max(1,math.min(60,C.buffDuration));C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.p1End=math.max(180,math.min(450,C.p1End));C.entryGap=math.max(0,math.min(120,C.entryGap));C.addsLength=math.max(20,math.min(180,C.addsLength));C.returnGap=math.max(0,math.min(120,C.returnGap))\n    C.wingKillTime=math.max(5,math.min(60,C.wingKillTime))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,k in ipairs(C.keys) do local v=C[k];if type(v)==\"boolean\" then v=v and 1 or 0 end;f:write(k,\"\\t\",tostring(v),\"\\n\") end\n        f:close();C.status=\"Saved; changes apply next pull.\"\n    end\n    ShinryuUnrealAutoSimConfig=C\nend\nlocal migrate=ShinryuUnrealAutoSimConfig\nif migrate.blacklistTail==nil then migrate.blacklistTail=true;table.insert(migrate.keys,\"blacklistTail\") end\nif migrate.wingKillTime==nil then migrate.wingKillTime=20;table.insert(migrate.keys,\"wingKillTime\") end\n-- Migrate untouched previous timing defaults once; preserve custom group estimates.\nif migrate.timingDefaultsVersion==nil then\n    migrate.timingDefaultsVersion=0;table.insert(migrate.keys,\"timingDefaultsVersion\")\nend\nif migrate.timingDefaultsVersion<1 then\n    if migrate.p1End==312 then migrate.p1End=280 end\n    if migrate.addsLength==63.4 then migrate.addsLength=65 end\n    migrate.timingDefaultsVersion=1;migrate.save()\nend\nlocal migrate=ShinryuUnrealAutoSimConfig\nif migrate.autoTarget==nil then migrate.autoTarget=true;table.insert(migrate.keys,\"autoTarget\") end\nif migrate.casterLB==nil then migrate.casterLB=false;table.insert(migrate.keys,\"casterLB\") end\nif migrate.diagnostics==nil then migrate.diagnostics=true;table.insert(migrate.keys,\"diagnostics\") end\nif migrate.autoSurecast==nil then migrate.autoSurecast=true;table.insert(migrate.keys,\"autoSurecast\") end\nif migrate.castBudget==nil then migrate.castBudget=3.2;table.insert(migrate.keys,\"castBudget\") end\n-- Clean-kill calibration: migrate only previous unchanged defaults.\nif migrate.timingDefaultsVersion<2 then\n    if migrate.p1End==280 then migrate.p1End=276 end\n    if migrate.addsLength==65 then migrate.addsLength=64 end\n    migrate.timingDefaultsVersion=2;migrate.save()\nend\nlocal C=ShinryuUnrealAutoSimConfig\nlocal player=TensorCore.mGetPlayer()\nlocal ok,combatTime=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nif player and player.incombat and ok and type(combatTime)==\"number\" and combatTime>=15 then self.used=true;return end\nlocal visible=GUI:Begin(\"Shinryu Unreal - Shared AutoSim\")\nif visible then\n    local changed,v\n    v,changed=GUI:Checkbox(\"Enable AutoSim encounter forecasts\",C.enabled);if changed then C.enabled=v;C.save() end\n    v,changed=GUI:Checkbox(\"Blacklist DoTs on tails\",C.blacklistTail);if changed then C.blacklistTail=v;C.save() end\n    v,changed=GUI:SliderInt(\"Expected remaining life per targeted wing (s)\",C.wingKillTime,5,60);if changed then C.wingKillTime=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short final-wing kill horizon, set once when you target each wing. Default20s is a planning assumption from observed focus time; adjust for your group. AoE is disabled for the final wings. Heart and wing DoTs remain allowed.\") end\n    v,changed=GUI:Checkbox(\"Blacklist DoTs on Ginryu\",C.blacklistGinryu);if changed then C.blacklistGinryu=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Adds a temporary Ginryu-only DoT blacklist during adds. Existing user entries are preserved. Changes apply next pull.\") end\n    v,changed=GUI:Checkbox(\"Conservative caster movement forecasts\",C.movement);if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Union of possible mechanic repositioning windows, not measured forced movement for every assignment. Casting jobs only. No automatic movement or ground-field return.\") end\n    v,changed=GUI:SliderInt(\"Extra caster movement allowance (%)\",C.unexpectedPct,0,30);if changed then C.unexpectedPct=v;C.save() end\n    v,changed=GUI:SliderInt(\"P1 transition estimate (s)\",C.p1End,180,450);if changed then C.p1End=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"HP-dependent transition. Corrected when the main boss becomes untargetable; a still-attacking boss pushes an expired estimate forward.\") end\n    v,changed=GUI:SliderInt(\"Transition to adds (s)\",C.entryGap,0,120);if changed then C.entryGap=v;C.save() end\n    v,changed=GUI:SliderInt(\"Adds phase estimate (s)\",C.addsLength,20,180);if changed then C.addsLength=v;C.save() end\n    v,changed=GUI:SliderInt(\"Last adds to boss return (s)\",C.returnGap,0,120);if changed then C.returnGap=v;C.save() end\n    v,changed=GUI:Checkbox(\"Override automatic kill estimate\",C.killOverride);if changed then C.killOverride=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Off uses the ACR's live estimate. The 730s initial value is a planning reference, not a proven current clear time.\") end\n    if C.killOverride then\n        v,changed=GUI:SliderInt(\"Expected kill time (s)\",C.killTime,60,1200);if changed then C.killTime=v;C.save() end\n        v,changed=GUI:SliderInt(\"Timing uncertainty (+/- seconds)\",C.uncertainty,0,30);if changed then C.uncertainty=v;C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled);if changed then C.buffEnabled=v;C.save() end\n    if C.buffEnabled then\n        v,changed=GUI:SliderInt(\"Combined buff gain (%)\",C.buffPct,0,50);if changed then C.buffPct=v;C.save() end\n        v,changed=GUI:SliderInt(\"First buff window (s)\",C.buffFirst,0,1200);if changed then C.buffFirst=v;C.save() end\n        v,changed=GUI:SliderInt(\"Buff duration (s)\",C.buffDuration,1,60);if changed then C.buffDuration=v;C.buffPeriod=math.max(v+1,C.buffPeriod);C.save() end\n        v,changed=GUI:SliderInt(\"Buff repeat period (s)\",C.buffPeriod,C.buffDuration+1,600);if changed then C.buffPeriod=v;C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Automatic targeting\",C.autoTarget);if changed then C.autoTarget=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Tail > Heart > Shinryu. Final wings: first casting wing > remaining wing > Shinryu. Skips targets unlikely to survive the cast budget. Active casts are never interrupted. Adds: highest-HP large dragon first, then small dragons. Melee selects only targets in reach.\") end\n    v,changed=GUI:SliderFloat(\"Cast + landing budget (s)\",C.castBudget,0.5,5);if changed then C.castBudget=v;C.save() end\n    v,changed=GUI:Checkbox(\"Caster LB on both final wings (optional)\",C.casterLB);if changed then C.casterLB=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Off by default. Caster DPS only, full LB gauge, both wings alive, player on Shinryu's back near their midpoint. Requests ACR Auto LB with minimum 2 targets when the ACR exposes that option. Extra targeting hold applies only while this toggle is enabled. No automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Write encounter diagnostics\",C.diagnostics);if changed then C.diagnostics=v;C.save() end\n    GUI:Text(\"Settings hide 15 seconds into combat; reappear out of combat.\")\n\n    GUI:Text(C.status)\nend\nGUI:End()\nself.used=true\n",
							conditions = 
							{
								
								{
									"d79cfb24-1592-9983-b161-40a8d8be2e13",
									true,
								},
							},
							name = "Settings",
							uuid = "c570d219-1ebe-8382-bb12-9aaa799f2016",
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
							localmapid = 1372,
							name = "Shinryu Unreal only",
							uuid = "d79cfb24-1592-9983-b161-40a8d8be2e13",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 13,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Settings",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "f75ab59c-2e7d-7396-b348-f94d799135c4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not ShinryuUnrealAutoSimConfig then\n    local C={autoTarget=true,casterLB=false,diagnostics=true,autoSurecast=true,castBudget=3.2,timingDefaultsVersion=0,enabled=true,movement=true,blacklistGinryu=true,blacklistTail=true,wingKillTime=20,p1End=276,entryGap=55,addsLength=64,returnGap=43.8,killOverride=false,killTime=730,uncertainty=2,unexpectedPct=5,buffEnabled=false,buffPct=0,buffFirst=5,buffDuration=20,buffPeriod=120,status=\"Ready; changes apply next pull.\"}\n    C.keys={\"autoTarget\",\"casterLB\",\"diagnostics\",\"autoSurecast\",\"castBudget\",\"timingDefaultsVersion\",\"blacklistTail\",\"wingKillTime\",\"blacklistGinryu\",\"p1End\",\"entryGap\",\"addsLength\",\"returnGap\",\"enabled\",\"movement\",\"killOverride\",\"killTime\",\"uncertainty\",\"unexpectedPct\",\"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetStartupPath()..[[\\LuaMods\\TensorReactions\\ShinryuUnreal.AutoSim.settings.tsv]]\n    local f=io.open(C.path,\"r\")\n    if f then\n        for line in f:lines() do\n            local k,v=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if k and C[k]~=nil then\n                if type(C[k])==\"boolean\" then C[k]=v==\"1\"\n                elseif type(C[k])==\"number\" then local n=tonumber(v);if n and n==n and n>-math.huge and n<math.huge then C[k]=n end end\n            end\n        end\n        f:close()\n    end\n    C.killTime=math.max(60,math.min(1200,C.killTime));C.uncertainty=math.max(0,math.min(30,C.uncertainty));C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.buffPct=math.max(0,math.min(50,C.buffPct));C.buffFirst=math.max(0,math.min(1200,C.buffFirst));C.buffDuration=math.max(1,math.min(60,C.buffDuration));C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.p1End=math.max(180,math.min(450,C.p1End));C.entryGap=math.max(0,math.min(120,C.entryGap));C.addsLength=math.max(20,math.min(180,C.addsLength));C.returnGap=math.max(0,math.min(120,C.returnGap))\n    C.wingKillTime=math.max(5,math.min(60,C.wingKillTime))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,k in ipairs(C.keys) do local v=C[k];if type(v)==\"boolean\" then v=v and 1 or 0 end;f:write(k,\"\\t\",tostring(v),\"\\n\") end\n        f:close();C.status=\"Saved; changes apply next pull.\"\n    end\n    ShinryuUnrealAutoSimConfig=C\nend\nlocal migrate=ShinryuUnrealAutoSimConfig\nif migrate.blacklistTail==nil then migrate.blacklistTail=true;table.insert(migrate.keys,\"blacklistTail\") end\nif migrate.wingKillTime==nil then migrate.wingKillTime=20;table.insert(migrate.keys,\"wingKillTime\") end\n-- Migrate untouched previous timing defaults once; preserve custom group estimates.\nif migrate.timingDefaultsVersion==nil then\n    migrate.timingDefaultsVersion=0;table.insert(migrate.keys,\"timingDefaultsVersion\")\nend\nif migrate.timingDefaultsVersion<1 then\n    if migrate.p1End==312 then migrate.p1End=280 end\n    if migrate.addsLength==63.4 then migrate.addsLength=65 end\n    migrate.timingDefaultsVersion=1;migrate.save()\nend\nlocal migrate=ShinryuUnrealAutoSimConfig\nif migrate.autoTarget==nil then migrate.autoTarget=true;table.insert(migrate.keys,\"autoTarget\") end\nif migrate.casterLB==nil then migrate.casterLB=false;table.insert(migrate.keys,\"casterLB\") end\nif migrate.diagnostics==nil then migrate.diagnostics=true;table.insert(migrate.keys,\"diagnostics\") end\nif migrate.autoSurecast==nil then migrate.autoSurecast=true;table.insert(migrate.keys,\"autoSurecast\") end\nif migrate.castBudget==nil then migrate.castBudget=3.2;table.insert(migrate.keys,\"castBudget\") end\n-- Clean-kill calibration: migrate only previous unchanged defaults.\nif migrate.timingDefaultsVersion<2 then\n    if migrate.p1End==280 then migrate.p1End=276 end\n    if migrate.addsLength==65 then migrate.addsLength=64 end\n    migrate.timingDefaultsVersion=2;migrate.save()\nend\nlocal C=ShinryuUnrealAutoSimConfig\nif data.shinryuUnrealAutoSim then self.used=true;return end\nif not C.enabled then data.shinryuUnrealAutoSim={disabled=true};self.used=true;return end\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t< -120 then return end\nif t>10 then data.shinryuUnrealAutoSim={disabled=true};C.status=\"Opening missed; forecasts start next pull.\";self.used=true;return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1372 then self.used=true;return end\nlocal job=p.job\nlocal caster=job==25 or job==27 or job==35 or job==42 or job==36 or job==24 or job==28 or job==33 or job==40\nlocal S={blacklistTail=C.blacklistTail,wingKillTime=C.wingKillTime,wingTargets={},liveWings=0,wingDeadlines={},qtOwned={},dotChecked={},dotOwned={},blacklistGinryu=C.blacklistGinryu,mode=\"p1\",move=C.movement and caster,p1End=C.p1End,entryGap=C.entryGap,addsLength=C.addsLength,returnGap=C.returnGap,phases={},count=0,adds={},liveAdds=0,lastCastShift=-999}\ndata.shinryuUnrealAutoSim=S\nS.addStart=S.p1End+S.entryGap;S.addEnd=S.addStart+S.addsLength;S.bodyStart=S.addEnd+S.returnGap\nfunction S.blacklist(cid)\n    if (cid==6272 and not S.blacklistGinryu) or (cid==5789 and not S.blacklistTail) or S.dotChecked[cid] then return end\n    S.dotChecked[cid]=true\n    local ok,exists=pcall(A.getBlacklistEntry,cid)\n    if not ok or exists then return end\n    local label=cid==5789 and \"[Shinryu AutoSim] Tail\" or \"[Shinryu AutoSim] Ginryu\"\n    local added,entry=pcall(A.addBlacklistEntry,cid,label)\n    if added and entry then entry.enabled=true;entry.allowIfTarget=false;entry.allowSmartDoT=false;S.dotOwned[cid]=entry end\nend\nfunction S.restoreAOE()\n    for var,value in pairs(S.qtOwned) do\n        if _G[var]==false then _G[var]=value end\n        S.qtOwned[var]=nil\n    end\nend\nfunction S.disableAOE()\n    if S.wingsActive then return end\n    S.wingsActive=true;S.wingSegment=true\n    local toggles=A.getQuickToggles()\n    if not toggles then return end\n    for _,option in pairs(toggles) do\n        local var=option.var\n        if var and (var:match(\"_AOE$\") or var:match(\"_SmartAOE$\")) and type(_G[var])==\"boolean\" then\n            S.qtOwned[var]=_G[var];_G[var]=false\n        end\n    end\nend\nfunction S.cleanup()\n    for cid,owned in pairs(S.dotOwned) do\n        local ok,exists=pcall(A.getBlacklistEntry,cid)\n        if ok and exists then\n            local read,current=pcall(A.addBlacklistEntry,cid)\n            if read and current==owned and current.name==(cid==5789 and \"[Shinryu AutoSim] Tail\" or \"[Shinryu AutoSim] Ginryu\") and current.enabled and not current.allowIfTarget and not current.allowSmartDoT then A.deleteBlacklistEntry(cid) end\n        end\n        S.dotOwned[cid]=nil\n    end\n    S.restoreAOE()\nend\nfunction S.wingUpdate()\n    if not S.wingSegment then return end\n    for var in pairs(S.qtOwned) do if _G[var]~=false then _G[var]=false end end\n    if not S.wingsActive then return end\n    local target=TensorCore.mGetTarget()\n    if not target or (target.contentid~=5641 and target.contentid~=5642) or not target.attackable then return end\n    if S.currentWing==target.id then return end\n    local now=S.time();if not now then return end\n    local deadline=S.wingDeadlines[target.id]\n    if not deadline then deadline=now+S.wingKillTime;S.wingDeadlines[target.id]=deadline end\n    A.setAutoSimKillTime(math.max(now+1,deadline))\n    S.currentWing=target.id\nend\nS.p1Windows={{33.4,48},{60,67},{78,82},{89,94},{112.1,125},{138,151},{173.6,182},{197.2,210},{280.9,294}}\nS.addWindows={{0,4},{12,23},{33,45},{48,54}}\nS.bodyWindows={{22.5,28},{51,59},{121,129},{149,156},{184,194}}\nfunction S.add(kind,a,b,now)\n    a=math.max(a,now,0);b=math.min(b,1200)\n    if b<=a then return end\n    local id=A.addAutoSimPhase(kind,a,b)\n    if id then\n        S.count=S.count+1\n        local r=S.phases[S.count]\n        if not r then r={};S.phases[S.count]=r end\n        r.id=id;r.kind=kind;r.a=a;r.b=b\n    end\nend\nfunction S.build(now)\n    for i=1,S.count do local r=S.phases[i];if r.id then A.removeAutoSimPhase(r.id);r.id=nil end end\n    S.count=0\n    if S.mode==\"p1\" or S.mode==\"entry\" then\n        S.add(\"FullDowntime\",S.p1End,S.addStart,now)\n        -- Dark Matter restraint / active-time maneuver. Logs use the real combat clock:\n        -- restraint begins ~3s after channel start; actions resume ~34.4-35.5s later.\n        -- This ends before the observed recovery actions, not at the later add spawn.\n        local darkMatter=S.darkMatterAt or S.p1End\n        S.add(\"Stun\",darkMatter+3,darkMatter+34.4,now)\n    end\n    if S.mode~=\"body\" then S.add(\"FullDowntime\",S.addEnd,S.bodyStart,now) end\n    if not S.move then return end\n    -- Conservative mechanic spans, not measured universal movement requirements.\n    if S.mode==\"p1\" then\n        for i=1,#S.p1Windows do local w=S.p1Windows[i];S.add(\"CasterDowntime\",w[1],math.min(w[2],S.p1End),now) end\n    end\n    if S.mode~=\"body\" then\n        for i=1,#S.addWindows do local w=S.addWindows[i];S.add(\"CasterDowntime\",S.addStart+w[1],math.min(S.addStart+w[2],S.addEnd),now) end\n    end\n    for i=1,#S.bodyWindows do local w=S.bodyWindows[i];S.add(\"CasterDowntime\",S.bodyStart+w[1],S.bodyStart+w[2],now) end\nend\nfunction S.time()\n    local ok,now=pcall(A.getAutoSimTime)\n    if ok and type(now)==\"number\" and now>=0 and now<1200 then return now end\nend\nfunction S.enter(now)\n    if S.mode~=\"p1\" then return end\n    S.mode=\"entry\";S.p1End=now;S.addStart=now+S.entryGap;S.addEnd=S.addStart+S.addsLength;S.bodyStart=S.addEnd+S.returnGap\n    S.build(now)\nend\nfunction S.channel(args)\n    if args.entityContentID~=5640 then return end\n    local id=args.spellID\n    if id~=50265 and id~=50261 and id~=50255 and id~=50262 and id~=50248 and id~=50264 and id~=50266 and id~=50243 and id~=50240 and id~=50289 and id~=50296 and id~=50297 and id~=50294 and id~=50293 and id~=50299 then return end\n    local now=S.time();if not now then return end\n    if not S.bossID then S.bossID=args.entityID end\n    if args.entityID~=S.bossID then return end\n    if id==50243 then\n        if S.mode==\"p1\" then\n            S.darkMatterAt=now;S.enter(now)\n        elseif S.mode==\"entry\" then\n            -- Untargetability can arrive just before this channel: use the actual cast anchor.\n            S.darkMatterAt=now;S.build(now)\n        end\n        return\n    end\n    if id==50240 and S.mode~=\"body\" then\n        -- End of adds / Protostar. Body targetability in clean sample follows ~43.6s later.\n        S.addEnd=now;S.bodyStart=now+S.returnGap;S.mode=\"return\";S.cleanup();S.build(now);return\n    end\n    if id==50289 and S.mode~=\"body\" then\n        S.bodyStart=now+31.5;S.mode=\"return\";S.build(now);return\n    end\n    if S.mode==\"body\" and id==50296 and not S.finalAnchor then\n        S.finalAnchor=true\n        local corrected=now-12.2\n        if math.abs(corrected-S.bodyStart)<=3 and math.abs(corrected-S.bodyStart)>.25 then S.bodyStart=corrected;S.build(now) end\n    end\nend\nfunction S.target(args)\n    local cid=args.entityContentID\n    if cid~=5640 and cid~=6272 and cid~=6273 and cid~=5789 and cid~=5641 and cid~=5642 then return end\n    if cid==5640 and args.entityID~=S.bossID then return end\n    local now=S.time();if not now then return end\n    if cid==5789 then\n        if args.isTargetable then S.blacklist(5789) end\n        return\n    end\n    if cid==5641 or cid==5642 then\n        if S.mode~=\"body\" then return end\n        if args.isTargetable then\n            if not S.wingTargets[args.entityID] then S.wingTargets[args.entityID]=true;S.liveWings=S.liveWings+1 end\n            S.disableAOE()\n        elseif S.wingTargets[args.entityID] then\n            S.wingTargets[args.entityID]=nil;S.liveWings=math.max(0,S.liveWings-1)\n            if S.liveWings==0 then S.wingsActive=false end\n        end\n        return\n    end\n    if cid==5640 then\n        if not args.isTargetable and S.mode==\"p1\" then S.enter(now)\n        elseif args.isTargetable and S.mode~=\"p1\" and S.mode~=\"body\" then\n            S.mode=\"body\";S.bodyStart=now;S.finalAnchor=false;S.cleanup();S.build(now)\n        end\n        return\n    end\n    if args.isTargetable then\n        if cid==6272 then S.blacklist(6272) end\n        if not S.adds[args.entityID] then S.adds[args.entityID]=true;S.liveAdds=S.liveAdds+1 end\n        if S.mode==\"p1\" or S.mode==\"entry\" then\n            S.mode=\"adds\";S.addStart=now;S.addEnd=now+S.addsLength;S.bodyStart=S.addEnd+S.returnGap;S.build(now)\n        end\n    elseif S.adds[args.entityID] then\n        S.adds[args.entityID]=nil;S.liveAdds=math.max(0,S.liveAdds-1)\n        -- Ignore earlier waves: the clean recording's third wave begins ~48.7s after first spawn.\n        if S.mode==\"adds\" and now-S.addStart>=45 and S.liveAdds==0 then\n            S.mode=\"return\";S.addEnd=now;S.bodyStart=now+S.returnGap;S.cleanup();S.build(now)\n        end\n    end\nend\nfunction S.cast(args)\n    -- A boss still attacking proves the HP-dependent P1 transition has not happened.\n    if S.mode==\"adds\" and (args.entityContentID==6272 or args.entityContentID==6273) then\n        local now=S.time()\n        if now and S.liveAdds>0 and now>=S.addEnd-3 then S.addEnd=now+10;S.bodyStart=S.addEnd+S.returnGap;S.build(now) end\n        return\n    end\n    if S.mode~=\"p1\" or args.entityID~=S.bossID then return end\n    local now=S.time();if not now or now<S.p1End-5 then return end\n    S.p1End=now+15;S.addStart=S.p1End+S.entryGap;S.addEnd=S.addStart+S.addsLength;S.bodyStart=S.addEnd+S.returnGap;S.build(now)\nend\nif C.killOverride then A.setAutoSimKillTime(C.killTime);A.addAutoSimUncertainty(math.max(-120,t),C.uncertainty) end\nif caster then A.setAutoSimUnexpectedMovementPct(C.unexpectedPct/100) end\nS.build(math.max(0,t))\nif C.buffEnabled and C.buffPct>0 then\n    local at=C.buffFirst\n    while at<1200 do A.addAutoSimPhase(\"RaidBuff\",at,math.min(1200,at+C.buffDuration),1+C.buffPct/100);at=at+C.buffPeriod end\nend\n\n-- Shared encounter helpers; owned state is discarded on wipe.\nS.skipped={};S.targetSpecs={};S.wingStarted={}\nfor _,cid in ipairs({5789,6271,5640,5641,5642}) do S.targetSpecs[cid]={contentid=cid,subgroup=\"Nearest\"} end\nS.diagPath=GetStartupPath()..[[\\LuaMods\\TensorReactions\\ShinryuUnreal.AutoSim.diagnostics.log]]\nfunction S.diag(message)\n    if not C.diagnostics then return end\n    local line=string.format(\"[Shinryu AutoSim] t=%.3f mode=%s %s\",S.time() or -1,S.mode,message)\n    d(line)\n    local f=io.open(S.diagPath,\"a\");if f then f:write(line,\"\\n\");f:close() end\nend\nfor _,group in pairs(A.getMenuOptions()) do\n    for _,option in pairs(group.toggles) do\n        if option.displayText==\"Minimum Targets To Auto LB\" then S.lbMinVar=option.var end\n    end\nend\nfunction S.releaseLB()\n    if S.lbMinOwned and S.lbMinVar and _G[S.lbMinVar]==2 then _G[S.lbMinVar]=S.lbMinOld end\n    S.lbMinOwned=nil\nend\nlocal originalCleanup=S.cleanup\nfunction S.cleanup() S.releaseLB();originalCleanup() end\nfunction S.reason(reason)\n    if not C.diagnostics or S.lastReason==reason then return end\n    local now=S.time() or 0\n    if S.reasonAt and now-S.reasonAt<1 then return end\n    S.lastReason=reason;S.reasonAt=now;S.diag(\"targeting: \"..reason)\nend\nfunction S.rejection(e,reason)\n    if not C.diagnostics or not e then return end\n    S.targetReasons=S.targetReasons or {}\n    local r=S.targetReasons[e.id]\n    if not r then r={at=-100};S.targetReasons[e.id]=r end\n    local now=S.time() or 0\n    if r.reason==reason or now-r.at<1 then return end\n    r.reason=reason;r.at=now\n    S.diag(string.format(\"candidate id=%s cid=%s hp=%s reason=%s\",e.id,e.contentid,e.hp and e.hp.current or -1,reason))\nend\nfunction S.accept(e,budget)\n    local p=TensorCore.mGetPlayer()\n    if not p or not e then return false end\n    if not e.attackable or not e.targetable or not e.hp or e.hp.current<=0 then S.rejection(e,\"not alive/attackable/targetable\");return false end\n    if TensorCore.isMelee(p) and TensorCore.getDistance2d(p.pos,e.pos)>3+(p.hitradius or 0)+(e.hitradius or 0) then S.rejection(e,\"outside melee reach\");return false end\n    if S.skipped[e.id] then S.rejection(e,\"latched short lifetime\");return false end\n    local life=TensorCore.calcTimeToKill(e.id)\n    if life and life>=0 and life<budget then\n        S.skipped[e.id]=true\n        S.diag(string.format(\"skip id=%s cid=%s ttk=%.2f budget=%.2f\",e.id,e.contentid,life,budget))\n        return false\n    end\n    S.rejection(e,\"eligible\")\n    return true\nend\nfunction S.candidate(cid,budget)\n    local e=TensorCore.getEntityByGroup(\"ContentID\",S.targetSpecs[cid])\n    if cid==5640 and S.bossID and e and e.id~=S.bossID then return end\n    if S.accept(e,budget) then return e end\nend\nfunction S.tick()\n    local p=TensorCore.mGetPlayer();local now=S.time()\n    S.chosen=nil;S.lbReady=false\n    if not p or not now or not p.incombat or not p.hp or p.hp.current<=0 then S.reason(\"player unavailable, dead, or out of combat\");S.releaseLB();return end\n    local actual=TensorCore.mGetTarget()\n    local actualID=actual and actual.id or 0\n    if S.observedTarget~=actualID then\n        S.observedTarget=actualID\n        S.diag(\"actual target=\"..actualID..\" cid=\"..(actual and actual.contentid or 0))\n    end\n    if now>=(S.nextDiagnostic or 0) then\n        S.nextDiagnostic=now+5\n        local target=TensorCore.mGetTarget()\n        S.diag(string.format(\"sample target=%s pos=%.2f,%.2f,%.2f phases=%s\",target and target.id or 0,p.pos.x,p.pos.y,p.pos.z,S.count))\n    end\n    if not C.casterLB and S.lbUntil then S.lbUntil=nil;S.releaseLB() end\n    if S.lbUntil and now>=S.lbUntil then S.lbUntil=nil;S.releaseLB();S.diag(\"LB protection released\") end\n    if S.lbUntil then S.reason(\"optional LB protection active\");return end\n    local ci=p.castinginfo\n    if ci and ((ci.castingid or 0)>0 or (ci.channelingid or 0)>0) then S.reason(\"active cast/channel; no swap\");return end\n    local caster=p.job==25 or p.job==27 or p.job==35 or p.job==42\n    local budget=(caster or TensorCore.isHealer(p)) and C.castBudget or .7\n    local left,right\n    if S.mode==\"body\" and S.wingsActive then\n        left=S.candidate(5641,budget);right=S.candidate(5642,budget)\n        if C.casterLB and caster and S.lbMinVar and not S.lbAttempted and left and right and S.wingStarted[left.id] and S.wingStarted[right.id] then\n            local cur,max=TensorCore.getLBGauge()\n            local mx=(left.pos.x+right.pos.x)/2;local mz=(left.pos.z+right.pos.z)/2\n            local dx=p.pos.x-mx;local dz=p.pos.z-mz\n            -- Back position corroborated by the two-wing Meteor sample; no movement is performed.\n            if max and max>0 and cur>=max and dx*dx+dz*dz<=64 and p.pos.y>math.max(left.pos.y,right.pos.y)+1 then\n                S.lbReady=true\n                return\n            end\n        end\n    end\n    if not C.autoTarget then S.reason(\"automatic targeting disabled\");return end\n    if S.mode==\"adds\" then S.reason(\"adds: native highest-HP big > small filters\");return end\n    if S.mode~=\"p1\" and S.mode~=\"body\" then S.reason(\"transition; no priority target\");return end\n    local e\n    if S.mode==\"p1\" then e=S.candidate(5789,budget) or S.candidate(6271,budget)\n    elseif S.wingsActive then\n        if not S.wingFirst then S.reason(\"waiting for first final-wing cast\");return end\n        if left and left.id==S.wingFirst then e=left or right\n        elseif right and right.id==S.wingFirst then e=right or left\n        else e=left or right end\n    end\n    e=e or S.candidate(5640,budget)\n    if not e then S.reason(\"no eligible priority target\") end\n    if e then\n        S.reason(\"priority candidate available\")\n        S.chosen=e.id\n        if S.lastChoice~=e.id then S.diag(string.format(\"choose id=%s cid=%s\",e.id,e.contentid));S.lastChoice=e.id end\n    end\nend\nfunction S.startLB()\n    local now=S.time();if not now then return end\n    S.lbAttempted=true;S.lbUntil=now+12\n    S.lbMinOld=_G[S.lbMinVar];S.lbMinOwned=true;_G[S.lbMinVar]=2\n    S.diag(\"Auto LB request: both wings; target switching paused for up to 12s\")\nend\nlocal originalChannel=S.channel\nfunction S.channel(args)\n    originalChannel(args)\nend\nlocal originalCast=S.cast\nfunction S.cast(args)\n    local p=TensorCore.mGetPlayer()\n    if C.casterLB and S.lbAttempted and p and args.entityID==p.id and (args.spellID==203 or args.spellID==204 or args.spellID==205) then\n        local now=S.time();S.lbUntil=(now or 0)+3;S.lbAttempted=true;S.releaseLB();S.diag(\"caster LB completed; retain 3s targeting protection\")\n    end\n    originalCast(args)\nend\nS.diag(\"setup: target priority Tail > Heart > Shinryu; final first-casting wing > remaining wing > Shinryu\")\nC.status=\"Active shared Shinryu forecast; live transitions correct phase estimates.\"\nself.used=true\n",
							conditions = 
							{
								
								{
									"09c295da-e9ae-079c-ac0a-a9010f7a61b4",
									true,
								},
								
								{
									"5fa3911a-f0f4-9ad5-84d2-e213f43623c3",
									true,
								},
							},
							name = "Countdown setup",
							uuid = "459928fb-49e4-b5d6-9ac1-7e8707d685af",
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
							localmapid = 1372,
							name = "Shinryu Unreal only",
							uuid = "09c295da-e9ae-079c-ac0a-a9010f7a61b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.shinryuUnrealAutoSim == nil",
							name = "Not initialized this pull",
							uuid = "5fa3911a-f0f4-9ad5-84d2-e213f43623c3",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 16,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Countdown setup",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -11.3,
				timerStartOffset = -141.3,
				uuid = "1fab0625-7cf5-ae84-9c7f-d16bd4e1d9a6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not ShinryuUnrealAutoSimConfig then\n    local C={autoTarget=true,casterLB=false,diagnostics=true,autoSurecast=true,castBudget=3.2,timingDefaultsVersion=0,enabled=true,movement=true,blacklistGinryu=true,blacklistTail=true,wingKillTime=20,p1End=276,entryGap=55,addsLength=64,returnGap=43.8,killOverride=false,killTime=730,uncertainty=2,unexpectedPct=5,buffEnabled=false,buffPct=0,buffFirst=5,buffDuration=20,buffPeriod=120,status=\"Ready; changes apply next pull.\"}\n    C.keys={\"autoTarget\",\"casterLB\",\"diagnostics\",\"autoSurecast\",\"castBudget\",\"timingDefaultsVersion\",\"blacklistTail\",\"wingKillTime\",\"blacklistGinryu\",\"p1End\",\"entryGap\",\"addsLength\",\"returnGap\",\"enabled\",\"movement\",\"killOverride\",\"killTime\",\"uncertainty\",\"unexpectedPct\",\"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetStartupPath()..[[\\LuaMods\\TensorReactions\\ShinryuUnreal.AutoSim.settings.tsv]]\n    local f=io.open(C.path,\"r\")\n    if f then\n        for line in f:lines() do\n            local k,v=line:match(\"^([^\\t]+)\\t([^\\t]+)$\")\n            if k and C[k]~=nil then\n                if type(C[k])==\"boolean\" then C[k]=v==\"1\"\n                elseif type(C[k])==\"number\" then local n=tonumber(v);if n and n==n and n>-math.huge and n<math.huge then C[k]=n end end\n            end\n        end\n        f:close()\n    end\n    C.killTime=math.max(60,math.min(1200,C.killTime));C.uncertainty=math.max(0,math.min(30,C.uncertainty));C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.buffPct=math.max(0,math.min(50,C.buffPct));C.buffFirst=math.max(0,math.min(1200,C.buffFirst));C.buffDuration=math.max(1,math.min(60,C.buffDuration));C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.p1End=math.max(180,math.min(450,C.p1End));C.entryGap=math.max(0,math.min(120,C.entryGap));C.addsLength=math.max(20,math.min(180,C.addsLength));C.returnGap=math.max(0,math.min(120,C.returnGap))\n    C.wingKillTime=math.max(5,math.min(60,C.wingKillTime))\n    function C.save()\n        local f,err=io.open(C.path,\"w\")\n        if not f then C.status=\"Save failed: \"..tostring(err);return end\n        for _,k in ipairs(C.keys) do local v=C[k];if type(v)==\"boolean\" then v=v and 1 or 0 end;f:write(k,\"\\t\",tostring(v),\"\\n\") end\n        f:close();C.status=\"Saved; changes apply next pull.\"\n    end\n    ShinryuUnrealAutoSimConfig=C\nend\nlocal migrate=ShinryuUnrealAutoSimConfig\nif migrate.blacklistTail==nil then migrate.blacklistTail=true;table.insert(migrate.keys,\"blacklistTail\") end\nif migrate.wingKillTime==nil then migrate.wingKillTime=20;table.insert(migrate.keys,\"wingKillTime\") end\n-- Migrate untouched previous timing defaults once; preserve custom group estimates.\nif migrate.timingDefaultsVersion==nil then\n    migrate.timingDefaultsVersion=0;table.insert(migrate.keys,\"timingDefaultsVersion\")\nend\nif migrate.timingDefaultsVersion<1 then\n    if migrate.p1End==312 then migrate.p1End=280 end\n    if migrate.addsLength==63.4 then migrate.addsLength=65 end\n    migrate.timingDefaultsVersion=1;migrate.save()\nend\nlocal migrate=ShinryuUnrealAutoSimConfig\nif migrate.autoTarget==nil then migrate.autoTarget=true;table.insert(migrate.keys,\"autoTarget\") end\nif migrate.casterLB==nil then migrate.casterLB=false;table.insert(migrate.keys,\"casterLB\") end\nif migrate.diagnostics==nil then migrate.diagnostics=true;table.insert(migrate.keys,\"diagnostics\") end\nif migrate.autoSurecast==nil then migrate.autoSurecast=true;table.insert(migrate.keys,\"autoSurecast\") end\nif migrate.castBudget==nil then migrate.castBudget=3.2;table.insert(migrate.keys,\"castBudget\") end\n-- Clean-kill calibration: migrate only previous unchanged defaults.\nif migrate.timingDefaultsVersion<2 then\n    if migrate.p1End==280 then migrate.p1End=276 end\n    if migrate.addsLength==65 then migrate.addsLength=64 end\n    migrate.timingDefaultsVersion=2;migrate.save()\nend\nlocal C=ShinryuUnrealAutoSimConfig\nif data.shinryuUnrealAutoSim then self.used=true;return end\nif not C.enabled then data.shinryuUnrealAutoSim={disabled=true};self.used=true;return end\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t< -120 then return end\nif t>10 then data.shinryuUnrealAutoSim={disabled=true};C.status=\"Opening missed; forecasts start next pull.\";self.used=true;return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1372 then self.used=true;return end\nlocal job=p.job\nlocal caster=job==25 or job==27 or job==35 or job==42 or job==36 or job==24 or job==28 or job==33 or job==40\nlocal S={blacklistTail=C.blacklistTail,wingKillTime=C.wingKillTime,wingTargets={},liveWings=0,wingDeadlines={},qtOwned={},dotChecked={},dotOwned={},blacklistGinryu=C.blacklistGinryu,mode=\"p1\",move=C.movement and caster,p1End=C.p1End,entryGap=C.entryGap,addsLength=C.addsLength,returnGap=C.returnGap,phases={},count=0,adds={},liveAdds=0,lastCastShift=-999}\ndata.shinryuUnrealAutoSim=S\nS.addStart=S.p1End+S.entryGap;S.addEnd=S.addStart+S.addsLength;S.bodyStart=S.addEnd+S.returnGap\nfunction S.blacklist(cid)\n    if (cid==6272 and not S.blacklistGinryu) or (cid==5789 and not S.blacklistTail) or S.dotChecked[cid] then return end\n    S.dotChecked[cid]=true\n    local ok,exists=pcall(A.getBlacklistEntry,cid)\n    if not ok or exists then return end\n    local label=cid==5789 and \"[Shinryu AutoSim] Tail\" or \"[Shinryu AutoSim] Ginryu\"\n    local added,entry=pcall(A.addBlacklistEntry,cid,label)\n    if added and entry then entry.enabled=true;entry.allowIfTarget=false;entry.allowSmartDoT=false;S.dotOwned[cid]=entry end\nend\nfunction S.restoreAOE()\n    for var,value in pairs(S.qtOwned) do\n        if _G[var]==false then _G[var]=value end\n        S.qtOwned[var]=nil\n    end\nend\nfunction S.disableAOE()\n    if S.wingsActive then return end\n    S.wingsActive=true;S.wingSegment=true\n    local toggles=A.getQuickToggles()\n    if not toggles then return end\n    for _,option in pairs(toggles) do\n        local var=option.var\n        if var and (var:match(\"_AOE$\") or var:match(\"_SmartAOE$\")) and type(_G[var])==\"boolean\" then\n            S.qtOwned[var]=_G[var];_G[var]=false\n        end\n    end\nend\nfunction S.cleanup()\n    for cid,owned in pairs(S.dotOwned) do\n        local ok,exists=pcall(A.getBlacklistEntry,cid)\n        if ok and exists then\n            local read,current=pcall(A.addBlacklistEntry,cid)\n            if read and current==owned and current.name==(cid==5789 and \"[Shinryu AutoSim] Tail\" or \"[Shinryu AutoSim] Ginryu\") and current.enabled and not current.allowIfTarget and not current.allowSmartDoT then A.deleteBlacklistEntry(cid) end\n        end\n        S.dotOwned[cid]=nil\n    end\n    S.restoreAOE()\nend\nfunction S.wingUpdate()\n    if not S.wingSegment then return end\n    for var in pairs(S.qtOwned) do if _G[var]~=false then _G[var]=false end end\n    if not S.wingsActive then return end\n    local target=TensorCore.mGetTarget()\n    if not target or (target.contentid~=5641 and target.contentid~=5642) or not target.attackable then return end\n    if S.currentWing==target.id then return end\n    local now=S.time();if not now then return end\n    local deadline=S.wingDeadlines[target.id]\n    if not deadline then deadline=now+S.wingKillTime;S.wingDeadlines[target.id]=deadline end\n    A.setAutoSimKillTime(math.max(now+1,deadline))\n    S.currentWing=target.id\nend\nS.p1Windows={{33.4,48},{60,67},{78,82},{89,94},{112.1,125},{138,151},{173.6,182},{197.2,210},{280.9,294}}\nS.addWindows={{0,4},{12,23},{33,45},{48,54}}\nS.bodyWindows={{22.5,28},{51,59},{121,129},{149,156},{184,194}}\nfunction S.add(kind,a,b,now)\n    a=math.max(a,now,0);b=math.min(b,1200)\n    if b<=a then return end\n    local id=A.addAutoSimPhase(kind,a,b)\n    if id then\n        S.count=S.count+1\n        local r=S.phases[S.count]\n        if not r then r={};S.phases[S.count]=r end\n        r.id=id;r.kind=kind;r.a=a;r.b=b\n    end\nend\nfunction S.build(now)\n    for i=1,S.count do local r=S.phases[i];if r.id then A.removeAutoSimPhase(r.id);r.id=nil end end\n    S.count=0\n    if S.mode==\"p1\" or S.mode==\"entry\" then\n        S.add(\"FullDowntime\",S.p1End,S.addStart,now)\n        -- Dark Matter restraint / active-time maneuver. Logs use the real combat clock:\n        -- restraint begins ~3s after channel start; actions resume ~34.4-35.5s later.\n        -- This ends before the observed recovery actions, not at the later add spawn.\n        local darkMatter=S.darkMatterAt or S.p1End\n        S.add(\"Stun\",darkMatter+3,darkMatter+34.4,now)\n    end\n    if S.mode~=\"body\" then S.add(\"FullDowntime\",S.addEnd,S.bodyStart,now) end\n    if not S.move then return end\n    -- Conservative mechanic spans, not measured universal movement requirements.\n    if S.mode==\"p1\" then\n        for i=1,#S.p1Windows do local w=S.p1Windows[i];S.add(\"CasterDowntime\",w[1],math.min(w[2],S.p1End),now) end\n    end\n    if S.mode~=\"body\" then\n        for i=1,#S.addWindows do local w=S.addWindows[i];S.add(\"CasterDowntime\",S.addStart+w[1],math.min(S.addStart+w[2],S.addEnd),now) end\n    end\n    for i=1,#S.bodyWindows do local w=S.bodyWindows[i];S.add(\"CasterDowntime\",S.bodyStart+w[1],S.bodyStart+w[2],now) end\nend\nfunction S.time()\n    local ok,now=pcall(A.getAutoSimTime)\n    if ok and type(now)==\"number\" and now>=0 and now<1200 then return now end\nend\nfunction S.enter(now)\n    if S.mode~=\"p1\" then return end\n    S.mode=\"entry\";S.p1End=now;S.addStart=now+S.entryGap;S.addEnd=S.addStart+S.addsLength;S.bodyStart=S.addEnd+S.returnGap\n    S.build(now)\nend\nfunction S.channel(args)\n    if args.entityContentID~=5640 then return end\n    local id=args.spellID\n    if id~=50265 and id~=50261 and id~=50255 and id~=50262 and id~=50248 and id~=50264 and id~=50266 and id~=50243 and id~=50240 and id~=50289 and id~=50296 and id~=50297 and id~=50294 and id~=50293 and id~=50299 then return end\n    local now=S.time();if not now then return end\n    if not S.bossID then S.bossID=args.entityID end\n    if args.entityID~=S.bossID then return end\n    if id==50243 then\n        if S.mode==\"p1\" then\n            S.darkMatterAt=now;S.enter(now)\n        elseif S.mode==\"entry\" then\n            -- Untargetability can arrive just before this channel: use the actual cast anchor.\n            S.darkMatterAt=now;S.build(now)\n        end\n        return\n    end\n    if id==50240 and S.mode~=\"body\" then\n        -- End of adds / Protostar. Body targetability in clean sample follows ~43.6s later.\n        S.addEnd=now;S.bodyStart=now+S.returnGap;S.mode=\"return\";S.cleanup();S.build(now);return\n    end\n    if id==50289 and S.mode~=\"body\" then\n        S.bodyStart=now+31.5;S.mode=\"return\";S.build(now);return\n    end\n    if S.mode==\"body\" and id==50296 and not S.finalAnchor then\n        S.finalAnchor=true\n        local corrected=now-12.2\n        if math.abs(corrected-S.bodyStart)<=3 and math.abs(corrected-S.bodyStart)>.25 then S.bodyStart=corrected;S.build(now) end\n    end\nend\nfunction S.target(args)\n    local cid=args.entityContentID\n    if cid~=5640 and cid~=6272 and cid~=6273 and cid~=5789 and cid~=5641 and cid~=5642 then return end\n    if cid==5640 and args.entityID~=S.bossID then return end\n    local now=S.time();if not now then return end\n    if cid==5789 then\n        if args.isTargetable then S.blacklist(5789) end\n        return\n    end\n    if cid==5641 or cid==5642 then\n        if S.mode~=\"body\" then return end\n        if args.isTargetable then\n            if not S.wingTargets[args.entityID] then S.wingTargets[args.entityID]=true;S.liveWings=S.liveWings+1 end\n            S.disableAOE()\n        elseif S.wingTargets[args.entityID] then\n            S.wingTargets[args.entityID]=nil;S.liveWings=math.max(0,S.liveWings-1)\n            if S.liveWings==0 then S.wingsActive=false end\n        end\n        return\n    end\n    if cid==5640 then\n        if not args.isTargetable and S.mode==\"p1\" then S.enter(now)\n        elseif args.isTargetable and S.mode~=\"p1\" and S.mode~=\"body\" then\n            S.mode=\"body\";S.bodyStart=now;S.finalAnchor=false;S.cleanup();S.build(now)\n        end\n        return\n    end\n    if args.isTargetable then\n        if cid==6272 then S.blacklist(6272) end\n        if not S.adds[args.entityID] then S.adds[args.entityID]=true;S.liveAdds=S.liveAdds+1 end\n        if S.mode==\"p1\" or S.mode==\"entry\" then\n            S.mode=\"adds\";S.addStart=now;S.addEnd=now+S.addsLength;S.bodyStart=S.addEnd+S.returnGap;S.build(now)\n        end\n    elseif S.adds[args.entityID] then\n        S.adds[args.entityID]=nil;S.liveAdds=math.max(0,S.liveAdds-1)\n        -- Ignore earlier waves: the clean recording's third wave begins ~48.7s after first spawn.\n        if S.mode==\"adds\" and now-S.addStart>=45 and S.liveAdds==0 then\n            S.mode=\"return\";S.addEnd=now;S.bodyStart=now+S.returnGap;S.cleanup();S.build(now)\n        end\n    end\nend\nfunction S.cast(args)\n    -- A boss still attacking proves the HP-dependent P1 transition has not happened.\n    if S.mode==\"adds\" and (args.entityContentID==6272 or args.entityContentID==6273) then\n        local now=S.time()\n        if now and S.liveAdds>0 and now>=S.addEnd-3 then S.addEnd=now+10;S.bodyStart=S.addEnd+S.returnGap;S.build(now) end\n        return\n    end\n    if S.mode~=\"p1\" or args.entityID~=S.bossID then return end\n    local now=S.time();if not now or now<S.p1End-5 then return end\n    S.p1End=now+15;S.addStart=S.p1End+S.entryGap;S.addEnd=S.addStart+S.addsLength;S.bodyStart=S.addEnd+S.returnGap;S.build(now)\nend\nif C.killOverride then A.setAutoSimKillTime(C.killTime);A.addAutoSimUncertainty(math.max(-120,t),C.uncertainty) end\nif caster then A.setAutoSimUnexpectedMovementPct(C.unexpectedPct/100) end\nS.build(math.max(0,t))\nif C.buffEnabled and C.buffPct>0 then\n    local at=C.buffFirst\n    while at<1200 do A.addAutoSimPhase(\"RaidBuff\",at,math.min(1200,at+C.buffDuration),1+C.buffPct/100);at=at+C.buffPeriod end\nend\n\n-- Shared encounter helpers; owned state is discarded on wipe.\nS.skipped={};S.targetSpecs={};S.wingStarted={}\nfor _,cid in ipairs({5789,6271,5640,5641,5642}) do S.targetSpecs[cid]={contentid=cid,subgroup=\"Nearest\"} end\nS.diagPath=GetStartupPath()..[[\\LuaMods\\TensorReactions\\ShinryuUnreal.AutoSim.diagnostics.log]]\nfunction S.diag(message)\n    if not C.diagnostics then return end\n    local line=string.format(\"[Shinryu AutoSim] t=%.3f mode=%s %s\",S.time() or -1,S.mode,message)\n    d(line)\n    local f=io.open(S.diagPath,\"a\");if f then f:write(line,\"\\n\");f:close() end\nend\nfor _,group in pairs(A.getMenuOptions()) do\n    for _,option in pairs(group.toggles) do\n        if option.displayText==\"Minimum Targets To Auto LB\" then S.lbMinVar=option.var end\n    end\nend\nfunction S.releaseLB()\n    if S.lbMinOwned and S.lbMinVar and _G[S.lbMinVar]==2 then _G[S.lbMinVar]=S.lbMinOld end\n    S.lbMinOwned=nil\nend\nlocal originalCleanup=S.cleanup\nfunction S.cleanup() S.releaseLB();originalCleanup() end\nfunction S.reason(reason)\n    if not C.diagnostics or S.lastReason==reason then return end\n    local now=S.time() or 0\n    if S.reasonAt and now-S.reasonAt<1 then return end\n    S.lastReason=reason;S.reasonAt=now;S.diag(\"targeting: \"..reason)\nend\nfunction S.rejection(e,reason)\n    if not C.diagnostics or not e then return end\n    S.targetReasons=S.targetReasons or {}\n    local r=S.targetReasons[e.id]\n    if not r then r={at=-100};S.targetReasons[e.id]=r end\n    local now=S.time() or 0\n    if r.reason==reason or now-r.at<1 then return end\n    r.reason=reason;r.at=now\n    S.diag(string.format(\"candidate id=%s cid=%s hp=%s reason=%s\",e.id,e.contentid,e.hp and e.hp.current or -1,reason))\nend\nfunction S.accept(e,budget)\n    local p=TensorCore.mGetPlayer()\n    if not p or not e then return false end\n    if not e.attackable or not e.targetable or not e.hp or e.hp.current<=0 then S.rejection(e,\"not alive/attackable/targetable\");return false end\n    if TensorCore.isMelee(p) and TensorCore.getDistance2d(p.pos,e.pos)>3+(p.hitradius or 0)+(e.hitradius or 0) then S.rejection(e,\"outside melee reach\");return false end\n    if S.skipped[e.id] then S.rejection(e,\"latched short lifetime\");return false end\n    local life=TensorCore.calcTimeToKill(e.id)\n    if life and life>=0 and life<budget then\n        S.skipped[e.id]=true\n        S.diag(string.format(\"skip id=%s cid=%s ttk=%.2f budget=%.2f\",e.id,e.contentid,life,budget))\n        return false\n    end\n    S.rejection(e,\"eligible\")\n    return true\nend\nfunction S.candidate(cid,budget)\n    local e=TensorCore.getEntityByGroup(\"ContentID\",S.targetSpecs[cid])\n    if cid==5640 and S.bossID and e and e.id~=S.bossID then return end\n    if S.accept(e,budget) then return e end\nend\nfunction S.tick()\n    local p=TensorCore.mGetPlayer();local now=S.time()\n    S.chosen=nil;S.lbReady=false\n    if not p or not now or not p.incombat or not p.hp or p.hp.current<=0 then S.reason(\"player unavailable, dead, or out of combat\");S.releaseLB();return end\n    local actual=TensorCore.mGetTarget()\n    local actualID=actual and actual.id or 0\n    if S.observedTarget~=actualID then\n        S.observedTarget=actualID\n        S.diag(\"actual target=\"..actualID..\" cid=\"..(actual and actual.contentid or 0))\n    end\n    if now>=(S.nextDiagnostic or 0) then\n        S.nextDiagnostic=now+5\n        local target=TensorCore.mGetTarget()\n        S.diag(string.format(\"sample target=%s pos=%.2f,%.2f,%.2f phases=%s\",target and target.id or 0,p.pos.x,p.pos.y,p.pos.z,S.count))\n    end\n    if not C.casterLB and S.lbUntil then S.lbUntil=nil;S.releaseLB() end\n    if S.lbUntil and now>=S.lbUntil then S.lbUntil=nil;S.releaseLB();S.diag(\"LB protection released\") end\n    if S.lbUntil then S.reason(\"optional LB protection active\");return end\n    local ci=p.castinginfo\n    if ci and ((ci.castingid or 0)>0 or (ci.channelingid or 0)>0) then S.reason(\"active cast/channel; no swap\");return end\n    local caster=p.job==25 or p.job==27 or p.job==35 or p.job==42\n    local budget=(caster or TensorCore.isHealer(p)) and C.castBudget or .7\n    local left,right\n    if S.mode==\"body\" and S.wingsActive then\n        left=S.candidate(5641,budget);right=S.candidate(5642,budget)\n        if C.casterLB and caster and S.lbMinVar and not S.lbAttempted and left and right and S.wingStarted[left.id] and S.wingStarted[right.id] then\n            local cur,max=TensorCore.getLBGauge()\n            local mx=(left.pos.x+right.pos.x)/2;local mz=(left.pos.z+right.pos.z)/2\n            local dx=p.pos.x-mx;local dz=p.pos.z-mz\n            -- Back position corroborated by the two-wing Meteor sample; no movement is performed.\n            if max and max>0 and cur>=max and dx*dx+dz*dz<=64 and p.pos.y>math.max(left.pos.y,right.pos.y)+1 then\n                S.lbReady=true\n                return\n            end\n        end\n    end\n    if not C.autoTarget then S.reason(\"automatic targeting disabled\");return end\n    if S.mode==\"adds\" then S.reason(\"adds: native highest-HP big > small filters\");return end\n    if S.mode~=\"p1\" and S.mode~=\"body\" then S.reason(\"transition; no priority target\");return end\n    local e\n    if S.mode==\"p1\" then e=S.candidate(5789,budget) or S.candidate(6271,budget)\n    elseif S.wingsActive then\n        if not S.wingFirst then S.reason(\"waiting for first final-wing cast\");return end\n        if left and left.id==S.wingFirst then e=left or right\n        elseif right and right.id==S.wingFirst then e=right or left\n        else e=left or right end\n    end\n    e=e or S.candidate(5640,budget)\n    if not e then S.reason(\"no eligible priority target\") end\n    if e then\n        S.reason(\"priority candidate available\")\n        S.chosen=e.id\n        if S.lastChoice~=e.id then S.diag(string.format(\"choose id=%s cid=%s\",e.id,e.contentid));S.lastChoice=e.id end\n    end\nend\nfunction S.startLB()\n    local now=S.time();if not now then return end\n    S.lbAttempted=true;S.lbUntil=now+12\n    S.lbMinOld=_G[S.lbMinVar];S.lbMinOwned=true;_G[S.lbMinVar]=2\n    S.diag(\"Auto LB request: both wings; target switching paused for up to 12s\")\nend\nlocal originalChannel=S.channel\nfunction S.channel(args)\n    originalChannel(args)\nend\nlocal originalCast=S.cast\nfunction S.cast(args)\n    local p=TensorCore.mGetPlayer()\n    if C.casterLB and S.lbAttempted and p and args.entityID==p.id and (args.spellID==203 or args.spellID==204 or args.spellID==205) then\n        local now=S.time();S.lbUntil=(now or 0)+3;S.lbAttempted=true;S.releaseLB();S.diag(\"caster LB completed; retain 3s targeting protection\")\n    end\n    originalCast(args)\nend\nS.diag(\"setup: target priority Tail > Heart > Shinryu; final first-casting wing > remaining wing > Shinryu\")\nC.status=\"Active shared Shinryu forecast; live transitions correct phase estimates.\"\nself.used=true\n",
							conditions = 
							{
								
								{
									"6ba79321-3569-3c3f-812a-a1d5961c2f45",
									true,
								},
								
								{
									"280bf4af-be3f-0f9b-bed7-645061ae4a21",
									true,
								},
								
								{
									"e3d33922-2941-0a4c-a357-06908d8e85bc",
									true,
								},
							},
							name = "Early combat setup",
							uuid = "b8ba2674-ef6e-1117-9b30-e7d2d379d33e",
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
							localmapid = 1372,
							name = "Shinryu Unreal only",
							uuid = "6ba79321-3569-3c3f-812a-a1d5961c2f45",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "280bf4af-be3f-0f9b-bed7-645061ae4a21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.shinryuUnrealAutoSim == nil",
							name = "Not initialized this pull",
							uuid = "e3d33922-2941-0a4c-a357-06908d8e85bc",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Early combat setup",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -11.3,
				timerStartOffset = -21.3,
				uuid = "8d2f9d53-2197-fe88-a2b1-8cd5744848f0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\nif s and not s.disabled then s.channel(eventArgs) end\nself.used=true",
							conditions = 
							{
								
								{
									"39b6ff87-454f-3f6e-9381-b0f95ec7fdad",
									true,
								},
								
								{
									"2985a511-aa09-fe71-a54d-29e7e54d2152",
									true,
								},
							},
							name = "Boss cast anchors",
							uuid = "71ead0dc-e89b-12e2-b15e-871d6081a176",
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
							localmapid = 1372,
							name = "Shinryu Unreal only",
							uuid = "39b6ff87-454f-3f6e-9381-b0f95ec7fdad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nreturn s~=nil and not s.disabled and (eventArgs.entityContentID==5640)",
							dequeueIfLuaFalse = true,
							name = "Relevant source and active state",
							uuid = "2985a511-aa09-fe71-a54d-29e7e54d2152",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 3,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Boss cast anchors",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "3e91c8d9-b5ea-5633-ac6d-bfd1648ef9fe",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\nif s and not s.disabled then s.target(eventArgs) end\nself.used=true",
							conditions = 
							{
								
								{
									"fe6294b6-4522-dbf3-8328-9019df661468",
									true,
								},
								
								{
									"68b0859d-973a-3f90-a33c-03007423ebde",
									true,
								},
							},
							name = "Phase and add corrections",
							uuid = "49b1663c-15ac-6b3b-b10c-80afe8481364",
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
							localmapid = 1372,
							name = "Shinryu Unreal only",
							uuid = "fe6294b6-4522-dbf3-8328-9019df661468",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nreturn s~=nil and not s.disabled and (eventArgs.entityContentID==5640 or eventArgs.entityContentID==6272 or eventArgs.entityContentID==6273 or eventArgs.entityContentID==5789 or eventArgs.entityContentID==5641 or eventArgs.entityContentID==5642)",
							dequeueIfLuaFalse = true,
							name = "Relevant source and active state",
							uuid = "68b0859d-973a-3f90-a33c-03007423ebde",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Phase and add corrections",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "33b84667-ff5f-a212-8d13-b2c41c542b9c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\nif s and not s.disabled then s.cast(eventArgs) end\nself.used=true",
							conditions = 
							{
								
								{
									"cb10c3fb-7781-71af-b806-c2a78df0cc89",
									true,
								},
								
								{
									"26534e3b-3758-1eec-b8c4-908e4514755c",
									true,
								},
							},
							name = "P1 estimate extension",
							uuid = "502a8192-2398-1b15-9ee3-9ff448d2781e",
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
							localmapid = 1372,
							name = "Shinryu Unreal only",
							uuid = "cb10c3fb-7781-71af-b806-c2a78df0cc89",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nreturn s~=nil and not s.disabled and (eventArgs.entityContentID==5640 or eventArgs.entityContentID==6272 or eventArgs.entityContentID==6273)",
							dequeueIfLuaFalse = true,
							name = "Relevant source and active state",
							uuid = "26534e3b-3758-1eec-b8c4-908e4514755c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Active phase estimate corrections",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 878.7,
				timerStartOffset = -21.3,
				uuid = "8b3dc8d3-d66b-77db-9088-3014a92ea184",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local old=eventArgs.oldData\nlocal s=old and old.shinryuUnrealAutoSim\nif s and not s.disabled then s.cleanup() end\nif ShinryuUnrealAutoSimConfig then ShinryuUnrealAutoSimConfig.status=\"Ready; changes apply next pull.\" end\nself.used=true",
							name = "Owned blacklist cleanup and reset",
							uuid = "d9e21e49-357c-f19a-9a6b-becb1851e9ff",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				eventType = 9,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Owned blacklist cleanup and reset",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "e0f47a9c-a722-4a7f-a30e-85a7ec81d800",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\nif s and not s.disabled then s.cleanup() end\nself.used=true",
							name = "Owned blacklist zone cleanup",
							uuid = "d9fdd288-577d-9b0a-a5c4-943a4bbf1c0b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				eventType = 11,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Owned blacklist zone cleanup",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "ec7ca376-d344-1d60-8cb3-9a7b0de0e434",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\nif s and not s.disabled then s.wingUpdate() end\nself.used=true",
							conditions = 
							{
								
								{
									"096325b2-08bc-0437-9ae3-c20a86443a79",
									true,
								},
								
								{
									"4059a9fe-18d2-f8d8-98e1-93714e02890c",
									true,
								},
							},
							name = "Update only on a different wing target",
							uuid = "fe3135cb-dfab-e331-a562-fa80f8825ddc",
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
							localmapid = 1372,
							name = "Shinryu Unreal",
							uuid = "096325b2-08bc-0437-9ae3-c20a86443a79",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nreturn s~=nil and s.wingSegment==true",
							name = "Final wing segment",
							uuid = "4059a9fe-18d2-f8d8-98e1-93714e02890c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Final wing kill forecast",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "62253b81-d925-cc27-870a-e754382c44ca",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\ns.tick()\nself.used=true",
							conditions = 
							{
								
								{
									"067b2fe1-fdce-8d24-8a3a-10556f3aafcf",
									true,
								},
								
								{
									"facdbef4-1310-0540-8088-a9d45e78d35f",
									true,
								},
								
								{
									"1b02ac17-9151-ecd3-b19c-9b907698c33b",
									true,
								},
							},
							name = "Update decisions and diagnostics",
							uuid = "2515b3f2-eff7-eb78-828b-bf4011494305",
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
							localmapid = 1372,
							name = "Shinryu Unreal",
							uuid = "067b2fe1-fdce-8d24-8a3a-10556f3aafcf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "facdbef4-1310-0540-8088-a9d45e78d35f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nreturn s~=nil and not s.disabled and s.tick~=nil",
							name = "Active forecast",
							uuid = "1b02ac17-9151-ecd3-b19c-9b907698c33b",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Target decisions and diagnostics",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "e75af76a-45a9-34a1-a400-8038d318cb9c",
				version = 2,
			},
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
									"bf5f208f-0248-0fe4-b610-e5ad6e833f99",
									true,
								},
								
								{
									"fb176e71-b2a0-c9c4-8ffa-b70d05979dfa",
									true,
								},
								
								{
									"4f0fd7b0-36b7-3b7a-8f11-ea0ed15b054f",
									true,
								},
								
								{
									"359f5063-29d9-f4b2-89fa-39af41749c72",
									true,
								},
								
								{
									"d835be23-484c-7416-b1e7-c1a78f7b13f0",
									true,
								},
							},
							endIfUsed = true,
							name = "Target big dragon",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "7d2254ea-9290-3630-a588-275c023821f0",
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
									"bf5f208f-0248-0fe4-b610-e5ad6e833f99",
									true,
								},
								
								{
									"fb176e71-b2a0-c9c4-8ffa-b70d05979dfa",
									true,
								},
								
								{
									"4f0fd7b0-36b7-3b7a-8f11-ea0ed15b054f",
									true,
								},
								
								{
									"359f5063-29d9-f4b2-89fa-39af41749c72",
									true,
								},
								
								{
									"5cd37116-96c8-0ca2-8575-1b55f321b2b1",
									true,
								},
							},
							endIfUsed = true,
							name = "Target small dragon",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "fca93126-7800-28de-a572-bad84ec73050",
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
									"bf5f208f-0248-0fe4-b610-e5ad6e833f99",
									true,
								},
								
								{
									"fb176e71-b2a0-c9c4-8ffa-b70d05979dfa",
									true,
								},
								
								{
									"4f0fd7b0-36b7-3b7a-8f11-ea0ed15b054f",
									true,
								},
								
								{
									"a5b8ed05-2a56-6018-87a1-ec96de104ae1",
									true,
								},
							},
							name = "Select priority enemy",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "e8f55829-bada-7dcc-9dad-60f09b24b628",
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
							localmapid = 1372,
							name = "Shinryu Unreal",
							uuid = "bf5f208f-0248-0fe4-b610-e5ad6e833f99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "fb176e71-b2a0-c9c4-8ffa-b70d05979dfa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nlocal c=ShinryuUnrealAutoSimConfig\nlocal p=TensorCore.mGetPlayer()\nif not s or not c or not c.autoTarget or (not s.chosen and s.mode~=\"adds\") or not p or p.hp.current<=0 then return false end\nif c.casterLB and s.lbUntil then return false end\nlocal ci=p.castinginfo\nreturn not ci or ((ci.castingid or 0)==0 and (ci.channelingid or 0)==0)",
							name = "Targeting enabled and safe",
							uuid = "4f0fd7b0-36b7-3b7a-8f11-ea0ed15b054f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nreturn s~=nil and eventArgs.detectionTargetID==s.chosen",
							name = "Chosen candidate",
							uuid = "048d760e-6a9d-4db8-ab7d-6c273993011d",
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
									"048d760e-6a9d-4db8-ab7d-6c273993011d",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Chosen live enemy",
							uuid = "a5b8ed05-2a56-6018-87a1-ec96de104ae1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nreturn s and s.mode==\"adds\"",
							name = "Adds phase",
							uuid = "359f5063-29d9-f4b2-89fa-39af41749c72",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nlocal p=TensorCore.mGetPlayer()\nlocal e=TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal c=ShinryuUnrealAutoSimConfig\nif not s or not p or not c or not e then return false end\nlocal caster=p.job==25 or p.job==27 or p.job==35 or p.job==42 or TensorCore.isHealer(p)\nreturn s.accept(e,caster and c.castBudget or .7)",
							name = "Cast and melee reach eligible",
							uuid = "cc8e0e64-6443-90bd-8ad9-01a76bf9c939",
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
									"cc8e0e64-6443-90bd-8ad9-01a76bf9c939",
									true,
								},
							},
							filterTargetSubtype = "Highest HP",
							filterTargetType = "ContentID",
							name = "big highest HP in reach",
							partyTargetContentID = 6273,
							uuid = "d835be23-484c-7416-b1e7-c1a78f7b13f0",
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
									"cc8e0e64-6443-90bd-8ad9-01a76bf9c939",
									true,
								},
							},
							filterTargetSubtype = "Highest HP",
							filterTargetType = "ContentID",
							name = "small highest HP in reach",
							partyTargetContentID = 6272,
							uuid = "5cd37116-96c8-0ca2-8575-1b55f321b2b1",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Automatic target selection",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "baab7665-10fd-cf90-ab3b-1e33365df85c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\ns.startLB()\nself.used=true",
							conditions = 
							{
								
								{
									"126d018e-3102-e95d-94bd-fd8fac5cb96e",
									true,
								},
								
								{
									"871acc84-bd21-e34c-bd25-0bc9754262c7",
									true,
								},
								
								{
									"5a843cea-37f5-e519-9f9d-548dc473b023",
									true,
								},
							},
							name = "Own LB request and targeting hold",
							uuid = "a7417fbe-91d0-991a-b1fb-c278d4cadff9",
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
									"126d018e-3102-e95d-94bd-fd8fac5cb96e",
									true,
								},
								
								{
									"871acc84-bd21-e34c-bd25-0bc9754262c7",
									true,
								},
								
								{
									"fe4c5095-d5bf-9fd5-bb97-6ce113514df0",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_LimitBreakAuto",
							uuid = "61fe084b-0859-5398-9567-e814a8d03c8d",
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
							category = "Self",
							conditionType = 8,
							localmapid = 1372,
							name = "Shinryu Unreal",
							uuid = "126d018e-3102-e95d-94bd-fd8fac5cb96e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "871acc84-bd21-e34c-bd25-0bc9754262c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nlocal c=ShinryuUnrealAutoSimConfig\nreturn s and c and c.casterLB and s.lbReady and not s.lbAttempted",
							name = "Optional caster LB ready",
							uuid = "5a843cea-37f5-e519-9f9d-548dc473b023",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nlocal c=ShinryuUnrealAutoSimConfig\nlocal p=TensorCore.mGetPlayer()\nreturn s and c and c.casterLB and s.lbUntil~=nil and not s.lbCompleted and p and p.hp.current>0 and (p.job==25 or p.job==27 or p.job==35 or p.job==42) and s.wingsActive and s.liveWings>=2",
							name = "Owned LB request pending",
							uuid = "fe4c5095-d5bf-9fd5-bb97-6ce113514df0",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Optional caster LB on both wings",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "92e52a52-c100-0f7f-934d-824fdcdfac1e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\ns.lbCompleted=true;s.cast(eventArgs)\nself.used=true",
							conditions = 
							{
								
								{
									"86223b27-1ac7-92cc-96d6-f56701eeee00",
									true,
								},
								
								{
									"c68fed57-41f3-ceb4-9d74-e2e573a8935b",
									true,
								},
								
								{
									"41f347b0-7015-83c6-8384-d6493d9641dc",
									true,
								},
							},
							name = "Complete owned caster LB",
							uuid = "08d2aee9-15a5-edd9-8a92-d1d9c58827b3",
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
							localmapid = 1372,
							name = "Shinryu Unreal",
							uuid = "86223b27-1ac7-92cc-96d6-f56701eeee00",
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
							name = "Caster LB completion",
							spellIDList = 
							{
								203,
								204,
								205,
							},
							uuid = "c68fed57-41f3-ceb4-9d74-e2e573a8935b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nlocal c=ShinryuUnrealAutoSimConfig\nlocal p=TensorCore.mGetPlayer()\nreturn s and c and c.casterLB and s.lbAttempted and p and eventArgs.entityID==p.id",
							name = "Local optional LB",
							uuid = "41f347b0-7015-83c6-8384-d6493d9641dc",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Ability completion diagnostics",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "40517ec5-85c3-05cb-973d-b9cc8ecdd362",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.shinryuUnrealAutoSim\ns.wingStarted=s.wingStarted or {}\ns.wingStarted[eventArgs.entityID]=true\nif not s.wingFirst then\n    s.wingFirst=eventArgs.entityID\n    s.diag(\"first casting wing id=\"..eventArgs.entityID..\" spell=\"..eventArgs.spellID)\nend\nself.used=true",
							conditions = 
							{
								
								{
									"f4bfed71-9d60-34c7-aaed-05189ce7a6fb",
									true,
								},
								
								{
									"6530f446-1a69-612f-805b-eb18e9ed76a5",
									true,
								},
								
								{
									"cac4d715-662c-b5aa-86f4-fa5683fb81d0",
									true,
								},
							},
							name = "Record first casting wing",
							uuid = "6f699adb-1d15-c7ae-9cda-891cd7896f5a",
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
							localmapid = 1372,
							uuid = "f4bfed71-9d60-34c7-aaed-05189ce7a6fb",
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
								50301,
								50302,
							},
							uuid = "6530f446-1a69-612f-805b-eb18e9ed76a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.shinryuUnrealAutoSim\nreturn s and not s.disabled and s.mode==\"body\" and (eventArgs.entityContentID==5641 or eventArgs.entityContentID==5642)",
							dequeueIfLuaFalse = true,
							name = "Final wings active",
							uuid = "cac4d715-662c-b5aa-86f4-fa5683fb81d0",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 3,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Final wing cast order",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1178.7,
				timerStartOffset = -21.3,
				uuid = "41358b6b-f929-ce4f-9697-d27563d5b2f4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local D={queued=eventArgs.timeQueued,deadline=eventArgs.timeQueued+eventArgs.time*1000}\ndata.shinryuPrecastDiagnostic=D\nfunction D.log(message)\n    local c=ShinryuUnrealAutoSimConfig\n    if c and not c.diagnostics then return end\n    local line=\"[Shinryu AutoSim] countdown=\"..D.queued..\" \"..message\n    d(line)\n    local f=io.open(GetStartupPath()..[[\\LuaMods\\TensorReactions\\ShinryuUnreal.AutoSim.diagnostics.log]],\"a\")\n    if f then f:write(line,\"\\n\");f:close() end\nend\nlocal c=ShinryuUnrealAutoSimConfig\nlocal p=TensorCore.mGetPlayer()\nlocal e=TensorCore.getEntityByGroup(\"ContentID\",{contentid=5640,subgroup=\"Highest HP\"})\nD.log(\"received; enabled=\"..tostring(c and c.enabled)..\" autoTarget=\"..tostring(c and c.autoTarget)..\" inCombat=\"..tostring(p and p.incombat)..\" StartCombat=\"..tostring(gStartCombat))\nD.log(\"candidate=\"..tostring(e and e.id)..\" attackable=\"..tostring(e and e.attackable)..\" targetable=\"..tostring(e and e.targetable))\nself.used=true",
							conditions = 
							{
								
								{
									"1e1f2b13-db69-e720-91f5-dbfebb4e66d4",
									true,
								},
							},
							name = "Log countdown targeting context",
							uuid = "83806fdc-8245-bdbf-8ace-41492a828368",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local D=data.shinryuPrecastDiagnostic\nif D and D.queued==eventArgs.timeQueued then D.log(\"selection skipped: countdown ended/cancelled, combat began, or targeting disabled\") end\nself.used=true",
							conditions = 
							{
								
								{
									"1e1f2b13-db69-e720-91f5-dbfebb4e66d4",
									true,
								},
								
								{
									"cb29ad0b-e38d-854a-8acf-8a04590f55e7",
									true,
								},
							},
							endIfUsed = true,
							name = "Log and finish skipped countdown",
							uuid = "31cf504c-f2d0-de16-8cbc-0b612b6582e8",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "gStartCombat=false\nlocal D=data.shinryuPrecastDiagnostic\nif D then D.log(\"StartCombat confirmed false; target-only request\") end\nself.used=true",
							conditions = 
							{
								
								{
									"1e1f2b13-db69-e720-91f5-dbfebb4e66d4",
									true,
								},
								
								{
									"27261481-104b-7f15-9a25-b3d88e0524cd",
									false,
								},
								
								{
									"27d25d96-1a4c-daca-a488-8b1e7d7ff22e",
									true,
								},
							},
							name = "Keep Start Combat off",
							uuid = "54aa2dec-f12f-cbde-9547-b30d44f31a85",
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
									"1e1f2b13-db69-e720-91f5-dbfebb4e66d4",
									true,
								},
								
								{
									"27261481-104b-7f15-9a25-b3d88e0524cd",
									false,
								},
								
								{
									"27d25d96-1a4c-daca-a488-8b1e7d7ff22e",
									true,
								},
								
								{
									"66e3a79f-2075-f5ca-a82d-bda79cfebfea",
									true,
								},
							},
							name = "Select Shinryu for precast",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "bce4bfd3-ae02-a04b-a9bd-3cc9883e1ade",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local D=data.shinryuPrecastDiagnostic\nlocal e=TensorCore.mGetTarget()\nif D then D.log(\"selection confirmed actual=\"..tostring(e and e.id)..\" cid=\"..tostring(e and e.contentid)..\" StartCombat=\"..tostring(gStartCombat)) end\nself.used=true",
							conditions = 
							{
								
								{
									"1e1f2b13-db69-e720-91f5-dbfebb4e66d4",
									true,
								},
								
								{
									"b09d00a3-50f5-b780-b1fa-0b9d93524d22",
									true,
								},
							},
							name = "Log selected countdown target",
							uuid = "f8755239-a15a-9043-88a3-afde4176c8d7",
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
							localmapid = 1372,
							uuid = "1e1f2b13-db69-e720-91f5-dbfebb4e66d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							uuid = "27261481-104b-7f15-9a25-b3d88e0524cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local c=ShinryuUnrealAutoSimConfig\nlocal D=data.shinryuPrecastDiagnostic\nreturn c and c.enabled and c.autoTarget and D and D.queued==eventArgs.timeQueued and not D.cancelled and Now()<D.deadline",
							name = "Automatic targeting enabled",
							uuid = "27d25d96-1a4c-daca-a488-8b1e7d7ff22e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e=TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn e and e.targetable and e.attackable and e.hp and e.hp.current>0",
							name = "Live attackable Shinryu",
							uuid = "6b9a3d6c-f92c-4927-8575-f4454f8d7225",
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
									"6b9a3d6c-f92c-4927-8575-f4454f8d7225",
									true,
								},
							},
							filterTargetSubtype = "Highest HP",
							filterTargetType = "ContentID",
							name = "Main Shinryu highest HP",
							partyTargetContentID = 5640,
							uuid = "66e3a79f-2075-f5ca-a82d-bda79cfebfea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local D=data.shinryuPrecastDiagnostic\nlocal c=ShinryuUnrealAutoSimConfig\nlocal p=TensorCore.mGetPlayer()\nreturn D and (D.queued~=eventArgs.timeQueued or D.cancelled or Now()>=D.deadline or (p and p.incombat) or (c and (not c.enabled or not c.autoTarget)))",
							name = "Cancelled, expired or disabled",
							uuid = "cb29ad0b-e38d-854a-8acf-8a04590f55e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionUUID = "bce4bfd3-ae02-a04b-a9bd-3cc9883e1ade",
							category = "Action",
							name = "Native selection completed",
							uuid = "b09d00a3-50f5-b780-b1fa-0b9d93524d22",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 16,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Countdown target only",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -11.3,
				timerStartOffset = -141.3,
				uuid = "d26ff4a5-adab-4537-a3d8-963d311c9e0f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local D=data.shinryuPrecastDiagnostic\nif D then D.cancelled=true;D.log(\"countdown cancelled; pending selection stopped\") end\nself.used=true",
							conditions = 
							{
								
								{
									"a3dd7958-de99-98aa-9916-f0870074419c",
									true,
								},
							},
							name = "Cancel owned countdown selection",
							uuid = "1505d5b4-caef-b5b4-a068-2be77baab0d9",
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
							localmapid = 1372,
							uuid = "a3dd7958-de99-98aa-9916-f0870074419c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 17,
				loop = true,
				mechanicTime = 21.3,
				name = "[Shinryu AutoSim] Countdown cancelled diagnostic",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -11.3,
				timerStartOffset = -141.3,
				uuid = "b501d28c-e338-489b-a030-0bffe350e6e9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "General",
				uuid = "d91fa3a2-ea1d-107c-9d9d-753d32f88689",
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
				displayPath = "General",
				eventType = 13,
				execute = "if AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.PrepullHelper then\n    if AnyoneCore.Settings.PrepullHelper.enabled then\n        AnyoneCore.Settings.PrepullHelper.enabled = false\n    end\n    self.used = true\nend\n",
				executeType = 2,
				mechanicTime = 21.3,
				name = "[AA] Disable Prepull Helper",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -16.3,
				timerStartOffset = -21.3,
				uuid = "7b35b006-7cf3-a2a7-9b6e-ba48ca9386b1",
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
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "e6b41dc7-ad87-9a93-5ad9-30011132ee57",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "93bc837c-ead5-f4e0-cf47-867a758fe2cc",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[5] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "54022eb9-42b8-2c7d-df8d-1ecfd8e8b0c9",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "adbf5e48-e127-be84-87f1-0f4e060f5818",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[9] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "014b6a05-aaf6-7961-c762-89b3faac4915",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "344d91af-72bf-1823-af65-e51938b3ff7f",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "78f5ef5a-1e72-31fe-68f7-3cdc6577b0aa",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "dfe23688-eab1-8e0c-4a40-004ee3b0d998",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "4b386084-d000-2d30-416c-45d2e2f683d4",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "113a8407-0410-3f2b-1d28-2101eed46fd7",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[19] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "8ddbf032-1d06-05e6-2168-21a45f6eea42",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "ccaaea42-f305-7ba6-261e-35f86bea4292",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[21] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "5c106fd7-fc60-08eb-b7fe-14f5b8b78d67",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[23] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "3a20cd4d-c476-e371-6fde-255fbfe3e95d",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "86f2033e-7a0a-4c2a-9f4f-2eb4f2678e0e",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[25] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "d5877563-4d46-9aff-e16f-23d13a005973",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[28] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "d2b3b0aa-2e48-9ebe-8166-0750f934d73a",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[29] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "a5efff7f-7cde-10e3-d5aa-85ad9a58098f",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "a0106e1d-78b9-6a01-1f19-089b5c147b6d",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[31] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "c8f0d880-7cf9-6aa4-dda0-35569f5c0e10",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[32] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "708cd627-6486-0bbb-60cc-6de1bbbb42f7",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "1d31ea5c-2478-6e28-c4bb-41dab73bf06c",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "3dec2833-fd6d-58cf-8e98-51c5ef430783",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[41] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "77e75fbd-ad79-fae9-e104-092f6221ff8d",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[43] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "90486247-03d5-a303-ef89-76c5a5a4a717",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "3d50c7fc-b3ee-a990-3e91-5a56d61ef28c",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "aadfae85-453e-3f11-bdf0-fb87e2aa5bd5",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[50] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "74965063-105c-676f-002a-7cd5d90f3473",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[52] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "c2d50d49-b327-6f05-fc11-7dbf38dbecd9",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[53] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "5f7c3f4c-5f9b-6348-0167-5eea0ef50f9c",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "eabdbb26-d739-56f2-d8ed-b2b0ddd79536",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "60474d2b-1b28-6797-d11c-81c14ff3703b",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "4150acb1-d7a5-c00d-98fb-6f7b6426ce81",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "8e038858-4ba2-b30c-b5c3-d33a0fe5d2a8",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[70] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "24660a41-d476-84dd-3cfe-d9c7286dd151",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[74] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "d9e706a5-ae5f-ad59-28d6-3d53fefcc275",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[75] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "14659768-8478-d01c-4ee6-8a6e6d1ce378",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[76] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "aa308e0f-4e92-f4f3-aa4c-eab9b6dcd2df",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "090d5bba-06fa-298e-ea07-3f7c61ffe88a",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[78] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "a9a59659-dea1-1da5-b4cb-1e6f0729f029",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[80] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "ea473b84-d0db-5558-439c-d1c682055ed4",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[81] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "b415f661-964b-d255-ab35-db8b4ef322f1",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "30e9bdd6-9788-b46a-a5fa-52747d81bb26",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[83] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "7262911b-9232-d33f-4e2b-c49186dc486b",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[84] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "7ef11188-29fb-a794-aa56-2dca82bfb498",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "e1e1da45-8428-79b1-5ec3-211f775ca595",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	[91] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal\\Shinryumain",
				uuid = "1743f892-9179-0bb6-8f74-49c4a8b650a2",
			},
			inheritanceRoot = "Shinryu Unreal\\Shinryumain",
			objectType = "folder",
		},
	},
	inheritedProfiles = 
	{
		"Shinryu Unreal\\Shinryumain",
	},
	timelineName = "shinryu-un",
	version = "1.0.1",
}



return tbl
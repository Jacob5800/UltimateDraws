local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Settings",
			uuid = "447fd3ac-a3c4-c16d-801b-e97cb0d1bc52",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Shared helpers are initialized before any settings or mechanic consumer.\nif not LevellingDungeons or LevellingDungeons.version~=11 then\n    local previous = LevellingDungeons\n    local L={version=11,definitions={[1167]={[\"name\"]=\"Ihuykatumu\",[\"sync\"]=92,[\"bosses\"]={[12723]={[\"name\"]=\"Prime Punutiy\",[\"anchors\"]={[36492]=5.187},[\"kill\"]=135,[\"movement\"]={{14.76,16.56},{28.75,30.55},{53.93,55.73},{59.26,61.06}},[\"center\"]={35.0,-95.0},[\"downtime\"]={}},[12716]={[\"name\"]=\"Drowsie\",[\"anchors\"]={[39132]=9.218},[\"kill\"]=126.1,[\"movement\"]={{33.5,35.3},{44.5,46.3},{59.37,61.17},{64.81,66.61},{103.64,105.44},{122.74,124.54}},[\"center\"]={80.0,53.0},[\"downtime\"]={}},[12711]={[\"name\"]=\"Apollyon\",[\"anchors\"]={[36340]=5.39},[\"kill\"]=158.8,[\"movement\"]={{60.2,61.6},{67.1,69.9},{140.5,144.0}},[\"center\"]={-107.0,265.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[12768]=true},[\"x\"]=-73.106,[\"y\"]=-194.0,[\"z\"]=-32.517},{[\"ids\"]={[12720]=true},[\"x\"]=179.278,[\"y\"]=-159.059,[\"z\"]=112.016},{[\"ids\"]={[12774]=true,[12775]=true},[\"x\"]=-76.127,[\"y\"]=-115.12,[\"z\"]=333.547},{[\"ids\"]={[12720]=true},[\"x\"]=130.173,[\"y\"]=-154.404,[\"z\"]=112.566}}},[1193]={[\"name\"]=\"Worqor Zormor\",[\"sync\"]=94,[\"bosses\"]={[12699]={[\"name\"]=\"Ryoqor Terteh\",[\"anchors\"]={[36279]=9.017},[\"kill\"]=113.8,[\"movement\"]={{35.7,37.5},{38.68,40.48},{69.36,71.16},{72.42,74.22},{95.19,96.99},{97.16,98.96}},[\"center\"]={-108.0,119.0},[\"downtime\"]={}},[12703]={[\"name\"]=\"Kahderyor\",[\"anchors\"]={[36282]=4.179},[\"kill\"]=nil,[\"movement\"]={},[\"center\"]={-53.0,-57.0},[\"downtime\"]={}},[12705]={[\"name\"]=\"Gurfurlur\",[\"anchors\"]={[36269]=5.203},[\"kill\"]=nil,[\"movement\"]={{71.84,73.64}},[\"center\"]={-54.0,-195.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[12810]=true,[12811]=true,[12813]=true,[12819]=true},[\"x\"]=-100.633,[\"y\"]=6.964,[\"z\"]=171.649},{[\"ids\"]={[12815]=true},[\"x\"]=-71.367,[\"y\"]=99.967,[\"z\"]=-13.535},{[\"ids\"]={[12821]=true,[12824]=true},[\"x\"]=-77.165,[\"y\"]=358.109,[\"z\"]=-105.821},{[\"ids\"]={[12810]=true,[12811]=true,[12813]=true,[12819]=true},[\"x\"]=-72.068,[\"y\"]=1.552,[\"z\"]=189.715}}},[1194]={[\"name\"]=\"The Skydeep Cenote\",[\"sync\"]=96,[\"bosses\"]={[12755]={[\"name\"]=\"Feather Ray\",[\"anchors\"]={[36739]=6.203},[\"kill\"]=nil,[\"movement\"]={{26.24,28.04},{43.09,44.89},{91.25,93.05}},[\"center\"]={-105.0,-160.0},[\"downtime\"]={}},[12888]={[\"name\"]=\"Firearms\",[\"anchors\"]={[36448]=8.164},[\"kill\"]=132.1,[\"movement\"]={},[\"center\"]={-85.0,-155.0},[\"downtime\"]={}},[12728]={[\"name\"]=\"Maulskull\",[\"anchors\"]={[36669]=5.242},[\"kill\"]=177.0,[\"movement\"]={},[\"center\"]={100.0,-430.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[12866]=true},[\"x\"]=-106.676,[\"y\"]=-51.585,[\"z\"]=-97.887},{[\"ids\"]={[12876]=true},[\"x\"]=-79.088,[\"y\"]=-210.0,[\"z\"]=-87.114},{[\"ids\"]={[12876]=true,[13067]=true},[\"x\"]=102.175,[\"y\"]=-194.9,[\"z\"]=-359.023},{[\"ids\"]={[12876]=true,[12877]=true,[13067]=true},[\"x\"]=105.76,[\"y\"]=-194.85,[\"z\"]=-354.574}}},[1198]={[\"name\"]=\"Vanguard\",[\"sync\"]=98,[\"bosses\"]={[12750]={[\"name\"]=\"Vanguard Commander R8\",[\"anchors\"]={[36571]=6.156},[\"kill\"]=132.5,[\"movement\"]={{25.42,27.22}},[\"center\"]={-100.0,207.0},[\"downtime\"]={}},[12757]={[\"name\"]=\"Protector\",[\"anchors\"]={[37161]=6.187},[\"kill\"]=135.6,[\"movement\"]={{24.11,28.19},{28.47,32.53},{32.86,36.89},{84.83,96.62},{106.89,110.91},{111.22,115.23},{115.59,119.48},{126.32,128.12}},[\"center\"]={0.0,-100.0},[\"downtime\"]={}},[12752]={[\"name\"]=\"Zander the Snakeskinner\",[\"anchors\"]={[36594]=6.156},[\"kill\"]=182.5,[\"movement\"]={{19.73,21.53},{45.28,47.08},{50.53,52.33},{55.84,57.64},{61.03,62.83}},[\"center\"]={90.0,-430.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[12778]=true},[\"x\"]=-94.317,[\"y\"]=0.08,[\"z\"]=282.127},{[\"ids\"]={[12780]=true},[\"x\"]=-47.166,[\"y\"]=7.0,[\"z\"]=-11.215},{[\"ids\"]={[12777]=true,[12780]=true},[\"x\"]=82.628,[\"y\"]=7.0,[\"z\"]=-327.443},{[\"ids\"]={[12780]=true},[\"x\"]=-10.391,[\"y\"]=7.03,[\"z\"]=-39.201}}},[1208]={[\"name\"]=\"Origenics\",[\"sync\"]=100,[\"bosses\"]={[12741]={[\"name\"]=\"Herpekaris\",[\"anchors\"]={[36519]=6.203},[\"kill\"]=142.2,[\"movement\"]={{118.45,120.25}},[\"center\"]={-88.0,-180.0},[\"downtime\"]={}},[12693]={[\"name\"]=\"Deceiver\",[\"anchors\"]={[36371]=7.156},[\"kill\"]=160.2,[\"movement\"]={{50.2,52.0},{108.92,110.72},{133.28,135.08}},[\"center\"]={-172.0,-142.0},[\"downtime\"]={}},[12695]={[\"name\"]=\"Ambrose the Undeparted\",[\"anchors\"]={[36436]=6.219},[\"kill\"]=201.9,[\"movement\"]={{23.46,25.27},{110.57,112.37}},[\"center\"]={190.0,0.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[12894]=true,[12895]=true},[\"x\"]=-165.728,[\"y\"]=-94.0,[\"z\"]=-90.196},{[\"ids\"]={[10792]=true,[12840]=true},[\"x\"]=183.337,[\"y\"]=0.0,[\"z\"]=59.129},{[\"ids\"]={[12834]=true},[\"x\"]=27.633,[\"y\"]=302.0,[\"z\"]=92.586}}},[974]={[\"name\"]=\"Ktisis Hyperboreia\",[\"sync\"]=88,[\"bosses\"]={[10396]={[\"name\"]=\"Lyssa\",[\"anchors\"]={[25182]=5.141},[\"kill\"]=156.6,[\"movement\"]={{48.94,50.74},{58.04,59.84},{121.75,123.55},{130.82,132.62}},[\"center\"]={-144.0,49.0},[\"downtime\"]={{23.35,36.45},{82.9,99.0}}},[10398]={[\"name\"]=\"Ladon Lord\",[\"anchors\"]={[25743]=4.172},[\"kill\"]=138.3,[\"movement\"]={},[\"center\"]={0.0,48.0},[\"downtime\"]={}},[10399]={[\"name\"]=\"Hermes\",[\"anchors\"]={[25886]=7.187},[\"kill\"]=nil,[\"movement\"]={{26.45,28.34},{51.49,53.29},{63.17,65.04},{66.17,68.04},{129.07,130.87},{132.07,133.91},{135.07,136.87},{138.12,140.0}},[\"center\"]={0.0,-50.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[10500]=true},[\"x\"]=-92.79,[\"y\"]=488.06,[\"z\"]=87.541},{[\"ids\"]={[10505]=true,[10506]=true,[10507]=true},[\"x\"]=-5.187,[\"y\"]=624.002,[\"z\"]=128.337},{[\"ids\"]={[10511]=true},[\"x\"]=-32.181,[\"y\"]=-140.0,[\"z\"]=8.56},{[\"ids\"]={[10503]=true,[10507]=true},[\"x\"]=6.729,[\"y\"]=624.0,[\"z\"]=175.219}}},[822]={[\"name\"]=\"Mt. Gulg\",[\"sync\"]=80,[\"bosses\"]={[8260]={[\"name\"]=\"Forgiven Cruelty\",[\"anchors\"]={[15611]=9.211},[\"kill\"]=120.9,[\"movement\"]={{18.33,20.13},{68.9,70.7},{111.51,113.31}},[\"center\"]={188.0,-170.0},[\"downtime\"]={}},[8261]={[\"name\"]=\"Forgiven Whimsy\",[\"anchors\"]={[15627]=11.101},[\"kill\"]=135.2,[\"movement\"]={{102.47,104.27},{124.97,126.77}},[\"center\"]={-240.0,-50.0},[\"downtime\"]={}},[8262]={[\"name\"]=\"Forgiven Obscenity\",[\"anchors\"]={[15636]=9.165},[\"kill\"]=181.4,[\"movement\"]={{20.47,22.27},{37.94,39.74},{48.34,50.14},{80.9,82.7},{91.0,92.8},{167.46,169.26}},[\"center\"]={-240.0,237.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[8267]=true,[8269]=true},[\"x\"]=-203.994,[\"y\"]=202.0,[\"z\"]=-105.326},{[\"ids\"]={[7864]=true},[\"x\"]=-230.322,[\"y\"]=204.37,[\"z\"]=185.953},{[\"ids\"]={[8262]=true,[8264]=true,[8265]=true},[\"x\"]=317.159,[\"y\"]=-54.458,[\"z\"]=-164.904},{[\"ids\"]={[8262]=true,[8264]=true,[8265]=true},[\"x\"]=317.159,[\"y\"]=-54.458,[\"z\"]=-164.904},{[\"ids\"]={[8262]=true,[8264]=true,[8265]=true},[\"x\"]=312.274,[\"y\"]=-53.627,[\"z\"]=-158.284},{[\"ids\"]={[8262]=true,[8264]=true,[8265]=true},[\"x\"]=312.274,[\"y\"]=-53.627,[\"z\"]=-158.284}}},[1065]={[\"name\"]=\"The Aery\",[\"sync\"]=56,[\"bosses\"]={[3452]={[\"name\"]=\"Rangda\",[\"anchors\"]={[3889]=6.765},[\"kill\"]=nil,[\"movement\"]={},[\"center\"]=nil,[\"downtime\"]={}},[3455]={[\"name\"]=\"Gyascutus\",[\"anchors\"]={[30191]=5.156},[\"kill\"]=94.0,[\"movement\"]={},[\"center\"]=nil,[\"downtime\"]={}},[3458]={[\"name\"]=\"Nidhogg\",[\"anchors\"]={[30206]=6.234},[\"kill\"]=nil,[\"movement\"]={},[\"center\"]=nil,[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[3442]=true,[3443]=true,[4402]=true},[\"x\"]=350.698,[\"y\"]=81.176,[\"z\"]=-107.988},{[\"ids\"]={[11993]=true},[\"x\"]=97.473,[\"y\"]=47.042,[\"z\"]=53.574},{[\"ids\"]={[3438]=true,[3439]=true},[\"x\"]=34.562,[\"y\"]=129.838,[\"z\"]=-151.69}}},[1038]={[\"name\"]=\"Copperbell Mines\",[\"sync\"]=20,[\"bosses\"]={[548]={[\"name\"]=\"Kottos\",[\"anchors\"]={[28545]=5.172},[\"kill\"]=37.4,[\"movement\"]={},[\"center\"]=nil,[\"downtime\"]={}},[554]={[\"name\"]=\"Ichorous Ire\",[\"anchors\"]={[28462]=6.328},[\"kill\"]=32.8,[\"movement\"]={{26.0,27.8}},[\"center\"]=nil,[\"downtime\"]={}},[101]={[\"name\"]=\"Gyges the Great\",[\"anchors\"]={[28762]=8.14},[\"kill\"]=32.6,[\"movement\"]={{12.34,14.14}},[\"center\"]=nil,[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[117]=true,[1342]=true},[\"x\"]=17.344,[\"y\"]=-6.958,[\"z\"]=-198.638},{[\"ids\"]={[631]=true},[\"x\"]=28.642,[\"y\"]=-42.267,[\"z\"]=40.674},{[\"ids\"]={[117]=true,[631]=true,[1342]=true},[\"x\"]=54.459,[\"y\"]=-8.642,[\"z\"]=-141.375},{[\"ids\"]={[117]=true},[\"x\"]=17.044,[\"y\"]=-6.958,[\"z\"]=-208.667},{[\"ids\"]={[986]=true},[\"x\"]=-38.315,[\"y\"]=-41.163,[\"z\"]=131.212}}},[1245]={[\"name\"]=\"Halatali\",[\"sync\"]=23,[\"bosses\"]={[1194]={[\"name\"]=\"Firemane\",[\"anchors\"]={[40592]=6.594},[\"kill\"]=nil,[\"movement\"]={{8.79,10.59}},[\"center\"]=nil,[\"downtime\"]={}},[1196]={[\"name\"]=\"Thunderclap Guivre\",[\"anchors\"]={[40595]=6.195},[\"kill\"]=60.7,[\"movement\"]={{8.39,10.2},{52.26,54.06}},[\"center\"]={-179.0,-133.0},[\"downtime\"]={}},[1197]={[\"name\"]=\"Tangata\",[\"anchors\"]={[40602]=6.149},[\"kill\"]=102.7,[\"movement\"]={{55.84,57.64}},[\"center\"]=nil,[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[117]=true},[\"x\"]=-80.034,[\"y\"]=-11.021,[\"z\"]=-102.495}}},[1039]={[\"name\"]=\"The Thousand Maws of Toto-Rak\",[\"sync\"]=27,[\"bosses\"]={[444]={[\"name\"]=\"Graffias\",[\"anchors\"]={[701]=14.25},[\"kill\"]=40.5,[\"movement\"]={{15.37,17.17},{38.47,40.27}},[\"center\"]={215.0,-145.0},[\"downtime\"]={}}},[\"pools\"]={}},[1040]={[\"name\"]=\"Haukke Manor\",[\"sync\"]=31,[\"bosses\"]={[423]={[\"name\"]=\"Manor Claviger\",[\"anchors\"]={},[\"kill\"]=nil,[\"movement\"]={},[\"center\"]=nil,[\"downtime\"]={}},[427]={[\"name\"]=\"Manor Steward\",[\"anchors\"]={},[\"kill\"]=46.2,[\"movement\"]={},[\"center\"]=nil,[\"downtime\"]={}},[422]={[\"name\"]=\"Lady Amandine\",[\"anchors\"]={[28640]=9.524},[\"kill\"]=nil,[\"movement\"]={},[\"center\"]={0.0,4.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[428]=true},[\"x\"]=32.059,[\"y\"]=17.0,[\"z\"]=-4.471}}},[1041]={[\"name\"]=\"Brayflox's Longstop\",[\"sync\"]=34,[\"bosses\"]={[1280]={[\"name\"]=\"Great Yellow Pelican\",[\"anchors\"]={[506]=11.64},[\"kill\"]=nil,[\"movement\"]={{12.84,14.64}},[\"center\"]=nil,[\"downtime\"]={}},[1279]={[\"name\"]=\"Aiatar\",[\"anchors\"]={[28659]=5.164},[\"kill\"]=42.0,[\"movement\"]={{37.54,39.34}},[\"center\"]={-25.0,-235.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[1293]=true,[1294]=true},[\"x\"]=-102.892,[\"y\"]=-1.52,[\"z\"]=4.044},{[\"ids\"]={[1294]=true},[\"x\"]=-98.497,[\"y\"]=-2.382,[\"z\"]=19.883}}},[1267]={[\"name\"]=\"The Sunken Temple of Qarn\",[\"sync\"]=37,[\"bosses\"]={[1567]={[\"name\"]=\"Teratotaur\",[\"anchors\"]={[42231]=5.171},[\"kill\"]=81.7,[\"movement\"]={},[\"center\"]={-70.0,-60.0},[\"downtime\"]={}},[1569]={[\"name\"]=\"Temple Guardian\",[\"anchors\"]={[42234]=5.219},[\"kill\"]=31.9,[\"movement\"]={},[\"center\"]={50.0,-10.0},[\"downtime\"]={}},[1570]={[\"name\"]=\"Adjudicator\",[\"anchors\"]={[42245]=5.195},[\"kill\"]=nil,[\"movement\"]={{72.13,74.06},{77.89,79.69},{95.61,97.52}},[\"center\"]={238.0,0.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[1573]=true},[\"x\"]=-131.456,[\"y\"]=-17.588,[\"z\"]=-14.603},{[\"ids\"]={[1572]=true},[\"x\"]=8.987,[\"y\"]=-18.678,[\"z\"]=-15.0},{[\"ids\"]={[1580]=true},[\"x\"]=186.816,[\"y\"]=-4.0,[\"z\"]=-0.015}}},[1303]={[\"name\"]=\"Cutter's Cry\",[\"sync\"]=40,[\"bosses\"]={[1585]={[\"name\"]=\"Myrmidon Princess\",[\"anchors\"]={[44226]=6.156},[\"kill\"]=37.0,[\"movement\"]={{24.6,26.4}},[\"center\"]=nil,[\"downtime\"]={}},[1590]={[\"name\"]=\"Chimera\",[\"anchors\"]={[44243]=12.797},[\"kill\"]=59.6,[\"movement\"]={},[\"center\"]={-170.0,-200.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[1601]=true},[\"x\"]=-175,[\"y\"]=0,[\"z\"]=-136}}},[1042]={[\"name\"]=\"The Stone Vigil\",[\"sync\"]=43,[\"bosses\"]={[1677]={[\"name\"]=\"Chudo-Yudo\",[\"anchors\"]={[902]=6.453},[\"kill\"]=87.2,[\"movement\"]={},[\"center\"]={0.0,115.0},[\"downtime\"]={}},[1678]={[\"name\"]=\"Koshchei\",[\"anchors\"]={[28732]=5.141},[\"kill\"]=nil,[\"movement\"]={},[\"center\"]={40.0,-80.0},[\"downtime\"]={}},[1680]={[\"name\"]=\"Isgebind\",[\"anchors\"]={[1025]=8.235},[\"kill\"]=123.7,[\"movement\"]={},[\"center\"]={0.0,-248.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[114]=true},[\"x\"]=5.203,[\"y\"]=0.0,[\"z\"]=-53.452},{[\"ids\"]={[114]=true,[1675]=true},[\"x\"]=-0.32,[\"y\"]=0.0,[\"z\"]=-187.121}}},[1330]={[\"name\"]=\"Dzemael Darkhold\",[\"sync\"]=46,[\"bosses\"]={[1397]={[\"name\"]=\"All-seeing Eye\",[\"anchors\"]={[45570]=6.328},[\"kill\"]=nil,[\"movement\"]={{109.17,110.97}},[\"center\"]={48.0,78.0},[\"downtime\"]={}},[1415]={[\"name\"]=\"Taulurd\",[\"anchors\"]={[45572]=6.172},[\"kill\"]=103.5,[\"movement\"]={},[\"center\"]={-96.0,-27.0},[\"downtime\"]={}},[1396]={[\"name\"]=\"Batraal\",[\"anchors\"]={[45579]=6.094},[\"kill\"]=143.1,[\"movement\"]={},[\"center\"]={85.0,-175.0},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[1656]=true,[2152]=true},[\"x\"]=119.798,[\"y\"]=-14.0,[\"z\"]=127.214},{[\"ids\"]={[1652]=true,[1654]=true,[1656]=true,[2154]=true},[\"x\"]=-145.647,[\"y\"]=-25.022,[\"z\"]=32.609},{[\"ids\"]={[1652]=true,[2154]=true},[\"x\"]=22.469,[\"y\"]=-21.026,[\"z\"]=-114.238},{[\"ids\"]={[1652]=true,[1654]=true,[2152]=true},[\"x\"]=13.321,[\"y\"]=-16.266,[\"z\"]=-151.293}}},[1331]={[\"name\"]=\"The Aurum Vale\",[\"sync\"]=49,[\"bosses\"]={[1534]={[\"name\"]=\"Locksmith\",[\"anchors\"]={[45742]=6.15},[\"kill\"]=71.9,[\"movement\"]={},[\"center\"]={29,4},[\"downtime\"]={}},[1533]={[\"name\"]=\"Coincounter\",[\"anchors\"]={[45745]=6.195},[\"kill\"]=71.5,[\"movement\"]={},[\"center\"]={-149,-139},[\"downtime\"]={}},[1532]={[\"name\"]=\"Miser's Mistress\",[\"anchors\"]={[45997]=6.562},[\"kill\"]=123.4,[\"movement\"]={{106.24,108.04}},[\"center\"]={-409,-124},[\"downtime\"]={}}},[\"pools\"]={{[\"ids\"]={[1544]=true},[\"x\"]=-116,[\"y\"]=-30,[\"z\"]=-129},{[\"ids\"]={[1536]=true,[1538]=true,[1544]=true,[1546]=true},[\"x\"]=-337,[\"y\"]=-33,[\"z\"]=-136}}}}}\n    L.lastState = previous and previous.lastState\n    LevellingDungeons=L\n    local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n    if not FolderExists(folder) then FolderCreate(folder) end\n    L.path=folder..[[LevellingDungeons.lua]]\n    local saved=FileExists(L.path) and FileLoad(L.path) or {}\n    if type(saved)~=\"table\" then saved={} end\n    L.settings={}\n    local defaults={draws=true,autoSim=true,poolFinal=true,targetBoss=true,\n        estimatedKills=true,movement=true,returnField=false}\n    local changed=false\n    for key,value in pairs(defaults) do\n        if type(saved[key])==\"boolean\" then L.settings[key]=saved[key]\n        else L.settings[key]=value;changed=true end\n    end\n    if changed then FileSave(L.path,L.settings) end\n    function L.state()\n        local p=TensorCore.mGetPlayer()\n        if not p then return end\n        local S=data.levelling_dungeons\n        if not S or S.map~=p.localmapid then\n            S={map=p.localmapid,draws={},phases={},done={},lastHold=0}\n            data.levelling_dungeons=S\n        end\n        L.lastState=S\n        return S,p\n    end\n    function L.clearDraws(S)\n        for id in pairs(S.draws) do Argus.deleteTimedShape(id) end\n        S.draws={}\n    end\n    function L.clearPhases(S)\n        -- AutoSim can discard phases at the end of combat before this reaction runs.\n        local phases = S.phases\n        S.phases = {}\n        for _, id in ipairs(phases) do\n            pcall(TensorCore.API.TensorACR.removeAutoSimPhase, id)\n        end\n    end\nlocal function shouldHoldApex(player)\n if player.job ~= 23 or not player.incombat or not player.pos then return false end\n local count, healthy = 0, false\n TensorCore.forEachEntity(\"alive,targetable,attackable\", function(id)\n  local enemy = TensorCore.mGetEntity(id)\n  if enemy and enemy.incombat and enemy.pos then\n   local dx, dz = enemy.pos.x - player.pos.x, enemy.pos.z - player.pos.z\n   if dx * dx + dz * dz <= 30 * 30 and math.abs(enemy.pos.y - player.pos.y) <= 8 then\n    count = count + 1\n    if not enemy.hp or not enemy.hp.percent or enemy.hp.percent > 8 then healthy = true end\n   end\n  end\n end)\n return count >= 1 and count <= 2 and not healthy\nend\n\n    function L.restoreApex()\n        if L.apexHeld and ACR_TensorRequiem4_Apex == false then ACR_TensorRequiem4_Apex = true end\n        L.apexHeld = nil\n    end\n    function L.cleanup()\n        L.restoreApex()\n        local S=data.levelling_dungeons or L.lastState\n        if S then L.clearDraws(S);L.clearPhases(S) end\n        data.levelling_dungeons=nil;L.lastState=nil\n    end\n    function L.phase(S,kind,a,b,value)\n        if b<=a or a>=1200 then return end\n        local id=TensorCore.API.TensorACR.addAutoSimPhase(kind,a,math.min(b,1200),value)\n        if id then S.phases[#S.phases+1]=id end\n    end\n    function L.boss(args,cid)\n        local S,p=L.state()\n        local def=L.definitions[p.localmapid].bosses[cid]\n        local expected=def.anchors[args.spellID]\n        if not expected or not p.incombat then return end\n        if S.activeBoss==cid then return end\n        local A=TensorCore.API.TensorACR\n        local ok,t=pcall(A.getAutoSimTime)\n        if not ok or type(t)~=\"number\" or t<0 then return end\n        -- The initial cast identifies the boss even where trash shares its name ID.\n        -- Later repeats must not restart a completed encounter forecast.\n        if S.done[cid] then return end\n        L.restoreApex();S.done[cid]=true;S.activeBoss=cid;S.bossEntity=args.entityID;S.pool=nil\n        if L.settings.targetBoss then\n            gStartCombat=false\n            local current=TensorCore.mGetTarget()\n            d(string.format('[Levelling targeting] boss=%s intended=%s current=%s toggle=true startCombat=false request=%s reason=%s',\n                def.name,tostring(args.entityID),tostring(current and current.id),tostring(not current or not current.attackable),current and current.attackable and \"preserve attackable target\" or \"no attackable target\"))\n            if not current or not current.attackable then\n                Player:SetTarget(args.entityID)\n                S.targetRequest={id=args.entityID,at=Now()}\n            end\n        end\n        if not L.settings.autoSim then return end\n        L.clearPhases(S)\n        -- A repeated opener or a boss chained into a trash pull does not establish time zero.\n        if math.abs(t - expected) > 3 then return end\n        local origin=math.max(0,t-expected)\n        if L.settings.estimatedKills and def.kill then\n            A.setAutoSimKillTime(math.min(1200,origin+def.kill))\n            A.addAutoSimUncertainty(t,15)\n        end\n        -- Lyssa's paired targetability changes repeat at these pull-relative times.\n        for _, window in ipairs(def.downtime) do\n            L.phase(S, 'FullDowntime', math.max(t, origin + window[1]), origin + window[2], 1)\n        end\n        -- Optional conservative dodge windows, not observed personal movement.\n        if L.settings.movement then\n            for _,w in ipairs(def.movement) do\n                if origin+w[2]>t then\n                    L.phase(S,'CasterDowntime',math.max(t,origin+w[1]),origin+w[2],1)\n                    if L.settings.returnField then L.phase(S,'GroundFieldMovement',origin+w[2],origin+w[2]+0.2,2) end\n                end\n            end\n        end\n    end\n    function L.draw(args,shapes)\n        if not L.settings.draws or args.friendly then return end\n        local shape=shapes[args.aoeID]\n        if not shape then return end\n        local ms=args.startTime+args.duration*1000-Now()\n        if ms<=0 or ms>30000 then return end\n        local S=L.state()\n        local drawer=TensorCore.getStaticDrawer(0x603333FF,2)\n        local v=shape.v\n        local id\n        if shape.kind=='Circle' then id=drawer:addTimedCircle(ms,args.x,args.y,args.z,v[1],0,false,true)\n        elseif shape.kind=='Rect' then id=drawer:addTimedRect(ms,args.x,args.y,args.z,v[1],v[2],args.heading,0,false,true)\n        elseif shape.kind=='Cone' then id=drawer:addTimedCone(ms,args.x,args.y,args.z,v[1],math.rad(v[2]),args.heading,0,false,true)\n        elseif shape.kind=='DonutCone' then id=drawer:addTimedDonutCone(ms,args.x,args.y,args.z,v[1],v[2],math.rad(v[3]),args.heading,0,false,true)\n        elseif shape.kind=='Donut' then id=drawer:addTimedDonut(ms,args.x,args.y,args.z,v[1],v[2],0,false,true) end\n        if id then S.draws[id]=Now()+ms end\n        -- Prune expired ownership without recreating the draw.\n        for owned,expiry in pairs(S.draws) do if expiry<Now() then S.draws[owned]=nil end end\n    end\n    function L.update()\n        local S,p=L.state()\n        local duty=L.definitions[p.localmapid]\n        if not duty then L.restoreApex();return end\n        gStartCombat=false\n        if AnyoneCore and AnyoneCore.Settings then\n            if AnyoneCore.Settings.DutyHelper then AnyoneCore.Settings.DutyHelper.enabled=false end\n            if AnyoneCore.Settings.PrepullHelper then AnyoneCore.Settings.PrepullHelper.enabled=false end\n        end\n        if S.targetRequest then\n            local current=TensorCore.mGetTarget()\n            if current and current.id==S.targetRequest.id then\n                d('[Levelling targeting] confirmed target='..tostring(current.id));S.targetRequest=nil\n            elseif Now()-S.targetRequest.at>1500 then\n                d('[Levelling targeting] target not confirmed; no retry outside initial request');S.targetRequest=nil\n            end\n        end\n        if not p.incombat and S.activeBoss then\n            L.clearPhases(S);S.activeBoss=nil;S.bossEntity=nil\n            -- done is combat-scoped so retries after a non-wipe reset remain possible.\n            S.done={}\n        end\n        local syncedLevel = math.min(p.level, duty.sync)\n        if ((p.job~=25 or syncedLevel < 30) and (p.job~=23 or syncedLevel < 80)) or not L.settings.autoSim or not L.settings.poolFinal or S.activeBoss then L.restoreApex();S.pool=nil;return end\n        local target=TensorCore.mGetTarget()\n        if target then\n            local boss=duty.bosses[target.contentid]\n            if boss and boss.center and (p.pos.x-boss.center[1])^2+(p.pos.z-boss.center[2])^2<30^2 then L.restoreApex();S.pool=nil;return end\n        end\n        -- Apollyon's final pull starts with Pumas up the approach, before the\n        -- party reaches the Maip. Arm the hold before the first enemy is hit.\n        local pos = p.pos\n        local apollyonApproach = p.localmapid == 1167\n            and pos.x >= -116 and pos.x <= -23 and pos.z >= 270 and pos.z <= 350\n            and pos.y > -117 and pos.y < -108\n        if apollyonApproach then\n            S.poolSeenAt = Now()\n        end\n        if target and target.incombat then\n            local region\n            for _,r in ipairs(duty.pools) do\n                if r.ids[target.contentid] and (p.pos.x-r.x)^2+(p.pos.z-r.z)^2<30^2 and math.abs(p.pos.y-r.y)<12 then region=r;break end\n            end\n            if region then S.pool=region;S.poolSeenAt=Now()\n            elseif S.pool and (p.pos.x-S.pool.x)^2+(p.pos.z-S.pool.z)^2>60^2 then S.pool=nil end\n        end\n        -- Keep the reservation during the short walk between the final pack and boss.\n        -- Renew short holds; turning the option off or detecting the boss releases within 750ms.\n        if S.pool and not p.incombat and Now()-S.poolSeenAt>8000 then S.pool=nil end\n        if S.pool and (ACR_TensorRequiem4_Apex == true or L.apexHeld) and shouldHoldApex(p) then\n            L.apexHeld = true\n            ACR_TensorRequiem4_Apex = false\n        else\n            L.restoreApex()\n        end\n        if p.job == 25 and (S.pool or apollyonApproach) and Now()-S.lastHold>=250 then\n            local A=TensorCore.API.TensorACR\n            local now = Now()\n            local leyLines\n            if syncedLevel >= 52 then leyLines = A.holdActionUntil(3573, now + 750, 1) end\n            local manafont = A.holdActionUntil(158, now + 750, 1)\n            if apollyonApproach and not S.apollyonHoldLogged then\n                d(string.format(\"[Ihuykatumu] Apollyon final-pack hold: Ley Lines=%s Manafont=%s\",\n                    tostring(leyLines), tostring(manafont)))\n                S.apollyonHoldLogged = true\n            end\n            S.lastHold = now\n        end\n    end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"44512213-6c6f-b434-9e80-82da2348a964",
								true,
							},
						},
						name = "Initialize saved dungeon settings",
						uuid = "a41deaee-e3ca-59a6-83c8-6a77112a7dff",
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
						conditionLua = "return LevellingDungeons == nil or LevellingDungeons.version ~= 11",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "44512213-6c6f-b434-9e80-82da2348a964",
						version = 3,
					},
				},
			},
			displayPath = "Settings",
			name = "Initialize saved dungeon settings",
			throttleTime = 1000,
			uuid = "56278cf5-2f89-ffa8-9008-807278096d0d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Settings",
			name = "AutoSim",
			uuid = "279c83bb-8e81-7a17-8dfe-a197443e33db",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.update()\nself.used=true",
						conditions = 
						{
							
							{
								"52c55ee4-a190-435f-b77e-cd8520a9ccd6",
								true,
							},
						},
						name = "Duty setup and final-pack reservation",
						uuid = "2f78e957-4245-f39f-bb5f-672eca1bb2cc",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn LevellingDungeons ~= nil and p ~= nil and LevellingDungeons.definitions[p.localmapid] ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "52c55ee4-a190-435f-b77e-cd8520a9ccd6",
						version = 3,
					},
				},
			},
			displayPath = "Settings/AutoSim",
			name = "Duty setup and final-pack reservation",
			throttleTime = 250,
			uuid = "f6cc6e6c-2d3f-c024-906d-e5c1163f3729",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local L=LevellingDungeons\nlocal p=TensorCore.mGetPlayer()\nif p.incombat then\n local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\n if ok and type(t)==\"number\" and t>20 then self.used=true;return end\nend\nlocal visible=GUI:Begin(\"Levelling dungeon settings\",true)\nif visible then\n GUI:Text(L.definitions[p.localmapid].name)\n local changed=false\n local function check(key,label)\n  local value,edit=GUI:Checkbox(label,L.settings[key])\n  if edit then L.settings[key]=value;changed=true end\n end\n check(\"draws\",\"Show mechanic draws\")\n check(\"autoSim\",\"Use AutoSim inputs\")\n check(\"targetBoss\",\"Select initial boss when no attackable target\")\n local syncedLevel = math.min(p.level, L.definitions[p.localmapid].sync)\n if p.job==25 and syncedLevel>=30 then\n  check(\"poolFinal\", syncedLevel>=52 and \"Reserve Ley Lines and Manafont on final trash\" or \"Reserve Manafont on final trash\")\n end\n check(\"estimatedKills\",\"Use sampled boss kill estimates\")\n check(\"movement\",\"Forecast conservative dodge windows\")\n if L.settings.movement then check(\"returnField\",\"Assume return to ground field after each dodge\") end\n GUI:TextWrapped(\"Kill estimates and dodge windows are optional. Forecast changes apply to the next boss. No countdown is required.\")\n if changed then FileSave(L.path,L.settings) end\nend\nGUI:End()\nself.used=true",
						conditions = 
						{
							
							{
								"a021e0fd-1841-ff77-8338-3708079f7b28",
								true,
							},
						},
						name = "Dungeon settings",
						uuid = "83958d44-3a7c-13c3-afd7-6b835e206a50",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn LevellingDungeons ~= nil and p ~= nil and LevellingDungeons.definitions[p.localmapid] ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "a021e0fd-1841-ff77-8338-3708079f7b28",
						version = 3,
					},
				},
			},
			displayPath = "Settings",
			eventType = 13,
			name = "Dungeon settings",
			uuid = "4cd2e9fe-8c67-739c-8a28-c87b434d28f6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Settings",
			name = "Cleanup",
			uuid = "921762d2-9a05-e140-ad7f-d002f73cf06e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.cleanup()\nself.used=true",
						conditions = 
						{
							
							{
								"44520a99-b64a-4ff2-ba18-5af3c91db7a8",
								true,
							},
						},
						name = "Clear owned dungeon state - OnWipe",
						uuid = "72fd321d-0436-3a34-a82b-47f4e98696e1",
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
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.lastState ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "44520a99-b64a-4ff2-ba18-5af3c91db7a8",
						version = 3,
					},
				},
			},
			displayPath = "Settings/Cleanup",
			eventType = 9,
			name = "Clear owned dungeon state - OnWipe",
			uuid = "c32287c8-f839-d586-a784-e1de24b6422f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.cleanup()\nself.used=true",
						conditions = 
						{
							
							{
								"ae9c3194-deed-68fe-adac-482792cf3852",
								true,
							},
						},
						name = "Clear owned dungeon state - OnDeath",
						uuid = "a047dcfb-d52f-d524-afcd-7b3815d8427d",
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
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.lastState ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "ae9c3194-deed-68fe-adac-482792cf3852",
						version = 3,
					},
				},
			},
			displayPath = "Settings/Cleanup",
			eventType = 10,
			name = "Clear owned dungeon state - OnDeath",
			uuid = "7c3887e0-61dc-4b11-9555-c07f92d13e3c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.cleanup()\nself.used=true",
						conditions = 
						{
							
							{
								"b85a34d7-bb57-1aa7-bb36-adb9a3f1b5f4",
								true,
							},
						},
						name = "Clear owned dungeon state - OnMapChange",
						uuid = "10dd01df-7062-53f0-b1fc-e0a2ab8dffdc",
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
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.lastState ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "b85a34d7-bb57-1aa7-bb36-adb9a3f1b5f4",
						version = 3,
					},
				},
			},
			displayPath = "Settings/Cleanup",
			eventType = 11,
			name = "Clear owned dungeon state - OnMapChange",
			uuid = "3a155d25-18e8-66ff-b01c-ed6401420f29",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Ihuykatumu",
			uuid = "2916a95b-3d8d-522b-8efd-6b41ae6e79c9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu",
			name = "Prime Punutiy",
			uuid = "8076fe60-ea25-b2e1-a08f-1802086af6e7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu/Prime Punutiy",
			name = "AutoSim",
			uuid = "8a633947-aacf-b080-80d1-fbdd62065c6e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12723)\nself.used=true",
						conditions = 
						{
							
							{
								"5eab3d12-604a-11da-99dc-77d704228898",
								true,
							},
							
							{
								"f612b73d-ec6d-574c-b550-07f6169581e9",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "b9037947-65d9-7f63-97ae-9697357ad521",
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
						localmapid = 1167,
						name = "Duty 1167",
						uuid = "5eab3d12-604a-11da-99dc-77d704228898",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12723 and (eventArgs.spellID == 36492)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "f612b73d-ec6d-574c-b550-07f6169581e9",
						version = 3,
					},
				},
			},
			displayPath = "Ihuykatumu/Prime Punutiy/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "c046d71c-3c7d-5b58-b926-19847bdcc428",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 12724\nlocal label = \"[Levelling Dungeons] Prodigious Punutiy\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 1167 and player.job == 25\nlocal state = LevellingIhuykatumuProdigiousPunutiyDoT\n\n-- Restore the previous entry on leaving Ihuykatumu or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    LevellingIhuykatumuProdigiousPunutiyDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            LevellingIhuykatumuProdigiousPunutiyDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"921ad3bd-4137-2c57-bd34-b7529ee9d24c",
								true,
							},
						},
						name = "Block DoTs on Prodigious Punutiy",
						uuid = "0f5bf065-47d2-9f84-b407-5ae93d4be291",
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
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = LevellingIhuykatumuProdigiousPunutiyDoT\nlocal eligible = player.localmapid == 1167 and player.job == 25\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Ihuykatumu BLM / cleanup",
						uuid = "921ad3bd-4137-2c57-bd34-b7529ee9d24c",
						version = 3,
					},
				},
			},
			displayPath = "Ihuykatumu/Prime Punutiy/AutoSim",
			name = "Prodigious Punutiy DoT blacklist (BLM)",
			throttleTime = 1000,
			uuid = "cb85becd-af9f-26fc-8f35-f2dd63864496",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu/Prime Punutiy",
			name = "Draws",
			uuid = "55eec5c3-48c7-d3c4-864d-a79dc11770fc",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36493]={[\"name\"]=\"Hydrowave\",[\"kind\"]=\"Cone\",[\"v\"]={60.0,30.0}},[36494]={[\"name\"]=\"Resurface\",[\"kind\"]=\"Cone\",[\"v\"]={100.0,60.0},[\"source\"]=\"BossMod AID geometry + native cast\"},[36505]={[\"name\"]=\"Decay\",[\"kind\"]=\"Donut\",[\"v\"]={6.0,40.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"51a9954f-1906-1f6f-a9b4-dea72b1cb01c",
								true,
							},
							
							{
								"16b13c6a-e8da-f317-8d52-0db02372cbc8",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "0c4de85a-5c44-91d8-8013-c3eea5b1c73a",
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
						localmapid = 1167,
						name = "Duty 1167",
						uuid = "51a9954f-1906-1f6f-a9b4-dea72b1cb01c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36493 or eventArgs.aoeID == 36494 or eventArgs.aoeID == 36505)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "16b13c6a-e8da-f317-8d52-0db02372cbc8",
						version = 3,
					},
				},
			},
			displayPath = "Ihuykatumu/Prime Punutiy/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "130b70fa-de90-0622-ac7d-13d5e63daef7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu",
			name = "Drowsie",
			uuid = "3c396e5e-2d44-de1e-8709-252b19ff83fa",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu/Drowsie",
			name = "AutoSim",
			uuid = "55caea33-ed59-b37c-96a1-a6be2914ddec",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12716)\nself.used=true",
						conditions = 
						{
							
							{
								"27325eb3-3ad6-449b-adf1-cbb6db26dfea",
								true,
							},
							
							{
								"fec41b4b-c53f-e03f-a4ee-f36e5145cc41",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "5d664889-2b16-902e-82f1-e08b7603a720",
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
						localmapid = 1167,
						name = "Duty 1167",
						uuid = "27325eb3-3ad6-449b-adf1-cbb6db26dfea",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12716 and (eventArgs.spellID == 39132)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "fec41b4b-c53f-e03f-a4ee-f36e5145cc41",
						version = 3,
					},
				},
			},
			displayPath = "Ihuykatumu/Drowsie/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "06311ff2-d9bc-0127-9c95-261efd42d252",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 12720\nlocal label = \"[Levelling Dungeons] Drowsie Mimiclot\"\nlocal api = TensorCore.API.TensorACR\n-- Pre-boss Mimiclots share this content ID on a different floor.\nlocal pos = player.pos\nlocal eligible = player.localmapid == 1167 and player.job == 25\n    and pos ~= nil and math.abs(pos.y + 134) < 3\n    and (pos.x - 80)^2 + (pos.z - 53)^2 <= 22^2\nlocal state = LevellingIhuykatumuDrowsieMimiclotDoT\n\n-- Restore the previous entry on leaving Drowsie's arena or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    LevellingIhuykatumuDrowsieMimiclotDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            LevellingIhuykatumuDrowsieMimiclotDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"27e3e627-5a12-b45c-80b6-2a121dab29f1",
								true,
							},
						},
						name = "Block Thunder on Drowsie Mimiclots",
						uuid = "4faaf8e4-c537-2a81-8601-650a53501bf0",
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
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = LevellingIhuykatumuDrowsieMimiclotDoT\n-- Pre-boss Mimiclots share this content ID on a different floor.\nlocal pos = player.pos\nlocal eligible = player.localmapid == 1167 and player.job == 25\n    and pos ~= nil and math.abs(pos.y + 134) < 3\n    and (pos.x - 80)^2 + (pos.z - 53)^2 <= 22^2\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Drowsie arena / cleanup",
						uuid = "27e3e627-5a12-b45c-80b6-2a121dab29f1",
						version = 3,
					},
				},
			},
			displayPath = "Ihuykatumu/Drowsie/AutoSim",
			name = "Mimiclot DoT blacklist (BLM)",
			throttleTime = 500,
			uuid = "64d7063c-d89e-464f-b41b-98dc8596aa52",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu/Drowsie",
			name = "Draws",
			uuid = "998c1e7f-8379-1140-8811-d9f9f001bafc",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36478]={[\"name\"]=\"Arise\",[\"kind\"]=\"Circle\",[\"v\"]={8.0}},[36479]={[\"name\"]=\"WallopNarrow\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,10.0}},[36482]={[\"name\"]=\"WallopWide\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,16.0}},[36475]={[\"name\"]=\"Sneeze\",[\"kind\"]=\"Cone\",[\"v\"]={60.0,150.0}},[36485]={[\"name\"]=\"FlagrantSpreadGreen\",[\"kind\"]=\"Circle\",[\"v\"]={6.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"db8e122d-7275-9d2a-8eff-38f71cbdcbbf",
								true,
							},
							
							{
								"45360a4c-2a4a-5abf-adc7-09790ba5cd3c",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "4130be9a-e26b-8eed-b1fc-ce158cc421e9",
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
						localmapid = 1167,
						name = "Duty 1167",
						uuid = "db8e122d-7275-9d2a-8eff-38f71cbdcbbf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36478 or eventArgs.aoeID == 36479 or eventArgs.aoeID == 36482 or eventArgs.aoeID == 36475 or eventArgs.aoeID == 36485)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "45360a4c-2a4a-5abf-adc7-09790ba5cd3c",
						version = 3,
					},
				},
			},
			displayPath = "Ihuykatumu/Drowsie/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "07894374-7e22-7ecb-b363-1dd43e8fde6d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu",
			name = "Apollyon",
			uuid = "9696aa95-2354-d8a9-bf54-5e70d4a6482f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu/Apollyon",
			name = "AutoSim",
			uuid = "253f3ea3-6324-b2d3-9767-b46d28d0bde8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12711)\nself.used=true",
						conditions = 
						{
							
							{
								"a7e836eb-8e66-74db-906c-130f65521e69",
								true,
							},
							
							{
								"35c55d19-2082-252c-9479-13a6af98c75f",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "5690478e-10fb-6f3f-9aeb-87580735bae5",
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
						localmapid = 1167,
						name = "Duty 1167",
						uuid = "a7e836eb-8e66-74db-906c-130f65521e69",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12711 and (eventArgs.spellID == 36340)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "35c55d19-2082-252c-9479-13a6af98c75f",
						version = 3,
					},
				},
			},
			displayPath = "Ihuykatumu/Apollyon/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "387579f9-cb63-9d60-9a10-5ce376a9c4e7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ihuykatumu/Apollyon",
			name = "Draws",
			uuid = "4faa40a7-fd87-3512-923a-8002f60a727d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36340]={[\"name\"]=\"RazorZephyr\",[\"kind\"]=\"Rect\",[\"v\"]={50.0,12.0}},[36355]={[\"name\"]=\"RazorStorm\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,40.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"573fe5f5-dbc9-f155-bc56-be99491a4e24",
								true,
							},
							
							{
								"9a9380b8-6244-4fb4-bd83-5803cfb756f9",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "fe760a4c-8d83-4adf-b269-5b8911597250",
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
						localmapid = 1167,
						name = "Duty 1167",
						uuid = "573fe5f5-dbc9-f155-bc56-be99491a4e24",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36340 or eventArgs.aoeID == 36355)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "9a9380b8-6244-4fb4-bd83-5803cfb756f9",
						version = 3,
					},
				},
			},
			displayPath = "Ihuykatumu/Apollyon/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "38f973d6-b528-a4bb-a4bb-80db07d65f0c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Worqor Zormor",
			uuid = "8cba14e7-8c2a-c854-833f-2fece46f1c43",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor",
			name = "Ryoqor Terteh",
			uuid = "91affe49-656a-dd85-83d3-7995f47d3ad8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor/Ryoqor Terteh",
			name = "AutoSim",
			uuid = "443411db-c5cb-ef32-b23f-10c0b133672b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12699)\nself.used=true",
						conditions = 
						{
							
							{
								"ca819805-9d3e-71a6-8b8e-27b1ce6ef364",
								true,
							},
							
							{
								"f3b8d0f3-8810-5c5a-aff6-32aace433292",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "397b533a-8687-d1f2-afd9-baaed222c655",
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
						localmapid = 1193,
						name = "Duty 1193",
						uuid = "ca819805-9d3e-71a6-8b8e-27b1ce6ef364",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12699 and (eventArgs.spellID == 36279)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "f3b8d0f3-8810-5c5a-aff6-32aace433292",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Zormor/Ryoqor Terteh/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "f1e0feda-6f52-82d7-999b-7bc1921019dc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor/Ryoqor Terteh",
			name = "Draws",
			uuid = "1e46e5c2-b58c-266d-8dcd-76861810fe37",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36270]={[\"name\"]=\"IceScream\",[\"kind\"]=\"Rect\",[\"v\"]={20.0,20.0},[\"source\"]=\"BossMod AID geometry + native cast\"},[36272]={[\"name\"]=\"FrozenSwirlAOE\",[\"kind\"]=\"Circle\",[\"v\"]={15.0},[\"source\"]=\"BossMod AID geometry + native cast\"},[36278]={[\"name\"]=\"SnowBoulder\",[\"kind\"]=\"Rect\",[\"v\"]={50.0,6.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"9ac30434-6b11-9b78-b523-d1c31f3d24cb",
								true,
							},
							
							{
								"13ec718a-f216-516e-bfeb-061f237f6e40",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "40c0d66f-e0d6-02fe-a272-e22621081728",
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
						localmapid = 1193,
						name = "Duty 1193",
						uuid = "9ac30434-6b11-9b78-b523-d1c31f3d24cb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36270 or eventArgs.aoeID == 36272 or eventArgs.aoeID == 36278)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "13ec718a-f216-516e-bfeb-061f237f6e40",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Zormor/Ryoqor Terteh/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "8504d61f-c9d0-4774-a368-2e0975cb9107",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor",
			name = "Kahderyor",
			uuid = "74210fa0-3788-3f56-b8e0-351720b5fa80",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor/Kahderyor",
			name = "AutoSim",
			uuid = "c516439c-5ca3-1ef9-9b17-2d35eeadfba2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12703)\nself.used=true",
						conditions = 
						{
							
							{
								"9d8b3218-18f4-71c1-886a-f29dd4a2786c",
								true,
							},
							
							{
								"a2396821-fc84-0d41-949e-cb128a287710",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "97c0f5f4-6897-1695-b1a1-851a74620b65",
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
						localmapid = 1193,
						name = "Duty 1193",
						uuid = "9d8b3218-18f4-71c1-886a-f29dd4a2786c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12703 and (eventArgs.spellID == 36282)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "a2396821-fc84-0d41-949e-cb128a287710",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Zormor/Kahderyor/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "bb8228c4-80b7-3d54-bdac-019b2faeecae",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor/Kahderyor",
			name = "Draws",
			uuid = "396bc2f1-f097-3cda-9d2c-645b43b61ce4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36290]={[\"kind\"]=\"Rect\",[\"v\"]={50,2}},[36293]={[\"kind\"]=\"Circle\",[\"v\"]={15}},[36294]={[\"kind\"]=\"Donut\",[\"v\"]={8,40}}})\nself.used=true",
						conditions = 
						{
							
							{
								"dccb709f-ff8f-72ff-8e86-1e5d5cc60046",
								true,
							},
							
							{
								"0d617710-e51f-f7a7-bb6e-9e07bad02f89",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "3c01bb93-ef6f-3e30-b938-6d79aa388d17",
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
						localmapid = 1193,
						name = "Duty 1193",
						uuid = "dccb709f-ff8f-72ff-8e86-1e5d5cc60046",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36290 or eventArgs.aoeID == 36293 or eventArgs.aoeID == 36294)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "0d617710-e51f-f7a7-bb6e-9e07bad02f89",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Zormor/Kahderyor/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "40fd0136-a739-f956-9dd6-bf861a57adb8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor",
			name = "Gurfurlur",
			uuid = "83cb270a-09ad-702f-9e38-14c1c04cda6e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor/Gurfurlur",
			name = "AutoSim",
			uuid = "181f1064-5c0e-1f7a-a13b-a8cd12ef761c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12705)\nself.used=true",
						conditions = 
						{
							
							{
								"e69f7f33-0dc8-103b-b50a-ab4b565c0c4b",
								true,
							},
							
							{
								"dfda4904-f275-cdd3-9b94-39b161ecc189",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "a113890d-d202-546c-9c9f-9eeec9936e84",
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
						localmapid = 1193,
						name = "Duty 1193",
						uuid = "e69f7f33-0dc8-103b-b50a-ab4b565c0c4b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12705 and (eventArgs.spellID == 36269)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "dfda4904-f275-cdd3-9b94-39b161ecc189",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Zormor/Gurfurlur/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "5be7c9c0-e5b5-6a8b-9a78-733a65772fba",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Worqor Zormor/Gurfurlur",
			name = "Draws",
			uuid = "53140d85-cb40-0a48-898e-4f0f76a03be9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36313]={[\"name\"]=\"Sledgehammer\",[\"kind\"]=\"Rect\",[\"v\"]={60.0,8.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"b235d99a-4ec2-1709-995e-0b66c1a45ec0",
								true,
							},
							
							{
								"118c6e26-1d38-eb4e-a93b-4bdc8528ce11",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "612fd50a-3cea-1997-81fa-3813094810f2",
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
						localmapid = 1193,
						name = "Duty 1193",
						uuid = "b235d99a-4ec2-1709-995e-0b66c1a45ec0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36313)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "118c6e26-1d38-eb4e-a93b-4bdc8528ce11",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Zormor/Gurfurlur/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "5fba3431-9979-dd2d-a3f5-b69a32c9a412",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Skydeep Cenote",
			uuid = "5b04fb23-95db-0b8b-a2f3-6b7c3ebbffb5",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote",
			name = "Feather Ray",
			uuid = "4ca1a432-fd0a-bf3d-a7db-6b586da9a769",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote/Feather Ray",
			name = "AutoSim",
			uuid = "f5b78969-272c-581d-b43b-9298c155736a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12755)\nself.used=true",
						conditions = 
						{
							
							{
								"ecf4dace-62b7-30b5-8b30-5d52621ae37d",
								true,
							},
							
							{
								"d6b59f33-e21a-22a1-b14d-5ad8d05e05df",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "ce11920c-be19-27ba-8e77-9aa453e3a76e",
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
						localmapid = 1194,
						name = "Duty 1194",
						uuid = "ecf4dace-62b7-30b5-8b30-5d52621ae37d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12755 and (eventArgs.spellID == 36739)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "d6b59f33-e21a-22a1-b14d-5ad8d05e05df",
						version = 3,
					},
				},
			},
			displayPath = "The Skydeep Cenote/Feather Ray/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "417b4dc8-97d3-5643-bb77-f953cbb1f0bc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote/Feather Ray",
			name = "Draws",
			uuid = "d5c06a13-0532-408d-90fb-d2cb855068b6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36728]={[\"name\"]=\"WorrisomeWave\",[\"kind\"]=\"Cone\",[\"v\"]={24.0,30.0}},[36733]={[\"name\"]=\"HydroRing\",[\"kind\"]=\"Donut\",[\"v\"]={12.0,24.0},[\"source\"]=\"BossMod AID geometry + native cast\"},[36738]={[\"name\"]=\"Burst\",[\"kind\"]=\"Circle\",[\"v\"]={6.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"c5cbe244-6fd6-b26c-8ac3-fdb52c0bf3ea",
								true,
							},
							
							{
								"d37a8809-79c7-43cf-a7f9-f7d653b26765",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "7934b8ec-2d3d-58d5-90f5-b49e5ec48778",
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
						localmapid = 1194,
						name = "Duty 1194",
						uuid = "c5cbe244-6fd6-b26c-8ac3-fdb52c0bf3ea",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36728 or eventArgs.aoeID == 36733 or eventArgs.aoeID == 36738)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "d37a8809-79c7-43cf-a7f9-f7d653b26765",
						version = 3,
					},
				},
			},
			displayPath = "The Skydeep Cenote/Feather Ray/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "6d7b1eaa-7fc3-6318-9236-3c7a4c2323eb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote",
			name = "Firearms",
			uuid = "88028dc7-1501-9a65-bee3-057ca5a2bdb4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote/Firearms",
			name = "AutoSim",
			uuid = "eb3f5105-1442-1734-9611-699b29c08679",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12888)\nself.used=true",
						conditions = 
						{
							
							{
								"f18976e7-7a29-c5ed-b772-eecdb6b5d6bf",
								true,
							},
							
							{
								"1c065b44-f8f7-bb23-9b0a-ef76bcedd9fa",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "c4fb6e90-8212-11b6-af1e-ef9cc4f3df15",
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
						localmapid = 1194,
						name = "Duty 1194",
						uuid = "f18976e7-7a29-c5ed-b772-eecdb6b5d6bf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12888 and (eventArgs.spellID == 36448)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "1c065b44-f8f7-bb23-9b0a-ef76bcedd9fa",
						version = 3,
					},
				},
			},
			displayPath = "The Skydeep Cenote/Firearms/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "7599eb41-345c-a73e-ac18-adc526789002",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote/Firearms",
			name = "Draws",
			uuid = "c744b1f9-1d28-90ec-803e-94a3f0bb304d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[38581]={[\"kind\"]=\"Rect\",[\"v\"]={42,8}},[38582]={[\"kind\"]=\"Rect\",[\"v\"]={49,8}},[38583]={[\"kind\"]=\"Rect\",[\"v\"]={35,8}},[38584]={[\"kind\"]=\"Rect\",[\"v\"]={36,8}},[38660]={[\"kind\"]=\"Rect\",[\"v\"]={10,10}},[38661]={[\"kind\"]=\"Rect\",[\"v\"]={10,10}},[38662]={[\"kind\"]=\"Rect\",[\"v\"]={10,10}},[38663]={[\"kind\"]=\"Rect\",[\"v\"]={10,10}}})\nself.used=true",
						conditions = 
						{
							
							{
								"f6497e72-5503-b662-ba5c-b4e28db05ec8",
								true,
							},
							
							{
								"8d5aadf7-4b37-c4e3-9b4f-4e5eb3d114ef",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "e8b3e89c-95c2-a062-9cd7-919f063523b9",
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
						localmapid = 1194,
						name = "Duty 1194",
						uuid = "f6497e72-5503-b662-ba5c-b4e28db05ec8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 38581 or eventArgs.aoeID == 38582 or eventArgs.aoeID == 38583 or eventArgs.aoeID == 38584 or eventArgs.aoeID == 38660 or eventArgs.aoeID == 38661 or eventArgs.aoeID == 38662 or eventArgs.aoeID == 38663)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "8d5aadf7-4b37-c4e3-9b4f-4e5eb3d114ef",
						version = 3,
					},
				},
			},
			displayPath = "The Skydeep Cenote/Firearms/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "c00ef97e-e98a-eae3-a3ab-609f2dfc13a6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote",
			name = "Maulskull",
			uuid = "d59fbcbe-f469-9b1e-88bf-3ac88c85c6c4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote/Maulskull",
			name = "AutoSim",
			uuid = "fa01d920-2bab-5d27-bbe8-d3d24de5e4ba",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12728)\nself.used=true",
						conditions = 
						{
							
							{
								"9c568adb-8460-164e-bf91-cd7b42dcdea7",
								true,
							},
							
							{
								"07ac5f36-2dcc-b422-9002-1fa4b5143d4d",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "d0fb8f5c-a790-fe97-beb5-49f42a0299dc",
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
						localmapid = 1194,
						name = "Duty 1194",
						uuid = "9c568adb-8460-164e-bf91-cd7b42dcdea7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12728 and (eventArgs.spellID == 36669)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "07ac5f36-2dcc-b422-9002-1fa4b5143d4d",
						version = 3,
					},
				},
			},
			displayPath = "The Skydeep Cenote/Maulskull/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "ab05f7de-5c7b-d005-bf41-8f0a947a84c4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Skydeep Cenote/Maulskull",
			name = "Draws",
			uuid = "84762fc3-4cd3-9163-88c0-293bb45553f6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36670]={[\"kind\"]=\"Rect\",[\"v\"]={40,20}},[36671]={[\"kind\"]=\"Rect\",[\"v\"]={40,20}},[36684]={[\"kind\"]=\"Rect\",[\"v\"]={40,20}},[36696]={[\"kind\"]=\"Rect\",[\"v\"]={40,20}},[36697]={[\"kind\"]=\"Rect\",[\"v\"]={40,20}},[36685]={[\"kind\"]=\"Rect\",[\"v\"]={45,22}},[36686]={[\"kind\"]=\"Rect\",[\"v\"]={45,22}}})\nself.used=true",
						conditions = 
						{
							
							{
								"ff73d2fb-50d6-bd81-8cf8-6a9b90cf5c5f",
								true,
							},
							
							{
								"cf7dd96c-9704-b645-a67f-f26bdf8dd764",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "6826a5c1-1936-788c-9486-41d8d412cd89",
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
						localmapid = 1194,
						name = "Duty 1194",
						uuid = "ff73d2fb-50d6-bd81-8cf8-6a9b90cf5c5f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36670 or eventArgs.aoeID == 36671 or eventArgs.aoeID == 36684 or eventArgs.aoeID == 36696 or eventArgs.aoeID == 36697 or eventArgs.aoeID == 36685 or eventArgs.aoeID == 36686)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "cf7dd96c-9704-b645-a67f-f26bdf8dd764",
						version = 3,
					},
				},
			},
			displayPath = "The Skydeep Cenote/Maulskull/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "45d0c6af-f5e6-9818-8d56-765732ce1927",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Vanguard",
			uuid = "40575532-fa79-dc43-b4e5-011909b9768b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Vanguard",
			name = "Vanguard Commander R8",
			uuid = "7e4b1179-1176-608b-9632-b44ee813c8a6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Vanguard/Vanguard Commander R8",
			name = "AutoSim",
			uuid = "0446e7c9-035b-b9cc-b15a-2ca336eab22f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12750)\nself.used=true",
						conditions = 
						{
							
							{
								"2875ca3b-ed7e-324f-8a98-71614a0933b6",
								true,
							},
							
							{
								"079ddfe1-c388-faba-b948-39dd91210b1a",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "4a4cb84b-bfc6-3538-9bd0-1a3d17a34663",
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
						localmapid = 1198,
						name = "Duty 1198",
						uuid = "2875ca3b-ed7e-324f-8a98-71614a0933b6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12750 and (eventArgs.spellID == 36571)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "079ddfe1-c388-faba-b948-39dd91210b1a",
						version = 3,
					},
				},
			},
			displayPath = "Vanguard/Vanguard Commander R8/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "0749b0fa-3dba-2f6e-826b-4d5ed61f7ae0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Vanguard/Vanguard Commander R8",
			name = "Draws",
			uuid = "8fd247e1-3f34-9e16-a47e-2b22361f0241",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36563]={[\"kind\"]=\"Rect\",[\"v\"]={10,14}},[36564]={[\"kind\"]=\"Rect\",[\"v\"]={10,14}},[37184]={[\"kind\"]=\"Rect\",[\"v\"]={20,14}},[37191]={[\"kind\"]=\"Rect\",[\"v\"]={20,14}}})\nself.used=true",
						conditions = 
						{
							
							{
								"f05eb44f-bdbb-e42a-a108-3ca16dda377f",
								true,
							},
							
							{
								"0b4f551e-199b-43cc-b736-5daa049737e3",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "c9376661-66b0-bbd0-9ade-f57e3461e098",
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
						localmapid = 1198,
						name = "Duty 1198",
						uuid = "f05eb44f-bdbb-e42a-a108-3ca16dda377f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36563 or eventArgs.aoeID == 36564 or eventArgs.aoeID == 37184 or eventArgs.aoeID == 37191)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "0b4f551e-199b-43cc-b736-5daa049737e3",
						version = 3,
					},
				},
			},
			displayPath = "Vanguard/Vanguard Commander R8/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "ad933557-f387-5aa7-8a51-5ff210ec0ce0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Vanguard",
			name = "Protector",
			uuid = "f766f762-9222-57e8-b964-d75589ca919a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Vanguard/Protector",
			name = "AutoSim",
			uuid = "6498513e-2ecc-a386-aba3-4b3e3d394116",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12757)\nself.used=true",
						conditions = 
						{
							
							{
								"5af4e439-6e3c-9d0d-85dc-bdbb79c4a19a",
								true,
							},
							
							{
								"32c76dc6-6da8-5ddc-977b-c9b17d9384a5",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "8e95e130-991e-62aa-ace2-64af81f80e39",
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
						localmapid = 1198,
						name = "Duty 1198",
						uuid = "5af4e439-6e3c-9d0d-85dc-bdbb79c4a19a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12757 and (eventArgs.spellID == 37161)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "32c76dc6-6da8-5ddc-977b-c9b17d9384a5",
						version = 3,
					},
				},
			},
			displayPath = "Vanguard/Protector/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "0f805ef5-5ebc-1d51-b6f1-86737ac5a3ef",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Vanguard/Protector",
			name = "Draws",
			uuid = "ea1faf28-e648-7886-a11d-6b7cd5f6eafe",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[37155]={[\"name\"]=\"HomingCannon\",[\"kind\"]=\"Rect\",[\"v\"]={50.0,2.0}},[37156]={[\"name\"]=\"Shock\",[\"kind\"]=\"Circle\",[\"v\"]={3.0},[\"source\"]=\"BossMod AID geometry + native cast\"},[37151]={[\"name\"]=\"BlastCannon\",[\"kind\"]=\"Rect\",[\"v\"]={26.0,4.0},[\"source\"]=\"BossMod AID geometry + native cast\"},[37345]={[\"name\"]=\"HeavyBlastCannon\",[\"kind\"]=\"Rect\",[\"v\"]={36.0,8.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"2125721d-b20b-5906-8b0d-d9ff1a8b0d8a",
								true,
							},
							
							{
								"88b33b9c-d73c-39f0-8257-3c5ffca91a05",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "09c66c71-58e4-e8e5-96d8-d5a000a2a0d4",
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
						localmapid = 1198,
						name = "Duty 1198",
						uuid = "2125721d-b20b-5906-8b0d-d9ff1a8b0d8a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 37155 or eventArgs.aoeID == 37156 or eventArgs.aoeID == 37151 or eventArgs.aoeID == 37345)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "88b33b9c-d73c-39f0-8257-3c5ffca91a05",
						version = 3,
					},
				},
			},
			displayPath = "Vanguard/Protector/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "71f74050-9463-1a49-a9e3-31a93a4ebfc4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Vanguard",
			name = "Zander the Snakeskinner",
			uuid = "356703ff-41e1-6a9e-a635-8f9554c72093",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Vanguard/Zander the Snakeskinner",
			name = "AutoSim",
			uuid = "f7418445-d99c-0e65-a1fb-95001f3590de",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12752)\nself.used=true",
						conditions = 
						{
							
							{
								"778d4ff0-9cc9-f171-87ee-151d9f23919a",
								true,
							},
							
							{
								"8bf32291-633a-768a-b266-6eba1eabe71c",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "831293ae-d27c-a65c-aa5c-ce26b6e60aaf",
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
						localmapid = 1198,
						name = "Duty 1198",
						uuid = "778d4ff0-9cc9-f171-87ee-151d9f23919a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12752 and (eventArgs.spellID == 36594)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "8bf32291-633a-768a-b266-6eba1eabe71c",
						version = 3,
					},
				},
			},
			displayPath = "Vanguard/Zander the Snakeskinner/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "ee526c6d-ed62-6730-808e-8131c27df861",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Vanguard/Zander the Snakeskinner",
			name = "Draws",
			uuid = "fb2db779-32ae-02f4-bb0f-5b91686c74db",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36574]={[\"name\"]=\"SoulbaneSaber\",[\"kind\"]=\"Rect\",[\"v\"]={20.0,4.0}},[36589]={[\"name\"]=\"SlitherbaneForeguard\",[\"kind\"]=\"Rect\",[\"v\"]={20.0,4.0}},[36590]={[\"name\"]=\"SlitherbaneRearguard\",[\"kind\"]=\"Rect\",[\"v\"]={20.0,4.0}},[37198]={[\"name\"]=\"Syntheslean\",[\"kind\"]=\"Cone\",[\"v\"]={19.0,90.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"dc6bd1cb-9417-0281-88e7-119ee64915c6",
								true,
							},
							
							{
								"bf209ce2-f8e5-09b2-939b-0d2aa07c3f8a",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "ecd5839e-c751-c27a-954f-6468274ef130",
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
						localmapid = 1198,
						name = "Duty 1198",
						uuid = "dc6bd1cb-9417-0281-88e7-119ee64915c6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36574 or eventArgs.aoeID == 36589 or eventArgs.aoeID == 36590 or eventArgs.aoeID == 37198)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "bf209ce2-f8e5-09b2-939b-0d2aa07c3f8a",
						version = 3,
					},
				},
			},
			displayPath = "Vanguard/Zander the Snakeskinner/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "ab2ab1ad-6a6e-84f0-a9c7-7cec51090398",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Origenics",
			uuid = "715f2001-ce83-4761-86b7-5f0bd783bebb",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Origenics",
			name = "Herpekaris",
			uuid = "6c5ab4a1-3bc4-bd35-bd05-3f5c5b6d3fbe",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Origenics/Herpekaris",
			name = "AutoSim",
			uuid = "8cc7b271-94ed-edac-9256-e1fbde7c898a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12741)\nself.used=true",
						conditions = 
						{
							
							{
								"2cc307f2-7a66-d003-bfa7-fb936253fead",
								true,
							},
							
							{
								"317eb941-69b9-b035-b256-e5ea63409322",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "3110e76f-20ef-eb11-829b-aed2507441ca",
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
						localmapid = 1208,
						name = "Duty 1208",
						uuid = "2cc307f2-7a66-d003-bfa7-fb936253fead",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12741 and (eventArgs.spellID == 36519)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "317eb941-69b9-b035-b256-e5ea63409322",
						version = 3,
					},
				},
			},
			displayPath = "Origenics/Herpekaris/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "753ddee1-c585-3593-9d5a-6fe3e403a5c8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Origenics/Herpekaris",
			name = "Draws",
			uuid = "362ae2a5-143c-5f1c-bbe9-50965bd3f68c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36473]={[\"name\"]=\"CollectiveAgony\",[\"kind\"]=\"Rect\",[\"v\"]={50.0,8.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"7595e226-e148-9a23-9a94-2b08f35dbf7c",
								true,
							},
							
							{
								"1343aff8-8920-86b6-a30e-1b7d97901b33",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "4e7c832d-3e6b-91bb-8c75-d4470e6ecb61",
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
						localmapid = 1208,
						name = "Duty 1208",
						uuid = "7595e226-e148-9a23-9a94-2b08f35dbf7c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36473)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "1343aff8-8920-86b6-a30e-1b7d97901b33",
						version = 3,
					},
				},
			},
			displayPath = "Origenics/Herpekaris/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "bd0d5922-aa9c-1229-a566-d71e3309b9dd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Origenics",
			name = "Deceiver",
			uuid = "13817f6a-82b1-20f6-b5c4-ea7d781b505d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Origenics/Deceiver",
			name = "AutoSim",
			uuid = "bebe88e3-ba0e-5feb-87f6-c036b8f9d20d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12693)\nself.used=true",
						conditions = 
						{
							
							{
								"3af87194-8563-2f3c-adc6-0596fe38e4e1",
								true,
							},
							
							{
								"730f99d2-7ca1-d7be-b0ed-ed13c56e941b",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "a525a864-7e37-691e-83df-d7b2c91e42f2",
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
						localmapid = 1208,
						name = "Duty 1208",
						uuid = "3af87194-8563-2f3c-adc6-0596fe38e4e1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12693 and (eventArgs.spellID == 36371)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "730f99d2-7ca1-d7be-b0ed-ed13c56e941b",
						version = 3,
					},
				},
			},
			displayPath = "Origenics/Deceiver/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "39e71585-906c-5425-b6d0-c254b6af6198",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Origenics/Deceiver",
			name = "Draws",
			uuid = "33a5c3d5-7f1f-970f-86ae-793adb44a768",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[36372]={[\"name\"]=\"SynchroshotReal\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,4.0}},[36373]={[\"name\"]=\"SynchroshotFake\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,4.0},[\"source\"]=\"BossMod AID geometry + native cast\"},[36367]={[\"name\"]=\"Surge\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,40.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"eda7d33a-3b37-6f1e-895a-359d39b53ff3",
								true,
							},
							
							{
								"581ea073-5b0e-0033-902e-3ee225313d28",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "17ad3155-bbb3-5dbd-a586-f3ae89856203",
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
						localmapid = 1208,
						name = "Duty 1208",
						uuid = "eda7d33a-3b37-6f1e-895a-359d39b53ff3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 36372 or eventArgs.aoeID == 36373 or eventArgs.aoeID == 36367)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "581ea073-5b0e-0033-902e-3ee225313d28",
						version = 3,
					},
				},
			},
			displayPath = "Origenics/Deceiver/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "89c1837d-7e2d-327a-a84b-9a1c05f9c49b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Origenics",
			name = "Ambrose the Undeparted",
			uuid = "018701eb-9b69-8440-ba20-9ede98cff5d8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Origenics/Ambrose the Undeparted",
			name = "AutoSim",
			uuid = "9ee57436-00bf-daf5-8266-82a94ae573d5",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,12695)\nself.used=true",
						conditions = 
						{
							
							{
								"caf78217-f932-02f0-aa5f-bb1f79da8857",
								true,
							},
							
							{
								"c0d4d0af-1d06-ef2f-b799-f3656ba3cf80",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "55f1daea-d369-82b2-8c29-31ecea4caf3f",
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
						localmapid = 1208,
						name = "Duty 1208",
						uuid = "caf78217-f932-02f0-aa5f-bb1f79da8857",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 12695 and (eventArgs.spellID == 36436)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "c0d4d0af-1d06-ef2f-b799-f3656ba3cf80",
						version = 3,
					},
				},
			},
			displayPath = "Origenics/Ambrose the Undeparted/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "c2bf6606-0c0c-cf88-9627-253bd75ff64f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Origenics/Ambrose the Undeparted",
			name = "Draws",
			uuid = "e2ba676b-68ad-cd35-90a6-f61c91d977cb",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[39233]={[\"name\"]=\"OverwhelmingChargeSolo\",[\"kind\"]=\"Cone\",[\"v\"]={26.0,180.0}},[36429]={[\"name\"]=\"Electrolance\",[\"kind\"]=\"Circle\",[\"v\"]={22.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"62043c34-d4a1-2946-a395-0decbc34873d",
								true,
							},
							
							{
								"399ad5dd-b813-77bd-bce5-55664cb6f1e8",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "74293d77-7e99-f6f7-85ff-b9d89c4fbddd",
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
						localmapid = 1208,
						name = "Duty 1208",
						uuid = "62043c34-d4a1-2946-a395-0decbc34873d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 39233 or eventArgs.aoeID == 36429)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "399ad5dd-b813-77bd-bce5-55664cb6f1e8",
						version = 3,
					},
				},
			},
			displayPath = "Origenics/Ambrose the Undeparted/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "cb217726-3c6d-fabb-a9d6-021df5252eca",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Ktisis Hyperboreia",
			uuid = "4317af70-cae7-3d1d-933b-f929bc65860b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia",
			name = "Lyssa",
			uuid = "015a486f-ff8d-4157-ab38-9ee6abbacbb3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia/Lyssa",
			name = "AutoSim",
			uuid = "0cad55c9-762a-1be1-8ffb-e8326c391b2f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,10396)\nself.used=true",
						conditions = 
						{
							
							{
								"da8b9320-bdca-d1f3-b3df-59f58221bf85",
								true,
							},
							
							{
								"2db048ae-3584-168c-9508-97895bfe6e03",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "23fbfa4f-625d-6a04-915a-c77449c994c8",
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
						localmapid = 974,
						name = "Duty 974",
						uuid = "da8b9320-bdca-d1f3-b3df-59f58221bf85",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 10396 and (eventArgs.spellID == 25182)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "2db048ae-3584-168c-9508-97895bfe6e03",
						version = 3,
					},
				},
			},
			displayPath = "Ktisis Hyperboreia/Lyssa/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "9d3a7a4e-fa0b-cc66-b4a2-9be33935ef2e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia/Lyssa",
			name = "Draws",
			uuid = "7f50cc97-d927-04bb-bb16-64163bd50e96",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[25179]={[\"name\"]=\"IcePillar\",[\"kind\"]=\"Circle\",[\"v\"]={4.0}},[25375]={[\"name\"]=\"PillarPierce\",[\"kind\"]=\"Rect\",[\"v\"]={80.0,4.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"5fbc0012-bd50-898a-ac3b-3072f070efbc",
								true,
							},
							
							{
								"ab251861-d412-b245-ab46-fc5300ddabb8",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "c764a03d-7374-fc2c-b9dc-753b9dabf452",
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
						localmapid = 974,
						name = "Duty 974",
						uuid = "5fbc0012-bd50-898a-ac3b-3072f070efbc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 25179 or eventArgs.aoeID == 25375)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "ab251861-d412-b245-ab46-fc5300ddabb8",
						version = 3,
					},
				},
			},
			displayPath = "Ktisis Hyperboreia/Lyssa/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "5497440a-7786-2c38-b8c3-1f130a0bc844",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia",
			name = "Ladon Lord",
			uuid = "c3b901ee-c0bd-f0d3-b412-ea31c311768f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia/Ladon Lord",
			name = "AutoSim",
			uuid = "2e45d06e-afa0-78ba-afec-83ba5c03fb0e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,10398)\nself.used=true",
						conditions = 
						{
							
							{
								"8756b4cf-ba9d-73dd-9ca9-8649dd21abef",
								true,
							},
							
							{
								"b840c2c7-5b11-b9e0-921e-e92335984720",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "24b9d04a-9443-f256-adc3-ce1cdb5382c7",
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
						localmapid = 974,
						name = "Duty 974",
						uuid = "8756b4cf-ba9d-73dd-9ca9-8649dd21abef",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 10398 and (eventArgs.spellID == 25743)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "b840c2c7-5b11-b9e0-921e-e92335984720",
						version = 3,
					},
				},
			},
			displayPath = "Ktisis Hyperboreia/Ladon Lord/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "96870664-7ca0-5f66-95d1-c45c39d0a9c8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia/Ladon Lord",
			name = "Draws",
			uuid = "bfbbdcd9-3ede-84c0-91ed-658e3be09a68",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[25734]={[\"kind\"]=\"Cone\",[\"v\"]={40,120}},[25735]={[\"kind\"]=\"Cone\",[\"v\"]={40,120}},[25736]={[\"kind\"]=\"Cone\",[\"v\"]={40,120}}})\nself.used=true",
						conditions = 
						{
							
							{
								"d6ec7f8a-794f-8204-9ab0-f442fd692f8a",
								true,
							},
							
							{
								"11d7fd42-9f06-c872-be67-6e6b09ca2a84",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "90ca6e81-d6a2-9628-b280-82173a10c8d6",
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
						localmapid = 974,
						name = "Duty 974",
						uuid = "d6ec7f8a-794f-8204-9ab0-f442fd692f8a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 25734 or eventArgs.aoeID == 25735 or eventArgs.aoeID == 25736)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "11d7fd42-9f06-c872-be67-6e6b09ca2a84",
						version = 3,
					},
				},
			},
			displayPath = "Ktisis Hyperboreia/Ladon Lord/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "4ce35e1f-406f-0839-aba0-3eb061dfee93",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia",
			name = "Hermes",
			uuid = "b3bd11ae-c0d6-721b-8f6d-5be4c6a8c228",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia/Hermes",
			name = "AutoSim",
			uuid = "62d36248-99dd-71be-995e-7bb976e6cdc7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,10399)\nself.used=true",
						conditions = 
						{
							
							{
								"3a1fa5d0-b486-b352-b88a-3796bdcf46a5",
								true,
							},
							
							{
								"ac6be0cc-2d21-6e1a-85ba-271c3c00bc2b",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "fcb479e3-860a-9611-9380-e64e0daeff70",
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
						localmapid = 974,
						name = "Duty 974",
						uuid = "3a1fa5d0-b486-b352-b88a-3796bdcf46a5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 10399 and (eventArgs.spellID == 25886)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "ac6be0cc-2d21-6e1a-85ba-271c3c00bc2b",
						version = 3,
					},
				},
			},
			displayPath = "Ktisis Hyperboreia/Hermes/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "bfc47458-20d1-37a5-befa-6cae4467257e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Ktisis Hyperboreia/Hermes",
			name = "Draws",
			uuid = "eddeb40e-d9e4-c42e-ba95-5752907550c7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[25891]={[\"name\"]=\"CosmicKiss\",[\"kind\"]=\"Circle\",[\"v\"]={10.0}},[25889]={[\"name\"]=\"TrueAeroIV\",[\"kind\"]=\"Rect\",[\"v\"]={50.0,10.0}},[27836]={[\"name\"]=\"TrueAeroIV1\",[\"kind\"]=\"Rect\",[\"v\"]={50.0,10.0},[\"source\"]=\"BossMod AID geometry + native cast\"},[27837]={[\"name\"]=\"TrueAeroIV2\",[\"kind\"]=\"Rect\",[\"v\"]={50.0,10.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"d7ebe560-0207-f974-8ea1-f99671a16343",
								true,
							},
							
							{
								"598edbc9-7ced-989f-82fa-74740a5e134f",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "d5f1839b-47d3-1e30-9288-94cc973073dd",
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
						localmapid = 974,
						name = "Duty 974",
						uuid = "d7ebe560-0207-f974-8ea1-f99671a16343",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 25891 or eventArgs.aoeID == 25889 or eventArgs.aoeID == 27836 or eventArgs.aoeID == 27837)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "598edbc9-7ced-989f-82fa-74740a5e134f",
						version = 3,
					},
				},
			},
			displayPath = "Ktisis Hyperboreia/Hermes/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "7247c6b3-780b-d0c3-815f-3d736ac419ec",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Mt. Gulg",
			uuid = "8ebef20d-ba98-0381-b3e9-217667435cd4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg",
			name = "Forgiven Cruelty",
			uuid = "138ee961-e44c-f920-ac5a-774a718964a4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg/Forgiven Cruelty",
			name = "AutoSim",
			uuid = "e0711753-3653-bc6e-b7fb-540b28223bd6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,8260)\nself.used=true",
						conditions = 
						{
							
							{
								"a5d5bf3d-0500-53f4-8a1f-dbb21238841a",
								true,
							},
							
							{
								"a2e92942-2899-c4c7-b948-063af27d0d06",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "f64a9fbf-9541-e2bc-b9b3-7b97f814250e",
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
						localmapid = 822,
						name = "Duty 822",
						uuid = "a5d5bf3d-0500-53f4-8a1f-dbb21238841a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 8260 and (eventArgs.spellID == 15611)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "a2e92942-2899-c4c7-b948-063af27d0d06",
						version = 3,
					},
				},
			},
			displayPath = "Mt. Gulg/Forgiven Cruelty/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "dc945c19-929d-1d59-9ed7-8632682e79de",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg/Forgiven Cruelty",
			name = "Draws",
			uuid = "f891c415-05bd-f476-b964-3a4a7404cef6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[16818]={[\"name\"]=\"LumenInfinitum\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,5.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"06c6e7e9-4516-fb59-8538-01e1e1f24fc5",
								true,
							},
							
							{
								"c9ae4fd0-fd2f-343e-969b-24bffde93e86",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "19d86a12-7374-a305-8a50-c368e2afbc66",
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
						localmapid = 822,
						name = "Duty 822",
						uuid = "06c6e7e9-4516-fb59-8538-01e1e1f24fc5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 16818)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "c9ae4fd0-fd2f-343e-969b-24bffde93e86",
						version = 3,
					},
				},
			},
			displayPath = "Mt. Gulg/Forgiven Cruelty/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "f637a33c-9780-0877-b17a-970a44390768",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg",
			name = "Forgiven Whimsy",
			uuid = "00365140-30f7-d05b-9e42-022598286c0c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg/Forgiven Whimsy",
			name = "AutoSim",
			uuid = "3fecb518-175b-d6b5-a296-b21979deae07",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,8261)\nself.used=true",
						conditions = 
						{
							
							{
								"b6491136-2b6e-a401-b4d3-7850363c73de",
								true,
							},
							
							{
								"ba0b123c-12f0-8d69-9c83-f86455280597",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "de9b240b-9e03-0e32-a083-502e354555fd",
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
						localmapid = 822,
						name = "Duty 822",
						uuid = "b6491136-2b6e-a401-b4d3-7850363c73de",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 8261 and (eventArgs.spellID == 15627)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "ba0b123c-12f0-8d69-9c83-f86455280597",
						version = 3,
					},
				},
			},
			displayPath = "Mt. Gulg/Forgiven Whimsy/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "672664f5-b2c8-51c2-878d-1d79fd7e6308",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg/Forgiven Whimsy",
			name = "Draws",
			uuid = "d67acafe-347d-00e5-bb6d-7278ee4e4b20",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[15630]={[\"name\"]=\"PerfectContrition\",[\"kind\"]=\"Donut\",[\"v\"]={5.0,15.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"7247a228-6aa9-9c6e-aea4-8d457063f5be",
								true,
							},
							
							{
								"93fe08fc-ef15-09df-953d-be4b7bdee70c",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "60c0705e-4d77-98a6-8e58-e18b5698ff1a",
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
						localmapid = 822,
						name = "Duty 822",
						uuid = "7247a228-6aa9-9c6e-aea4-8d457063f5be",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 15630)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "93fe08fc-ef15-09df-953d-be4b7bdee70c",
						version = 3,
					},
				},
			},
			displayPath = "Mt. Gulg/Forgiven Whimsy/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "3f2c5b45-7990-1432-b29d-99f86fe0580e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg",
			name = "Forgiven Obscenity",
			uuid = "5ec6bc47-8f8d-2365-bd3a-f484fd26bcdb",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg/Forgiven Obscenity",
			name = "AutoSim",
			uuid = "4127156e-9cdd-1ca3-8115-1468d198cd31",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,8262)\nself.used=true",
						conditions = 
						{
							
							{
								"5a23c5fd-95c3-b4c1-84b4-f15a622942a4",
								true,
							},
							
							{
								"2e24b23b-4a74-e592-a48a-74d5f5a287a5",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "5d6b1643-06d9-fde2-a2d3-21aa4b574f19",
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
						localmapid = 822,
						name = "Duty 822",
						uuid = "5a23c5fd-95c3-b4c1-84b4-f15a622942a4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 8262 and (eventArgs.spellID == 15636)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "2e24b23b-4a74-e592-a48a-74d5f5a287a5",
						version = 3,
					},
				},
			},
			displayPath = "Mt. Gulg/Forgiven Obscenity/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "b967282e-b9e8-4692-b5cc-803292bda209",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Mt. Gulg/Forgiven Obscenity",
			name = "Draws",
			uuid = "762166ad-3de4-27c4-850f-adef4ba10145",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[15638]={[\"name\"]=\"DivineDiminuendo\",[\"kind\"]=\"Circle\",[\"v\"]={8.0}},[15640]={[\"name\"]=\"DivineDiminuendo1\",[\"kind\"]=\"Circle\",[\"v\"]={8.0}},[15649]={[\"name\"]=\"DivineDiminuendo4\",[\"kind\"]=\"Circle\",[\"v\"]={8.0}},[15642]={[\"name\"]=\"ConvictionMarcato\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,5.0}},[15648]={[\"name\"]=\"ConvictionMarcato3\",[\"kind\"]=\"Rect\",[\"v\"]={40.0,5.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"0ddeb1e7-0eef-3c1b-a951-c09b6edad173",
								true,
							},
							
							{
								"08abb00b-2574-f4e3-af56-dd7517629bf4",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "2a29e052-5ed7-7661-b9d4-c3baa2262226",
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
						localmapid = 822,
						name = "Duty 822",
						uuid = "0ddeb1e7-0eef-3c1b-a951-c09b6edad173",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 15638 or eventArgs.aoeID == 15640 or eventArgs.aoeID == 15649 or eventArgs.aoeID == 15642 or eventArgs.aoeID == 15648)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "08abb00b-2574-f4e3-af56-dd7517629bf4",
						version = 3,
					},
				},
			},
			displayPath = "Mt. Gulg/Forgiven Obscenity/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "ab2c59be-3a20-9349-8699-506fb2109421",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Aery",
			uuid = "8bd808eb-c163-0fe8-8b4c-0b378e6a91fd",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aery",
			name = "Rangda",
			uuid = "f3b85fb7-2b3c-cbcf-87eb-db4c71258daf",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aery/Rangda",
			name = "AutoSim",
			uuid = "e1398d2e-0bbd-3661-8aed-dddca6fcbe71",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,3452)\nself.used=true",
						conditions = 
						{
							
							{
								"73d8b02f-3369-be1c-a7e1-0d9af42ae466",
								true,
							},
							
							{
								"aee51b92-351c-e6c3-8006-71dd9d8a11cf",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "f3433e10-fb77-c24a-b652-dfe73d87ade5",
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
						localmapid = 1065,
						name = "Duty 1065",
						uuid = "73d8b02f-3369-be1c-a7e1-0d9af42ae466",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 3452 and (eventArgs.spellID == 3889)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "aee51b92-351c-e6c3-8006-71dd9d8a11cf",
						version = 3,
					},
				},
			},
			displayPath = "The Aery/Rangda/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "99b550bd-a1ab-00d8-bd61-87e52f2f9e40",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aery/Rangda",
			name = "Draws",
			uuid = "cedc01d9-82b8-ce4f-ad25-5c66400b6679",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[3889]={[\"name\"]=\"ElectricCachexia\",[\"kind\"]=\"Donut\",[\"v\"]={7.0,60.0}},[3893]={[\"name\"]=\"LightningBolt\",[\"kind\"]=\"Circle\",[\"v\"]={3.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"8b7d94bd-d347-2c10-8649-6da6bef6086d",
								true,
							},
							
							{
								"cebb5c99-6e05-45db-92c5-0148f51201d4",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "8e15572d-31a5-92cf-b903-2b7f686e2dbc",
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
						localmapid = 1065,
						name = "Duty 1065",
						uuid = "8b7d94bd-d347-2c10-8649-6da6bef6086d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 3889 or eventArgs.aoeID == 3893)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "cebb5c99-6e05-45db-92c5-0148f51201d4",
						version = 3,
					},
				},
			},
			displayPath = "The Aery/Rangda/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "efe8353b-38c2-4968-8fab-0312c9d51b77",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aery",
			name = "Gyascutus",
			uuid = "62346145-5b85-ce9a-bfa5-b27f9dc6a7c6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aery/Gyascutus",
			name = "AutoSim",
			uuid = "1927ec20-3c2d-1d29-a3f6-b94c2877aeff",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,3455)\nself.used=true",
						conditions = 
						{
							
							{
								"72c32ccc-1968-48ba-83b2-5c161bf9fe88",
								true,
							},
							
							{
								"9b64b43e-409a-5034-acc1-5d6ae9948f33",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "2115c696-2a73-1360-bfcc-6845e5cc64c5",
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
						localmapid = 1065,
						name = "Duty 1065",
						uuid = "72c32ccc-1968-48ba-83b2-5c161bf9fe88",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 3455 and (eventArgs.spellID == 30191)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "9b64b43e-409a-5034-acc1-5d6ae9948f33",
						version = 3,
					},
				},
			},
			displayPath = "The Aery/Gyascutus/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "4cabb608-71ec-1b1e-a90b-3c01a587cc68",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aery/Gyascutus",
			name = "Draws",
			uuid = "262c603e-b80a-c885-b5c4-cdef643b2414",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[30191]={[\"name\"]=\"ProximityPyre\",[\"kind\"]=\"Circle\",[\"v\"]={12.0}},[30190]={[\"name\"]=\"AshenOuroboros\",[\"kind\"]=\"Donut\",[\"v\"]={11.0,20.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"d2e59bff-9ae5-c9ea-8b59-b77647909f60",
								true,
							},
							
							{
								"16dc1c7a-14f9-d39e-aebc-5c23aa0345d1",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "c2e1a4a2-da92-b5ab-a3ee-05a661fc22ae",
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
						localmapid = 1065,
						name = "Duty 1065",
						uuid = "d2e59bff-9ae5-c9ea-8b59-b77647909f60",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 30191 or eventArgs.aoeID == 30190)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "16dc1c7a-14f9-d39e-aebc-5c23aa0345d1",
						version = 3,
					},
				},
			},
			displayPath = "The Aery/Gyascutus/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "19fd9b7d-9f30-35a4-b0e1-35508190c333",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aery",
			name = "Nidhogg",
			uuid = "2a465fe4-7b98-0e15-a551-a5fcf380d691",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aery/Nidhogg",
			name = "AutoSim",
			uuid = "516bea16-fb39-95c1-b8dc-616dfd49c0b3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,3458)\nself.used=true",
						conditions = 
						{
							
							{
								"bc8418b0-b45b-1e4d-81bf-86ccbcf34321",
								true,
							},
							
							{
								"dd59c018-a797-0486-a4d7-d3aad41f7ce7",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "35f2e2dd-8f01-8604-a73b-39ea1642fda8",
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
						localmapid = 1065,
						name = "Duty 1065",
						uuid = "bc8418b0-b45b-1e4d-81bf-86ccbcf34321",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 3458 and (eventArgs.spellID == 30206)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "dd59c018-a797-0486-a4d7-d3aad41f7ce7",
						version = 3,
					},
				},
			},
			displayPath = "The Aery/Nidhogg/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "7b80a677-23bd-e18e-ad29-3ff7e6bdff8c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aery/Nidhogg",
			name = "Draws",
			uuid = "a8ea6b78-ab79-6f12-bf4b-3f31d5ddca72",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[30196]={[\"name\"]=\"HotTail\",[\"kind\"]=\"Rect\",[\"v\"]={68.0,8.0,68.0}},[30198]={[\"name\"]=\"Cauterize\",[\"kind\"]=\"Rect\",[\"v\"]={80.0,22.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"fce0a185-4700-207c-a2a9-b6827101d86c",
								true,
							},
							
							{
								"3b5a8381-c698-e2ce-a5ff-0f33d18f68af",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "cc96139d-e411-a6e6-9d02-230945d669e0",
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
						localmapid = 1065,
						name = "Duty 1065",
						uuid = "fce0a185-4700-207c-a2a9-b6827101d86c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 30196 or eventArgs.aoeID == 30198)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "3b5a8381-c698-e2ce-a5ff-0f33d18f68af",
						version = 3,
					},
				},
			},
			displayPath = "The Aery/Nidhogg/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "9bde0399-74fc-a1e8-8588-7a83bcc26c1b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Copperbell Mines",
			uuid = "c6c22a46-a01b-8bc6-bb7d-b919fcb678cf",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines",
			name = "Kottos",
			uuid = "3b329453-6e5e-b508-b2a4-630502b6d616",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines/Kottos",
			name = "AutoSim",
			uuid = "7dda063c-d72e-5e87-b57e-0ddc3c866447",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,548)\nself.used=true",
						conditions = 
						{
							
							{
								"e8b5cd64-49d9-e84b-af71-31f8d529e85d",
								true,
							},
							
							{
								"028a6dfc-30f9-86c4-8797-a941b1157613",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "d8b50906-1890-eb4f-848f-55517f4358b9",
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
						localmapid = 1038,
						name = "Duty 1038",
						uuid = "e8b5cd64-49d9-e84b-af71-31f8d529e85d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 548 and (eventArgs.spellID == 28545)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "028a6dfc-30f9-86c4-8797-a941b1157613",
						version = 3,
					},
				},
			},
			displayPath = "Copperbell Mines/Kottos/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "e43aa6ff-1032-d181-9a1f-4c4d49214f7a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines/Kottos",
			name = "Draws",
			uuid = "75b6b3f3-b028-9902-8ad7-b04a88ac70dd",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[28546]={[\"name\"]=\"ColossalSlam\",[\"kind\"]=\"Cone\",[\"v\"]={30.0,60.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"bd520c3f-46a0-c085-a1bd-96766741e470",
								true,
							},
							
							{
								"bb75ae5d-5f29-a9ea-aa91-889a0b2edff7",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "4f547b8a-2067-311b-be72-550b8660390e",
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
						localmapid = 1038,
						name = "Duty 1038",
						uuid = "bd520c3f-46a0-c085-a1bd-96766741e470",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 28546)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "bb75ae5d-5f29-a9ea-aa91-889a0b2edff7",
						version = 3,
					},
				},
			},
			displayPath = "Copperbell Mines/Kottos/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "6ec87cb0-8dab-2ca2-ba10-fdced0b68a2d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines",
			name = "Ichorous Ire",
			uuid = "ab48dabc-78f5-0dae-bdf1-a4c0eabe3cbe",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines/Ichorous Ire",
			name = "AutoSim",
			uuid = "438df8a0-cc90-6561-9839-c6e5d7f0c5b4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,554)\nself.used=true",
						conditions = 
						{
							
							{
								"4a8a1843-c1b4-eccb-ba40-416c29399020",
								true,
							},
							
							{
								"3d38bf46-e83d-c601-9397-b9ec874c915f",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "7a168958-6681-313e-9753-d571c20a5b9f",
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
						localmapid = 1038,
						name = "Duty 1038",
						uuid = "4a8a1843-c1b4-eccb-ba40-416c29399020",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 554 and (eventArgs.spellID == 28462)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "3d38bf46-e83d-c601-9397-b9ec874c915f",
						version = 3,
					},
				},
			},
			displayPath = "Copperbell Mines/Ichorous Ire/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "3ea2152c-7043-25ed-8988-ebf50ba660ee",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines/Ichorous Ire",
			name = "Draws",
			uuid = "1f6792d2-0ac8-996a-920e-ab16c24694ca",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[28465]={[\"name\"]=\"Burst\",[\"kind\"]=\"Circle\",[\"v\"]={8.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"c4bf9df0-db28-d9ae-8a7d-91d720d5c63c",
								true,
							},
							
							{
								"13245c76-3664-da7a-a32f-36463bf12a2c",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "fb708d25-610c-73e0-be1b-7d84a58dd12e",
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
						localmapid = 1038,
						name = "Duty 1038",
						uuid = "c4bf9df0-db28-d9ae-8a7d-91d720d5c63c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 28465)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "13245c76-3664-da7a-a32f-36463bf12a2c",
						version = 3,
					},
				},
			},
			displayPath = "Copperbell Mines/Ichorous Ire/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "543c0944-65f8-352e-b7bc-697f62d68b6c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines",
			name = "Gyges the Great",
			uuid = "6f2dc4ec-0d33-0921-80d6-7acd925fb390",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines/Gyges the Great",
			name = "AutoSim",
			uuid = "361f6723-75b2-af36-a836-a1b8110fcdca",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,101)\nself.used=true",
						conditions = 
						{
							
							{
								"83ab87b9-e68a-1748-98ff-83ce1041cf66",
								true,
							},
							
							{
								"1af268ad-0799-c6c6-94e8-05250ac26ce5",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "fdc1b1c1-e82c-5941-8503-7879927f4c6f",
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
						localmapid = 1038,
						name = "Duty 1038",
						uuid = "83ab87b9-e68a-1748-98ff-83ce1041cf66",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 101 and (eventArgs.spellID == 28762)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "1af268ad-0799-c6c6-94e8-05250ac26ce5",
						version = 3,
					},
				},
			},
			displayPath = "Copperbell Mines/Gyges the Great/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "1ba55fac-1b94-dae3-bdf2-9eaa15eb3bc0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Copperbell Mines/Gyges the Great",
			name = "Draws",
			uuid = "60d4d7b2-64e1-4b69-9a8f-a071ee7f0bd9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[28762]={[\"name\"]=\"GiganticSwing\",[\"kind\"]=\"Donut\",[\"v\"]={4.0,40.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"54d693af-10f6-aa82-a5e5-ad4501a38347",
								true,
							},
							
							{
								"4af52ad8-64de-70e2-89c3-547c5da8094e",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "1919a4c4-8dc8-4272-8d38-278cfb433ddd",
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
						localmapid = 1038,
						name = "Duty 1038",
						uuid = "54d693af-10f6-aa82-a5e5-ad4501a38347",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 28762)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "4af52ad8-64de-70e2-89c3-547c5da8094e",
						version = 3,
					},
				},
			},
			displayPath = "Copperbell Mines/Gyges the Great/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "a1b3567a-a77c-ad94-a8bd-56e164c1f88d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Halatali",
			uuid = "7ff799f4-e38c-9fed-9639-57c50434ed93",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Halatali",
			name = "Firemane",
			uuid = "0f1fe283-2d95-decb-8dba-6440616d5566",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Halatali/Firemane",
			name = "AutoSim",
			uuid = "5b8fa2ac-637a-3eb3-8b71-758037c2373b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1194)\nself.used=true",
						conditions = 
						{
							
							{
								"7b7edec6-2b4f-94bd-8a75-860ddda4d604",
								true,
							},
							
							{
								"b5e9e0c2-e49c-4d64-9600-27b3bb438482",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "92a6f931-046a-c849-b4a4-25eb86eebe65",
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
						localmapid = 1245,
						name = "Duty 1245",
						uuid = "7b7edec6-2b4f-94bd-8a75-860ddda4d604",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1194 and (eventArgs.spellID == 40592)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "b5e9e0c2-e49c-4d64-9600-27b3bb438482",
						version = 3,
					},
				},
			},
			displayPath = "Halatali/Firemane/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "69f0e2a3-0e5d-639d-929c-f33aa51e4679",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Halatali/Firemane",
			name = "Draws",
			uuid = "0de48651-9050-6c0e-a51f-af845da1871f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[40592]={[\"name\"]=\"FireII\",[\"kind\"]=\"Circle\",[\"v\"]={5.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"287fee33-d8ea-7364-9efb-e2aa98d4e261",
								true,
							},
							
							{
								"ce8667d6-29d5-a027-ab8f-b1c1a4543b2b",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "62b16728-5f69-6141-91fb-b654c16d87a6",
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
						localmapid = 1245,
						name = "Duty 1245",
						uuid = "287fee33-d8ea-7364-9efb-e2aa98d4e261",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 40592)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "ce8667d6-29d5-a027-ab8f-b1c1a4543b2b",
						version = 3,
					},
				},
			},
			displayPath = "Halatali/Firemane/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "0e8b7ebe-9cbf-c826-8812-b97cd76b8925",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Halatali",
			name = "Thunderclap Guivre",
			uuid = "24de2156-4996-7d4b-9702-7ac37eeae7df",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Halatali/Thunderclap Guivre",
			name = "AutoSim",
			uuid = "e9d66eed-1c18-1db4-97b9-76b260202d5e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1196)\nself.used=true",
						conditions = 
						{
							
							{
								"ffdc807a-27ed-2a00-945d-7de702a77b09",
								true,
							},
							
							{
								"5cf4ea47-7582-5ecd-9473-e21169b5f75c",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "e17f99a1-fa74-b11f-96ff-f25febb8c24a",
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
						localmapid = 1245,
						name = "Duty 1245",
						uuid = "ffdc807a-27ed-2a00-945d-7de702a77b09",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1196 and (eventArgs.spellID == 40595)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "5cf4ea47-7582-5ecd-9473-e21169b5f75c",
						version = 3,
					},
				},
			},
			displayPath = "Halatali/Thunderclap Guivre/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "f108a466-2628-8cca-977f-6fa706651850",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Halatali/Thunderclap Guivre",
			name = "Draws",
			uuid = "bee43ff0-cd3b-5d95-8905-b4a101ea9b98",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[40595]={[\"name\"]=\"Electrify\",[\"kind\"]=\"Circle\",[\"v\"]={6.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"b9ccdf66-f825-dccf-9381-54db52b25aa2",
								true,
							},
							
							{
								"3599b280-1ff7-3e04-acac-89c3987e6d66",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "5b02679d-52c7-e1da-99ff-46e6bffa4ec8",
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
						localmapid = 1245,
						name = "Duty 1245",
						uuid = "b9ccdf66-f825-dccf-9381-54db52b25aa2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 40595)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "3599b280-1ff7-3e04-acac-89c3987e6d66",
						version = 3,
					},
				},
			},
			displayPath = "Halatali/Thunderclap Guivre/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "c0d8b8f8-cbc1-e0b6-b41e-2a81536f8baf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Halatali",
			name = "Tangata",
			uuid = "96b5e73a-6624-8a20-a673-98346348fce9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Halatali/Tangata",
			name = "AutoSim",
			uuid = "25b0021d-f3e5-2223-a526-7e6ea9ebaefc",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1197)\nself.used=true",
						conditions = 
						{
							
							{
								"17af95d7-6424-cd29-88e7-5cfd73543fe7",
								true,
							},
							
							{
								"1303dff3-0313-138f-9dc2-f1d57feca5c7",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "23d3060c-6cd5-75b8-9e71-ccdbd102ea2d",
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
						localmapid = 1245,
						name = "Duty 1245",
						uuid = "17af95d7-6424-cd29-88e7-5cfd73543fe7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1197 and (eventArgs.spellID == 40602)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "1303dff3-0313-138f-9dc2-f1d57feca5c7",
						version = 3,
					},
				},
			},
			displayPath = "Halatali/Tangata/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "21a5d037-9c84-0a5f-b69d-59e21b444730",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Halatali/Tangata",
			name = "Draws",
			uuid = "ab886857-c055-ce76-a779-4c1787ee8081",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[40599]={[\"name\"]=\"PlainPound\",[\"kind\"]=\"Circle\",[\"v\"]={10.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"72f2530f-e144-c1a2-a86c-5b728c37c03b",
								true,
							},
							
							{
								"e04313b0-6b17-0cd0-8e0d-b537100efc0c",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "631f6f2b-9074-8732-8ab7-3d3442a058f0",
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
						localmapid = 1245,
						name = "Duty 1245",
						uuid = "72f2530f-e144-c1a2-a86c-5b728c37c03b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 40599)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "e04313b0-6b17-0cd0-8e0d-b537100efc0c",
						version = 3,
					},
				},
			},
			displayPath = "Halatali/Tangata/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "fc342cc3-70ea-76ee-9a1e-5c72fe8a8875",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Thousand Maws of Toto-Rak",
			uuid = "0de753ed-d419-5759-9bb8-f45cc53e7456",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Thousand Maws of Toto-Rak",
			name = "Graffias",
			uuid = "83ff24da-4647-bd7a-92a7-1880aa77889f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Thousand Maws of Toto-Rak/Graffias",
			name = "AutoSim",
			uuid = "057d213a-edbc-0e14-a27d-7518c72bc9c6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,444)\nself.used=true",
						conditions = 
						{
							
							{
								"e716c3b1-e08a-1d35-ab2a-347cdfadde12",
								true,
							},
							
							{
								"62989e7d-73b3-ddb2-b6a3-3005a067a26d",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "e8d28d9f-576b-25ae-951d-908d2b80374e",
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
						localmapid = 1039,
						name = "Duty 1039",
						uuid = "e716c3b1-e08a-1d35-ab2a-347cdfadde12",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 444 and (eventArgs.spellID == 701)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "62989e7d-73b3-ddb2-b6a3-3005a067a26d",
						version = 3,
					},
				},
			},
			displayPath = "The Thousand Maws of Toto-Rak/Graffias/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "d41f6a86-8497-2484-ae2b-4fa0248269d0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Thousand Maws of Toto-Rak/Graffias",
			name = "Draws",
			uuid = "c43351b1-8e60-cd58-9867-6ed14134bad4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[701]={[\"name\"]=\"Silkscreen\",[\"kind\"]=\"Rect\",[\"v\"]={18.0,4.0}},[730]={[\"name\"]=\"PodBurst\",[\"kind\"]=\"Circle\",[\"v\"]={7.05}}})\nself.used=true",
						conditions = 
						{
							
							{
								"6f86bc0e-25ed-dd17-88e2-d0634a504c56",
								true,
							},
							
							{
								"686de75b-0dc3-c36d-a316-8b5a198d0023",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "14d701bb-920f-71a5-b230-190e3d0d492c",
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
						localmapid = 1039,
						name = "Duty 1039",
						uuid = "6f86bc0e-25ed-dd17-88e2-d0634a504c56",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 701 or eventArgs.aoeID == 730)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "686de75b-0dc3-c36d-a316-8b5a198d0023",
						version = 3,
					},
				},
			},
			displayPath = "The Thousand Maws of Toto-Rak/Graffias/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "6dfe7724-948b-e901-bdfd-f199ac122998",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Haukke Manor",
			uuid = "a46412f1-fc27-552c-ae19-6f537014c922",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Haukke Manor",
			name = "Manor Claviger",
			uuid = "890dca9e-9243-5427-970c-9a314688a088",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Haukke Manor/Manor Claviger",
			name = "Draws",
			uuid = "b55287ab-a9eb-d046-a00c-508f97ca6b3e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[705]={[\"name\"]=\"DarkMist\",[\"kind\"]=\"Circle\",[\"v\"]={9.4}}})\nself.used=true",
						conditions = 
						{
							
							{
								"dbbe59fb-508c-218e-bf94-e995f74dbe5e",
								true,
							},
							
							{
								"9a2d96c5-4219-ee4b-a015-f3e289edc06d",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "9f666340-544d-7600-a037-5786ef4c5442",
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
						localmapid = 1040,
						name = "Duty 1040",
						uuid = "dbbe59fb-508c-218e-bf94-e995f74dbe5e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 705)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "9a2d96c5-4219-ee4b-a015-f3e289edc06d",
						version = 3,
					},
				},
			},
			displayPath = "Haukke Manor/Manor Claviger/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "eb4e2179-0f2b-1260-9e18-ade3d74bd7c1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Haukke Manor",
			name = "Manor Steward",
			uuid = "b3cd0e05-3ffb-e7fd-9c85-347d3d4521e4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Haukke Manor/Manor Steward",
			name = "Draws",
			uuid = "2e2a5761-a826-9549-81c2-39e8664d880d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[860]={[\"name\"]=\"SoulDrain\",[\"kind\"]=\"Circle\",[\"v\"]={9.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"429f2eb4-69b1-14f8-a7b9-18dbbd620600",
								true,
							},
							
							{
								"9d855f40-79c4-bbe4-91c7-14390ac83735",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "bbe00e16-26c7-1d68-ac8f-e159a2366c6d",
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
						localmapid = 1040,
						name = "Duty 1040",
						uuid = "429f2eb4-69b1-14f8-a7b9-18dbbd620600",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 860)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "9d855f40-79c4-bbe4-91c7-14390ac83735",
						version = 3,
					},
				},
			},
			displayPath = "Haukke Manor/Manor Steward/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "9e6eda91-8efc-7419-b687-0b992e2e9ee1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Haukke Manor",
			name = "Lady Amandine",
			uuid = "badd9900-20b1-5c23-824b-55a6ce26a84a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Haukke Manor/Lady Amandine",
			name = "AutoSim",
			uuid = "c9407cc7-ebee-e9c8-bbe3-4ff86e2513d6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,422)\nself.used=true",
						conditions = 
						{
							
							{
								"a4009857-a835-c7b4-9e73-030e54d21231",
								true,
							},
							
							{
								"a39b8090-2be5-9f30-a97b-8ff6db5743b9",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "e99bd08f-9f6e-3cd7-a6cb-8963e4065a14",
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
						localmapid = 1040,
						name = "Duty 1040",
						uuid = "a4009857-a835-c7b4-9e73-030e54d21231",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 422 and (eventArgs.spellID == 28640)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "a39b8090-2be5-9f30-a97b-8ff6db5743b9",
						version = 3,
					},
				},
			},
			displayPath = "Haukke Manor/Lady Amandine/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "b2c22503-b53e-c262-af83-52c1670a9498",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Haukke Manor/Lady Amandine",
			name = "Draws",
			uuid = "604e44c1-858b-1d13-b0e5-99748d355933",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[28646]={[\"name\"]=\"DarkMist\",[\"kind\"]=\"Circle\",[\"v\"]={9.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"57697605-7435-2c76-85b6-7f4946bdbda0",
								true,
							},
							
							{
								"eb41e2b5-b3b2-3431-9f08-aa5e46db6a21",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "7bcbc272-3e11-d30b-9177-5da1e504c83b",
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
						localmapid = 1040,
						name = "Duty 1040",
						uuid = "57697605-7435-2c76-85b6-7f4946bdbda0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 28646)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "eb41e2b5-b3b2-3431-9f08-aa5e46db6a21",
						version = 3,
					},
				},
			},
			displayPath = "Haukke Manor/Lady Amandine/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "e6d185b1-a115-3341-bd6b-cefa1c835b23",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Brayflox's Longstop",
			uuid = "e3e04bc0-16da-498f-a062-97d9e53d5694",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Brayflox's Longstop",
			name = "Great Yellow Pelican",
			uuid = "600b0393-aba8-1a38-a7b2-c5e05f8f99e0",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Brayflox's Longstop/Great Yellow Pelican",
			name = "AutoSim",
			uuid = "52013723-0772-bb4d-a463-0c3faca2e912",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1280)\nself.used=true",
						conditions = 
						{
							
							{
								"022518b8-fbc7-0bbd-aafc-f6279c18994e",
								true,
							},
							
							{
								"2eaf6e19-3372-ac4b-8c65-932b69b9445b",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "8b7a3f70-5fdd-f2da-ac97-bfd2d44f40cc",
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
						localmapid = 1041,
						name = "Duty 1041",
						uuid = "022518b8-fbc7-0bbd-aafc-f6279c18994e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1280 and (eventArgs.spellID == 506)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "2eaf6e19-3372-ac4b-8c65-932b69b9445b",
						version = 3,
					},
				},
			},
			displayPath = "Brayflox's Longstop/Great Yellow Pelican/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "e44e0a7d-b941-2ff0-ba72-c873ee5b022f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Brayflox's Longstop/Great Yellow Pelican",
			name = "Draws",
			uuid = "1299452f-cfaf-842f-991d-73452405dec5",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[506]={[\"name\"]=\"NumbingBreath\",[\"kind\"]=\"Cone\",[\"v\"]={9.2,120.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"101884ee-ecf7-d422-b7cb-9073cab4a74d",
								true,
							},
							
							{
								"4da29ea2-97ee-3943-85e7-377aeed7835f",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "835702ab-5c7b-8409-9812-12068d238fa8",
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
						localmapid = 1041,
						name = "Duty 1041",
						uuid = "101884ee-ecf7-d422-b7cb-9073cab4a74d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 506)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "4da29ea2-97ee-3943-85e7-377aeed7835f",
						version = 3,
					},
				},
			},
			displayPath = "Brayflox's Longstop/Great Yellow Pelican/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "59dcdcec-c066-6c47-bf18-98c341e078de",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Brayflox's Longstop",
			name = "Aiatar",
			uuid = "706269c9-1db7-e74b-af14-8c1f6cad4345",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Brayflox's Longstop/Aiatar",
			name = "AutoSim",
			uuid = "1ddd4223-89f1-2370-999c-bea85cf082a8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1279)\nself.used=true",
						conditions = 
						{
							
							{
								"0cf1e0ee-af53-07fc-8abd-a4b5915168fb",
								true,
							},
							
							{
								"fe21c0de-7d10-0c05-850e-8ed8e8f0a858",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "f1c88845-0733-2edd-ac28-10b13c2260af",
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
						localmapid = 1041,
						name = "Duty 1041",
						uuid = "0cf1e0ee-af53-07fc-8abd-a4b5915168fb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1279 and (eventArgs.spellID == 28659)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "fe21c0de-7d10-0c05-850e-8ed8e8f0a858",
						version = 3,
					},
				},
			},
			displayPath = "Brayflox's Longstop/Aiatar/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "e28208dc-4fe3-fdaa-8c5f-f6bfb4eb6f44",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Brayflox's Longstop/Aiatar",
			name = "Draws",
			uuid = "cb5e61d0-33bc-1b5e-aa78-3b921f3c6754",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[28660]={[\"name\"]=\"DragonBreath\",[\"kind\"]=\"Rect\",[\"v\"]={30.0,8.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"e707c1ae-6b5f-4074-bc73-2767ab112279",
								true,
							},
							
							{
								"9c209d34-6fa3-83d9-adf6-ce48af01a26e",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "e7b5c746-cc8c-bb1a-a4a9-873f92cb05c4",
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
						localmapid = 1041,
						name = "Duty 1041",
						uuid = "e707c1ae-6b5f-4074-bc73-2767ab112279",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 28660)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "9c209d34-6fa3-83d9-adf6-ce48af01a26e",
						version = 3,
					},
				},
			},
			displayPath = "Brayflox's Longstop/Aiatar/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "f8cdd312-5d13-8af5-a960-e73c660c1b03",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Sunken Temple of Qarn",
			uuid = "62ff9bde-85dc-83fc-b529-05ab1d1ebcf2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn",
			name = "Teratotaur",
			uuid = "ebd3c4b5-84ff-911e-ac9a-52a66c14dfbc",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn/Teratotaur",
			name = "AutoSim",
			uuid = "255d549f-af0c-593a-be93-31b10693775b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1567)\nself.used=true",
						conditions = 
						{
							
							{
								"8fc8de5e-4d9c-854f-8c41-250fd87b65e8",
								true,
							},
							
							{
								"efa755d8-1b9b-105d-94d1-da9f9f36e228",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "9e8129fb-a0ee-1fb6-b6d9-7794706e3d80",
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
						localmapid = 1267,
						name = "Duty 1267",
						uuid = "8fc8de5e-4d9c-854f-8c41-250fd87b65e8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1567 and (eventArgs.spellID == 42231)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "efa755d8-1b9b-105d-94d1-da9f9f36e228",
						version = 3,
					},
				},
			},
			displayPath = "The Sunken Temple of Qarn/Teratotaur/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "75b3e6e4-d1ff-6b87-bf1b-ae2c30ffa2bd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn/Teratotaur",
			name = "Draws",
			uuid = "f2098d31-f132-6d76-b137-83c7616cef00",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[42232]={[\"name\"]=\"Mow\",[\"kind\"]=\"Cone\",[\"v\"]={8.24,120.0}},[42233]={[\"name\"]=\"FrightfulRoar\",[\"kind\"]=\"Circle\",[\"v\"]={6.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"c3898ca4-8f98-8454-b87a-9a05f7acc47e",
								true,
							},
							
							{
								"5174674b-0414-4788-9852-e6ef645e124e",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "b6bafc9e-4445-7f23-b05d-d0c3222c9262",
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
						localmapid = 1267,
						name = "Duty 1267",
						uuid = "c3898ca4-8f98-8454-b87a-9a05f7acc47e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 42232 or eventArgs.aoeID == 42233)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "5174674b-0414-4788-9852-e6ef645e124e",
						version = 3,
					},
				},
			},
			displayPath = "The Sunken Temple of Qarn/Teratotaur/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "0561b741-8ba2-08a2-9c7a-66ac3be4baa9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn",
			name = "Temple Guardian",
			uuid = "8c380aa1-7f8c-4344-b63f-bb3bcf92db87",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn/Temple Guardian",
			name = "AutoSim",
			uuid = "adab3901-04d2-c28a-92b2-192bff0be72e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1569)\nself.used=true",
						conditions = 
						{
							
							{
								"e1f676c2-5a3c-4b4b-bce8-18d957c5566b",
								true,
							},
							
							{
								"6c7723f5-7ab0-a6a6-a99a-93f7fcf5c35a",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "979f3a0f-fb6d-983f-a416-602aca084218",
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
						localmapid = 1267,
						name = "Duty 1267",
						uuid = "e1f676c2-5a3c-4b4b-bce8-18d957c5566b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1569 and (eventArgs.spellID == 42234)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "6c7723f5-7ab0-a6a6-a99a-93f7fcf5c35a",
						version = 3,
					},
				},
			},
			displayPath = "The Sunken Temple of Qarn/Temple Guardian/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "ee95dcc7-1151-8cf3-bc73-b198de445ae5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn/Temple Guardian",
			name = "Draws",
			uuid = "dd9a26e1-235b-5ed5-8eaa-94feac5c5273",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[42234]={[\"name\"]=\"BoulderClap\",[\"kind\"]=\"Cone\",[\"v\"]={14.2,120.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"521770b6-05b7-b532-893a-e2dae0a63b0f",
								true,
							},
							
							{
								"97ceb2f8-580d-071a-bf49-d44ca92214c0",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "920574b4-1f63-de6e-a0c2-24498f2c167f",
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
						localmapid = 1267,
						name = "Duty 1267",
						uuid = "521770b6-05b7-b532-893a-e2dae0a63b0f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 42234)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "97ceb2f8-580d-071a-bf49-d44ca92214c0",
						version = 3,
					},
				},
			},
			displayPath = "The Sunken Temple of Qarn/Temple Guardian/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "2f438c1a-80ac-c17d-9362-b807f6d4cbd5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn",
			name = "Adjudicator",
			uuid = "ac5e2821-750c-3d83-b0d2-f19600754af1",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn/Adjudicator",
			name = "AutoSim",
			uuid = "d7a7b2ad-6ca7-6d83-b500-498aa4167b96",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1570)\nself.used=true",
						conditions = 
						{
							
							{
								"cb495e35-bd53-87d9-8b86-2645ff5830d0",
								true,
							},
							
							{
								"97cd85b3-f9b5-e060-9390-4c2563bbf819",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "810a0798-4094-6570-b0e9-f6e3640be643",
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
						localmapid = 1267,
						name = "Duty 1267",
						uuid = "cb495e35-bd53-87d9-8b86-2645ff5830d0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1570 and (eventArgs.spellID == 42245)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "97cd85b3-f9b5-e060-9390-4c2563bbf819",
						version = 3,
					},
				},
			},
			displayPath = "The Sunken Temple of Qarn/Adjudicator/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "7037a766-62c2-ee3d-b9c4-b75981599614",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Sunken Temple of Qarn/Adjudicator",
			name = "Draws",
			uuid = "be928628-f927-8a93-a949-f53d7237724d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[42248]={[\"name\"]=\"DarkII\",[\"kind\"]=\"Cone\",[\"v\"]={40.0,120.0}},[42244]={[\"name\"]=\"VergeLine\",[\"kind\"]=\"Rect\",[\"v\"]={60.6,4.0}},[42241]={[\"name\"]=\"VergePulse\",[\"kind\"]=\"Rect\",[\"v\"]={60.6,4.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"9b2515ff-8838-d806-a50d-ecfabea7ec42",
								true,
							},
							
							{
								"6fd688ad-468c-e9b7-aa20-17e3bed799a8",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "21e271df-b800-42c8-a17e-729325661d17",
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
						localmapid = 1267,
						name = "Duty 1267",
						uuid = "9b2515ff-8838-d806-a50d-ecfabea7ec42",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 42248 or eventArgs.aoeID == 42244 or eventArgs.aoeID == 42241)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "6fd688ad-468c-e9b7-aa20-17e3bed799a8",
						version = 3,
					},
				},
			},
			displayPath = "The Sunken Temple of Qarn/Adjudicator/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "9b50a239-2050-4d4d-82a5-9865b053c566",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Stone Vigil",
			uuid = "9f70d53b-f056-b0e3-86c4-3fd21077e71b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Stone Vigil",
			name = "Chudo-Yudo",
			uuid = "23a8e8a5-3e50-ed73-b359-1d04d2e77fe8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Stone Vigil/Chudo-Yudo",
			name = "AutoSim",
			uuid = "6379cf22-28fd-5272-9227-55b29c4e64be",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1677)\nself.used=true",
						conditions = 
						{
							
							{
								"856b2472-a87e-59e9-9bc6-87ebe9168bd1",
								true,
							},
							
							{
								"49f268ff-9d45-1143-b3ba-432d2657483c",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "d8a0ec05-9b24-10ac-b252-afa9d6603f75",
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
						localmapid = 1042,
						name = "Duty 1042",
						uuid = "856b2472-a87e-59e9-9bc6-87ebe9168bd1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1677 and (eventArgs.spellID == 902)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "49f268ff-9d45-1143-b3ba-432d2657483c",
						version = 3,
					},
				},
			},
			displayPath = "The Stone Vigil/Chudo-Yudo/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "85b53d39-c71e-58bc-857c-4f515d6411e3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Stone Vigil/Chudo-Yudo",
			name = "Draws",
			uuid = "11bd61de-66b2-c7d5-92f7-8dfc6b01ef8c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[902]={[\"name\"]=\"LionsBreath\",[\"kind\"]=\"Cone\",[\"v\"]={10.25,120.0}},[903]={[\"name\"]=\"Swinge\",[\"kind\"]=\"Cone\",[\"v\"]={40.0,60.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"f3a4bfb7-3afc-1013-98a3-5a44fa2e4b89",
								true,
							},
							
							{
								"65bd1879-af23-930e-89aa-b101b8eb3f09",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "653184aa-138e-08cc-bdfa-4e5ff07f53b3",
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
						localmapid = 1042,
						name = "Duty 1042",
						uuid = "f3a4bfb7-3afc-1013-98a3-5a44fa2e4b89",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 902 or eventArgs.aoeID == 903)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "65bd1879-af23-930e-89aa-b101b8eb3f09",
						version = 3,
					},
				},
			},
			displayPath = "The Stone Vigil/Chudo-Yudo/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "58588a2a-770c-5f08-a096-d814a5065e38",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Stone Vigil",
			name = "Koshchei",
			uuid = "cb852801-9c21-d8d2-a190-e76eee97a374",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Stone Vigil/Koshchei",
			name = "AutoSim",
			uuid = "43129a9d-46d6-eefa-bb71-723dad7b616c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1678)\nself.used=true",
						conditions = 
						{
							
							{
								"da88e4bb-a54a-4f64-8f33-3873770df372",
								true,
							},
							
							{
								"2081b52a-3115-9f41-b691-b7161f31b31f",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "4aff9312-20b8-30a3-9c14-3b221ae7e5fb",
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
						localmapid = 1042,
						name = "Duty 1042",
						uuid = "da88e4bb-a54a-4f64-8f33-3873770df372",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1678 and (eventArgs.spellID == 28732)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "2081b52a-3115-9f41-b691-b7161f31b31f",
						version = 3,
					},
				},
			},
			displayPath = "The Stone Vigil/Koshchei/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "a8111632-e220-78b8-9f78-a774c54dff28",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Stone Vigil",
			name = "Isgebind",
			uuid = "2c1df07b-87fc-a6f6-ad62-c6e7e9410697",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Stone Vigil/Isgebind",
			name = "AutoSim",
			uuid = "9e6578e4-2218-c6bd-82e6-b2747378792b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1680)\nself.used=true",
						conditions = 
						{
							
							{
								"b642b9bf-f20d-bf7b-8996-b028a95f10ba",
								true,
							},
							
							{
								"bc15a725-170f-27ed-a6b0-e298613f1e66",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "c180e0b8-b05f-3d53-862f-fddb34a4fd82",
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
						localmapid = 1042,
						name = "Duty 1042",
						uuid = "b642b9bf-f20d-bf7b-8996-b028a95f10ba",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1680 and (eventArgs.spellID == 1025)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "bc15a725-170f-27ed-a6b0-e298613f1e66",
						version = 3,
					},
				},
			},
			displayPath = "The Stone Vigil/Isgebind/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "bd94e588-a655-8d3e-b443-c62da8a3589e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Stone Vigil/Isgebind",
			name = "Draws",
			uuid = "0b05e0f7-22e9-d7c1-a0c8-a6e83e332ba1",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[1026]={[\"name\"]=\"Cauterize\",[\"kind\"]=\"Rect\",[\"v\"]={48.0,20.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"b1520dc8-94f2-b444-8618-476176a57174",
								true,
							},
							
							{
								"38f15d2e-2468-2aa5-a260-0880a647784e",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "45c4f66b-81c0-fb2d-b3b9-3edea9afeb16",
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
						localmapid = 1042,
						name = "Duty 1042",
						uuid = "b1520dc8-94f2-b444-8618-476176a57174",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 1026)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "38f15d2e-2468-2aa5-a260-0880a647784e",
						version = 3,
					},
				},
			},
			displayPath = "The Stone Vigil/Isgebind/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "e7a3d276-062b-9ce2-8d53-084f2dde404a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Dzemael Darkhold",
			uuid = "8b49af1a-d6a3-e23a-9235-1782b205e3b3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold",
			name = "All-seeing Eye",
			uuid = "04e16780-8b1d-5767-bf69-0790bdd6be97",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold/All-seeing Eye",
			name = "AutoSim",
			uuid = "f194fcd0-586c-d6f5-bb51-7b59f1840774",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1397)\nself.used=true",
						conditions = 
						{
							
							{
								"2da4f621-219c-1ed3-b14f-c018bb07c56d",
								true,
							},
							
							{
								"ed2aeab7-3642-1518-bd2c-a4310e758aba",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "bdbe8066-fa52-fedc-9581-146f2eac6790",
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
						localmapid = 1330,
						name = "Duty 1330",
						uuid = "2da4f621-219c-1ed3-b14f-c018bb07c56d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1397 and (eventArgs.spellID == 45570)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "ed2aeab7-3642-1518-bd2c-a4310e758aba",
						version = 3,
					},
				},
			},
			displayPath = "Dzemael Darkhold/All-seeing Eye/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "854a61c7-0eaa-6b73-98fb-caf97ba50523",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold/All-seeing Eye",
			name = "Draws",
			uuid = "d3e3be27-0fe4-020c-826f-0180fda6dd84",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[45570]={[\"name\"]=\"BlusteringBlink\",[\"kind\"]=\"Rect\",[\"v\"]={55.0,10.0}}})\nself.used=true",
						conditions = 
						{
							
							{
								"4580ec6b-4762-b46c-9d4a-5fc970eb439a",
								true,
							},
							
							{
								"e8c0bf4e-e7b3-57bb-b9e5-ec8d1ed0bc1a",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "b1db637e-b14b-ce8f-8008-2e9e4521fd66",
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
						localmapid = 1330,
						name = "Duty 1330",
						uuid = "4580ec6b-4762-b46c-9d4a-5fc970eb439a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 45570)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "e8c0bf4e-e7b3-57bb-b9e5-ec8d1ed0bc1a",
						version = 3,
					},
				},
			},
			displayPath = "Dzemael Darkhold/All-seeing Eye/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "c5fac65a-8a26-fe9b-b844-b2b40884987a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold",
			name = "Taulurd",
			uuid = "0b07e660-883a-f5ef-b022-5c7f35b2fab1",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold/Taulurd",
			name = "AutoSim",
			uuid = "acc3d331-9b6a-5287-8f4d-4fcaeae171a6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1415)\nself.used=true",
						conditions = 
						{
							
							{
								"99b46204-8d28-efb4-a1fa-2097b67943fd",
								true,
							},
							
							{
								"fc039ae4-06c7-2c9c-8024-fcbcfca53eb7",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "7a4047af-8d04-f339-b0f0-8bd447391f07",
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
						localmapid = 1330,
						name = "Duty 1330",
						uuid = "99b46204-8d28-efb4-a1fa-2097b67943fd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1415 and (eventArgs.spellID == 45572)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "fc039ae4-06c7-2c9c-8024-fcbcfca53eb7",
						version = 3,
					},
				},
			},
			displayPath = "Dzemael Darkhold/Taulurd/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "afb1e87a-c25b-88d1-912d-eda3d26c55fa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold/Taulurd",
			name = "Draws",
			uuid = "a8c62a4c-942f-77ae-ae39-9ad49b670462",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[45572]={[\"name\"]=\"ElbowDrop\",[\"kind\"]=\"Cone\",[\"v\"]={8.0,120.0}},[45575]={[\"name\"]=\"Firewater\",[\"kind\"]=\"Circle\",[\"v\"]={5.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"aaec1b79-e818-b813-8021-99d004226a06",
								true,
							},
							
							{
								"d3145fa3-0d9b-483d-8ac5-710b1930153f",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "074e3c31-a99d-ee94-ab1c-408afa23fc40",
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
						localmapid = 1330,
						name = "Duty 1330",
						uuid = "aaec1b79-e818-b813-8021-99d004226a06",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 45572 or eventArgs.aoeID == 45575)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "d3145fa3-0d9b-483d-8ac5-710b1930153f",
						version = 3,
					},
				},
			},
			displayPath = "Dzemael Darkhold/Taulurd/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "bd9204b5-b21d-a5e9-8648-fb9e847305da",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold",
			name = "Batraal",
			uuid = "274589d0-2128-e655-90f1-2fcf175fa249",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold/Batraal",
			name = "AutoSim",
			uuid = "d639f9b1-b2be-bde9-9d0b-cf7e50156b07",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1396)\nself.used=true",
						conditions = 
						{
							
							{
								"794cfaa6-9f25-674f-8f06-cd503143e104",
								true,
							},
							
							{
								"2974a5d1-7f3f-e798-b2cf-f77570a76a3c",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "fdea342e-757a-bae0-aa13-3afbae7b7389",
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
						localmapid = 1330,
						name = "Duty 1330",
						uuid = "794cfaa6-9f25-674f-8f06-cd503143e104",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1396 and (eventArgs.spellID == 45579)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "2974a5d1-7f3f-e798-b2cf-f77570a76a3c",
						version = 3,
					},
				},
			},
			displayPath = "Dzemael Darkhold/Batraal/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "800d0985-a954-5827-bf0b-e60c7f705b9b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Dzemael Darkhold/Batraal",
			name = "Draws",
			uuid = "5d11e6a8-f666-07e6-b3cf-7d8516b283bd",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[45582]={[\"name\"]=\"Desolation\",[\"kind\"]=\"Rect\",[\"v\"]={60.0,6.0}},[45579]={[\"name\"]=\"GrimHalo\",[\"kind\"]=\"Circle\",[\"v\"]={12.0},[\"source\"]=\"BossMod AID geometry + native cast\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"5030dee6-63bb-e86b-bab9-cb870d81f26d",
								true,
							},
							
							{
								"715c8c22-a50e-eacc-8f6d-f014aca01a6a",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "0fd6403a-7557-bd01-bc45-e4f9ccd31c5f",
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
						localmapid = 1330,
						name = "Duty 1330",
						uuid = "5030dee6-63bb-e86b-bab9-cb870d81f26d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 45582 or eventArgs.aoeID == 45579)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "715c8c22-a50e-eacc-8f6d-f014aca01a6a",
						version = 3,
					},
				},
			},
			displayPath = "Dzemael Darkhold/Batraal/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "085e4edb-1631-bf5d-af7f-35ffe0d35a35",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Cutter's Cry",
			uuid = "91184063-7393-4f99-816a-a3ba0c168143",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Cutter's Cry",
			name = "Myrmidon Princess",
			uuid = "e9d4d289-6d2b-9772-b2d5-0fa7ca2b2886",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Cutter's Cry/Myrmidon Princess",
			name = "AutoSim",
			uuid = "e80d880c-35ff-1f9a-94a5-f73735805f52",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1585)\nself.used=true",
						conditions = 
						{
							
							{
								"f29b177d-a502-d315-a7b4-9dac79950b09",
								true,
							},
							
							{
								"0c991e1b-2250-0a36-9d6a-bdb14e254d09",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "dbcc24b3-3ec3-3e87-ba07-bd322b2d7785",
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
						localmapid = 1303,
						name = "Duty 1303",
						uuid = "f29b177d-a502-d315-a7b4-9dac79950b09",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1585 and (eventArgs.spellID == 44226)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "0c991e1b-2250-0a36-9d6a-bdb14e254d09",
						version = 3,
					},
				},
			},
			displayPath = "Cutter's Cry/Myrmidon Princess/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "5baa6e60-7578-7834-b3e3-2f77dcb791ec",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Cutter's Cry/Myrmidon Princess",
			name = "Draws",
			uuid = "5a96a1b5-6bd6-e582-97f6-14d46eb2688b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[44227]={[\"kind\"]=\"Circle\",[\"v\"]={5},[\"name\"]=\"44227\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[44229]={[\"kind\"]=\"Cone\",[\"v\"]={9,90},[\"name\"]=\"44229\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"79bd7832-39ba-3488-9974-361a4bb365cf",
								true,
							},
							
							{
								"5d3b2125-f37d-0e0d-a045-5928a73ca67a",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "5a94418e-fca7-b2b5-bec5-3936a948c70a",
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
						localmapid = 1303,
						name = "Duty 1303",
						uuid = "79bd7832-39ba-3488-9974-361a4bb365cf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 44227 or eventArgs.aoeID == 44229)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "5d3b2125-f37d-0e0d-a045-5928a73ca67a",
						version = 3,
					},
				},
			},
			displayPath = "Cutter's Cry/Myrmidon Princess/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "e12ff481-4f0a-8527-8a0b-f2f3c795f455",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Cutter's Cry",
			name = "Chimera",
			uuid = "7768b260-f1e6-01f1-96e6-7c475dad718f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Cutter's Cry/Chimera",
			name = "AutoSim",
			uuid = "598e837c-4626-95e9-a249-b4222233ebd8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1590)\nself.used=true",
						conditions = 
						{
							
							{
								"fe2c7d0a-b56b-df17-8361-24dcca59491a",
								true,
							},
							
							{
								"08920ec0-3a7e-3948-b4af-b8e37ebf9a3d",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "b092ce4c-7166-071e-a8d0-51207f62bd86",
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
						localmapid = 1303,
						name = "Duty 1303",
						uuid = "fe2c7d0a-b56b-df17-8361-24dcca59491a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1590 and (eventArgs.spellID == 44243)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "08920ec0-3a7e-3948-b4af-b8e37ebf9a3d",
						version = 3,
					},
				},
			},
			displayPath = "Cutter's Cry/Chimera/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "9963730b-4ebe-b642-a716-1d8890d1d0ce",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Cutter's Cry/Chimera",
			name = "Draws",
			uuid = "c20e7149-5253-31ea-94bf-258242d87ab1",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[44237]={[\"kind\"]=\"Circle\",[\"v\"]={9.7},[\"name\"]=\"44237\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[44238]={[\"kind\"]=\"Donut\",[\"v\"]={8,30},[\"name\"]=\"44238\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[44242]={[\"kind\"]=\"Cone\",[\"v\"]={9.7,120},[\"name\"]=\"44242\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[44243]={[\"kind\"]=\"Cone\",[\"v\"]={9.7,120},[\"name\"]=\"44243\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[44245]={[\"kind\"]=\"Circle\",[\"v\"]={5},[\"name\"]=\"44245\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"ed5fdd81-70ef-06b5-a47d-03b74ecafd90",
								true,
							},
							
							{
								"ce69d6c7-5bb5-1819-a7a1-877233fdddbc",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "5cadd12b-1b8c-45db-8241-8294d474ca82",
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
						localmapid = 1303,
						name = "Duty 1303",
						uuid = "ed5fdd81-70ef-06b5-a47d-03b74ecafd90",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 44237 or eventArgs.aoeID == 44238 or eventArgs.aoeID == 44242 or eventArgs.aoeID == 44243 or eventArgs.aoeID == 44245)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "ce69d6c7-5bb5-1819-a7a1-877233fdddbc",
						version = 3,
					},
				},
			},
			displayPath = "Cutter's Cry/Chimera/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "ceca10b1-df8d-5798-ac6f-46ebf28e1d09",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Aurum Vale",
			uuid = "abfcbc33-4733-3922-96a6-d9246cb1ab05",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale",
			name = "Locksmith",
			uuid = "cd7ed25b-8424-09e3-a61e-735c2b77a918",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale/Locksmith",
			name = "Draws",
			uuid = "82fc2a08-7b99-db18-b5fd-f7a832d10781",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[45741]={[\"kind\"]=\"Circle\",[\"v\"]={8},[\"name\"]=\"45741\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"129cfc09-f272-76ed-baf5-b245c9ecd9c7",
								true,
							},
							
							{
								"b348297d-cd1c-17e3-852a-1a2c1e6cd86b",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "50d66ea5-2d2c-d61d-a30b-b3f4d68328ac",
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
						localmapid = 1331,
						name = "Duty 1331",
						uuid = "129cfc09-f272-76ed-baf5-b245c9ecd9c7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 45741)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "b348297d-cd1c-17e3-852a-1a2c1e6cd86b",
						version = 3,
					},
				},
			},
			displayPath = "The Aurum Vale/Locksmith/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "02c0942c-d6f2-adf7-b262-aa4f4726f625",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale/Locksmith",
			name = "AutoSim",
			uuid = "ae494268-635a-3612-bd1a-595385dfa5ac",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1534)\nself.used=true",
						conditions = 
						{
							
							{
								"ce82cac9-aaef-4db1-a31e-a76873ff10ac",
								true,
							},
							
							{
								"19bdc6b3-21a6-7841-bfe8-b5adb8191a85",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "70033ae4-3307-7cd8-9f04-6b919c68de98",
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
						localmapid = 1331,
						name = "Duty 1331",
						uuid = "ce82cac9-aaef-4db1-a31e-a76873ff10ac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1534 and (eventArgs.spellID == 45742)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "19bdc6b3-21a6-7841-bfe8-b5adb8191a85",
						version = 3,
					},
				},
			},
			displayPath = "The Aurum Vale/Locksmith/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "2689e2e7-85aa-adbf-8481-cfd640acdd5f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale",
			name = "Coincounter",
			uuid = "3a32c52b-12eb-7103-99db-18616b6f8b41",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale/Coincounter",
			name = "Draws",
			uuid = "714738ae-7f4f-4c61-a5fb-4bb0ef30d198",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[45743]={[\"kind\"]=\"Rect\",[\"v\"]={21,7},[\"name\"]=\"45743\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[45744]={[\"kind\"]=\"Cone\",[\"v\"]={10,120},[\"name\"]=\"45744\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[45745]={[\"kind\"]=\"Cone\",[\"v\"]={10,120},[\"name\"]=\"45745\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[45746]={[\"kind\"]=\"Circle\",[\"v\"]={12},[\"name\"]=\"45746\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"},[45747]={[\"kind\"]=\"DonutCone\",[\"v\"]={8,19,270},[\"name\"]=\"45747\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"9c1078c5-05da-6d67-93cc-2a51fc26ec67",
								true,
							},
							
							{
								"4f7fefb2-80a1-57b4-8fdc-a6979993dc10",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "26596c6a-5f2c-0726-b123-e3a9acf7b40f",
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
						localmapid = 1331,
						name = "Duty 1331",
						uuid = "9c1078c5-05da-6d67-93cc-2a51fc26ec67",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 45743 or eventArgs.aoeID == 45744 or eventArgs.aoeID == 45745 or eventArgs.aoeID == 45746 or eventArgs.aoeID == 45747)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "4f7fefb2-80a1-57b4-8fdc-a6979993dc10",
						version = 3,
					},
				},
			},
			displayPath = "The Aurum Vale/Coincounter/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "38817cc8-5354-f9ea-8615-ee6eab2835cb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale/Coincounter",
			name = "AutoSim",
			uuid = "21c57a0c-e56c-5f4f-995d-a65764e477ab",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1533)\nself.used=true",
						conditions = 
						{
							
							{
								"fd03a52b-b917-191b-9410-8a00fa909ba9",
								true,
							},
							
							{
								"3238b03f-421e-559c-8249-c72d5e79b4de",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "c0747c31-fdcf-36e2-b191-548e58af1cbe",
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
						localmapid = 1331,
						name = "Duty 1331",
						uuid = "fd03a52b-b917-191b-9410-8a00fa909ba9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1533 and (eventArgs.spellID == 45745)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "3238b03f-421e-559c-8249-c72d5e79b4de",
						version = 3,
					},
				},
			},
			displayPath = "The Aurum Vale/Coincounter/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "4d90ad85-b11f-b650-bff1-856e31888e79",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale",
			name = "Miser's Mistress",
			uuid = "7018533b-c81f-de29-930a-02c43aec4bf4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale/Miser's Mistress",
			name = "AutoSim",
			uuid = "a9662730-0525-b946-a516-4182ac539480",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.boss(eventArgs,1532)\nself.used=true",
						conditions = 
						{
							
							{
								"425f2ee0-1cd7-11a3-ace7-b5359ac2032c",
								true,
							},
							
							{
								"3ba8bbd1-6ef0-d18c-b238-6d083aef03d4",
								true,
							},
						},
						name = "Boss forecast and initial target",
						uuid = "9366fbdc-652c-c908-86d6-08581241e6b1",
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
						localmapid = 1331,
						name = "Duty 1331",
						uuid = "425f2ee0-1cd7-11a3-ace7-b5359ac2032c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and eventArgs.entityContentID == 1532 and (eventArgs.spellID == 45997)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "3ba8bbd1-6ef0-d18c-b238-6d083aef03d4",
						version = 3,
					},
				},
			},
			displayPath = "The Aurum Vale/Miser's Mistress/AutoSim",
			eventType = 3,
			name = "Boss forecast and initial target",
			uuid = "6a03fd2b-8996-8701-b7e4-2f7978ce9be5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aurum Vale/Miser's Mistress",
			name = "Draws",
			uuid = "dd6f5954-283d-e8ae-a5ba-5702ffb488ee",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "LevellingDungeons.draw(eventArgs,{[45996]={[\"kind\"]=\"Cone\",[\"v\"]={15.85,120},[\"name\"]=\"45996\",[\"source\"]=\"BossmodReborn matched reworked dungeon\"}})\nself.used=true",
						conditions = 
						{
							
							{
								"3076cdbd-e536-70d0-8580-ed3b731ce35b",
								true,
							},
							
							{
								"e5a7cedd-e878-7289-a7a1-dda79c04c0ea",
								true,
							},
						},
						name = "Incoming attacks",
						uuid = "85e1f906-6e7c-a021-80ae-618ad6026036",
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
						localmapid = 1331,
						name = "Duty 1331",
						uuid = "3076cdbd-e536-70d0-8580-ed3b731ce35b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return LevellingDungeons ~= nil and LevellingDungeons.settings.draws and (eventArgs.aoeID == 45996)",
						dequeueIfLuaFalse = true,
						name = "Relevant mechanic",
						uuid = "e5a7cedd-e878-7289-a7a1-dda79c04c0ea",
						version = 3,
					},
				},
			},
			displayPath = "The Aurum Vale/Miser's Mistress/Draws",
			eventType = 18,
			name = "Incoming attacks",
			uuid = "a272e10a-a0d6-120c-87de-5489eb71e93f",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "1fc55a32-d594-f723-a4f9-56f7f8c2cd2b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- DSR LPDU personal guidance. Sources and deferred mechanics: DSR-LPDU-DRAWS-TODO.md.\n-- DSR preferences use an independent FileLoad/FileSave store.\nlocal dsrStore=_G.LPDU_DSR_SettingsStore\nif not dsrStore or not dsrStore.meteorTowerSideV1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[DSR-LPDU.lua]]\n local defaults={debugLabels=false,enabled=true,tts=true,role=0,group=0,enumCCW=0,akh=0,invuln=0,circleSide=0,vowMelee=0,towerTimers=true,aoeTimers=true,lockGaze=true,p1Knockback=true,meteorAxis=0,meteorSwap=0,meteorRoute=0,meteorTowerSide=1,p2Knockback=true,strengthBait=0,p3Tethers=0,p4DiveIndicators=true,p4RegroupSouth=false,p5Gaze=true,p5Baits=true,p6Middle=0,sanctityFloor=true,sanctityFlex=true,icePartner=true,strengthOptions=true,blueJumpArrow=false,congaConfigured=false,congaOrder='M1 T1 H1 T2 M2 R2 H2 R1',p4TankEye45=false,p6WingsNorth=0,p6WB1Chosen=false,p6DragonHP=true,brightwingTimer=false,diveLockFace=false}\n defaults.show=true\n local O=gDSRLPDUOptions\n if not O then\n  O={}\n  if FileExists(path) then local saved=FileLoad(path);if type(saved)==\"table\" then O=saved end end\n end\n O.east=nil;O.p3Preset=nil\n for key,value in pairs(defaults) do\n  local v=O[key]\n  if type(v)~=type(value) or (type(v)==\"number\" and (v~=v or v<0 or v>=math.huge or v%1~=0)) then O[key]=value end\n end\n dsrStore={values=O,meteorTowerSideV1=true,sanctityV1=true,p3PresetV1=true,icePartnerV1=true,strengthOptionsV1=true,eyes45V1=true,p67LPDUV1=true,wb1ChoiceV1=true,dragonHPV1=true,p3EastOnlyV1=true,blueJumpArrowV1=true,congaSlotsV1=true}\n if O.meteorTowerSide~=0 and O.meteorTowerSide~=1 then O.meteorTowerSide=1 end\n local keys={};for key in pairs(defaults) do keys[#keys+1]=key end;table.sort(keys)\n function dsrStore.save()\n  local values,parts={},{}\n  for _,key in ipairs(keys) do values[key]=O[key];parts[#parts+1]=key..\":\"..tostring(O[key]) end\n  local signature=table.concat(parts,\";\")\n  if signature==dsrStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);dsrStore.saved=signature\n end\n function dsrStore.congaOrder()\n  local order,seen={},{}\n  for slot in O.congaOrder:gmatch('%S+')do\n   if not slot:match('^[THMR][12]$') or seen[slot]then return nil end\n   seen[slot]=true;order[#order+1]=slot\n  end\n  if #order==8 then return order end\n end\n if not dsrStore.congaOrder()then O.congaOrder=defaults.congaOrder end\n gDSRLPDUOptions=O;_G.LPDU_DSR_SettingsStore=dsrStore\n dsrStore.save()\nend\nif data.dsrLPDU and data.dsrLPDU.version==14 and data.dsrLPDU.revision==96 then self.used=true return end\n-- Apply solver revisions between pulls so a replay in progress keeps its captured state.\nif data.dsrLPDU and (TensorReactions_CurrentCombatTimer or 0)>0 then self.used=true return end\nlocal S={version=14,revision=96,guides={},danger={},calls={},actorIDs={},markers={},towers={},jumps={},jumpHits=0,towerHits=0}\ndata.dsrLPDU=S\nlocal O=gDSRLPDUOptions\nfunction S.releaseGaze()\n if S.gazeLocked then\n  TensorCore.API.TensorACR.toggleLockFace(false)\n  TensorCore.API.TensorACR.setHardLockFace(false)\n  S.gazeLocked=nil\n end\nend\nfunction S.releaseDiveFacing()\n if not S.diveFacingLock then return end\n local acr=TensorCore.API.TensorACR\n acr.toggleLockFace(false)\n acr.setHardLockFace(false)\n S.diveFacingLock=nil\n TensorCore.timelineLogToFile(\"[DSR Dive] LockFace released\\n\")\nend\nlocal slots={'T1','T2','H1','H2','M1','M2','R1','R2'}\nlocal function pos(x,z,y)return {x=x,y=y or 0,z=z}end\nlocal function dist(a,b)return math.sqrt((a.x-b.x)^2+(a.z-b.z)^2)end\nlocal function polar(c,h,r)return pos(c.x+math.sin(h)*r,c.z+math.cos(h)*r,c.y)end\nlocal function ent(id)return id and TensorCore.mGetEntity(id)end\nlocal function player()return TensorCore.mGetPlayer()end\nlocal function actors(cid)\n local out={};local seen={}\n local cached=ent(S.actorIDs[cid])\n if cached and cached.contentid==cid then out[#out+1]=cached;seen[cached.id]=true end\n for _,e in pairs(TensorCore.getEntityGroupList('ContentID',{contentid=cid})or{})do\n  if not seen[e.id]then out[#out+1]=e;seen[e.id]=true end\n end\n return out\nend\nfunction S.actorAdded(a)\n local cid=a.entityContentID\n if cid==4385 then S.sanctityOrb(a.entityID,false);return end\n if cid==4954 then\n  if not S.p6 or Now()>S.p6.expires then S.p6={at=Now(),expires=Now()+240000,breaths=0}end\n  S.actorIDs[cid]=a.entityID\n end\n if cid==3459 and S.p6 and S.p6.wroth then local e=ent(a.entityID);if e then local w=S.p6.wroth;w.spawned=w.spawned or{};w.spawned[#w.spawned+1]=pos(e.pos.x,e.pos.z,e.pos.y)end end\n if cid==4386 and S.death then\n  local e=ent(a.entityID);if e then\n   S.death.meteors=S.death.meteors or{};S.death.meteors[e.id]={p=pos(e.pos.x,e.pos.z,e.pos.y),expires=Now()+14700}\n   if O.aoeTimers~=false then AnyoneCore.addWorldTextCountdown(14700,pos(e.pos.x,e.pos.z,e.pos.y+2),0xFFFFFFFF,true,1.5)end\n  end\n end\n if cid==4130 then\n  S.eyes={at=Now(),expires=Now()+130000,orbsDone={},batches={},positions={}}\n elseif cid==1455 and S.rewind then S.rewind.healer=a.entityID end\n if cid==11317 or cid==11318 then S.actorIDs[cid]=a.entityID end\n if cid==3633 or cid==3634 or cid==3635 or cid==3636 or cid==3637 or cid==3638 or cid==3639 then\n  local old=ent(S.actorIDs[cid]);if not old or not old.alive then S.actorIDs[cid]=a.entityID end\n end\nend\nfunction S.cacheActors()\n local now=Now();if S.actorScanAt and now-S.actorScanAt<100 then return end;S.actorScanAt=now\n local candidates={};local duplicate={}\n -- Verified Minion dev.lua API. Called only during mechanic setup, never per frame.\n for _,v in pairs(EntityList('')or{})do\n  local e=EntityList:Get(v.id)\n  if e and e.alive and(e.contentid==3633 or e.contentid==3634 or e.contentid==3635 or e.contentid==3636 or e.contentid==3637 or e.contentid==3638 or e.contentid==3639)then\n   local cid=e.contentid\n   if candidates[cid]then duplicate[cid]=true else candidates[cid]=e.id end\n  end\n end\n for cid,id in pairs(candidates)do\n  local old=ent(S.actorIDs[cid]);if not duplicate[cid]and(not old or not old.alive)then S.actorIDs[cid]=id end\n end\nend\n\nlocal function role()\n if O.role>0 then return slots[O.role]end\n local R=AnyoneCore.Roster\n if R and R.current()then return R.mySlot()end\nend\nlocal function idOf(slot)\n local R=AnyoneCore.Roster\n if R and R.current()then return R.idOf(slot)end\n if slot==role()then local p=player();return p and p.id end\nend\nlocal function group()\n if O.group>0 then return O.group end\n local r=role();return r and (r:sub(2)=='1'and 1 or 2)\nend\nlocal function tank()local r=role();return r and r:sub(1,1)=='T'end\nlocal function support()local r=role();return r and (r:sub(1,1)=='T'or r:sub(1,1)=='H')end\nlocal function say(key,text,ms)\n if not O.enabled then return end\n local now=Now()\n if S.calls[key]and now-S.calls[key]<1200 then return end\n S.calls[key]=now;TensorCore.addAlertText(ms or 3000,text,1,2,O.tts)\nend\nlocal psColors={[281]=0xCC4444FF,[282]=0xCC66EE44,[283]=0xCCEE55DD,[284]=0xCCFFAA44}\nlocal function guide(key,p,untilAt,text,priority,radius,hit)\n local old=S.guides[key]\n S.guides[key]={p=p,expires=untilAt,text=text,priority=priority or 1,radius=radius or 1,hit=hit,said=old and old.text==text and old.said}\nend\nlocal party\nlocal function claimStrengthTowers()\n S.strengthOptions=nil\n\n local towers={};for _,v in pairs(S.towers)do if v.kind=='strength'and Now()<v.expires then towers[#towers+1]=v end end\n if #towers~=6 then return end\n local players={};for _,e in ipairs(party())do if e.alive and e.job~=19 and e.job~=21 and e.job~=32 and e.job~=37 then players[#players+1]=e end end\n if #players~=6 then return end\n local st=S.strengthState;local claims,counts={},{}\n for _,e in ipairs(players)do\n  if not(st and st.marks[e.id])or S.strengthLeap then\n   local best,second,index=math.huge,math.huge,nil\n   for i,t in ipairs(towers)do local d=dist(e.pos,t.p);if d<best then second=best;best=d;index=i elseif d<second then second=d end end\n   if best<=8 and second-best>=2 then claims[e.id]=index;counts[index]=(counts[index]or 0)+1 end\n  end\n end\n local p=player();local i=p and claims[p.id]\n if O.strengthOptions~=false and p and p.job~=19 and p.job~=21 and p.job~=32 and p.job~=37 and st and not st.marks[p.id]then\n  local h=st.h\n  if h then\n   local ranked={};for _,t in ipairs(towers)do ranked[#ranked+1]={tower=t,score=(t.p.x-100)*math.sin(h)+(t.p.z-100)*math.cos(h)}end\n   table.sort(ranked,function(a,b)return a.score>b.score end)\n   local side={}\n   if ranked[3].score-ranked[4].score>.5 then\n    local first=st.marks[p.id]and 4 or 1\n    for n=first,first+2 do side[#side+1]=ranked[n].tower end\n   end\n   if #side==3 then\n    st.optionClaims=st.optionClaims or{};local occupied={};local now=Now()\n    for _,e in ipairs(players)do\n     local pick=claims[e.id];local source=pick and counts[pick]==1 and towers[pick].source\n     local old=st.optionClaims[e.id]\n     if not source then st.optionClaims[e.id]=nil\n     else\n      if not old or old.source~=source then old={source=source,since=now};st.optionClaims[e.id]=old end\n      if e.id~=p.id and now-old.since>=250 then occupied[source]=true end\n     end\n    end\n    S.strengthOptions={points={},expires=st.expires}\n    for _,t in ipairs(side)do if not occupied[t.source]then S.strengthOptions.points[#S.strengthOptions.points+1]={p=t.p,expires=t.expires,source=t.source}end end\n   end\n  end\n end\n if i and counts[i]==1 then\n  S.strengthClaim=towers[i]\n else S.strengthClaim=nil;S.strengthChosen=nil;S.strengthAssigned=nil;S.guides.strengthTower=nil end\n if not S.strengthReady or Now()<S.strengthReady then return end\n local v=S.strengthClaim\n if v and Now()<v.expires then\n  guide('strengthTower',v.p,v.expires,'YOUR TOWER',8,3,v.spell);S.strengthChosen=v.source;S.strengthAssigned=true\n  S.guides.strengthTower.said=true\n  if st and not st.towerCountdownCalled and v.expires-Now()<=1000 then\n   say('strengthTowerFinal','YOUR TOWER',1000)\n   st.towerCountdownCalled=true\n  end\n end\nend\nlocal function danger(key,p,r,deadline,hit,kind,angle,hideTimer)\n local old=S.danger[key]\n if not hideTimer and O.aoeTimers~=false and type(p)=='table'and not key:find('towerOther:',1,true)and deadline>Now()and(not old or old.expires~=deadline)then\n  AnyoneCore.addWorldTextCountdown(deadline-Now(),{x=p.x,y=p.y+1,z=p.z},0xFFFFFFFF,true,1.5)\n end\n S.danger[key]={p=p,r=r,expires=deadline,hit=hit,kind=kind or 'circle',angle=angle}\nend\nparty=function()\n local out={};local seen={};local p=player()\n if p then out[1]=p;seen[p.id]=true end\n for _,e in pairs(TensorCore.getEntityGroupList('Party')or {})do if not seen[e.id]then out[#out+1]=e;seen[e.id]=true end end\n return out\nend\nlocal function cleanHits(id,source)\n for k,v in pairs(S.danger)do if v.hit==id and (not v.source or v.source==source)then S.danger[k]=nil end end\n for k,v in pairs(S.guides)do if v.hit==id and(not v.source or v.source==source)then S.guides[k]=nil end end\nend\nlocal function sourcePoint(e)return e and pos(e.pos.x,e.pos.z,e.pos.y)end\nlocal function inOut(key,c,inside,untilAt,text,hit)\n local p=player();if not p or not c then return end\n local d=dist(p.pos,c);local dx,dz=p.pos.x-c.x,p.pos.z-c.z\n if d<.1 then dx=0;dz=1;d=1 end\n local r=inside and 4.5 or 9.5\n guide(key,pos(c.x+dx/d*r,c.z+dz/d*r,c.y),untilAt,text,4,1,hit)\nend\nlocal function quadrant(p)return p.z>100 and(p.x>100 and 3 or 4)or(p.x>100 and 2 or 1)end\n-- Sanctity source geometry: BossMod P2SanctityOfTheWard1, LPDU role-partner swaps.\nlocal function setupSanctity()\n local t=S.sanctity;local R=AnyoneCore.Roster\n if not t or t.ready or not t.markers[50]or not t.markers[51]or not R or not R.current()or not R.isReady()then return end\n local ids,assigned={},{}\n for _,slot in ipairs(slots)do local id=R.idOf(slot);if not id then return end;ids[slot]=id;assigned[id]=slot:sub(2)=='1'and 1 or 2 end\n for _,m in ipairs({50,51})do\n  local id=t.markers[m];local want=m==50 and 1 or 2\n  if not assigned[id]then return end\n  if assigned[id]~=want then\n   local slot;for r,eid in pairs(ids)do if eid==id then slot=r end end\n   local partner=ids[slot:sub(1,1)..(slot:sub(2)=='1'and'2'or'1')]\n   assigned[id],assigned[partner]=assigned[partner],assigned[id]\n  end\n end\n local count=0;for _,g in pairs(assigned)do if g==1 then count=count+1 end end\n if count~=4 or assigned[t.markers[50]]~=1 or assigned[t.markers[51]]~=2 then return end\n local function single(cid)\n  local found\n  for _,e in pairs(actors(cid)or{})do if e.alive then if found then return end;found=e end end\n  return found\n end\n local drk=single(3633);local a=single(3634);local b=single(3635)\n if not drk or not a or not b or dist(drk.pos,pos(100,100))<14 then return end\n local sign\n for _,e in ipairs({a,b})do\n  if math.abs(e.pos.z-100)>1 or math.abs(math.abs(e.pos.x-100)-5)>1 or math.abs(math.sin(e.pos.h))>.1 then return end\n  local cw=(e.pos.x>100)==(math.cos(e.pos.h)>0);local d=cw and -1 or 1\n  if sign and sign~=d then return end;sign=d\n end\n local h=TensorCore.getHeadingToTarget(pos(100,100),drk.pos)\n local east=h<0 and h+math.pi or h;local early=(east<math.pi/2)==(sign<0)\n local spheres={};local function lerp(p,q,f)return pos(p.x+(q.x-p.x)*f,p.z+(q.z-p.z)*f)end\n local p0=sourcePoint(a);local p1=polar(pos(100,100),a.pos.h,21)\n local p2=polar(pos(100,100),a.pos.h+sign*math.pi*112.5/180,21)\n local p3=polar(pos(100,100),a.pos.h+sign*math.pi*225/180,21)\n spheres={p0,lerp(p0,p1,.5),p1,lerp(p1,p2,1/3),lerp(p1,p2,2/3),p2,lerp(p2,p3,1/3),lerp(p2,p3,2/3),p3}\n t.ready=true;t.groups=assigned;t.heading=h;t.sign=sign;t.early=early;t.spheres=spheres;t.hits=0\n local floor={expires=t.expires,charges={},actual={},pending={},resolved={}}\n for _,knight in ipairs({a,b})do\n  local p0=sourcePoint(knight);local p1=polar(pos(100,100),knight.pos.h,21)\n  local p2=polar(pos(100,100),knight.pos.h+sign*math.pi*112.5/180,21)\n  local p3=polar(pos(100,100),knight.pos.h+sign*math.pi*225/180,21)\n  local charge={source=knight.id,nextLane=1,lanes={},orbs={}}\n  local points={p0,p1,p2,p3}\n  for i=1,3 do local x,y=points[i],points[i+1]\n   charge.lanes[i]={a=x,b=y,x=(x.x+y.x)/2,z=(x.z+y.z)/2,length=dist(x,y),h=TensorCore.getHeadingToTarget(x,y)}\n  end\n  for _,q in ipairs({p0,lerp(p0,p1,.5),p1,lerp(p1,p2,1/3),lerp(p1,p2,2/3),p2,lerp(p2,p3,1/3),lerp(p2,p3,2/3),p3})do charge.orbs[#charge.orbs+1]={p=q}end\n  floor.charges[#floor.charges+1]=charge\n end\n S.sanctityFloor=floor\nend\nlocal enumHome={T1=2,T2=4,H1=1,H2=3,M1=1,M2=3,R1=2,R2=4}\nlocal function enumAssign()\n local r=role();if not r then return end\n local by={};local count=0\n for _,v in pairs(S.towers)do if v.kind=='enum'and Now()<v.expires then by[quadrant(v.p)]=v;count=count+1 end end\n if count~=4 then return end\n local home=enumHome[r];local chosen=home\n if (r:sub(1,1)=='T'or r:sub(1,1)=='M')and by[home].n==1 then\n  local first=O.enumCCW==0 and(home%4+1)or((home+2)%4+1)\n  local second=O.enumCCW==0 and((home+2)%4+1)or(home%4+1)\n  if by[first].n>=3 then chosen=first elseif by[second].n>=3 then chosen=second\n  elseif by[(home+1)%4+1].n>=3 then chosen=(home+1)%4+1 else return end\n end\n local v=by[chosen]\n if S.enumChosen~=v.source and O.towerTimers~=false then AnyoneCore.addWorldTextCountdown(v.expires-Now(),{x=v.p.x,y=v.p.y+2,z=v.p.z},0xFFFFFFFF,true,1.5)end\n guide('enum',v.p,v.expires,'YOUR TOWER',7,5,v.spell);S.guides.enum.source=v.source\n S.enumChosen=v.source\nend\nlocal meteorBase={T1=0,R1=0,H2=1,M2=1,T2=2,R2=2,H1=3,M1=3}\nfunction S.updateIcePartner(now,p)\n S.icePartner=nil\n if O.icePartner==false then return end\n local R=AnyoneCore.Roster\n if not R or not R.current()or not R.isReady()then return end\n local m=S.meteors;local quadrants;local expires\n if m then\n  if m.done or m.stormDone or now-m.at>=20000 or not m.quadrants then return end\n  quadrants=m.quadrants;expires=m.at+20000\n elseif S.icePrep and now<S.icePrep.expires then\n  quadrants={};expires=S.icePrep.expires\n  for _,slot in ipairs(slots)do local id=R.idOf(slot);if not id then return end;quadrants[id]=meteorBase[slot]end\n else return end\n local mine=quadrants[p.id];if mine==nil then return end\n local other,count=nil,0\n for id,q in pairs(quadrants)do if q==mine then count=count+1;if id~=p.id then other=id end end end\n if count~=2 or not other then return end\n local partner=ent(other)\n if partner and partner.alive then S.icePartner={id=other,expires=expires}end\nend\n\nlocal function clockAngle(p)return math.atan2(p.x-100,100-p.z)%(2*math.pi)end\nlocal function cardinal(q,r)return polar(pos(100,100),math.pi-q*math.pi/2,r)end\nlocal function meteorAssignments()\n local s=S.meteors;local R=AnyoneCore.Roster\n if not s or s.assignment or not R or not R.current()or not R.isReady()then return end\n local preys={};local bySlot={};local preySupport\n for _,slot in ipairs(slots)do\n  local id=R.idOf(slot);if not id then return end\n  bySlot[slot]=id\n  if s.prey[id]then preys[#preys+1]=slot;preySupport=slot:sub(1,1)=='T'or slot:sub(1,1)=='H'end\n end\n if #preys~=2 then return end\n for _,slot in ipairs(preys)do if (slot:sub(1,1)=='T'or slot:sub(1,1)=='H')~=preySupport then return end end\n local qRole={};local qOther={};local assignedQ={}\n for slot,id in pairs(bySlot)do\n  local q=meteorBase[slot];assignedQ[id]=q\n  if (slot:sub(1,1)=='T'or slot:sub(1,1)=='H')==preySupport then qRole[q]=id else qOther[q]=id end\n end\n local target=O.meteorAxis==1 and 1 or 0\n local a,b=target,target+2\n local function swap(q1,q2)qRole[q1],qRole[q2]=qRole[q2],qRole[q1]end\n if not s.prey[qRole[a]]and not s.prey[qRole[b]]then\n  local before={};for q=0,3 do before[q]=qRole[q]end\n  for q=0,3 do qRole[(q+(O.meteorSwap==1 and 3 or 1))%4]=before[q]end\n elseif not s.prey[qRole[a]]or not s.prey[qRole[b]]then\n  local empty=not s.prey[qRole[a]]and a or b\n  for q=0,3 do if q~=a and q~=b and s.prey[qRole[q]]then swap(empty,q);break end end\n end\n for q,id in pairs(qRole)do assignedQ[id]=q end\n s.quadrants=assignedQ\n local outer={};local inner={};local total=0\n for _,v in pairs(s.first)do\n  total=total+1\n  if dist(v.p,pos(100,100))>=7 then local q=math.floor(clockAngle(v.p)/(math.pi/2)+.5)%4;outer[q]=outer[q]or{};outer[q][#outer[q]+1]=v\n  else local q=math.floor(clockAngle(v.p)/(math.pi/2))%4;inner[q]=v end\n end\n if total~=8 then return end\n for q=0,3 do if not outer[q]or #outer[q]>2 then return end\n  table.sort(outer[q],function(x,y)return ((clockAngle(x.p)-q*math.pi/2+math.pi)%(2*math.pi)-math.pi)<((clockAngle(y.p)-q*math.pi/2+math.pi)%(2*math.pi)-math.pi)end)\n end\n local ia,ib,best=1,1,-1\n for i,x in ipairs(outer[a])do for j,y in ipairs(outer[b])do\n  local sideBias=O.meteorTowerSide==1 and -(i+j)or(i+j)\n  local score=dist(x.p,y.p)+sideBias*.0001\n  if score>best then best=score;ia=i;ib=j end\n end end\n local assignment={};local nextIndex={};local need={}\n for q=0,3 do\n  local list=outer[q];local pick=q==a and ia or q==b and ib or #list\n  assignment[qRole[q]]=list[pick]\n  if #list==2 then assignment[qOther[q]]=list[pick==1 and 2 or 1]else need[q]=qOther[q]end\n  nextIndex[qRole[q]]=(q+(s.prey[qRole[q]]and 2 or 0))%4*2\n  nextIndex[qOther[q]]=(q*2+1)%8\n end\n -- BossMod's LPDU CW fill: first claim nearby CW inner towers, then extend outward.\n for distance=0,3 do for q=0,3 do local id=need[q];local t=inner[(q+distance)%4]\n  if id and not assignment[id]and t and not t.claimed then assignment[id]=t;t.claimed=true end\n end end\n for _,id in pairs(bySlot)do if not assignment[id]then return end end\n s.assignment=assignment;s.quadrants=assignedQ;s.nextIndex=nextIndex;s.preySupport=preySupport\nend\nlocal function akhAssign()\n local r=role();local g=group();if not r or not g then return end\n local list={};for _,v in pairs(S.towers)do if v.kind=='akh'and Now()<v.expires then list[#list+1]=v end end\n if #list~=3 or not S.akhBoss then return end\n local b=ent(S.akhBoss);if not b then return end\n local h=S.akhHeading\n local normal={};local rear\n for _,v in ipairs(list)do if v.spell==29454 then rear=v else normal[#normal+1]=v end end\n  if not rear or #normal~=2 then return end\n local function side(v)return(v.p.x-b.pos.x)*math.cos(h)-(v.p.z-b.pos.z)*math.sin(h)end\n table.sort(normal,function(a,b)return side(a)>side(b)end)\n local mode=O.akh==1 or(O.akh==2 and(S.akhWave or 1)>1)\n local v\n if mode then\n  if tank()then v=(r==(O.invuln==0 and 'T1'or'T2'))and rear or normal[2]else v=normal[1]end\n else v=tank()and rear or normal[g]end\n -- Towers resolve with fire/ice. Move to the near/far edge without leaving the assigned tower.\n local p=v.p;local sword=S.sword\n if sword and Now()<sword.expires then\n  local d=dist(v.p,b.pos);local target=sword.inside and math.min(d,6.5)or math.max(d,9.5)\n  if math.abs(target-d)>3 then return end\n  local shift=target-d\n  p=polar(v.p,TensorCore.getHeadingToTarget(b.pos,v.p),shift)\n end\n guide('akh',p,v.expires,'YOUR AKH MORN TOWER',8,1,v.spell);S.akhChosen=v.source\nend\nfunction S.startMight(timelineTime)\n if not O.enabled then return false end\n if S.might then return true end\n local found\n for _,e in pairs(TensorCore.getEntityGroupList('ContentID',{contentid=3632})or{})do if e.alive then if found then return false end;found=e end end\n if not found then return false end\n local deadline=Now()+math.max(0,(timelineTime-TensorReactions_CurrentTimer)*1000)\n local m={source=found.id,hits=0,deadline=deadline,expires=deadline+5000,trackFacing=timelineTime==371.3}\n m.point=function()local e=ent(m.source);return e and e.pos end\n S.might=m\n danger('might',sourcePoint(found),50,m.trackFacing and m.expires or deadline,25541,'cone',math.pi/3,m.trackFacing)\n S.danger.might.p=m.point;S.danger.might.h=found.pos.h\n return true\nend\n-- Event-owned Sanctity geometry; OnFrame only submits established shapes.\nfunction S.sanctityOrb(id,hit)\n local f=S.sanctityFloor;if not f or Now()>=f.expires then return end\n if f.resolved[id]then return end\n local e=ent(id);local actual=e and sourcePoint(e)\n if not actual then f.pending[id]=hit and \"hit\"or\"spawn\";return end\n f.pending[id]=nil\n local nearest,best\n for _,charge in ipairs(f.charges)do for _,v in ipairs(charge.orbs)do\n  if not v.done and(not v.entity or v.entity==id)then local d=dist(v.p,actual)\n   if d<2 and(not best or d<best)then nearest=v;best=d end\n  end\n end end\n if nearest then nearest.p=actual;nearest.entity=id;if hit then nearest.done=true end end\n if hit then f.actual[id]=nil;f.resolved[id]=true else f.actual[id]={p=actual}end\nend\nfunction S.sanctityCharge(a)\n local f=S.sanctityFloor;if not f or Now()>=f.expires then return end\n for _,charge in ipairs(f.charges)do if charge.source==a.entityID then\n  local next=charge.lanes[charge.nextLane]\n  if next then\n   -- Native cast destination verifies the predicted segment before retiring it.\n   if a.castPosX and a.castPosZ and dist(pos(a.castPosX,a.castPosZ),next.b)>2 then f.invalid=true;return end\n   charge.nextLane=charge.nextLane+1\n  end\n  return\n end end\nend\nfunction S.drawSanctityFloor(now)\n local f=S.sanctityFloor\n if not f or now>=f.expires or f.invalid or O.sanctityFloor==false or next(f.pending)then return end\n local active=false\n for _,charge in ipairs(f.charges)do\n  if charge.nextLane<=#charge.lanes then active=true end\n  for _,v in ipairs(charge.orbs)do if not v.done then active=true;break end end\n end\n if not active and not next(f.actual)then return end\n local channel=Argus2.getNextUnusedChannel(true);if channel==nil then return end\n local ground=Argus2.RenderFlags.FLAG_WARP_TERRAIN+Argus2.RenderFlags.FLAG_RENDER_UI\n local baseFlags=ground+Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n local cutFlags=ground+Argus2.RenderFlags.FLAG_OCCLUDE\n local base=TensorCore.getCachedFlatDrawer(0x3333CC33,0x3333CC33,0x3333CC33,0x00000000,0,channel,baseFlags)\n local cut=TensorCore.getCachedFlatDrawer(0x00000000,0x00000000,0x00000000,0x00000000,0,channel,cutFlags)\n base:addCircle(100,.05,100,21,false,baseFlags)\n for _,charge in ipairs(f.charges)do\n  for i=charge.nextLane,#charge.lanes do local v=charge.lanes[i]\n   cut:addCenteredRect(v.x,.05,v.z,v.length,6,v.h,false,cutFlags)\n  end\n  -- Same rolling six-orb preview as BossMod, promoted on actual explosions.\n  local n=0\n  for _,v in ipairs(charge.orbs)do if not v.done then\n   n=n+1;if n<=6 then cut:addCircle(v.p.x,.05,v.p.z,9,false,cutFlags)end\n  end end\n end\n for _,v in pairs(f.actual)do cut:addCircle(v.p.x,.05,v.p.z,9,false,cutFlags)end\n -- Confirmed concurrent cast hazards also cut the safe-floor base.\n for _,v in pairs(S.danger)do if now<v.expires then\n  local q=type(v.p)=='function'and v.p()or v.p\n  if q and v.kind=='circle'then cut:addCircle(q.x,.05,q.z,v.r,false,cutFlags)end\n end end\nend\n\nfunction S.channel(a)\n local p=player();local e=ent(a.entityID);if not O.enabled or not p or not p.alive or not e then return end\n local id=a.spellID;local now=Now();local ms=a.channelTimeMax*1000;local deadline=now+ms\n if e.contentid then S.actorIDs[e.contentid]=e.id end\n if id==25308 or id==25555 or id==25552 then S.cacheActors()end\n local c=sourcePoint(e);local h=e.pos.h\n if S.p6Channel and S.p6Channel(a,c,h,deadline)then return end\n if id==27538 then\n  S.wrath=nil;S.guides.wrath=nil;S.guides.dimension=nil\n  S.death={at=now,expires=now+70000,dooms={},symbols={},cleanses={},ranks={},stage=0}\n  say('deathLine','FOUR EACH SIDE - FACE WARRIOR');return\n elseif S.death and now<S.death.expires then\n  local d=S.death\n  if id==25558 then d.war=c;d.north=TensorCore.getHeadingToTarget(pos(100,100),c);d.ring=0;d.ringEnd=deadline end\n  if id==27542 then\n   local q=a.castPosX and pos(a.castPosX,a.castPosZ,a.castPosY)or c\n   d.cleanses[a.entityID]={p=q,ready=deadline};d.cleansePlan=nil;d.cleanseAttempted=nil;return\n  elseif id==25310 then d.ps=true;d.psEnd=deadline+1500;return\n  elseif id==25308 then d.kb=deadline;say('deathKB','RIDE KNOCKBACK');return\n  elseif id==27539 then danger('p5line:'..a.entityID,c,50,deadline,id,'rect',10);S.danger['p5line:'..a.entityID].h=h;return\n  elseif id==25548 then d.spreadEnd=deadline;d.verifyAt=deadline-700 end\n end\n if id==25546 then\n  if S.wrath and not S.wrath.proteanStarted then\n   S.wrath.proteanStarted=true\n   S.wrath.protean=deadline+1000;S.wrath.boss=a.entityID;say('wrathProtean','BAIT YOUR CONE - KEEP APART')\n   if O.aoeTimers~=false then AnyoneCore.addWorldTextCountdown(ms+1000,pos(c.x,c.z,c.y+3),0xFFFFFFFF,true,1.5)end\n  end;return\n elseif id==25573 then\n  local q=a.castPosX and pos(a.castPosX,a.castPosZ,a.castPosY)or c\n  danger('p5flare:'..a.entityID,q,8,deadline,id);return\n elseif id==27528 then\n  say('p5Enrage','ENRAGE - FINISH THORDAN')\n  if O.aoeTimers~=false then AnyoneCore.addWorldTextCountdown(ms,pos(c.x,c.z,c.y+3),0xFFFFFFFF,true,1.5)end;return\n elseif id==27543 then say('p5Meteors','KILL METEORS - CASTER LB NORTH');return\n elseif id==27526 then\n  S.p5={expires=now+200000}\n  local r=role();if r then guide('p5Open',pos(100,r=='T1'and 106 or 94),deadline+20000,r=='T1'and 'TANK SOUTH - FACE CLEAVE OUT' or 'GROUP NORTH - AVOID TANK CLEAVE',3,1)end;return\n end\n if O.towerTimers~=false and (({[25567]=true,[29564]=true,[28651]=true,[29452]=true,[29453]=true,[29454]=true,[29455]=true,[29456]=true,[29457]=true})[id])then\n  S.towerTimers=S.towerTimers or{};local key=id..':'..a.entityID\n  if not S.towerTimers[key]or now-S.towerTimers[key]>1000 then\n   AnyoneCore.addWorldTextCountdown(ms,{x=c.x,y=c.y+2,z=c.z},0xFFFFFFFF,true,1.5);S.towerTimers[key]=now\n  end\n end\n if id==25300 then\n  if not S.doorOpened then\n   S.doorOpened=true;local r=role();local q=c\n   if r=='T2'then\n    local other\n    for _,v in pairs(actors(3639)or{})do if v.alive then if other then other=nil;break else other=v end end end\n    q=other and other.pos\n   end\n   if r and q then guide('doorOpen',pos(q.x,q.z+(r:sub(1,1)=='T'and -3 or 6),q.y),now+12000,r:sub(1,1)=='T'and'FACE YOUR BOSS NORTH'or'GROUP SOUTH OF ADELPHEL',2,1)end\n  end\n elseif id==25306 then\n  S.guides.doorOpen=nil\n  danger('dimension',c,6,deadline,25306,'donut',70)\n  if S.wrath and not S.wrath.done and now<S.wrath.expires then\n   S.wrath.donut={centre=c,expires=deadline}\n   S.guides.dimension=nil\n  else\n   inOut('dimension',c,true,deadline,'IN',25306)\n  end\n elseif id==25307 then\n  danger('dimension',c,6,deadline,25307);inOut('dimension',c,false,deadline,'OUT',25307)\n elseif id==25295 or id==25370 or id==25564 or id==28591 then\n  if id==25295 then S.sanctityOrb(a.entityID,false)end\n  if id==28591 and S.meteors then\n   local m=S.meteors;m.fire=m.fire or{};m.fire[a.entityID]=c\n  end\n  danger('cast:'..a.entityID,c,({[25295]=9,[25370]=3,[25564]=9,[28591]=7})[id],deadline,id)\n elseif id==25309 then\n  local t=ent(a.targetID);if t then guide('heavensblaze',function()local q=ent(a.targetID);return q and q.pos end,deadline,'STACK',5,4,id)end\n elseif id==25296 then\n  S.interrupts=(S.interrupts or 0)+1\n  local assignedRole=role()\n  local ranged=({[23]=true,[31]=true,[38]=true})[p.job]\n  local tankJob=({[19]=true,[21]=true,[32]=true,[37]=true})[p.job]\n  if ranged and e.contentid==3634 and S.interrupts==2 then\n   say('interrupt:2','RANGED INTERRUPT')\n   if e.castinginfo and e.castinginfo.channelingid==id then\n    local headGraze=ActionList:Get(1,7551)\n    if headGraze and headGraze:IsReady(e.id) then headGraze:Cast(e.id) end\n   end\n  elseif tankJob and S.interrupts==1 and assignedRole=='T1' then\n   say('interrupt:1','MT INTERRUPT')\n  elseif tankJob and S.interrupts==3 and assignedRole=='T2' then\n   say('interrupt:3','OT INTERRUPT')\n  end\n  if S.interrupts==1 then\n   local r=role();if r then\n    local x,z=97,100\n    if r:sub(1,1)=='T'then x,z=100,97 elseif r:sub(1,1)=='H'then x,z=100,103 end\n    guide('psPrep',pos(x,z),now+12000,'PREPOSITION FOR SYMBOLS',2,1)\n   end\n  end\n elseif id==25302 then\n  S.beam=S.beam or{at=now};S.beam.expires=now+8000;S.beamWave=1\n  if S.update then S.update('beam')end\n elseif id==25310 then\n  if not S.psAt or now-S.psAt>15000 then S.psAfterKB=nil;S.psCircleSign=nil end\n  S.psAt=now;S.guides.beam=nil;S.guides.psPrep=nil\n  if S.myPS then S.psExpires=now+10000 end\n elseif id==25308 then\n  S.preDash=nil\n  if S.meteors and not S.meteors.done and now-S.meteors.at<40000 then\n   S.meteors.kb={deadline=deadline,source=c}\n  elseif S.psAt and now-S.psAt<15000 then S.psKB=deadline\n  else\n   S.kbRequest={starts=deadline-2800,expires=deadline+400}\n   local found\n   for _,q in pairs(actors(3634)or{})do\n    if q.alive and dist(q.pos,pos(100,100))>=19 then if found then found=nil;break else found=q end end\n   end\n   if found then\n    local h=TensorCore.getHeadingToTarget(c,found.pos)\n    S.shining={source=found.id,expires=now+16000,knock=deadline,start=sourcePoint(found),stage=0}\n    local landing=polar(c,h+math.pi,19);local safe=true\n    for _,tear in pairs(S.doorTears or{})do if now<tear.expires and dist(landing,tear.p)<10 then safe=false;break end end\n    if safe then guide('shining',polar(c,h+math.pi,3),deadline,'KNOCKBACK AWAY FROM ADELPHEL',7,1,25308)\n    else say('shiningKB','KNOCKBACK - AVOID PORTALS')end\n   else say('shiningKB','KNOCKBACK AWAY FROM ADELPHEL')end\n  end\n elseif id==25316 then\n  S.pure={source=a.entityID,wave=0,at=now,expires=deadline,cones={},blind={}};S.guides.ps=nil\n\n elseif id==25548 then\n  if S.strengthState and S.strengthState.lightningResolved then return end\n  S.lightningPrep=nil\n  S.lightningEnds=deadline\n  for _,q in ipairs(party())do danger('lightning:'..q.id,function()local z=ent(q.id);return z and z.pos end,5,deadline,25549)end\n  say('spread','SPREAD')\n elseif id==25552 then\n  S.gaze=S.gaze or{};S.gaze.boss=a.entityID;S.gaze.expires=S.gaze.expires or deadline+1400\n  say('gaze','LOOK AWAY FROM BOTH EYES',4500)\n elseif id==25539 then\n  say('p2Enrage','ENRAGE - FINISH BOSS')\n  if O.aoeTimers~=false then AnyoneCore.addWorldTextCountdown(ms,{x=c.x,y=c.y+2,z=c.z},0xFFFFFFFF,true,1.5)end\n elseif id==25543 then\n  S.heel={target=a.targetID,expires=deadline+1000}\n  if a.targetID then AnyoneCore.addTimedWorldTextOnEnt(ms,'TANKBUSTER',a.targetID,0xCC3333FF,true,1.2,2)end\n  if p.id==a.targetID then say('heel','TANKBUSTER - MITIGATE')elseif tank()then\n   say('heelSwap','SWAP AFTER TANKBUSTER')\n   guide('heelSwap',polar(c,h,6),deadline+2000,'PREPARE TANK SWAP',5,1,25541)\n  end\n elseif id==25555 then S.strengthState={expires=now+60000,marks={},tethers={}};S.strengthAssigned=nil;S.strengthChosen=nil;S.strengthClaim=nil;S.strengthReady=nil;S.strengthLeap=nil;S.strengthRage=nil;S.towers={};S.spiral=nil\n elseif id==29564 then\n  S.meteors=S.meteors or{at=now,prey={},first={},second={}}\n  S.meteors.first[a.entityID]={source=a.entityID,p=c,expires=deadline,spell=id};meteorAssignments()\n elseif id==28651 then\n  if S.meteors then S.meteors.second[a.entityID]={source=a.entityID,p=c,expires=deadline,spell=id}end\n elseif id==25567 then\n  S.towers[a.entityID]={kind='strength',source=a.entityID,p=c,expires=deadline,spell=id};claimStrengthTowers()\n elseif id==25556 then\n  S.spiral=S.spiral or {at=now,ends=deadline,knights={}}\n  S.spiral.predicted=nil\n  local prior=S.spiral.knights[a.entityID]\n  if not prior or dist(prior.p,c)>.5 or math.abs(math.sin(prior.h-h))>.02 then S.spiral.tSpread=nil;S.spiral.spreadGoal=nil end\n  S.spiral.knights[a.entityID]={p=c,h=h};S.spiral.ends=math.max(S.spiral.ends,deadline+800)\n elseif id==25558 then\n  S.heavy={p=c,step=1,expires=deadline+8000};danger('heavy',c,6,deadline,id)\n  local d=dist(p.pos,c)\n  if d>.1 then\n   guide('heavy',d>9 and sourcePoint(p)or polar(c,TensorCore.getHeadingToTarget(c,p.pos),7),deadline,d>9 and'WAIT OUTSIDE EARTHQUAKE'or'OUTSIDE FIRST EARTHQUAKE',6,1,id)\n  else say('heavyOut','MOVE OUT OF EARTHQUAKE')end\n elseif id==25544 then\n  S.mercy={p=c,at=now,baitEnd=deadline,expires=deadline+2000,cones={},hold=sourcePoint(p),strength=S.strengthState and now<S.strengthState.expires}\n  local r=role()\n  if not S.mercy.strength and r then\n   guide('mercy',pos(c.x,c.z+(r=='T1'and -6 or 6),c.y),deadline,r=='T1'and'BAIT CONES IN FRONT'or'STACK BEHIND BOSS - BAIT CONES',5,1,25544)\n  else\n   -- The checked personal bait guide owns the stack cue; do not announce a second generic stack.\n  end\n elseif id==25536 or id==25537 then\n  S.swing={p=c,h=h,offset=id==25536 and -math.pi/3 or math.pi/3,step=1,deadlines={deadline+800,deadline+1800,deadline+2800},expires=deadline+3500}\n  danger('swing',c,40,deadline+800,nil,'cone',math.pi*2/3);S.danger.swing.h=h+S.swing.offset\n  guide('swing',polar(c,h+math.pi,9),deadline+800,'BEHIND BOSS',6,1,25538)\n elseif id==26386 or id==26387 then\n  local inside=id==26387;S.gnash={p=c,inside=inside,step=1,deadline=now+3700,expires=now+7500}\n  danger('gnash',c,8,now+3700,inside and 26390 or 26389,inside and 'donut'or'circle',40)\n  if S.dive and now<S.dive.expires then S.guides.gnash=nil;if S.update then S.update('dive');S.update('generalP3')end else inOut('gnash',c,inside,now+3700,inside and 'IN - THEN OUT'or'OUT - THEN IN',inside and 26390 or 26389)end\n elseif id==26381 then S.guides.p3Open=nil;S.jumps={};S.jumpHits=0;S.towerHits=0;S.diveChosen=nil;S.diveTimerSource=nil;S.predictedDiveTowers={};S.diveTower=nil;S.p3Boss=a.entityID;S.p3phase={expires=now+115000,tethers={}};S.dive={at=now,expires=now+50000,facing=0}\n elseif id==26385 then\n  if S.predictedDiveTowers then S.predictedDiveTowers[a.entityID]=nil end\n  local spot=S.classify(c);local order=S.towerHits<3 and 3 or(S.towerHits<5 and 1 or(spot==2 and 1 or 2))\n  S.diveTowers=S.diveTowers or{}\n  S.diveTowers[a.entityID]={p=c,spot=spot,side=S.diveTowerSide(c),order=order,expires=deadline,source=a.entityID}\n  danger('towerOther:'..a.entityID,c,5,deadline,id);S.danger['towerOther:'..a.entityID].source=a.entityID\n elseif id>=26391 and id<=26394 then\n  S.releaseDiveFacing();S.diveFacePreview=nil;S.guides.enumPrep=nil;S.dive=nil;S.guides.dive=nil;S.towers[a.entityID]={kind='enum',source=a.entityID,p=c,n=id-26390,expires=deadline,spell=id};enumAssign()\n elseif id==26378 or id==26380 or id==25545 or id==27531 or id==27533 or id==27534 then\n  -- Only geometry established by BossMod is drawn; arbitrary facing arrows are never inferred.\n  if id==26378 then\n   danger('line:'..a.entityID,c,62,deadline,id,'rect',8);S.danger['line:'..a.entityID].h=h;S.danger['line:'..a.entityID].source=a.entityID\n   S.geirBait=nil;S.guides.geirBait=nil;S.guides.enumPrep=nil\n   if S.p3phase then S.p3phase.dodgeUntil=math.max(S.p3phase.dodgeUntil or 0,deadline);S.p3phase.scanAt=nil end\n  elseif id==26380 then\n   danger('cone:'..a.entityID,c,13,deadline,id,'cone',math.pi/2);S.danger['cone:'..a.entityID].h=h;S.danger['cone:'..a.entityID].source=a.entityID\n   S.guides.drachen=nil -- Keep the red cone telegraph; no outrange call or green destination.\n   S.guides.geirDodge=nil;S.guides.geirBait=nil;S.geirBait=nil\n  elseif id==25545 then danger('cone:'..a.entityID,c,50,deadline,id,'cone',math.pi/6);S.danger['cone:'..a.entityID].h=h\n   if S.mercy then\n    S.mercy.cones[a.entityID]={p=c,h=h,expires=deadline}\n    S.mercy.firstCone=S.mercy.firstCone or now;S.mercy.expires=math.max(S.mercy.expires,deadline)\n   end\n  elseif id==27531 or id==27533 or id==27534 then\n   danger('line:'..a.entityID,c,id==27531 and 60 or 48,deadline,id,'rect',id==27531 and 10 or 20);S.danger['line:'..a.entityID].h=h\n   if id==27531 and S.wrath then S.wrath.north=TensorCore.getHeadingToTarget(pos(100,100),c)end\n  end\n elseif id==26814 then\n  S.eyes=S.eyes or{at=now,orbsDone={},batches={},positions={}}\n  S.eyes.hate=true;S.eyes.expires=now+85000;S.guides.enum=nil\n elseif id==26819 then\n  if S.eyes then S.eyes.mirage=true;S.eyes.expires=now+40000 end\n elseif id==26402 then\n  say('eyesRaidwide:'..a.entityID,'ENRAGE - FINISH EYES')\n  if O.aoeTimers~=false then AnyoneCore.addWorldTextCountdown(ms,{x=c.x,y=c.y+3,z=c.z},0xFFFFFFFF,true,1.5)end\n elseif id==25314 then\n  S.eyes=nil;S.guides.eye=nil;S.rewind={expires=now+55000}\n  if tank()then say('rewindLB','TANK LB3 WHEN HAURCHEFANT APPEARS',5000)end\n elseif id==27529 then S.guides.p5Open=nil;S.wrath={at=now,expires=now+42000,tethers={},lightning={},puddles={},liquids=0};guide('wrath',pos(100,100),now+5000,'MIDDLE',3)\n elseif id==25552 then say('gaze','LOOK AWAY')\n elseif id==27971 or id==27969 then\n  local g=group();if g then guide('afah',pos(100,g==1 and 97 or 103),deadline,'GROUP STACK',5,1,id==27971 and 27972 or 27970)end\n elseif id==27947 then say('hot','MIDDLE',2500)\n elseif id==27949 then say('hot','SIDES',2500)\n elseif id==27948 or id==27950 or id==27966 or id==27967 then\n  danger('line:'..a.entityID,c,id==27948 and 50 or id==27950 and 50 or 80,deadline,id,'rect',id==27948 and 21 or id==27950 and 16 or 22)\n  S.danger['line:'..a.entityID].h=h\n elseif id==27939 or id==27940 or id==27942 or id==27943 then\n  local left=id==27939 or id==27940;local far=id==27940 or id==27943\n  local hit=polar(c,h+(left and math.pi/2 or -math.pi/2),11)\n  danger('wings',hit,50,deadline+800,left and 27941 or 27944,'rect',22);S.danger.wings.h=h\n  say('wings',(left and 'NORTH SAFE' or 'SOUTH SAFE')..(not role()and(far and ' - TANKS FAR'or' - TANKS NEAR')or tank()and(far and ' - TANKS FAR'or' - TANKS NEAR')or(far and ' - STAY NEAR'or' - STAY FAR')))\n elseif id==28051 then\n  S.p6=nil;S.vow=nil\n  for _,key in ipairs({'afah','wings','vow','p6Prep','p6Breath','p6Wroth','p6Hot','p6FireIce','p6North','p6Finish'})do S.guides[key]=nil end\n  S.akhWave=(S.akhWave or 0)+1;S.akhBoss=a.entityID;S.akhHeading=h;S.akhHits=0\n  S.towers={};S.guides.giga=nil;S.guides.exa=nil\n  S.swordResolved=false\n elseif id==29452 or id==29453 or id==29454 then\n  S.towers[a.entityID]={kind='akh',p=c,source=a.entityID,spell=id,expires=deadline+((S.akhWave or 1)+3)*1100+1000};if S.swordResolved or S.sword then akhAssign()end\n elseif id==28058 or id==28114 or id==28115 then\n  if not S.giga or now-S.giga.at>20000 then S.giga={at=now,list={},hits=0};S.swordResolved=false end\n  S.giga.list[#S.giga.list+1]={source=a.entityID,p=c,expires=deadline,spell=id}\n  table.sort(S.giga.list,function(a,b)return a.expires<b.expires end)\n  danger('giga:'..a.entityID,c,20,deadline,id)\n elseif id==28059 then\n  S.exa={at=now,boss=c,bossID=a.entityID,h=h,helpers={},stage=0,expires=deadline+12000};S.guides.akh=nil;S.trinityReady=false\n elseif id==28060 then\n  local x=S.exa\n  if x then x.helpers[a.entityID]={p=c,h=h,expires=deadline};danger('exa:'..a.entityID,c,6,deadline,id)end\n elseif id==27968 then say('touchdown','STAY AT NORTH WALL')\n end\nend\nfunction S.diveFacing()return 0 end -- EU/LPDU Easthogg only.\n\nfunction S.diveTowerSide(c)\n if c.z-100>math.abs(c.x-100)then return 'S'end\n return c.x<100 and'W'or'E'\nend\nfunction S.diveAssignedSide(j)\n if j.direction==1 then return 'W'elseif j.direction==-1 then return 'E'end\n return j.spot==1 and'E'or j.spot==2 and'S'or j.spot==3 and'W'or nil\nend\nfunction S.classify(c)\n if c.z-100>math.abs(c.x-100)then return 2 end\n local forward=S.diveFacing()==0 and -1 or 1\n return (c.x-100)*forward>0 and 3 or 1\nend\nfunction S.buff(a)\n local p=player();if not p or not p.alive then return end\n local id=a.buffID;local now=Now()\n if S.p6Buff and S.p6Buff(a)then return end\n if id>=3004 and id<=3006 then\n  local j=S.jumps[a.entityID]or{};S.jumps[a.entityID]=j;j.order=id-3003\n elseif id>=2755 and id<=2757 then\n  local j=S.jumps[a.entityID]or{};S.jumps[a.entityID]=j;j.direction=id==2755 and 0 or(id==2756 and 1 or -1)\n elseif id==2661 then\n  if S.pure then S.pure.blind[a.entityID]=now+a.buffDuration*1000 end\n  local e=ent(a.entityID)\n  if e then danger('skyblind:'..a.entityID,function()local q=ent(a.entityID);return q and q.pos end,3,now+a.buffDuration*1000,25370)end\n  if a.entityID==p.id then\n   local pure=S.pure\n   if pure then pure.dropUntil=now+a.buffDuration*1000;pure.dropWave=pure.wave;S.guides.pure=nil end\n\n  end\n elseif id==2976 and S.death then\n  local d=S.death\n  d.dooms[a.entityID]=true\n  if not d.doomAt then\n   d.doomAt=now;d.congaOpen=nil;S.guides.death=nil\n  end\n elseif id==2833 and S.wrath then S.wrath.lightning[a.entityID]=true\n elseif id==2775 or id==2776 then S.eyeNeedsUpdate=true\n elseif id==2758 or id==2759 then\n  S.wroth=S.wroth or{at=now,expires=now+30000};S.wroth[a.entityID]=id\n  danger('wroth:'..a.entityID,function()local q=ent(a.entityID);return q and q.pos end,id==2758 and 5 or 4,now+a.buffDuration*1000,id==2758 and 29739 or 29740)\n  if a.entityID==p.id then say('wroth',id==2758 and 'SPREAD TOWARD NIDHOGG'or'PARTNER TOWARD HRAESVELGR')end\n elseif id==2896 then\n  S.vow=S.vow or{progress=1};S.vow.owner=a.entityID;S.vow.expires=now+a.buffDuration*1000;S.vow.said=nil\n elseif (id==2898 or id==2899)and a.entityID==p.id then\n  say('fireice',id==2898 and 'FIRE - HRAESVELGR - STOP MOVING'or'ICE - NIDHOGG - KEEP MOVING')\n elseif id==2056 then\n  -- BossMod/cactbot identify raw counts 0x12A / 0x12B. Unknown counts never guess.\n  S.swordRead={entity=a.entityID,at=now,expires=now+1500,resolve=now+6200}\n end\nend\nfunction S.marker(a)\n local p=player();if not p or not p.alive then return end\n local id=a.markerID;local now=Now()\n if S.death and now<S.death.expires and id>=281 and id<=284 then\n  local d=S.death;d.symbols[a.entityID]=id;d.symbolPositions=d.symbolPositions or{}\n  local e=ent(a.entityID);if e then d.symbolPositions[e.id]=pos(e.pos.x,e.pos.z,e.pos.y)end\n  return\n end\n if id==50 or id==51 or id==330 then S.cacheActors()end\n S.markers[a.entityID]={id=id,at=now}\n if id>=319 and id<=321 and S.dive and now<S.dive.expires then\n  local j=S.jumps[a.entityID]or{};S.jumps[a.entityID]=j;j.order=id-318\n elseif id==50 or id==51 then\n  if not S.sanctity or now>=S.sanctity.expires then S.sanctity={markers={},at=now,expires=now+26000}end\n  S.sanctity.markers[id]=a.entityID;setupSanctity()\n elseif id==330 then\n  local st=S.strengthState\n  if st and now<st.expires and not S.strengthLeap then\n   st.marks[a.entityID]=true\n   if a.entityID==p.id and O.enabled and not st.spreadSaid then\n    say('strengthLeap','BLUE JUMP - SPREAD AWAY');st.spreadSaid=true\n   end\n  end\n elseif id==234 then\n  if not S.beam or now-S.beam.at>10000 then S.beam={at=now,expires=now+8000};S.beamWave=(S.beamWave or 0)+1 end\n elseif id>=281 and id<=284 then\n  if not S.psAt or now-S.psAt>15000 then\n   S.psAt=now;S.psAfterKB=nil;S.psCircleSign=nil;S.myPS=nil;S.guides.psPrep=nil\n  end\n  if a.entityID==p.id then S.myPS=id;S.psExpires=now+12000 end\n elseif id==20 and S.wrath then S.wrath.diveTarget=a.entityID\n elseif id==14 and S.wrath then\n  S.wrath.blue=a.entityID\n  danger('p5Blue',function()local e=ent(a.entityID);return e and e.pos end,24,now+6400,29346)\n elseif id==285 then\n  S.meteors=S.meteors or{at=now,prey={},first={},second={}}\n  S.meteors.prey[a.entityID]=true;meteorAssignments()\n end\nend\nfunction S.hit(a)\n local now=Now();local id=a.spellID;local p=player();if not p then return end\n if id==25303 and S.beamLastHit and now-S.beamLastHit<500 then return end\n cleanHits(id,a.entityID)\n if S.p6Hit and S.p6Hit(a)then return end\n if S.death and now<S.death.expires then\n  local d=S.death\n  if id==27540 then\n   if not d.doomSnapshot then\n    d.doomSnapshot={};for _,e in ipairs(party())do if e.alive then d.doomSnapshot[e.id]=pos(e.pos.x,e.pos.z,e.pos.y)end end\n   end\n   for _,v in ipairs(a.hitTargets or{})do d.dooms[v]=true end\n   d.doomAt=d.doomAt or now;d.congaOpen=nil\n   local guide=S.guides.death\n   if guide and guide.conga then S.guides.death=nil end\n  elseif id==25549 then\n   if not d.lightningHit then\n    d.lightningHit=now;d.twisters={};d.twisterMove={};d.twisterOrigins={}\n    S.guides.death=nil\n    local doomCount=0\n    for _ in pairs(d.dooms)do doomCount=doomCount+1 end\n    if doomCount==4 and not d.dooms[p.id]then say('deathTwister','MOVE FOR TWISTER',1400)end\n    for _,q in ipairs(party())do d.twisters[#d.twisters+1]=pos(q.pos.x,q.pos.z,q.pos.y)\n     d.twisterOrigins[q.id]=pos(q.pos.x,q.pos.z,q.pos.y)\n    end\n   end\n  elseif id>=25558 and id<=25562 then d.ring=id-25557;S.guides.heavy=nil\n  elseif id==25308 then d.knocked=true;S.kbRequest=nil;S.p2KBRequest=nil;return\n  elseif id==25311 then d.resolved=true;S.guides.death=nil;S.releaseGaze();return\n  elseif id==26215 then S.death=nil;S.guides.death=nil;return end\n end\n if S.wrath and now<S.wrath.expires then\n  local w=S.wrath\n  if id==27535 then for _,v in ipairs(a.hitTargets or{})do w.lightning[v]=true end\n  elseif id==27536 then w.lightning={};w.done=true;S.guides.wrath=nil\n  elseif id==27530 and not w.twister then\n   w.charged=true;w.twister=now+2600;w.twisterFrom=sourcePoint(p);w.move=polar(p.pos,TensorCore.getHeadingToTarget(p.pos,pos(100,100)),4)\n   say('p5Twister','MOVE FOR TWISTERS')\n  elseif id==27537 and a.castPosX then\n   w.liquids=w.liquids+1;local q=pos(a.castPosX,a.castPosZ,a.castPosY)\n   w.puddles[#w.puddles+1]={p=q,r=6,expires=now+22000};danger('liquid:'..w.liquids,q,6,now+22000,nil,nil,nil,true)\n  elseif id==25547 then w.protean=nil;w.baits=true;S.guides.wrath=nil\n  elseif id==27533 or id==27534 then w.diveFixed=true\n  elseif id==25542 then\n   w.done=true;S.guides.wrath=nil\n   for key in pairs(S.danger)do if key:sub(1,7)=='liquid:'then S.danger[key]=nil end end\n  elseif id==25573 and a.castPosX then w.puddles[#w.puddles+1]={p=pos(a.castPosX,a.castPosZ,a.castPosY),r=8,expires=now+500};end\n end\n if id==26815 or id==26816 or id==26817 or id==26818 then\n  if S.eyes then\n   local e=S.eyes;e.orbsDone[a.entityID]=true\n   local orb=ent(a.entityID);local cached=e.orbEntities and e.orbEntities[a.entityID]\n   local point=orb and orb.pos or cached and cached.p\n   if point then\n    e.resolved=e.resolved or{}\n    local key=(point.x>100 and 'E' or 'W')..((id==26817 or id==26818)and 'gold' or(point.z<100 and 'N' or 'S'))\n    e.resolved[key]=true\n    e.orbResults=e.orbResults or{};e.orbResults[key]=id\n   end\n  end\n elseif id==26820 then\n  local e=S.eyes;local target=ent(a.targetID)\n  if e and target then\n   local b=e.batches[#e.batches]\n   if not b or now-b.at>1500 then b={at=now,targets={},seen={}};e.batches[#e.batches+1]=b end\n   if not b.seen[target.id]then b.seen[target.id]=true;b.targets[#b.targets+1]={id=target.id,p=pos(target.pos.x,target.pos.z,target.pos.y)}end\n  end\n end\n if (id==7548 or id==7559)and a.entityID==p.id then\n  if S.meteors and S.meteors.kb then S.logP2Knockback('native immunity action observed',S.p2KnockbackAllowed(),id)end\n  if S.kbRequest then S.kbRequest=nil;if S.shining and S.shining.stage==0 then S.guides.shining=nil end end\n elseif id==25532 then\n  local r=S.returnNorth;local e=ent(a.entityID)\n  if r and e and now<r.expires then r.p=polar(e.pos,TensorCore.getHeadingToTarget(e.pos,pos(100,100)),6)end\n elseif id==25533 then\n elseif id==25541 then\n  local m=S.might\n  if m and (not m.trackFacing or a.entityID==m.source)then\n   m.hits=m.hits+1\n   if m.hits>=3 then S.might=nil;S.guides.might=nil;S.danger.might=nil\n   else\n    m.deadline=now+1600\n    local b=ent(m.source)\n    if b then danger('might',sourcePoint(b),50,m.trackFacing and m.expires or m.deadline,25541,'cone',math.pi/3,m.trackFacing);S.danger.might.p=m.point;S.danger.might.h=b.pos.h end\n   end\n  end\n elseif id==25543 then\n  if S.p5 and now<S.p5.expires then\n   local e=ent(a.entityID)\n   if e then\n    S.might={source=e.id,hits=0,deadline=now+3270,expires=now+8500}\n    S.might.point=function()local q=ent(a.entityID);return q and q.pos end\n    danger('might',sourcePoint(e),50,now+3270,25541,'cone',math.pi/3);S.danger.might.p=S.might.point;S.danger.might.h=e.pos.h\n   end\n  end\n  local h=S.heel;if h and p.id~=h.target and tank()then say('heelSwapNow','TAKE AGGRO');local g=S.guides.heelSwap;if g then g.text='TAKE AGGRO';g.expires=now+2000 end end;S.heel=nil\n elseif id==25571 then\n  local st=S.sanctity\n  if st and(not st.lastSever or now-st.lastSever>300)then st.severHits=(st.severHits or 0)+1;st.lastSever=now end\n elseif id==25553 then\n  -- Death has separate Thordan and arena-eye gazes. Keep the lock for the latter.\n  if not S.death then S.releaseGaze();S.gaze=nil end\n elseif id==25554 then S.releaseGaze();S.gaze=nil\n elseif id==25565 or id==25551 then\n  if id==25565 then S.strengthLeap=true;if S.strengthState then S.strengthState.leapChoices=nil end else S.strengthRage=true end\n  if S.strengthLeap and S.strengthRage and not S.strengthReady then S.strengthReady=now+100 end\n elseif id==25303 then\n  if S.beamLastHit and now-S.beamLastHit<500 then return end\n  S.beamLastHit=now\n  local second=(S.beamWave or 1)>=2\n  if second then S.preDash={expires=now+8000}end\n  S.guides.beam=nil;S.beam=nil\n  for k,v in pairs(S.markers)do if v.id==234 then S.markers[k]=nil end end\n  if not second then S.beamWave=2;S.beam={at=now,expires=now+8500};if S.update then S.update('beam')end end\n elseif id==25311 then\n  if S.psExpires then guide('psReturn',pos(100,103),now+3500,'BACK TO BOSS',2,1)end\n  S.guides.ps=nil;S.psExpires=nil\n elseif id==25308 then\n  if S.meteors then S.meteors.kb=nil;S.meteors.kbResolved=true;S.guides.meteor=nil end;S.guides.meteorKB=nil;S.p2KBRequest=nil\n  S.kbRequest=nil\n  if S.psKB then S.psAfterKB=true;S.psKB=nil end\n  S.guides.shining=nil\n elseif id==25294 then\n  if S.sanctityFloor and now<S.sanctityFloor.expires then S.sanctityCharge(a);return end\n  local e=ent(a.entityID);local sh=S.shining\n  if e and a.castPosX and a.castPosZ then\n   if not sh or now>=sh.expires then sh={source=a.entityID,expires=now+10000,stage=0};S.shining=sh end\n   sh.stage=sh.stage+1\n   if sh.stage==1 then\n    local start=sourcePoint(e);local finish=pos(a.castPosX,a.castPosZ,a.castPosY)\n    local c=pos(100,100);local rs=dist(start,c);local rf=dist(finish,c)\n    if rs>20 and rf>20 and math.abs((start.x-100)*(finish.x-100)+(start.z-100)*(finish.z-100))<10 then\n     sh.group=pos(100+10*((finish.x-100)/rf-(start.x-100)/rs),100+10*((finish.z-100)/rf-(start.z-100)/rs))\n     sh.tank=pos(100+10*(finish.x-100)/rf-2*(start.x-100)/rs,100+10*(finish.z-100)/rf-2*(start.z-100)/rs)\n     sh.flares={start,pos((start.x+finish.x)/2,(start.z+finish.z)/2),finish,\n      pos(100+(finish.x-100)*7.5/22,100+(finish.z-100)*7.5/22),pos(100-(finish.x-100)*7.5/22,100-(finish.z-100)*7.5/22),pos(200-finish.x,200-finish.z),\n      pos(200-(start.x+finish.x)/2,200-(start.z+finish.z)/2),pos(200-start.x,200-start.z),\n      pos(100-(start.x-100)*7.5/22,100-(start.z-100)*7.5/22),pos(100+(start.x-100)*7.5/22,100+(start.z-100)*7.5/22),start}\n    end\n   end\n   local target=ent(e.targetid)\n   if target and (target.job==19 or target.job==21 or target.job==32 or target.job==37)then sh.landing=target.id end\n   if sh.group then guide('shining',sh.group,sh.expires,'SAFE CORNER',7,1,25301)end\n  end\n elseif id==25295 then\n  S.sanctityOrb(a.entityID,true)\n  local t=S.sanctity;local e=ent(a.entityID)\n  if t and t.ready and e and now<t.expires then\n   for _,q in ipairs(t.spheres)do if not q.done and dist(e.pos,q)<2 then q.done=true;t.hits=t.hits+1;break end end\n   if t.hits>=9 then\n    S.guides.sanctity=nil;t.expires=now;local r=role()\n    if r and meteorBase[r]then S.icePrep={p=cardinal(meteorBase[r],10),expires=now+22000}end\n    S.sanctity=nil\n    -- Establish the successor on the resolving event, without a later scope pulse.\n    if S.update then S.update('sanctity')end\n   end\n  end\n  local sh=S.shining;local e=ent(a.entityID)\n  if sh and e and sh.flares then\n   for i,q in ipairs(sh.flares)do if not q.done and dist(q,e.pos)<2 then q.done=true;break end end\n  end\n elseif id==25301 then\n  S.guides.shining=nil;S.danger.execution=nil;S.shining=nil\n elseif id==25297 then\n  local st=S.strengthState\n  if st and st.tethers[a.entityID]then\n   st.tethers[a.entityID].done=true;st.tethers[a.entityID].danceUntil=now+6500\n   if st.tethers[a.entityID].target==p.id then S.guides.strengthPosition=nil end\n  end\n  local t=S.doorTether\n  if t then t.target=a.targetID;t.hit=true;t.detached=nil;t.expires=now+6500 end\n elseif id==25299 then\n  local t=S.doorTether\n  if t and(not t.lastHit or now-t.lastHit>200)then\n   t.hits=(t.hits or 0)+1;t.lastHit=now\n   if t.hits>=6 then S.doorTether=nil;S.guides.doorTether=nil;S.danger.doorDance=nil end\n  end\n elseif id==25369 then\n  local s=S.pure\n  if s and(not s.last or now-s.last>800)then s.wave=s.wave+1;s.last=now;S.guides.pure=nil end\n elseif id==25544 then\n  local m=S.mercy\n  if m and m.strength then say('move','DODGE CONES',1200);m.dodgeAnnounced=true else say('move','MOVE',2000)end\n  S.guides.spiral=nil;S.guides.mercy=nil\n elseif id==25545 then S.mercy=nil;S.guides.mercy=nil\n elseif id==25549 then\n  S.lightningEnds=nil;S.lightningPrep=nil\n  if S.strengthState then S.strengthState.lightningResolved=true end\n  if S.spiral then S.spiral.spreadDestination=nil end\n  if S.guides.spiral and S.guides.spiral.hit==25549 then S.guides.spiral=nil end\n elseif id==25575 then\n  S.icePartner=nil\n  local m=S.meteors\n  if m then\n   m.stormDone=true;m.ice=m.ice or{}\n   local target=ent(a.targetID)\n   if target then m.ice[a.entityID]=sourcePoint(target)end\n  end\n elseif id==29564 then\n  local s=S.meteors\n  if s and s.assignment then local mine=s.assignment[p.id]\n   if mine and mine.source==a.entityID then\n    s.firstDone=true;S.guides.meteor=nil\n    if s.prey[p.id]then\n     s.run={at=now,start=clockAngle(mine.p),drops=0,last=now}\n     say('meteorRun',(O.meteorRoute or 0)==0 and'RUN CLOCKWISE - ZIGZAG'or'RUN CLOCKWISE')\n    end\n   end\n  end\n elseif id==28651 then\n  local s=S.meteors\n  if s and s.mySecond==a.entityID then S.guides.meteor=nil;s.done=true;S.returnNorth={p=pos(100,87),expires=now+12000} end\n elseif id==25556 then\n  local st=S.spiral\n  if st then\n   st.hits=st.hits or{};st.hits[a.entityID]=true\n   local n=0;for _ in pairs(st.hits)do n=n+1 end\n   if n>=3 then S.spiral=nil;S.guides.spiral=nil end\n  end\n elseif id==25567 then\n  S.towers[a.entityID]=nil;if a.entityID==S.strengthChosen then S.guides.strengthTower=nil end\n elseif id>=25558 and id<=25562 then\n  local s=S.heavy;if s then s.step=id-25556;S.danger.heavy=nil\n   if id<25562 then\n    local inner=(id-25557)*6\n    danger('heavy',s.p,inner,now+1900,id+1,'donut',inner+6)\n    local near=dist(p.pos,s.p)<=inner+6\n    local destination=near and s.p or sourcePoint(p);local text=near and'MOVE INTO CLEARED CENTRE'or'WAIT FOR NEXT RING'\n    local m=S.mercy\n    if m and now<m.baitEnd and not m.strength then\n     local r=role();local q=pos(m.p.x,m.p.z+(r=='T1'and -6 or 6),m.p.y)\n     local current=S.danger.heavy\n     if dist(p.pos,s.p)<inner-.5 and dist(q,s.p)<inner-.5 then destination=q;text=r=='T1'and'CLEARED RING - BAIT IN FRONT'or'CLEARED RING - STACK BEHIND BOSS' end\n    end\n    if S.strengthState and now<S.strengthState.expires and not S.death then text=near and'MOVE IN'or'WAIT FOR RING'end\n    guide('heavy',destination,now+1900,text,6,1,25562)\n   else S.heavy=nil;S.guides.heavy=nil end\n  end\n elseif id==25538 then\n  local s=S.swing;if s then s.step=s.step+1\n   S.danger.swing=nil\n   if s.step<=3 then danger('swing',s.p,40,math.max(now+100,s.deadlines[s.step]),nil,'cone',math.pi*2/3);S.danger.swing.h=s.h+(s.step==2 and -s.offset or math.pi)end\n   if s.step==2 then guide('swing',polar(s.p,s.h+s.offset,9),now+2500,'MOVE TO FIRST CLEAVE',6,1)\n   elseif s.step>=4 then S.swing=nil;S.guides.swing=nil end\n  end\n elseif id==26389 or id==26390 then\n  local s=S.gnash\n  if s and s.step==1 then\n   s.step=2;s.deadline=now+3100;local inside=not s.inside\n   local time=TensorReactions_CurrentTimer or 0\n   if id==26389 and inside and S.dive and now<S.dive.expires and time>=650 and time<=660 then\n    TensorCore.addAlertText(2800,'IN',1,2,false)\n   end\n   if S.dive and now<S.dive.expires then S.guides.gnash=nil else inOut('gnash',s.p,inside,now+3100,inside and 'IN'or'OUT',inside and 26390 or 26389)end\n   danger('gnash',s.p,8,now+3100,inside and 26390 or 26389,inside and 'donut'or'circle',40)\n  else S.gnash=nil;S.guides.gnash=nil end\n  if S.update then S.update('dive');S.update('generalP3')end\n elseif id==26382 or id==26383 or id==26384 then\n  S.jumpHits=S.jumpHits+1\n  local source=ent(a.entityID)\n  if S.dive and now<S.dive.expires and source then\n   local landing=sourcePoint(source)\n   if id~=26382 then\n    -- Easthogg uses arena east (+X). Drop the forecast if the player did not face east.\n    local target=ent(a.targetID)\n    if target and math.sin(target.pos.h)>.98 then\n     landing=pos(landing.x+(id==26383 and 14 or -14),landing.z,landing.y)\n    else\n     landing=nil\n    end\n   end\n   if landing then\n   local spot=S.classify(landing)\n   local order=S.towerHits<3 and 3 or(S.towerHits<5 and 1 or(spot==2 and 1 or 2))\n   S.predictedDiveTowers=S.predictedDiveTowers or{}\n   S.predictedDiveTowers[a.entityID]={p=landing,spot=spot,side=S.diveTowerSide(landing),order=order,source=a.entityID,expires=now+8500,predicted=true}\n   end\n  end\n  local j=S.jumps[a.targetID]\n  if j and not j.spot then\n   local e=ent(a.targetID);if e then j.spot=S.classify(e.pos)end\n  end\n  if j then j.jumped=true;j.jumpedAt=now;j.gnashPoint=j.expectedLanding or sourcePoint(p)end\n  if a.targetID==p.id then\n    TensorCore.timelineLogToFile(string.format('[DSR Dive] hit=%d order=%s locked=%s actionsHeld=%s x=%.2f z=%.2f heading=%.3f\\n',id,tostring(j and j.order),tostring(S.diveFacingLock),tostring(S.diveActionsHeld),p.pos.x,p.pos.z,p.pos.h))\n    S.releaseDiveFacing();S.diveFacePreview=nil;S.guides.dive=nil;S.jumpChoices=nil end\n elseif id==26385 then\n  S.towerHits=S.towerHits+1\n  if S.predictedDiveTowers then S.predictedDiveTowers[a.entityID]=nil end\n  if S.diveTowers then S.diveTowers[a.entityID]=nil end\n  if a.entityID==S.diveChosen then\n   local t=S.diveTower\n   if t then S.geirBait={p=t.p,expires=now+8500}end\n   local ownJump=S.jumps[p.id];if ownJump then ownJump.soaks=(ownJump.soaks or 0)+1 end\n   S.guides.diveTower=nil;S.diveTower=nil;S.diveChosen=nil\n   if S.update then S.update('dive');S.update('generalP3')end\n  end\n elseif id>=26391 and id<=26394 then\n  S.towers[a.entityID]=nil\n  if a.entityID==S.enumChosen then\n   S.guides.enum=nil\n   local r=role();local e=ent(a.entityID)\n   if r and(r:sub(1,1)=='H'or r:sub(1,1)=='R')and e then S.geirBait={p=sourcePoint(e),expires=now+9500}end\n  end\n elseif id==26380 then\n  if S.p3phase and not S.p3phase.enumPrepared then\n   S.p3phase.enumPrepared=true;local r=role();local q=r and enumHome[r]\n   if q then guide('enumPrep',pos((q==1 or q==4)and 92 or 108,q<=2 and 92 or 108),now+8500,'PREPOSITION FOR TOWERS',5,1)end\n  end\n elseif id==26396 then\n  if S.p3phase then S.p3phase.tethers[a.entityID]=nil;S.guides.soulTether=nil end\n elseif id==26376 then\n  S.p3Boss=a.entityID\n elseif id==26377 then\n  local r=role()\n  if r then guide('p3Open',pos(100,r=='T1'and 94 or 106),now+16000,r=='T1'and'FACE NIDHOGG NORTH'or'GROUP SOUTH OF NIDHOGG',2,1)end\n elseif id==25316 then\n  S.pure=nil;S.guides.pure=nil;S.guides.drop=nil\n elseif id==26388 then S.stackHits=(S.stackHits or 0)+1;S.guides.dive=nil\n elseif id==27953 then if S.vow then S.vow.progress=S.vow.progress+1 end;S.guides.vow=nil\n elseif id==29739 or id==29740 then S.wroth=nil\n elseif id==29454 or id==28055 then\n  S.akhHits=(S.akhHits or 0)+1\n  if S.akhHits>=4+(S.akhWave or 1)then S.guides.akh=nil;S.towers={};S.trinityReady=true end\n elseif id==28058 or id==28114 or id==28115 then\n  if S.giga then S.giga.hits=S.giga.hits+1;for i,v in ipairs(S.giga.list)do if v.spell==id then table.remove(S.giga.list,i);break end end;if #S.giga.list==0 then S.trinityReady=true end end\n elseif id==28060 or id==28061 then\n  local s=S.exa\n  if s and(not s.last or now-s.last>900)then s.stage=s.stage+1;s.last=now;if s.stage>=5 then S.trinityReady=true end end\n elseif id==28049 or id==28050 then S.sword=nil;S.guides.sword=nil;S.swordResolved=true;akhAssign()\n elseif id==28065 then\n  if not S.trinityLast or now-S.trinityLast>800 then\n   S.trinityLast=now;S.trinityCount=(S.trinityCount or 0)+1;S.guides.trinity=nil;if S.resolveTrinitySchedule then S.resolveTrinitySchedule()end\n   if S.trinityCount%2==0 then S.trinityReady=false end\n  end\n end\nend\nlocal updates={}\nupdates.strengthPosition=function(now,p)\n local st=S.strengthState\n if st then\n  local done=0;for _,q in pairs(st.tethers)do if q.done then done=done+1 end end\n  if done==2 and S.strengthLeap and S.strengthRage then st.finished=true;S.guides.strengthPosition=nil;return end\n  if now>=st.expires then S.strengthState=nil;S.guides.strengthPosition=nil\n  elseif next(st.marks)or next(st.tethers)then\n   if not st.h then\n    local sources={}\n    for _,cid in ipairs({3634,3635})do\n     local found\n     for _,e in pairs(actors(cid)or{})do if e.alive then if found then found=nil;break end;found=e end end\n     if found then sources[#sources+1]=found end\n    end\n    if #sources==2 then\n     local dx,dz=200-sources[1].pos.x-sources[2].pos.x,200-sources[1].pos.z-sources[2].pos.z\n     if dx*dx+dz*dz>4 then\n      st.h=TensorCore.getHeadingToTarget(pos(100,100),pos(100+dx,100+dz));st.sources={}\n      for _,e in ipairs(sources)do st.sources[e.id]=sourcePoint(e)end\n     end\n    end\n   end\n   if st.marks[p.id]and not S.strengthLeap then S.guides.strengthPosition=nil end\n   if st.h then\n    local own;local open={}\n    for source,q in pairs(st.tethers)do\n     if not q.done then\n      if q.target==p.id then own=source end\n      local target=ent(q.target)\n      if not target or(target.job~=19 and target.job~=21 and target.job~=32 and target.job~=37)then open[#open+1]=source end\n     end\n    end\n    local r=role()\n    if r and r:sub(1,1)=='T'then\n     if own and st.sources[own]then\n      local q=st.sources[own];local lateral=(q.x-100)*math.cos(st.h)-(q.z-100)*math.sin(st.h)\n      if math.abs(lateral)>.5 then guide('strengthPosition',polar(pos(100,100),st.h+(lateral>0 and -1 or 1)*math.pi/10,20),st.expires,'CROSS TETHER - MITIGATE',7,1,25297)end\n     else\n      S.guides.strengthPosition=nil\n      local target,first,second=nil,math.huge,math.huge\n      for _,source in ipairs(open)do local q=st.sources[source];if q then local d=dist(p.pos,q);if d<first then second=first;first=d;target=source elseif d<second then second=d end end end\n      if target and second-first>1 then\n       local source=ent(target);local owner=ent(st.tethers[target].target)\n       if source and owner then guide('strengthPosition',pos((source.pos.x+owner.pos.x)/2,(source.pos.z+owner.pos.z)/2),now+1000,'TAKE NEAR TETHER',7,1,25297)end\n      end\n     end\n    elseif own then\n     S.guides.strengthPosition=nil\n     local q=st.tethers[own];if not q.warned then say('strengthPass','PASS TETHER TO A TANK');q.warned=true end\n    elseif not st.marks[p.id]and not S.strengthRage then\n     guide('strengthPosition',polar(pos(100,100),st.h,20),st.expires,'STACK UNDER THORDAN',6,1,25551)\n    elseif st.marks[p.id]and not S.strengthLeap then\n     local spots={};for _,deg in ipairs({-100,180,100})do spots[#spots+1]=polar(pos(100,100),st.h+deg*math.pi/180,20)end\n     local counts={};local mine\n     st.leapClaims=st.leapClaims or{}\n     for id in pairs(st.marks)do local e=ent(id);if e and e.alive then\n      local first,second,index=math.huge,math.huge,nil\n      for i,q in ipairs(spots)do local d=dist(e.pos,q);if d<first then second=first;first=d;index=i elseif d<second then second=d end end\n      local claim=st.leapClaims[id]\n      if first<3 and second-first>2 then\n       if not claim or claim.index~=index then claim={index=index,since=now};st.leapClaims[id]=claim end\n       if now-claim.since>=250 then counts[index]=(counts[index]or 0)+1;if id==p.id then mine=index end end\n      else st.leapClaims[id]=nil end\n     else st.leapClaims[id]=nil end end\n     local function leapSafe(dest, origin)\n      for _,v in pairs(S.danger)do if v.hit==25564 and now<v.expires and type(v.p)=='table'and dist(dest,v.p)<v.r+.6 and (not origin or dist(origin,v.p)>=v.r+.6)then return false end end\n      for source,t in pairs(st.tethers)do local b=ent(source);local e=not t.done and ent(t.target)\n       if b and e then local h=TensorCore.getHeadingToTarget(b.pos,e.pos);local function inCone(q)\n          local dx,dz=q.x-b.pos.x,q.z-b.pos.z\n          return dx*dx+dz*dz<17*17 and(dx*math.sin(h)+dz*math.cos(h))/math.max(.1,math.sqrt(dx*dx+dz*dz))>math.cos(math.pi/4+.05)\n         end\n         if inCone(dest) and (not origin or not inCone(origin))then return false end\n       end\n      end\n      return true\n     end\n     st.leapChoices={};local free={}\n     for i,q in ipairs(spots)do if(not counts[i]or mine==i)and leapSafe(q)then st.leapChoices[#st.leapChoices+1]=q end;if not counts[i]then free[#free+1]=i end end\n     local selected=mine and counts[mine]==1 and mine or #free==1 and free[1]or nil\n     local function routeClear(dest)\n      if not leapSafe(dest)then return false end\n      local steps=math.max(1,math.ceil(dist(p.pos,dest)))\n      for i=1,steps do\n       local fraction=i/steps\n       if not leapSafe(pos(p.pos.x+(dest.x-p.pos.x)*fraction,p.pos.z+(dest.z-p.pos.z)*fraction),p.pos)then return false end\n      end\n      return true\n     end\n     local nearestPreview=false\n     if O.blueJumpArrow and not selected then\n      local previous=st.blueJumpPreview\n      if previous and not counts[previous]and routeClear(spots[previous])then\n       selected=previous\n      else\n       local bestDistance=math.huge\n       for _,index in ipairs(free)do\n        local distance=dist(p.pos,spots[index])\n        if distance<bestDistance and routeClear(spots[index])then selected=index;bestDistance=distance end\n       end\n      end\n      st.blueJumpPreview=selected\n      nearestPreview=selected~=nil\n     else\n      st.blueJumpPreview=nil\n     end\n     S.guides.strengthPosition=nil\n     if selected then\n      local dest=spots[selected]\n      if leapSafe(dest)then\n       local path=mine~=selected and routeClear(dest)\n       local text=mine==selected and'HOLD BLUE JUMP SPOT'or nearestPreview and'NEAREST FREE BLUE JUMP SPOT'or path and'BLUE MARK - LAST FREE SPOT'or'BLUE JUMP SPOT - AVOID PUDDLES'\n       guide('strengthPosition',dest,st.expires,text,7,1,25565)\n       S.guides.strengthPosition.noArrow=not path\n       if nearestPreview then S.guides.strengthPosition.said=true end\n      end\n     end\n     if not st.spreadSaid then say('strengthLeap','BLUE JUMP - SPREAD AWAY');st.spreadSaid=true end\n    else S.guides.strengthPosition=nil end\n   end\n  end\n end\nend\nupdates.sanctity=function(now,p)\n S.updateIcePartner(now,p)\n local floor=S.sanctityFloor\n if floor then\n  if now>=floor.expires then S.sanctityFloor=nil\n  elseif not floor.retryAt or now>=floor.retryAt then\n   floor.retryAt=now+500\n   for id,kind in pairs(floor.pending)do S.sanctityOrb(id,kind=='hit')end\n  end\n end\n local t=S.sanctity\n if t then\n  if now>=t.expires then S.sanctity=nil;S.guides.sanctity=nil\n  else\n   setupSanctity()\n   if t.ready then\n    local g=t.groups[p.id]\n    if g then\n     local second=t.hits>=(t.early and 3 or 5)\n     local h=t.heading+(g==1 and math.pi or 0)+t.sign*(second and 33.3 or(t.early and 15 or 11.7))*math.pi/180\n     guide('sanctity',polar(pos(100,100),h,20),t.expires,second and'MOVE INTO CLEARED ORBS'or('YOUR FOUR - '..(t.sign<0 and'CLOCKWISE'or'COUNTERCLOCKWISE')),7,1)\n     if not t.swapSaid then\n      local r=role();local home=r and(r:sub(2)=='1'and 1 or 2)\n      if home and home~=g then\n       t.flexPartner=idOf(r:sub(1,1)..(r:sub(2)=='1'and'2'or'1'))\n       say('sanctitySwap','SWAP WITH YOUR ROLE PARTNER')\n      end\n      t.swapSaid=true\n     end\n    end\n   end\n  end\n end\n -- Retiring the orb route must happen before creating its successor, otherwise\n -- the expiry cleanup erases the new arrow on its first update.\n if S.icePrep and not S.sanctity then\n  if now<S.icePrep.expires and not S.meteors then\n   guide('sanctity',S.icePrep.p,S.icePrep.expires,'PREPOSITION WITH ICE PARTNER',3,1)\n  else S.icePrep=nil;S.guides.sanctity=nil end\n end\n\nend\nupdates.gaze=function(now,p)\n local gaze=S.gaze\n if gaze and now>=gaze.expires then S.releaseGaze();S.gaze=nil;gaze=nil end\n if (S.death and O.p5Gaze==false)or(not S.death and not O.lockGaze)then S.releaseGaze()\n elseif gaze and gaze.eye and gaze.boss and now>=gaze.expires-1800 then\n  local boss=ent(gaze.boss)\n  if boss then\n   local h1=TensorCore.getHeadingToTarget(p.pos,boss.pos);local h2=TensorCore.getHeadingToTarget(p.pos,gaze.eye)\n   local best,score=nil,math.huge\n   for i=0,71 do local h=i*math.pi/36;local d=math.max(math.cos(h-h1),math.cos(h-h2));if d<score then best=h;score=d end end\n   if score<-.05 then\n    TensorCore.API.TensorACR.setLockFaceHeading(best);TensorCore.API.TensorACR.setHardLockFace(true);TensorCore.API.TensorACR.toggleLockFace(true);S.gazeLocked=true\n   else S.releaseGaze()end\n  end\n end\n\nend\nupdates.strengthTowers=function(now,p)\n claimStrengthTowers()\n\nend\nupdates.shining=function(now,p)\n if not S.shining and S.preDash and now<S.preDash.expires then\n  local a,b\n  for _,v in pairs(actors(3634))do if v.alive and dist(v.pos,pos(100,100))>=19 then if a then a=nil;break end;a=v end end\n  for _,v in pairs(actors(3639))do if v.alive then if b then b=nil;break end;b=v end end\n  if a and b then\n   local h=TensorCore.getHeadingToTarget(b.pos,a.pos)\n   guide('shining',polar(b.pos,h+math.pi,3),S.preDash.expires,'OPPOSITE ADELPHEL - PREPARE KNOCKBACK',7,1)\n   S.guides.shining.said=S.preDash.announced==true\n  end\n end\n local sh=S.shining\n if sh then\n  if now>=sh.expires then S.shining=nil;S.guides.shining=nil;S.danger.execution=nil\n  elseif sh.group then\n   local target=sh.landing and ent(sh.landing)\n   if target and not sh.executionDone then\n    danger('execution',function()local q=ent(sh.landing);return q and q.pos end,5,sh.expires,25301)\n    if p.id==target.id and sh.tank then\n     local safe=true\n     for _,q in ipairs(sh.flares or{})do if not q.done and dist(sh.tank,q)<9.5 then safe=false;break end end\n     if safe then guide('shining',sh.tank,sh.expires,'TANK LANDING - AWAY FROM PARTY',8,1,25301)\n     else guide('shining',sh.group,sh.expires,'SAFE CORNER - WAIT',7,1,25301);S.guides.shining.said=true end\n    end\n   end\n  end\n end\n\nend\nupdates.doorTether=function(now,p)\n local dt=S.doorTether\n if dt then\n  if now>=dt.expires then S.doorTether=nil;S.guides.doorTether=nil;S.danger.doorDance=nil\n  else\n   local b=ent(dt.source);local t=ent(dt.target);local r=role()\n   if b and t then\n    if not dt.detached and not dt.hit and r=='T2'and t.id~=p.id then\n     guide('doorTether',pos((b.pos.x+t.pos.x)/2,(b.pos.z+t.pos.z)/2),dt.expires,'TAKE ADELPHEL TETHER',8,1,25297)\n    elseif t.id==p.id then\n     if r=='T2'then\n      guide('doorTether',pos(100,96),dt.expires,'ISOLATE NORTH - INVULN',8,1)\n     else\n      if not dt.detached and not dt.hit and not dt.warned then say('passDoorTether','PASS TETHER TO OFF TANK');dt.warned=true end\n      S.guides.doorTether=nil\n     end\n    else S.guides.doorTether=nil end\n    if dt.hit then\n     local h=TensorCore.getHeadingToTarget(b.pos,t.pos)\n     S.danger.doorDance={p=sourcePoint(b),r=16,expires=dt.expires,hit=25299,kind='cone',angle=math.pi/2,h=h}\n    end\n   end\n  end\n end\n\nend\nupdates.sword=function(now,p)\n local read=S.swordRead\n if read then\n  local e=ent(read.entity);local b=e and TensorCore.getBuff(e,2056)\n  if b and (b.stacks==0x12A or b.stacks==0x12B)then\n   S.sword={inside=b.stacks==0x12B,expires=read.resolve,entity=read.entity};S.swordRead=nil\n   S.p7Boss=read.entity;say('sword',S.sword.inside and 'IN'or'OUT')\n   danger('sword',sourcePoint(e),8,read.resolve,S.sword.inside and 28050 or 28049,S.sword.inside and 'donut'or'circle',50)\n   if next(S.towers)then akhAssign()end\n  elseif now>=read.expires then S.swordUnknown=b and b.stacks or 'missing';S.swordRead=nil;say('sword','CHECK FIRE OR ICE')end\n end\n if S.sword and now>=S.sword.expires then S.sword=nil end\n\nend\nupdates.beam=function(now,p)\n local b=S.beam;if not b or now>=b.expires then S.guides.beam=nil;return end\n local north=(S.beamWave or 1)%2==1\n b.spots={};for i,dx in ipairs({-6.495,-3.75,3.75,6.495})do\n  local dz=({3.75,6.495,6.495,3.75})[i];b.spots[i]=pos(100+dx*(9.5/7.5),100+(north and -dz or dz)*(9.5/7.5))\n end\n local marked={};for id,m in pairs(S.markers)do if m.id==234 and m.at>=b.at-150 and now-m.at<9000 then local e=ent(id);if e and e.alive then marked[#marked+1]=e end end end\n b.visible={};b.candidates=b.candidates or{};b.claims=b.claims or{}\n local mine=false;local counts={};local owners={}\n if #marked==4 then\n  for _,e in ipairs(marked)do\n   if e.id==p.id then mine=true end\n   local first,second,index=math.huge,math.huge,nil\n   for i,q in ipairs(b.spots)do local d=dist(e.pos,q);if d<first then second=first;first=d;index=i elseif d<second then second=d end end\n   local candidate=first<=2.5 and second-first>.75 and index or nil\n   local old=b.candidates[e.id]\n   if candidate then\n    if not old or old.index~=candidate then old={index=candidate,at=now};b.candidates[e.id]=old end\n    if now-old.at>=250 then b.claims[e.id]=candidate end\n   else b.candidates[e.id]=nil end\n   local claimed=b.claims[e.id]\n   if claimed and(dist(e.pos,b.spots[claimed])>3 or(candidate and candidate~=claimed))then b.claims[e.id]=nil;claimed=nil end\n   if claimed then counts[claimed]=(counts[claimed]or 0)+1;owners[claimed]=e.id end\n  end\n end\n if #marked<4 or mine then\n  local available={};local own=b.claims[p.id]\n  for i=1,4 do\n   if not counts[i]then b.visible[#b.visible+1]=i;available[#available+1]=i\n   elseif own==i then b.visible[#b.visible+1]=i end\n  end\n  if mine and own and counts[own]==1 then\n   guide('beam',b.spots[own],b.expires,'HOLD BEAM SPOT',6,.9,25303);S.guides.beam.noArrow=true\n  elseif mine and #available==1 then\n   guide('beam',b.spots[available[1]],b.expires,'LAST FREE BEAM SPOT',6,.9,25303)\n  else S.guides.beam=nil end\n  if mine and not b.choiceSaid then say('beamChoices','CHOOSE A '..(north and 'NORTH'or'SOUTH')..' BEAM SPOT');b.choiceSaid=true end\n else\n  guide('beam',pos(100,north and 106 or 94),b.expires,'STACK OPPOSITE BEAMS',5,1,25303)\n end\nend\nupdates.ps=function(now,p)\n S.psPartner=nil\n if S.myPS and S.psExpires and now<S.psExpires then\n  local pair={}\n  for eid,m in pairs(S.markers)do\n   if m.id==S.myPS and now-m.at<12000 then pair[#pair+1]=eid end\n  end\n  if #pair==2 and(pair[1]==p.id or pair[2]==p.id)then\n   local other=ent(pair[1]==p.id and pair[2]or pair[1])\n   if other and other.alive then\n    S.psPartner=other.id\n    if not S.psLabelAt or now-S.psLabelAt>=750 then\n     AnyoneCore.addTimedWorldTextOnEnt(1000,'YOUR PARTNER',other.id,psColors[S.myPS],true,1.2,2)\n     S.psLabelAt=now\n    end\n   end\n  end\n  local r=role();if r then\n   local id=S.myPS;local x,z\n   if id==281 then\n    if O.circleSide>0 then x=O.circleSide==1 and 1 or -1\n    else\n     if not S.psCircleSign then\n      local partners={}\n      for eid,m in pairs(S.markers)do if m.id==281 and now-m.at<12000 then local e=ent(eid);if e then partners[#partners+1]=e end end end\n      if #partners==2 and math.abs(partners[1].pos.x-partners[2].pos.x)>.2 then\n       table.sort(partners,function(a,b)return a.pos.x<b.pos.x end);S.psCircleSign=partners[1].id==p.id and -1 or 1\n      end\n     end\n     x=S.psCircleSign\n    end\n    z=0\n   elseif id==282 then x=r:sub(1,1)=='H'and 1 or -1;z=x\n   elseif id==284 then x=0;z=r:sub(1,1)=='T'and -1 or 1\n   elseif id==283 then x=r:sub(1,1)=='T'and 1 or -1;z=-x end\n   if x then local d=math.sqrt(x*x+z*z);local radius=S.psAfterKB and 18 or 3\n    guide('ps',pos(100+x/d*radius,100+z/d*radius),S.psExpires,S.psAfterKB and 'BREAK CHAIN - SPREAD'or'KNOCKBACK POSITION',7,1,25311)\n    S.guides.ps.color=psColors[id]\n   end\n  end\n end\n\nend\nupdates.meteor=function(now,p)\n local meteor=S.meteors\n if meteor and not meteor.done and now-meteor.at<40000 then\n  meteorAssignments()\n  S.updateIcePartner(now,p)\n  if not meteor.assignment and not meteor.stormDone and meteor.quadrants and meteor.quadrants[p.id]then\n   guide('meteor',cardinal(meteor.quadrants[p.id],10),meteor.at+15000,'ICE PAIR',5,1,25575)\n  end\n  if meteor.assignment then\n   local mine=meteor.assignment[p.id];local q=meteor.quadrants[p.id]\n   if mine and not meteor.firstDone then\n    if not meteor.stormDone then guide('meteor',cardinal(q,10),mine.expires,'ICE PAIR',5,1,25575)\n    else guide('meteor',mine.p,mine.expires,'YOUR TOWER',8,3,29564)end\n   elseif meteor.firstDone then\n    local index=meteor.nextIndex[p.id]\n    for _,v in pairs(meteor.second)do\n     local actual=math.floor(clockAngle(v.p)/(math.pi/4)+.5)%8\n     if actual==index then\n      local allow=true\n      if meteor.prey[p.id]then\n       local difference=math.abs((clockAngle(p.pos)-index*math.pi/4+math.pi)%(2*math.pi)-math.pi)\n       allow=dist(p.pos,pos(100,100))>=15 and difference<math.pi/4\n      end\n      if allow then\n       meteor.mySecond=v.source\n       local inner=mine and dist(mine.p,pos(100,100))<7\n       guide('meteor',v.p,v.expires,'YOUR SECOND TOWER',8,3,28651)\n       if meteor.secondTowerAnnounced then S.guides.meteor.said=true end\n       if inner and not meteor.kbResolved then\n        -- Show the future landing tower, but do not tell the player to run there.\n        S.guides.meteor.noArrow=true;S.guides.meteor.said=true\n       end\n      end\n      break\n     end\n    end\n   end\n  end\n end\n\nend\n-- Check the whole next-step segment against known mechanic geometry.\nlocal function meteorDiskClear(from,q,c,r,escape)\n local dx,dz=q.x-from.x,q.z-from.z\n local sx,sz=from.x-c.x,from.z-c.z\n if escape and sx*sx+sz*sz<r*r and sx*dx+sz*dz>=0 then return true end\n local length2=dx*dx+dz*dz\n local f=length2>0 and math.max(0,math.min(1,-(sx*dx+sz*dz)/length2))or 0\n local x,z=sx+dx*f,sz+dz*f\n return x*x+z*z>=r*r\nend\nlocal function meteorSegmentClear(from,q,m)\n for _,c in pairs(m.fire)do if not meteorDiskClear(from,q,c,7.5,false)then return false end end\n for _,c in pairs(m.ice)do if not meteorDiskClear(from,q,c,7.5,false)then return false end end\n if m.comets then for _,c in pairs(m.comets)do if not meteorDiskClear(from,q,c.p,5.5,true)then return false end end end\n return true\nend\nlocal function meteorRunStep(now,p)\n local m=S.meteors;local run=m and m.run\n if not run or m.done or run.drops>=7 or now-run.at>16000 then S.guides.meteorRun=nil;return end\n local ice,fire=0,0\n if m.fire then for _ in pairs(m.fire)do fire=fire+1 end end\n if m.ice then for _ in pairs(m.ice)do ice=ice+1 end end\n if fire~=4 or ice~=4 then\n  S.guides.meteorRun=nil\n  if not run.missingSaid then say('meteorPathMissing','RUN CLOCKWISE - WATCH PUDDLES');run.missingSaid=true end\n  return\n end\n local nextAngle=clockAngle(p.pos)+math.pi/15\n local radius=(O.meteorRoute or 0)==0 and(19.2+math.cos(nextAngle*8))or 20.2\n run.next=run.next or pos(100,100)\n local q=run.next;q.x=100+math.sin(nextAngle)*radius;q.z=100-math.cos(nextAngle)*radius\n if not meteorSegmentClear(p.pos,q,m)then\n  q.x=100+math.sin(nextAngle)*20.2;q.z=100-math.cos(nextAngle)*20.2\n  if not meteorSegmentClear(p.pos,q,m)then\n   S.guides.meteorRun=nil\n   if not run.blockedSaid then say('meteorPathBlocked','SLOW DOWN - KEEP METEORS APART');run.blockedSaid=true end\n   return\n  end\n end\n run.blockedSaid=nil\n guide('meteorRun',q,now+400,(O.meteorRoute or 0)==0 and'CLOCKWISE ZIGZAG'or'CLOCKWISE OUTER EDGE',9,.8)\n S.guides.meteorRun.said=true\nend\nfunction S.logP2Knockback(reason,allowed,observed)\n local m=S.meteors;local kb=m and m.kb;local p=player();local mine=m and m.assignment and p and m.assignment[p.id]\n local now=Now();local key=reason..':'..tostring(allowed)\n if not observed and S.p2KBLog and S.p2KBLog.key==key and now-S.p2KBLog.at<2000 then return end\n S.p2KBLog={key=key,at=now}\n local radius=mine and dist(mine.p,pos(100,100))\n local text=string.format('[LPDU P2 KB] decision=%s allowed=%s toggle=%s firstTower=%s radius=%s firstDone=%s playerRadius=%s msToHit=%s observedAction=%s',reason,tostring(allowed),tostring(O.p2Knockback~=false),tostring(mine and mine.source),radius and string.format('%.2f',radius)or'unknown',tostring(m and m.firstDone),p and kb and string.format('%.2f',dist(p.pos,kb.source))or'unknown',tostring(kb and kb.deadline-now),tostring(observed))\n TensorCore.timelineLogToFile(text..'\\n');d(text)\nend\nfunction S.p2KnockbackAllowed()\n local m=S.meteors;local kb=m and m.kb;local p=player();local q=S.p2KBRequest\n local mine=m and m.assignment and p and m.assignment[p.id];local now=Now();local reason\n if not O.enabled then reason='draws disabled'\n elseif O.p2Knockback==false then reason='toggle off'\n elseif not p or not p.alive then reason='player unavailable'\n elseif not kb or m.done or m.kbResolved or now>=kb.deadline then reason='no active knockback'\n elseif not mine then reason='assignment unknown'\n elseif dist(p.pos,kb.source)<10 then reason='standing middle - ride knockback'\n elseif not m.firstDone then reason='first tower not resolved'\n elseif not q or q.firstTower~=mine.source then reason='request missing or stale'\n elseif now<q.starts or now>=q.expires then reason='outside request window'\n else reason='standing outside middle - immunity permitted'end\n local allowed=reason=='standing outside middle - immunity permitted'\n if kb or q then S.logP2Knockback(reason,allowed)end\n return allowed\nend\n\nlocal meteorUpdate=updates.meteor\nupdates.meteor=function(now,p)\n meteorUpdate(now,p);meteorRunStep(now,p);updates.returnNorth(now,p)\n local m=S.meteors;local kb=m and m.kb\n if not kb or now>=kb.deadline then S.guides.meteorKB=nil;S.p2KBRequest=nil;return end\n local mine=m.assignment and m.assignment[p.id]\n if not mine then S.p2KBRequest=nil;S.logP2Knockback('assignment unknown',false);return end\n S.p2KnockbackAllowed()\n if dist(p.pos,kb.source)>=10 then\n  if O.p2Knockback~=false then\n   S.p2KBRequest={starts=kb.deadline-1800,expires=kb.deadline,firstTower=mine.source}\n  else S.p2KBRequest=nil end\n else\n  S.p2KBRequest=nil\n  local index=m.nextIndex[p.id]\n  for _,v in pairs(m.second)do\n   local actual=math.floor(clockAngle(v.p)/(math.pi/4)+.5)%8\n   if actual==index then\n    local d=dist(kb.source,v.p)\n    if d>16 then\n     local scale=(d-16)/d\n     local q=pos(kb.source.x+(v.p.x-kb.source.x)*scale,kb.source.z+(v.p.z-kb.source.z)*scale,kb.source.y)\n     guide('meteorKB',q,kb.deadline,dist(p.pos,q)>1 and'KNOCKBACK POSITION'or'HOLD HERE - RIDE KNOCKBACK',10,1,25308)\n    end\n    break\n   end\n  end\n end\nend\nupdates.pure=function(now,p)\n local pure=S.pure\n if not pure then return end\n pure.cones={}\n if now>=pure.expires then S.guides.pure=nil;S.guides.drop=nil;return end\n local b=ent(pure.source);if not b then return end\n -- Brightwing visibly tethers the two closest players. Everyone sees both paths.\n if pure.wave<4 then\n  local candidates={};for _,e in ipairs(party())do if e.alive then candidates[#candidates+1]=e end end\n  table.sort(candidates,function(a,c)return dist(a.pos,b.pos)<dist(c.pos,b.pos)end)\n  for i=1,math.min(2,#candidates)do local e=candidates[i]\n   pure.cones[#pure.cones+1]={p=sourcePoint(b),h=TensorCore.getHeadingToTarget(b.pos,e.pos),own=e.id==p.id}\n  end\n end\n -- P1 prison is centred at (89,100), not on Charibert at its south side.\n -- Withhold positional instructions in the rewind arena until its geometry is established.\n if dist(b.pos,pos(89,105))>3 then S.guides.pure=nil;S.guides.drop=nil;return end\n local c=pos(89,100,b.pos.y)\n local r=role();local order=r and ({H=0,M=1,R=2,T=3})[r:sub(1,1)]\n if O.brightwingTimer==true and not pure.personalTimer and order and pure.wave<=order then\n  -- Brightwing hits about 15.1 seconds into Pure of Heart, then every 5 seconds.\n  local duration=pure.at+15100+order*5000-now\n  if duration>0 then\n   local q=b.pos\n   AnyoneCore.addTimedWorldText(duration,'YOUR BRIGHTWING CONE',{x=q.x,y=q.y+4,z=q.z},0xFFFFFFFF,true,1.15)\n   AnyoneCore.addWorldTextCountdown(duration,{x=q.x,y=q.y+3,z=q.z},0xFFFFFFFF,true,1.5)\n   pure.personalTimer=true\n  end\n end\n local function move(key,dest,expires,text,priority,hit)\n  local function clear(from,q)\n   -- Conservative interior route envelope, containing the observed bait/wait/drop spots.\n   if dist(q,c)>7.4 then return false end\n   for _,v in pairs(S.danger)do if v.hit==25370 and type(v.p)=='table'and now<v.expires then\n    if not meteorDiskClear(from,q,v.p,3.5,true)or dist(q,v.p)<3.5 then return false end\n   end end\n   -- Baiters must enter their own aimed cone. Returning/waiting players avoid\n   -- other predicted cones; an existing overlap may be exited, never re-entered.\n   if key~='pure'or text~='BAIT YOUR CONE'then for _,v in ipairs(pure.cones)do if not v.own then\n    local function inside(at)\n     local h=TensorCore.getHeadingToTarget(v.p,at)\n     return dist(at,v.p)<18.5 and math.cos(h-v.h)>math.cos(math.pi/12+.035)\n    end\n    if inside(q)then return false end\n    local exited=not inside(from);local steps=math.max(1,math.ceil(dist(from,q)*2))\n    for n=1,steps do local f=n/steps;local at=pos(from.x+(q.x-from.x)*f,from.z+(q.z-from.z)*f)\n     if inside(at)then if exited then return false end else exited=true end\n    end\n   end end end\n   return true\n  end\n  local id=key..':'..text..':'..pure.wave\n  if pure.routeID~=id or not pure.routeAt or now-pure.routeAt>=300 then\n   pure.routeID=id;pure.routeAt=now;pure.routePoint=nil\n   if clear(p.pos,dest)then pure.routePoint=dest\n   else\n    local best,length\n    for _,r in ipairs({2,4,6})do for i=0,23 do local q=polar(c,i*math.pi/12,r)\n     local d=dist(p.pos,q)+dist(q,dest)\n     if clear(p.pos,q)and clear(q,dest)and(not length or d<length)then best=q;length=d end\n    end end\n    pure.routePoint=best\n   end\n  end\n  if pure.routePoint then\n   guide(key,pure.routePoint,expires,text,priority,.7,hit)\n   pure.blockedID=nil\n  else\n   S.guides[key]=nil\n   pure.blockedID=id\n  end\n end\n if pure.dropUntil and now<pure.dropUntil then\n  local side=(pure.dropWave or 1)%2==1 and 1 or -1\n  move('drop',pos(c.x+side*5,c.z,c.y),pure.dropUntil,'DROP PUDDLE HERE',6)\n  S.guides.pure=nil;return\n end\n S.guides.drop=nil\n if order==nil then return end\n if order==pure.wave and pure.wave<4 then\n  local side=r:sub(2,2)=='1'and -1 or 1\n  move('pure',pos(c.x+side*2,c.z+7,c.y),pure.expires,'BAIT YOUR CONE',3,25369)\n else\n  move('pure',pos(c.x,c.z-1.5,c.y),pure.expires,'WAIT NORTH OF CHARIBERT',2)\n  if S.guides.pure then S.guides.pure.said=true end\n end\nend\nupdates.spiral=function(now,p)\n local strength=S.strengthState\n if strength and not strength.lightningResolved and not S.strengthLeap and now<strength.expires and(not S.spiral or S.spiral.predicted)then\n  local knights={};local count=0\n  -- Observe the actual three charge knights once they take their outer positions.\n  -- No guessed waymarks or fixed timer destination before their lanes are known.\n  for _,cid in ipairs({3636,3637,3638})do\n   local found\n   for _,e in pairs(actors(cid))do if e.alive and dist(e.pos,pos(100,100))>21 then\n    local toward=TensorCore.getHeadingToTarget(e.pos,pos(100,100))\n    if math.cos(e.pos.h-toward)>.98 then if found then found=nil;break end;found=e end\n   end end\n   if found then knights[found.id]={p=sourcePoint(found),h=found.pos.h};count=count+1 end\n  end\n  if count==3 then\n   S.spiral=S.spiral or{at=now,knights={}};S.spiral.knights=knights;S.spiral.predicted=true;S.spiral.ends=now+1500;S.lightningPrep=true\n  end\n end\n local s=S.spiral\n if s and now<s.ends then\n  local n=0;for _ in pairs(s.knights)do n=n+1 end\n  local g=group()\n  if n==3 and g then\n   local axes={};local count=0\n   for _,k in pairs(s.knights)do local axis=math.floor(math.atan2(k.p.x-100,100-k.p.z)/(math.pi/4)+.5)%4;if not axes[axis]then axes[axis]=true;count=count+1 end end\n   local missing;if count==3 then for i=0,3 do if not axes[i]then missing=i;break end end end\n   local best\n   if missing~=nil then local angle=(missing+4)*math.pi/4;best=pos(100+18*math.sin(angle),100-18*math.cos(angle))end\n   if best and g==2 then best=pos(200-best.x,200-best.z)end\n   if best then\n    if not(strength and strength.lightningResolved)and(S.lightningPrep or S.lightningEnds and now<S.lightningEnds)then\n     local r=role()\n     if not r then S.guides.spiral=nil;return end\n     if s.routeAt and now-s.routeAt<300 then return end;s.routeAt=now\n     local heavy=S.danger.heavy\n     local function clear(from,q)\n      if dist(q,pos(100,100))>20.5 or not S.chargePathClear(from,q)then return false end\n      if heavy and now<heavy.expires then\n       if heavy.kind=='donut'then\n        local a,b=dist(from,heavy.p),dist(q,heavy.p);local inner,outer=heavy.r-.5,heavy.angle+.5\n        if b>inner and b<outer then return false end\n        if a<=inner and b>=outer or a>=outer and b<=inner then return false end\n        if a>=outer and b>=outer and not meteorDiskClear(from,q,heavy.p,outer,false)then return false end\n       elseif dist(q,heavy.p)<heavy.r+.5 or not meteorDiskClear(from,q,heavy.p,heavy.r+.5,true)then return false end\n      end\n      return true\n     end\n     -- Frog EU/LPDU formation on the observed missing charge axis.\n     -- Tanks at radius12, healers19; melee/ranged at opposite outer corners.\n     s.tSpread=s.tSpread or{}\n     local plan=s.tSpread[g]\n     if not plan then\n      local base=TensorCore.getHeadingToTarget(pos(100,100),best)\n      local function laneSafe(q)\n       for _,k in pairs(s.knights)do local dx,dz=q.x-k.p.x,q.z-k.p.z;if math.abs(dx*math.cos(k.h)-dz*math.sin(k.h))<8.25 then return false end end\n       return true\n      end\n      local dx,dz=math.sin(base),math.cos(base)\n      local candidate={T=polar(pos(100,100),base,12),H=polar(pos(100,100),base,19),M=pos(100+19.15*dx-6.5*dz,100+19.15*dz+6.5*dx),R=pos(100+19.15*dx+6.5*dz,100+19.15*dz-6.5*dx)}\n      local valid=true;for _,q in pairs(candidate)do if not laneSafe(q)then valid=false end end\n      if valid then plan=candidate end\n      s.tSpread[g]=plan\n     end\n     if plan and S.strengthState then\n      S.strengthState.baitHeadings=S.strengthState.baitHeadings or{}\n      S.strengthState.baitHeadings[g]=TensorCore.getHeadingToTarget(pos(100,100),plan.T)\n     end\n     local chosenRole=plan and plan[r:sub(1,1)]\n     local goals=chosenRole and{chosenRole}or{}\n     s.spreadDestination=chosenRole\n     local chosen,waypoint,cost\n     local spreadEnd=S.lightningPrep and now+12000 or S.lightningEnds\n     local budget=math.max(0,(spreadEnd-now)/1000*6-.6)\n     for _,q in ipairs(goals)do\n      if clear(p.pos,q)and dist(p.pos,q)<=budget then chosen=q;cost=dist(p.pos,q);break end\n      for ring=1,2 do for j=0,15 do\n       local w=polar(p.pos,j*math.pi/8,ring*3)\n       local length=dist(p.pos,w)+dist(w,q)\n       if length<=budget and(not cost or length<cost)and clear(p.pos,w)and clear(w,q)then chosen=q;waypoint=w;cost=length end\n      end end\n      if chosen then break end\n     end\n     if chosen then\n      s.spreadGoal=chosen\n      guide('spiral',waypoint or chosen,S.lightningPrep and now+1200 or math.min(s.ends,S.lightningEnds),'SPREAD - AVOID CHARGES',7,.35,25549)\n      S.guides.spiral.said=(strength and strength.spreadAnnounced)or s.spreadAnnounced or false\n     else S.guides.spiral=nil end\n    else guide('spiral',best,s.ends,'SAFE SIDE',5,1,25556)end\n   else S.guides.spiral=nil end\n  end\n end\n\nend\nupdates.returnNorth=function(now,p)\n local r=S.returnNorth\n if not r or now>=r.expires then S.returnNorth=nil;S.guides.returnNorth=nil;return end\n local m=S.meteors\n if m and m.prey[p.id]and(not m.run or m.run.drops<7)then\n  S.guides.returnNorth=nil\n  if not r.waitSaid then say('returnMeteorWait','FINISH YOUR METEORS');r.waitSaid=true end\n  return\n end\n if dist(p.pos,r.p)<=1.5 then S.returnNorth=nil;S.guides.returnNorth=nil;return end\n guide('returnNorth',r.p,r.expires,'RETURN NORTH - BOSS',4,1.5)\nend\nupdates.might=function(now,p)\n local m=S.might\n if not m or now>=m.expires then S.might=nil;S.danger.might=nil;S.guides.might=nil;return end\n local b=ent(m.source);if not b then return end\n if S.danger.might then S.danger.might.h=b.pos.h end\n local target=ent(b.targetid)\n if not target then S.guides.might=nil;return end\n if target.id==p.id then\n  S.guides.might=nil\n  if not m.warned then say('mightTank','TANK CLEAVES - MITIGATE');m.warned=true end\n else\n  local q=polar(b.pos,b.pos.h+math.pi,6)\n  if m.trackFacing then q=function()local boss=ent(m.source);return boss and polar(boss.pos,boss.pos.h+math.pi,6)end end\n  guide('might',q,m.expires,'BEHIND BOSS - TANK CLEAVES',5,1)\n  if not m.behindCalled then\n   say('mightBehind','BEHIND BOSS - TANK CLEAVES')\n   m.behindCalled=true\n  end\n  S.guides.might.said=true\n end\nend\nlocal mercyGroups={{'T1','H1','M1','R1'},{'T2','H2','M2','R2'}}\nlocal function mercyRingClear(from,q,heavy)\n local r1=dist(from,heavy.p);local r2=dist(q,heavy.p)\n if heavy.kind=='donut'then\n  if r1<heavy.r-.5 and r2<heavy.r-.5 then return true end\n  return meteorDiskClear(from,q,heavy.p,heavy.angle+.5,false)\n end\n return meteorDiskClear(from,q,heavy.p,heavy.r+.5,false)\nend\nlocal function mercyBait(m,p)\n local q\n if O.strengthBait==1 then q=m.hold else\n  local R=AnyoneCore.Roster;local g=group()\n  if not g or not R or not R.current()or not R.isReady()then return end\n  m.anchor=m.anchor or pos(100,100);local a=m.anchor;local x,y,z=0,0,0;local own=false\n  for _,slot in ipairs(mercyGroups[g])do local e=ent(R.idOf(slot));if not e or not e.alive then return end\n   x=x+e.pos.x;y=y+e.pos.y;z=z+e.pos.z;if e.id==p.id then own=true end\n  end\n  if not own then return end\n  a.x=x/4;a.y=y/4;a.z=z/4\n  local established=S.strengthState and S.strengthState.baitHeadings\n  local h=m.baitHeading or(established and established[g])\n  if not h then\n   -- Without a captured spread side, only accept an already clear group.\n   for _,slot in ipairs(mercyGroups[g])do local e=ent(R.idOf(slot));if dist(e.pos,a)>4 then return end end\n   if dist(a,pos(100,100))<2 then return end\n   h=TensorCore.getHeadingToTarget(pos(100,100),a)\n  end\n  m.baitHeading=h\n  q=polar(pos(100,100),h,3.5)\n end\n if not q then return end\n local heavy=S.danger.heavy\n if heavy and Now()<heavy.expires and not mercyRingClear(p.pos,q,heavy)then return end\n guide('mercy',q,m.baitEnd,O.strengthBait==1 and'HOLD YOUR SPOT'or'STACK WITH YOUR GROUP',5,1,25544)\n S.guides.mercy.said=m.stackAnnounced or false\nend\nupdates.mercy=function(now,p)\n local m=S.mercy\n if not m or now>=m.expires then S.mercy=nil;S.guides.mercy=nil;return end\n if now<m.baitEnd then\n  if m.strength then S.guides.mercy=nil;mercyBait(m,p)end\n  local g=S.guides.mercy;local heavy=S.danger.heavy\n  if g then\n   if(not heavy or now>=heavy.expires or mercyRingClear(p.pos,g.p,heavy))and S.chargePathClear(p.pos,g.p)then\n    S.guides.heavy=nil\n   else\n    S.guides.mercy=nil\n    local hold=S.guides.heavy\n    if hold then hold.text='WAIT FOR RING'end\n   end\n  end\n  return\n end\n if not m.firstCone or now-m.firstCone<100 then return end\n local d=dist(p.pos,m.p)\n if d<1 then S.guides.mercy=nil;return end\n local h=TensorCore.getHeadingToTarget(m.p,p.pos)\n local best,score\n m.candidate=m.candidate or pos(100,100);m.best=m.best or pos(100,100)\n for step=0,16 do\n  local offset=(step==0 and 0 or math.ceil(step/2)*(step%2==1 and 1 or -1))*math.pi/36\n  local q=m.candidate;q.x=m.p.x+math.sin(h+offset)*d;q.y=m.p.y;q.z=m.p.z+math.cos(h+offset)*d\n  local safe=(q.x-100)^2+(q.z-100)^2<=20.5^2 and dist(q,p.pos)<=7.5\n  for _,cone in pairs(m.cones)do\n   if now<cone.expires then\n    local ch=TensorCore.getHeadingToTarget(cone.p,q)\n    local diff=math.abs((ch-cone.h+math.pi)%(2*math.pi)-math.pi)\n    if diff<math.pi*17/180 then safe=false;break end\n   end\n  end\n  local heavy=S.danger.heavy\n  if safe and heavy and now<heavy.expires then\n   if not mercyRingClear(p.pos,q,heavy)then safe=false end\n  end\n  local rank=dist(p.pos,q)\n  if safe and(not score or rank<score)then m.best.x=q.x;m.best.y=q.y;m.best.z=q.z;best=m.best;score=rank end\n end\n if best then\n  guide('mercy',best,m.expires,m.strength and'DODGE CONES'or'DODGE BAITED CONES',9,1,25545)\n  if m.strength then S.guides.mercy.said=m.dodgeAnnounced or false end\n else S.guides.mercy=nil end\nend\nlocal function diveFacingPreview(now,p,dive,j)\n local east=math.pi/2\n local offset=j.direction*14\n local landing=polar(p.pos,p.pos.h,offset)\n local heading\n if dist(p.pos,j.dropPoint)<=2.25 then\n  heading=east\n elseif (p.pos.x-100)*(j.dropPoint.x-100)<0 then\n  local recovered=polar(p.pos,-east,offset)\n  local clear=dist(recovered,j.expectedLanding)<=2.25\n  if clear then\n   local peers=0\n   for id,v in pairs(S.jumps)do\n    if id~=p.id and v.order==j.order then\n     peers=peers+1\n     if v.direction==nil or not v.spot then clear=false\n     else\n      local x=v.spot==2 and 100 or v.spot==3 and 93 or 107\n      local z=j.order==2 and 89.5 or v.spot==2 and 107 or 100\n      if dist(recovered,polar(pos(x,z),east,v.direction*14))<5 then clear=false end\n     end\n    end\n   end\n   if clear and peers==(j.order==2 and 1 or 2)then heading=-east end\n  end\n end\n local deadline=dive.at+({14900,24800,35700})[j.order]\n if now>=deadline-950 and now<deadline+450 then\n  local reason=O.diveLockFace~=true and 'toggle off' or not heading and 'outside valid drop position' or S.gazeLocked and 'gaze lock active' or 'eligible'\n  if j.lockDiagnostic~=reason then\n   j.lockDiagnostic=reason\n   TensorCore.timelineLogToFile(string.format('[DSR Dive] order=%d direction=%d decision=%s msToHit=%d x=%.2f z=%.2f heading=%.3f desired=%s dropDistance=%.2f predictedX=%.2f predictedZ=%.2f\\n',j.order,j.direction,reason,deadline-now,p.pos.x,p.pos.z,p.pos.h,tostring(heading),dist(p.pos,j.dropPoint),landing.x,landing.z))\n  end\n end\n local safe=heading and dist(landing,j.expectedLanding)<=2.25 and math.cos(p.pos.h-heading)>.985\n S.diveFacePreview={landing=landing,heading=heading,safe=safe,expires=now+300}\n if O.diveLockFace==true and heading and now>=deadline-950 and now<deadline+450 and not S.gazeLocked then\n  if S.diveFacingLock~=heading then\n   local acr=TensorCore.API.TensorACR\n   acr.setLockFaceHeading(heading)\n   acr.setHardLockFace(true)\n   acr.toggleLockFace(true)\n   S.diveFacingLock=heading\n   TensorCore.timelineLogToFile(\"[DSR Dive] LockFace enabled\\n\")\n  end\n else S.releaseDiveFacing()end\n return heading\nend\nupdates.dive=function(now,p)\n local dive=S.dive\n S.jumpPreviews=nil;S.jumpChoices=nil;S.diveFacePreview=nil\n if dive and now<dive.expires then\n  local j=S.jumps[p.id]\n  if j and not j.jumped then\n   local backward=TensorCore.getBuff(p,2757)\n   local forward=TensorCore.getBuff(p,2756)\n   if backward and not forward then j.direction=-1;j.spot=1\n   elseif forward and not backward then j.direction=1;j.spot=3 end\n  end\n  -- Native markers establish order; exact status reads fill direction only while missing.\n  for id,v in pairs(S.jumps)do if v.direction==nil then\n   local e=ent(id)\n   if e then for buff=2755,2757 do if TensorCore.getBuff(e,buff)then v.direction=buff==2755 and 0 or(buff==2756 and 1 or -1);break end end end\n  end end\n  for _,other in pairs(S.jumps)do\n   if other.direction and other.direction~=0 and other.order then\n    for _,v in pairs(S.jumps)do if v.order==other.order and v.direction~=nil then v.spot=v.direction+2 end end\n   end\n  end\n  -- Plain groups claim distinct E/W/S positions before the first jump, including\n  -- #3 players who must soak #1 towers before their own jump turn.\n  local claims,counts={},{}\n  for id,v in pairs(S.jumps)do if v.direction==0 and v.order and not v.spot then\n   local e=ent(id)\n   if e then\n    local dx,dz=e.pos.x-100,e.pos.z-100\n    local clear=v.order==2 and math.abs(dx)>4 and dz<-2 or v.order~=2 and((math.abs(dx)>4 and math.abs(dz)<4)or(dz>4 and math.abs(dx)<4))\n    if clear then local spot=S.classify(e.pos);local key=v.order..':'..spot;claims[id]={spot=spot,key=key};counts[key]=(counts[key]or 0)+1 end\n   end\n  elseif v.spot and v.order then local key=v.order..':'..v.spot;counts[key]=(counts[key]or 0)+1 end end\n  for id,v in pairs(claims)do if counts[v.key]==1 then S.jumps[id].spot=v.spot end end\n  local activeOrder=S.jumpHits<3 and 1 or(S.jumpHits<5 and 2 or(S.jumpHits<8 and 3 or 0))\n  S.jumpPreviews={expires=math.min(dive.expires,now+1200),points={}}\n  for id,v in pairs(S.jumps)do if v.order==activeOrder and not v.jumped and v.direction~=nil then\n   local e=ent(id)\n   if e and e.alive then\n    local landing=polar(e.pos,e.pos.h,v.direction*14)\n    S.jumpPreviews.points[#S.jumpPreviews.points+1]={p=landing,own=id==p.id,source=id}\n   end\n  end end\n  if j and j.order then\n   local bait=S.jumpHits<3 and 1 or(S.jumpHits<5 and 2 or(S.jumpHits<8 and 3 or 0))\n   local earlyThird=j.order==3 and(j.soaks or 0)>=1 and not j.jumped\n   if (bait==j.order or earlyThird)and not j.jumped and not S.guides.diveTower then\n    local spot=j.spot\n    local forward=S.diveFacing()==0 and -1 or 1\n    if not spot and j.direction==0 then\n     local occupied={};for id,v in pairs(S.jumps)do if id~=p.id and v.order==j.order and v.spot then occupied[v.spot]=true end end\n     local choices={};S.jumpChoices={expires=math.min(dive.expires,now+1200),points={}}\n     for _,i in ipairs(j.order==2 and{1,3}or{1,2,3})do\n      if not occupied[i]then\n       local x=i==2 and 100 or 100+(i==3 and forward or -forward)*7\n       local z=j.order==2 and 89.5 or(i==2 and 107 or 100)\n       choices[#choices+1]=i;S.jumpChoices.points[#S.jumpChoices.points+1]=pos(x,z)\n      end\n     end\n     if #choices==1 then spot=choices[1];j.spot=spot end\n    end\n    if spot then\n     local x=spot==2 and 100 or 100+(spot==3 and forward or -forward)*7\n     local z=j.order==2 and 89.5 or(spot==2 and 107 or 100)\n     j.dropPoint=pos(x,z);j.expectedLanding=polar(j.dropPoint,S.diveFacing()==0 and math.pi/2 or -math.pi/2,(j.direction or 0)*14)\n     local side=spot==2 and'SOUTH'or(x<100 and'WEST'or'EAST')\n     local preposition=earlyThird and bait~=j.order\n     local text=preposition and('PREPOSITION FOR JUMP 3 - '..side)or('DROP '..j.order..' - HOLD '..side)\n     if j.direction~=0 then text=text..(S.diveFacing()==0 and' - FACE EAST'or' - FACE WEST')end\n     local destination=j.dropPoint;local gn=S.gnash;local staged=false\n     if gn and now<(gn.deadline or gn.expires)then\n      local inside=gn.step==1 and gn.inside or(gn.step==2 and not gn.inside);local radius=dist(j.dropPoint,gn.p)\n      if inside and radius>7.2 or not inside and radius<8.8 then\n       destination=polar(gn.p,TensorCore.getHeadingToTarget(gn.p,j.dropPoint),inside and 6.5 or 9.5);staged=true\n       text=(inside and'IN'or'OUT')..' - WAIT NEAR JUMP '..j.order\n      end\n     end\n     local baitPending=S.geirBait and now<S.geirBait.expires\n      if j.direction and j.direction~=0 and not preposition and not staged and not baitPending then\n       local heading=diveFacingPreview(now,p,dive,j)\n       if heading then\n        text=heading<0 and 'FACE WEST - HOLD FOR DIVE' or 'FACE EAST - HOLD FOR DIVE'\n        if heading<0 then destination=sourcePoint(p)end\n       else text='MOVE TO YOUR '..side..' DROP SPOT' end\n      end\n     guide('dive',destination,math.min(dive.expires,now+1200),text,(preposition or baitPending)and 5 or 8,1)\n     S.guides.dive.jumpPlacement=true;S.guides.dive.lineStaging=earlyThird or staged\n     S.jumpChoices={expires=math.min(dive.expires,now+1200),points={destination}}\n    end\n   elseif not S.guides.diveTower and(j.order~=3 or S.jumpHits<3)and(S.jumpHits<8 or(S.stackHits or 0)<2)then guide('dive',pos(100,93),now+1000,'STACK NORTH',2,4)\n   elseif j.order==3 and S.jumpHits>=3 then S.guides.dive=nil end\n  end\n  if j and j.jumped and j.jumpedAt and now-j.jumpedAt>=300 and now-j.jumpedAt<8000 and j.gnashPoint and S.gnash and now<(S.gnash.deadline or S.gnash.expires)and not S.guides.diveTower and not(S.geirBait and now<S.geirBait.expires)and(not j.expectedLanding or dist(p.pos,j.expectedLanding)<=3.5 or j.gnashReleased)then\n   if not j.gnashReleased then j.gnashPoint=sourcePoint(p);j.gnashReleased=true end\n   local gn=S.gnash;local inside=gn.step==1 and gn.inside or gn.step==2 and not gn.inside\n   local dest=polar(gn.p,TensorCore.getHeadingToTarget(gn.p,j.gnashPoint),inside and 6.5 or 9.5)\n   guide('gnash',dest,gn.deadline or gn.expires,inside and'NOW IN'or'NOW OUT',6,1,inside and 26390 or 26389)\n  else S.guides.gnash=nil end\n  if j and j.order and j.spot then\n   local chosen;local actualMatches=0;local assignedSide=S.diveAssignedSide(j)\n   for _,t in pairs(S.diveTowers or{})do\n    if now<t.expires and t.order==j.order and assignedSide and(t.side or S.diveTowerSide(t.p))==assignedSide then\n     actualMatches=actualMatches+1\n     if chosen then chosen=nil;break end;chosen=t\n    end\n   end\n   local actualWave=false;for _,t in pairs(S.diveTowers or{})do if now<t.expires and t.order==j.order then actualWave=true;break end end\n   if not chosen and actualMatches==0 and not actualWave then\n    for source,t in pairs(S.predictedDiveTowers or{})do\n     if now>=t.expires then S.predictedDiveTowers[source]=nil\n     elseif t.order==j.order and assignedSide and(t.side or S.diveTowerSide(t.p))==assignedSide then\n      if chosen then chosen=nil;break end;chosen=t\n     end\n    end\n   end\n   if chosen then\n    if not chosen.predicted and S.diveTimerSource~=chosen.source and O.towerTimers~=false then\n     AnyoneCore.addWorldTextCountdown(chosen.expires-now,{x=chosen.p.x,y=chosen.p.y+1,z=chosen.p.z},0xFFFFFFFF,true,1.5);S.diveTimerSource=chosen.source\n    end\n    S.diveChosen=chosen.source;S.diveTower=chosen;S.danger['towerOther:'..chosen.source]=nil\n    local key=j.order..':'..tostring(j.direction)..':'..tostring(assignedSide)..':'..chosen.source..':'..tostring(chosen.predicted==true)\n    if S.diveTowerLogKey~=key then\n     TensorCore.timelineLogToFile(string.format('[LPDU P3 Tower r76] order=%s direction=%s side=%s source=%s predicted=%s position=%.2f,%.2f\\n',j.order,tostring(j.direction),tostring(assignedSide),chosen.source,tostring(chosen.predicted==true),chosen.p.x,chosen.p.z));S.diveTowerLogKey=key\n    end\n    local q=chosen.p;local text=chosen.predicted and'PREPOSITION FOR YOUR TOWER'or'SOAK TOWER';local gn=S.gnash\n    if gn and now<gn.expires then\n     local inside=gn.step==1 and gn.inside or(gn.step==2 and not gn.inside)\n     q=polar(gn.p,TensorCore.getHeadingToTarget(gn.p,chosen.p),inside and 6.5 or 9.5)\n     text=chosen.predicted and(inside and'PREPOSITION FOR TOWER - IN'or'PREPOSITION FOR TOWER - OUT')or(inside and'SOAK TOWER - IN'or'SOAK TOWER - OUT')\n    end\n    if dist(q,chosen.p)<=4.3 then\n     guide('diveTower',q,chosen.expires,text,7,1,26385);S.guides.diveTower.source=chosen.source\n     if chosen.predicted then S.guides.diveTower.said=true end\n    else S.guides.diveTower=nil end\n   else S.guides.diveTower=nil;S.diveTower=nil;S.diveChosen=nil end\n  end\n end\n\n if not S.diveFacePreview then S.releaseDiveFacing()end\nend\nupdates.generalP3=function(now,p)\n local phase=S.p3phase;if not phase or now>=phase.expires then return end\n local function safe(q)\n  for _,v in pairs(S.danger)do if v.hit==26378 and now<v.expires then\n   local dx,dz=q.x-v.p.x,q.z-v.p.z\n   local along=dx*math.sin(v.h)+dz*math.cos(v.h)\n   local side=dx*math.cos(v.h)-dz*math.sin(v.h)\n   if along>-.8 and along<62.8 and math.abs(side)<4.8 then return false end\n  end end\n  local gn=S.gnash\n  if gn and now<gn.expires then local inside=gn.step==1 and gn.inside or(gn.step==2 and not gn.inside);local r=dist(q,gn.p)\n   if inside and r>7.2 or not inside and r<8.8 then return false end\n  end\n  return dist(q,pos(100,100))<20\n end\n if phase.dodgeUntil and now<phase.dodgeUntil then\n  S.guides.geirBait=nil\n  local jump=S.jumps[p.id]\n  local drop=jump and not jump.jumped and S.guides.dive and S.guides.dive.jumpPlacement and S.guides.dive\n  local tower=S.diveTower and now<S.diveTower.expires and S.diveTower\n  local objective=tower and tower.p or drop and drop.p\n  local preferNorth=not objective and jump and jump.jumped and S.dive and now<S.dive.expires\n  local identity=objective and((tower and'tower:'..tower.source)or('drop:'..jump.order..':'..tostring(drop.lineStaging)))or(preferNorth and 'post-jump north' or 'free')\n  if phase.dodgeIdentity~=identity then phase.scanAt=nil;phase.dodgeIdentity=identity end\n  if not phase.scanAt or now-phase.scanAt>=300 then\n   phase.scanAt=now;local best,score\n   local candidates={}\n   if objective then\n    candidates[1]=objective\n    if tower then\n     for _,radius in ipairs({1.5,3,4})do for i=0,31 do candidates[#candidates+1]=polar(objective,i*math.pi/16,radius)end end\n    elseif drop and drop.lineStaging then\n     for _,radius in ipairs({1.5,2.5})do for i=0,31 do candidates[#candidates+1]=polar(objective,i*math.pi/16,radius)end end\n    end\n   else for _,radius in ipairs({4.5,9.5,13.8})do for i=0,63 do candidates[#candidates+1]=polar(pos(100,100),i*math.pi/32,radius)end end end\n   for _,q in ipairs(candidates)do\n    if safe(q)and(not tower or dist(q,tower.p)<=4.3)then\n     local clear=true;local exited=safe(p.pos);local steps=math.max(1,math.ceil(dist(p.pos,q)))\n     for n=1,steps do local f=n/steps;local at=pos(p.pos.x+(q.x-p.pos.x)*f,p.pos.z+(q.z-p.pos.z)*f)\n      local ok=safe(at);if exited and not ok then clear=false;break end;if ok then exited=true end\n     end\n     local rank=dist(p.pos,q)+dist(q,objective or pos(100,93))*.05\n     -- Prefer the north regroup area after landing, but only among checked routes.\n     if preferNorth and (q.z>96 or math.abs(q.x-100)>9)then rank=rank+100 end\n     if clear and(not score or rank<score)then best=q;score=rank end\n    end\n   end\n   phase.dodgePoint=best\n  end\n  if phase.dodgePoint then\n   local text=tower and'SOAK TOWER - AVOID LINES'or drop and(drop.text..' - AVOID LINES')or(preferNorth and phase.dodgePoint.z<=96 and math.abs(phase.dodgePoint.x-100)<=9 and'DODGE NORTH'or'DODGE LINES')\n   guide('geirDodge',phase.dodgePoint,phase.dodgeUntil,text,9,1)\n  else\n   S.guides.geirDodge=nil\n   -- Do not expose a lower-priority jump/tower route through a confirmed line.\n   if S.guides.gnash then S.guides.gnash.noWorld=true end\n   if drop then drop.noWorld=true end\n   if tower and S.guides.diveTower then S.guides.diveTower.noWorld=true end\n  end\n else\n  S.guides.geirDodge=nil\n  local bait=S.geirBait\n  if bait and now<bait.expires then\n   local q=polar(pos(100,100),TensorCore.getHeadingToTarget(pos(100,100),bait.p),dist(bait.p,pos(100,100))+5)\n   if safe(q)then guide('geirBait',q,bait.expires,'BAIT LINE OUT',6,1)else S.guides.geirBait=nil end\n  else S.geirBait=nil;S.guides.geirBait=nil end\n end\n local gnashGuide=S.guides.gnash\n if gnashGuide then\n  local target=gnashGuide.p;local clear=safe(target);local escaped=safe(p.pos)\n  local steps=math.max(1,math.ceil(dist(p.pos,target)))\n  for i=1,steps do local f=i/steps;local point=pos(p.pos.x+(target.x-p.pos.x)*f,p.pos.z+(target.z-p.pos.z)*f);local ok=safe(point)\n   if escaped and not ok then clear=false;break end;if ok then escaped=true end\n  end\n  gnashGuide.noWorld=not clear\n end\n local r=role();local own;local pickup\n for source,t in pairs(phase.tethers)do\n  if t.target==p.id then own=t end\n  local intended=source==S.p3Boss and'T1'or'T2'\n  if intended==r then pickup=t end\n end\n if own and not tank()then\n  guide('soulTether',pos(100,100),now+1000,'BRING TETHER TO TANKS',10,1)\n elseif tank()and pickup then\n  if pickup.target~=p.id then\n   local owner=ent(pickup.target);if owner then guide('soulTether',sourcePoint(owner),now+1000,'TAKE '..(r=='T1'and'BOSS'or'ADD')..' TETHER',10,1)end\n  else\n   local source=ent(pickup.source);local q=O.p3Tethers==1 and r=='T2'and source and sourcePoint(source)or pos(100,100)\n   guide('soulTether',q,now+1000,O.p3Tethers==1 and r=='T1'and'MIDDLE - MITIGATE TETHER'or'INVULN TETHER',10,1)\n  end\n else S.guides.soulTether=nil end\nend\nlocal function p5point(n,x,z)\n local c=pos(100,100);local right=n-math.pi/2\n return pos(c.x+math.sin(right)*x-math.sin(n)*z,c.z+math.cos(right)*x-math.cos(n)*z)\nend\nlocal function p5path(from,q,w)\n if dist(q,pos(100,100))>20 then return false end\n if not S.chargePathClear(from,q)then return false end\n local heavy=S.danger.heavy\n if heavy and Now()<heavy.expires and not mercyRingClear(from,q,heavy)then\n  -- Allow crossing a future ring only when the entire crossing clears before its hit.\n  local lastInside=0;local length=dist(from,q)\n  for i=0,20 do local t=pos(from.x+(q.x-from.x)*i/20,from.z+(q.z-from.z)*i/20);local r=dist(t,heavy.p)\n   if r<=(heavy.kind=='donut'and heavy.angle+.6 or heavy.r+.6)and(heavy.kind~='donut'or r>=heavy.r-.6)then lastInside=length*i/20 end\n  end\n  if lastInside/6*1000+350>=heavy.expires-Now()then return false end\n end\n for _,v in ipairs(w.puddles or{})do if Now()<v.expires and not meteorDiskClear(from,q,v.p,v.r+.5,true)then return false end end\n if w.lightningHit and Now()<w.lightningHit+5000 then\n  for _,v in ipairs(w.twisters or{})do if not meteorDiskClear(from,q,v,2.4,true)then return false end end\n end\n for _,v in pairs(S.danger)do if Now()<v.expires and v.kind=='rect'then\n  local function inside(t)local dx=t.x-v.p.x;local dz=t.z-v.p.z;local along=dx*math.sin(v.h)+dz*math.cos(v.h);local side=dx*math.cos(v.h)-dz*math.sin(v.h);return along>=-.5 and along<=v.r+.5 and math.abs(side)<=v.angle/2+.5 end\n  if inside(q)then return false end\n  for i=1,8 do local t=pos(from.x+(q.x-from.x)*i/8,from.z+(q.z-from.z)*i/8);if inside(t)and not inside(from)then return false end end\n end end\n return true\nend\n-- Empty Dimension and Chain Lightning resolve together in Wrath.\nlocal function wrathDonutPosition(w,p,now)\n local donut=w.donut\n if not donut.spreads then\n  local targets={}\n  for id in pairs(w.lightning)do targets[#targets+1]=id end\n  if #targets~=2 then return end\n  table.sort(targets)\n  donut.spreads=targets\n end\n\n local centre=donut.centre\n local function floorClear(point)\n  for _,puddle in ipairs(w.puddles)do\n   if now<puddle.expires and dist(point,puddle.p)<puddle.r+.6 then return false end\n  end\n  return dist(point,pos(100,100))<19.5\n end\n local function formation(rotation)\n  local forward=polar(centre,rotation,3.1)\n  local left=polar(forward,rotation-math.pi/2,3.1)\n  local right=polar(forward,rotation+math.pi/2,3.1)\n  local group=polar(centre,rotation+math.pi,3.1)\n  if floorClear(left)and floorClear(right)and floorClear(group)then return left,right,group end\n end\n\n local left,right,group\n if donut.rotation then left,right,group=formation(donut.rotation)end\n if not left then\n  for _,degrees in ipairs({0,-45,45,-90,90,-135,135,180})do\n   local rotation=math.pi+math.rad(degrees)\n   left,right,group=formation(rotation)\n   if left then donut.rotation=rotation;break end\n  end\n end\n if not left then return end\n local first=p.id==donut.spreads[1]\n local second=p.id==donut.spreads[2]\n local target=first and left or second and right or group\n if not p5path(p.pos,target,w)then return end\n return target,(first or second) and 'IN - SPREAD FROM GROUP' or 'IN - GROUP AWAY FROM SPREADS'\nend\nupdates.wrath=function(now,p)\n local w=S.wrath;if not w or now>=w.expires or w.done then S.guides.wrath=nil;return end\n if w.donut then\n  if now<w.donut.expires then\n   local target,text=wrathDonutPosition(w,p,now)\n   if target then guide('wrath',target,w.donut.expires,text,9,0.6,25306)\n   else S.guides.wrath=nil end\n   return\n  end\n  w.donut=nil\n  S.guides.wrath=nil\n  return\n end\n local c=pos(100,100)\n local function show(q,text,priority)\n  if p5path(p.pos,q,w)then guide('wrath',q,math.min(w.expires,now+1000),text,priority or 7,1)\n  else S.guides.wrath=nil end\n end\n if not w.north then return end\n if w.twister and now<w.twister then show(w.move,'MOVE FOR TWISTERS',10);return end\n if not w.charged then\n  for target,t in pairs(w.tethers)do local source=ent(t.source);local owner=ent(target)\n   if source and owner then\n    local v=S.danger['p5Tether:'..t.source]\n    if not v then danger('p5Tether:'..t.source,sourcePoint(source),50,w.at+16000,27530,'rect',16);v=S.danger['p5Tether:'..t.source];v.source=t.source end\n    v.h=TensorCore.getHeadingToTarget(source.pos,owner.pos)\n   end\n  end\n  if w.blue==p.id then show(polar(c,w.north+math.pi/3,19),'BLUE MARK - RELATIVE NORTHWEST');return end\n  local mine=w.tethers[p.id]\n  if mine then show(mine.p,'STRETCH YOUR TETHER');return end\n  show(polar(c,w.north-math.pi/2,18),'GROUP RELATIVE EAST');return\n end\n if w.protean then\n  -- Prepositioning claims each cone; preserve its direction, draw every current bait.\n  local b=ent(w.boss);w.cones={}\n  if b then for _,q in ipairs(party())do if q.alive then w.cones[#w.cones+1]={p=sourcePoint(b),h=TensorCore.getHeadingToTarget(b.pos,q.pos),own=q.id==p.id}end end\n   local h=TensorCore.getHeadingToTarget(b.pos,p.pos);show(polar(b.pos,h,math.max(5,dist(b.pos,p.pos))),'BAIT YOUR CONE - KEEP APART')\n   if S.guides.wrath then S.guides.wrath.said=true end\n  end;return\n end\n local grinnaux\n for _,e in ipairs(actors(3639))do if e.alive and dist(e.pos,c)>=12 and dist(e.pos,c)<=22 then grinnaux=e;break end end\n if w.diveTarget==p.id and not w.diveFixed then\n  for _,e in ipairs(actors(3642))do if e.alive and dist(e.pos,c)>20 then show(polar(c,TensorCore.getHeadingToTarget(c,e.pos),19),'GREEN MARK - BAIT DIVE AT WALL');return end end\n end\n if not w.baits or not grinnaux then S.guides.wrath=nil;return end\n local base=sourcePoint(grinnaux)\n if w.lightning[p.id]then\n  -- Retain established side, stay opposite the stack and apart from the other lightning.\n  local h=TensorCore.getHeadingToTarget(c,base);local side=math.sin(TensorCore.getHeadingToTarget(base,p.pos)-h)>=0 and 1 or -1\n  local q=polar(base,h+side*.8,4.8);local clear=true\n  for id in pairs(w.lightning)do local e=ent(id);if id~=p.id and e and dist(e.pos,q)<10.5 then clear=false end end\n  if clear then show(q,'LIGHTNING - APART BEHIND WARRIOR')else S.guides.wrath=nil end;return\n end\n if O.p5Baits~=false then\n  local chosen,best=nil,math.huge\n  for ring=0,3 do for i=0,15 do local q=polar(base,i*math.pi/8,ring*1.4)\n   local safe=p5path(p.pos,q,w)\n   for id in pairs(w.lightning)do local e=ent(id);if e and dist(e.pos,q)<5.7 then safe=false end end\n   if safe then local score=dist(p.pos,q)+dist(q,base)*.3;if score<best then chosen=q;best=score end end\n  end end\n  if chosen then show(chosen,w.liquids>=5 and 'IN UNDER WARRIOR' or 'AVOID BAITS - STAY NEAR WARRIOR')else S.guides.wrath=nil end\n end\nend\n-- Conga rank is captured before Doom; no role-based fallback or waymark binding.\n-- Recover only from observed, unambiguous player positions; never job order.\nfunction S.deathSnapshotOrder(d)\n if d.order or not d.north or not d.doomSnapshot then return end\n local right=d.north-math.pi/2;local list={};local low,high=math.huge,-math.huge\n for id,p in pairs(d.doomSnapshot)do\n  local x=(p.x-100)*math.sin(right)+(p.z-100)*math.cos(right)\n  local z=(p.x-100)*math.sin(d.north)+(p.z-100)*math.cos(d.north)\n  list[#list+1]={id=id,x=x};low=math.min(low,z);high=math.max(high,z)\n end\n if #list~=8 or high-low>=3 then return end\n table.sort(list,function(a,b)return a.x<b.x end)\n local order={}\n for i,v in ipairs(list)do if i>1 and v.x-list[i-1].x<.35 then return end;order[i]=v.id end\n d.order=order;d.orderSource='doom snapshot'\nend\nfunction S.verifyDeathLineup(d,now)\n if d.lineupVerified or not d.verifyAt or now<d.verifyAt or not d.north or d.lightningHit then return end\n local groups={{},{}};local right=d.north-math.pi/2;local count=0\n for _,e in ipairs(party())do if e.alive then\n  local x=(e.pos.x-100)*math.sin(right)+(e.pos.z-100)*math.cos(right)\n  local z=(e.pos.x-100)*math.sin(d.north)+(e.pos.z-100)*math.cos(d.north)\n  local which=d.dooms[e.id]and 1 or 2\n  groups[which][#groups[which]+1]={id=e.id,x=x,z=z};count=count+1\n end end\n local orders={};local valid=count==8\n for which,list in ipairs(groups)do\n  if #list~=4 then valid=false;break end\n  table.sort(list,function(a,b)return which==1 and a.z>b.z or which==2 and a.z<b.z end)\n  local inner={list[1],list[2]};local outer={list[3],list[4]}\n  if (inner[2].z-outer[1].z)*(which==1 and 1 or -1)<4 then valid=false;break end\n  for _,pair in ipairs({inner,outer})do\n   table.sort(pair,function(a,b)return a.x<b.x end)\n   if pair[1].x> -3 or pair[2].x<3 then valid=false end\n  end\n  orders[which]={outer[1].id,inner[1].id,inner[2].id,outer[2].id}\n end\n if not valid then\n  d.verifyKey=nil;d.verifySince=nil\n  if now>=d.spreadEnd-100 and not d.lineupWarned then say('deathLineCheck','CHECK YOUR SPREAD POSITION');d.lineupWarned=true end\n  return\n end\n local key=table.concat(orders[1],':')..'/'..table.concat(orders[2],':')\n if d.verifyKey~=key then d.verifyKey=key;d.verifySince=now;return end\n if now-d.verifySince<200 or now<d.spreadEnd-300 then return end\n local ranks={};local order={};local changed=false\n for which,list in ipairs(orders)do for rank,id in ipairs(list)do\n  local old=d.ranks[id]\n  if old and(old.rank~=rank or old.doom~=(which==1))then changed=true end\n  ranks[id]={rank=rank,doom=which==1};order[#order+1]=id\n end end\n local recovered=not d.order\n d.ranks=ranks;d.order=d.order or order;d.assigned=true;d.lineupVerified=true\n if recovered then d.orderSource='verified spreads'\n elseif changed then d.orderSource='verified spreads'end\nend\n\nlocal congaOffsets={-10.4,-8,-5.6,-3.2,3.2,5.6,8,10.4}\nupdates.death=function(now,p)\n updates.gaze(now,p)\n local d=S.death;if not d or now>=d.expires then S.guides.death=nil;return end\n local c=pos(100,100)\n if not d.north then\n  for _,e in ipairs(actors(3641))do if e.alive and dist(e.pos,c)>=8 and dist(e.pos,c)<=10 then d.war=sourcePoint(e);d.north=TensorCore.getHeadingToTarget(c,e.pos);break end end\n end\n if not d.north then return end\n if not d.doomAt and TensorCore.getBuff(p,2976)then\n  d.doomAt=now;d.dooms[p.id]=true;d.congaOpen=nil;S.guides.death=nil\n end\n if not d.doomAt then\n  local list={};local right=d.north-math.pi/2\n  for _,e in ipairs(party())do if e.alive then list[#list+1]={id=e.id,x=(e.pos.x-100)*math.sin(right)+(e.pos.z-100)*math.cos(right),z=(e.pos.x-100)*math.sin(d.north)+(e.pos.z-100)*math.cos(d.north)}end end\n  table.sort(list,function(a,b)return a.x<b.x end)\n  local good=#list==8;local minz,maxz=math.huge,-math.huge\n  for i,v in ipairs(list)do minz=math.min(minz,v.z);maxz=math.max(maxz,v.z);if i>1 and v.x-list[i-1].x<.35 then good=false end end\n  if good and maxz-minz<3 then\n   local ids={};for _,v in ipairs(list)do ids[#ids+1]=v.id end\n   local key=table.concat(ids,':')\n   if d.lineKey~=key then d.lineKey=key;d.lineSince=now end\n   if now-d.lineSince>=400 then d.order=ids;d.orderAt=now end\n  else d.lineKey=nil;d.lineSince=nil end\n  local roster=AnyoneCore.Roster\n  d.congaOpen=nil\n  if roster and roster.current() and roster.isReady()then\n   d.congaOpen={}\n   for index,offset in ipairs(congaOffsets)do\n    local occupied=false\n    for _,actor in ipairs(list)do\n     if (actor.x-offset)^2+actor.z^2<=1.15^2 then occupied=true;break end\n    end\n    d.congaOpen[index]=not occupied\n   end\n   if O.congaConfigured then\n    local order=dsrStore.congaOrder()\n    local slot=roster.mySlot()\n    for index,assigned in ipairs(order or {})do\n     if assigned==slot then\n      local q=polar(c,right,congaOffsets[index])\n      guide('death',q,now+1000,'TAKE CONGA SPOT '..index,5,.65);S.guides.death.conga=true\n      return\n     end\n    end\n   end\n  end\n  S.guides.death=nil\n  return\n end\n S.deathSnapshotOrder(d)\n S.verifyDeathLineup(d,now)\n local count=0;for _ in pairs(d.dooms)do count=count+1 end\n if d.ps and not d.resolved and count==4 and d.symbols[p.id]==284 and not d.dooms[p.id]then\n  local partner,number\n  number=0\n  for id,symbol in pairs(d.symbols)do\n   if symbol==284 then number=number+1;if id~=p.id then partner=id end end\n  end\n  if number==2 and partner and not d.dooms[partner]then\n   local positions=d.symbolPositions or{}\n   local first,second=positions[p.id],positions[partner]\n   if first and second then\n    local relative=(first.x-second.x)*math.sin(d.north)+(first.z-second.z)*math.cos(d.north)\n    if math.abs(relative)>.6 then\n     local heading=d.north+(relative>0 and 0 or math.pi)\n     local target=polar(c,heading,d.knocked and 19 or 3)\n     if p5path(p.pos,target,d)then\n      d.partner=partner\n      guide('death',target,now+1000,d.knocked and 'BREAK CHAIN - HOLD SPREAD' or 'KNOCKBACK POSITION - RIDE IT',9,1)\n      S.guides.death.color=psColors[284]\n      return\n     end\n    end\n   end\n  end\n end\n if count~=4 or not d.order then\n  S.guides.death=nil\n  if not d.missingSaid then say('deathOrder','CHECK YOUR CONGA SPOT - ORDER UNCLEAR');d.missingSaid=true end;return\n end\n if not d.assigned then\n  local a,b=0,0\n  for _,id in ipairs(d.order)do if d.dooms[id]then a=a+1;d.ranks[id]={doom=true,rank=a}else b=b+1;d.ranks[id]={doom=false,rank=b}end end\n  d.assigned=true\n end\n if d.lightningHit and not d.twisterPlanned then\n  local origin=p5point(d.north,0,0)\n  for id,t in pairs(d.ranks)do if not t.doom then\n   local start=d.twisterOrigins and d.twisterOrigins[id]\n   if start then\n    local delta=p5point(d.north,t.rank<=2 and 2.3 or -2.3,(t.rank==1 or t.rank==4)and 2.3 or -2.3)\n    d.twisterMove[id]=pos(start.x+delta.x-origin.x,start.z+delta.z-origin.z,start.y)\n   end\n  end end\n  d.twisterPlanned=true\n end\n local mine=d.ranks[p.id];if not mine then return end\n if d.resolved then\n  if mine.doom and TensorCore.getBuff(p,2976)and d.landing then guide('death',d.landing,d.expires,'CLEANSE DOOM',9,1)\n  else S.guides.death=nil end;return\n end\n local q,text\n if d.ps then\n  local anchorAngles={-math.pi/2,-math.pi/4,math.pi/4,math.pi/2}\n  if not d.cleansePlan and not d.cleanseAttempted then\n   local list={};for id,v in pairs(d.cleanses)do list[#list+1]={id=id,p=v.p}end\n   table.sort(list,function(a,b)return a.id<b.id end)\n   if #list==4 then\n    d.cleanseAttempted=true\n    local chosen,score=nil,math.huge\n    local function assign(rank,used,plan,cost)\n     if rank==5 then if cost<score then score=cost;chosen={plan[1],plan[2],plan[3],plan[4]}end;return end\n     local want=polar(c,d.north+math.pi+anchorAngles[rank],19)\n     for i,v in ipairs(list)do if not used[i]then\n      local radius=dist(v.p,c);local q=polar(c,TensorCore.getHeadingToTarget(c,v.p),math.max(16.8,math.min(19,radius)))\n      local delta=dist(q,want)\n      if delta<6 and dist(q,v.p)<3.2 then used[i]=true;plan[rank]=q;assign(rank+1,used,plan,cost+delta*delta);used[i]=nil end\n     end end\n    end\n    assign(1,{},{},0);d.cleansePlan=chosen\n   end\n  end\n  local function anchor(t)\n   return d.cleansePlan and d.cleansePlan[t.rank]\n  end\n  local icon=d.symbols[p.id];local partner,count=nil,0\n  if icon then for id,v in pairs(d.symbols)do if v==icon then count=count+1;if id~=p.id then partner=id end end end end\n  if count~=2 then partner=nil end;d.partner=partner\n  d.landing=nil\n  if mine.doom then d.landing=anchor(mine)\n  else\n   local t=partner and d.ranks[partner]\n   if t and t.doom then local a=anchor(t);if a then d.landing=pos(200-a.x,200-a.z)end end\n   if icon==284 and t and not t.doom then\n    local a=d.symbolPositions and d.symbolPositions[p.id];local b=d.symbolPositions and d.symbolPositions[partner]\n    if a and b then\n     local dot=(a.x-b.x)*math.sin(d.north)+(a.z-b.z)*math.cos(d.north)\n     if math.abs(dot)>.6 then d.landing=polar(c,d.north+(dot>0 and 0 or math.pi),19)end\n    end\n   end\n  end\n  if not d.landing then S.guides.death=nil;return end\n  if d.knocked then q=d.landing;text=mine.doom and 'BREAK CHAIN - CLEANSE DOOM' or 'BREAK CHAIN - HOLD SPREAD'\n  else local radius=dist(c,d.landing);q=polar(c,TensorCore.getHeadingToTarget(c,d.landing),math.max(.8,radius-16));text='KNOCKBACK POSITION - RIDE IT'end\n else\n  local x,z\n  if mine.doom then x=({-11.3,-10.9,10.9,11.3})[mine.rank];z=(mine.rank==1 or mine.rank==4)and 0 or -13.7\n  else x=({-17.1,-10.2,10.2,17.1})[mine.rank];z=(mine.rank==1 or mine.rank==4)and 0 or 13.1 end\n  q=p5point(d.north,x,z);text=mine.doom and 'YOUR DOOM SPREAD' or 'YOUR CLEANSE BAIT SPREAD'\n  if d.lightningHit then\n   if mine.doom then\n    if (d.ring or 0)>=((mine.rank==1 or mine.rank==4)and 1 or 2)then q=polar(d.war,TensorCore.getHeadingToTarget(d.war,q),(mine.rank==1 or mine.rank==4)and 5 or 9);text='INTO CLEARED RING - DOOM ANCHOR'end\n   else\n    if (d.ring or 0)>=3 and now-d.lightningHit>=2000 then q=polar(d.war,TensorCore.getHeadingToTarget(d.war,q),14);text='INTO CLEARED THIRD RING'\n    else q=d.twisterMove and d.twisterMove[p.id];text='MOVE FOR TWISTER'end\n   end\n  end\n  if mine.doom and(d.ring or 0)>=3 then\n   local angle=({-math.pi/2,-math.pi/4,math.pi/4,math.pi/2})[mine.rank]\n   q=polar(c,d.north+math.pi+angle,3.4)\n   text=(mine.rank==1 or mine.rank==4)and 'DOOM ANCHOR - BAIT CIRCLE' or 'DOOM ANCHOR - HOLD SOUTH'\n  end\n end\n if q and p5path(p.pos,q,d)then\n  guide('death',q,now+1000,text,9,1)\n  if d.ps then S.guides.death.color=psColors[d.symbols[p.id]]end\n else S.guides.death=nil end\nend\nupdates.generalP5=function(now,p)\n updates.death(now,p);updates.might(now,p)\nend\n-- LPDU Tenstrike: R1/H1/H2/R2 north-to-south, then T/M/first-dive swaps.\nlocal eyeHomes={R1=pos(90,92),H1=pos(96,95.5),H2=pos(96,104.5),R2=pos(90,108)}\nlocal eyeColor={[2775]=0xCC4444FF,[2776]=0xCCFFAA44}\nlocal eyeOrbPartners={T1='H1',T2='H2',H1='T1',H2='T2',M1='R1',M2='R2',R1='M1',R2='M2'}\nlocal function eyeHasChain(player,chain)\n return player and TensorCore.getBuff(player,chain) and not TensorCore.getBuff(player,chain==2775 and 2776 or 2775)\nend\nlocal function eyeCue(state,key,message)\n state.personalCues=state.personalCues or{}\n if state.personalCues[key]then return end\n state.personalCues[key]=true\n say('eyes:'..key,message,2400)\nend\nupdates.eyes=function(now,p)\n local e=S.eyes\n if not e or now>=e.expires then S.guides.eye=nil;return end\n if not e.finished and e.hate then\n  local dead=0\n  for _,cid in ipairs({11317,11318})do\n   local eye=ent(S.actorIDs[cid])\n   if not eye then local found=actors(cid);if #found==1 then eye=found[1];S.actorIDs[cid]=eye.id end end\n   if eye and eye.alive==false then dead=dead+1 end\n  end\n  if dead==2 then e.finished=true;e.partner=nil;e.rings=nil;e.mirage=nil end\n end\n if e.finished then\n  if O.p4RegroupSouth==true then guide('eye',pos(100,119),math.min(e.expires,now+1200),'REGROUP SOUTH - PREPARE TRANSITION',7,1.2)\n  else S.guides.eye=nil end\n  return\n end\n local r=role();local g=group();if not r or not g then S.guides.eye=nil;return end\n local red=TensorCore.getBuff(p,2775)~=nil;local blue=TensorCore.getBuff(p,2776)~=nil\n local function show(q,text,color,radius)\n  guide('eye',q,math.min(e.expires,now+1200),text,7,radius or 1)\n  S.guides.eye.color=color\n end\n if not e.hate then\n  if not TensorCore.getBuff(p,2748)or not TensorCore.getBuff(p,2749)then show(pos(100,110),'STACK SOUTH - RECEIVE BOTH BUFFS')\n  else show(pos(support()and 110 or 90,100),support()and 'EAST EYE' or 'WEST EYE')end\n  return\n end\n if not e.mirage then\n  local tm=r:sub(1,1)=='T'or r:sub(1,1)=='M'\n  local x=support()and 110 or 90;local z=g==1 and 93 or 107\n  local gold,orb\n  e.orbEntities=e.orbEntities or{}\n  if not e.foundAllOrbs then\n   if not e.nextOrbScan or now>=e.nextOrbScan then\n    e.nextOrbScan=now+200\n    for _,cid in ipairs({11316,11315})do\n     for _,v in pairs(EntityList('contentid='..cid)or{})do\n      if v.pos then e.orbEntities[v.id]={id=v.id,cid=cid,p=pos(v.pos.x,v.pos.z,v.pos.y)}end\n     end\n    end\n   end\n   local count=0;for _ in pairs(e.orbEntities)do count=count+1 end;e.foundAllOrbs=count==6\n  end\n  for _,v in pairs(e.orbEntities)do\n   if v.cid==11316 and(v.p.x>100)==(x>100)then gold=EntityList:Get(v.id)\n   elseif v.cid==11315 and(v.p.x>100)==(x>100)and(v.p.z<100)==(g==1)then orb=EntityList:Get(v.id)end\n  end\n  local side=x>100 and 'E' or 'W'\n  local progress=table.concat({r,side,tostring(g),tostring(gold and gold.id),tostring(orb and orb.id),tostring(orb and orb.hitradius),tostring(red),tostring(blue)},':')\n  if progress~=e.lastOrbProgress and(not e.lastOrbLogAt or now-e.lastOrbLogAt>=1000)then\n   e.lastOrbProgress=progress;e.lastOrbLogAt=now\n   TensorCore.timelineLogToFile('[DSR Eyes] orb step='..progress..'\\n')\n  end\n  local goldDone=e.resolved and e.resolved[side..'gold']\n  local blueDone=e.resolved and e.resolved[side..(g==1 and 'N' or 'S')]\n  e.partner=nil\n  local roster=AnyoneCore.Roster\n  local partner=roster and roster.current() and roster.isReady() and ent(roster.idOf(eyeOrbPartners[r]))\n  if goldDone then\n   local result=e.orbResults and e.orbResults[side..'gold']\n   if tm and result==26817 then eyeCue(e,'gold','GOLD ORB SOAKED - SWAP CHAINS')\n   elseif result==26818 then eyeCue(e,'gold','GOLD ORB MISSED')end\n  end\n  if blueDone then\n   local result=e.orbResults and e.orbResults[side..(g==1 and 'N' or 'S')]\n   if result==26816 then eyeCue(e,'blue','BLUE ORB MISSED')end\n  end\n  if not goldDone then\n   local wanted=tm and red or blue\n   if not wanted then\n    if red or blue then show(pos(100,100),'SWAP TO '..(tm and 'RED' or 'BLUE')..' CHAIN',eyeColor[tm and 2775 or 2776])else S.guides.eye=nil end\n   elseif tm and gold then\n    local ready=(gold.hitradius or 0)>1.501\n    local mate=ent(idOf(r:sub(1,1)..(r:sub(2)=='1'and '2' or '1')))\n    local wait=pos(gold.pos.x+(x>100 and -1 or 1)*6.8,100)\n    local together=mate and TensorCore.getBuff(mate,2775)and dist(mate.pos,wait)<3\n    local enter=ready and together\n    show(pos(gold.pos.x+(x>100 and -1 or 1)*(enter and 4.5 or 6.8),100),enter and 'SOAK GOLD ORB TOGETHER' or ready and 'WAIT FOR GOLD PARTNER' or 'WAIT FOR GOLD ORB TO GROW')\n    if enter then\n     S.guides.eye.priority=9;S.guides.eye.said=true\n     eyeCue(e,'goldReady','SOAK GOLD ORB TOGETHER')\n    end\n   else show(pos(x+(x>100 and -4.8 or 4.8),g==1 and 97.8 or 102.2),'WAIT FOR GOLD PAIR')end\n  elseif not blueDone then\n   if (tm and not blue)or(not tm and not red)then\n    if partner and partner.alive and eyeHasChain(p,tm and 2775 or 2776) and eyeHasChain(partner,tm and 2776 or 2775)then\n     show(function()local q=ent(partner.id);return q and q.pos end,'SWAP WITH '..eyeOrbPartners[r]..' - TAKE '..(tm and 'BLUE' or 'RED'),eyeColor[tm and 2776 or 2775]);e.partner=partner.id\n    else S.guides.eye=nil;e.partner=nil end\n   elseif tm then show(pos(90,100),'CLEAR BLUE ORB - WEST EYE');e.partner=nil\n   elseif orb then\n    local ready=(orb.hitradius or 0)>1.501\n    local h=TensorCore.getHeadingToTarget(orb.pos,pos(100,100))\n    show(polar(orb.pos,h,ready and 4.5 or 6.8),ready and 'SOAK YOUR BLUE ORB' or 'WAIT FOR BLUE ORB TO GROW');e.partner=nil\n    if ready then\n     S.guides.eye.priority=9;S.guides.eye.said=true\n     eyeCue(e,'blueReady','SOAK YOUR BLUE ORB')\n    end\n   else\n    S.guides.eye=nil\n   end\n  else\n   e.partner=nil\n   local eastEye\n   if O.p4TankEye45==true and tank()then\n    for _,v in ipairs(actors(11317))do if v.alive and v.pos.x>100 then if eastEye then eastEye=nil;break end;eastEye=v end end\n   end\n   if eastEye and eastEye.hp and eastEye.hp.percent and eastEye.hp.percent>45 then\n    show(sourcePoint(eastEye),'EAST EYE UNTIL 45%')\n   else show(eyeHomes[r]or pos(90,100),tm and 'WEST EYE - WAIT FOR DIVE' or 'YOUR MIRAGE DIVE SPOT')end\n  end\n  return\n end\n -- Two native casts form one wave. Do not assign either swap until both targets exist.\n for n,b in ipairs(e.batches)do if not b.assigned and #b.targets==2 then\n  table.sort(b.targets,function(a,b)return a.p.z<b.p.z end)\n  if n==1 then e.first={b.targets[1].id,b.targets[2].id}end\n  local incoming=n==1 and{idOf('T1'),idOf('T2')}or n==2 and{idOf('M1'),idOf('M2')}or n==3 and e.first\n  if incoming and incoming[1]and incoming[2]then\n   e.swaps=e.swaps or{}\n   for i,t in ipairs(b.targets)do\n    e.swaps[#e.swaps+1]={taker=incoming[i],out=t.id,wave=n}\n    e.positions[incoming[i]]=t.p;e.positions[t.id]=pos(90,100)\n   end\n  end\n  b.assigned=n>=4 or incoming and incoming[1]~=nil and incoming[2]~=nil\n end end\n e.rings={}\n for _,q in ipairs(party())do if TensorCore.getBuff(q,2775)then\n  local blocked=false\n  for n=math.max(1,#e.batches-1),#e.batches do if e.batches[n].seen[q.id]then blocked=true end end\n  if not blocked then e.rings[#e.rings+1]=q.id end\n end end\n local wave=#e.batches\n e.partner=nil\n for _,swap in ipairs(e.swaps or{})do\n  local takerID=swap.taker\n  if takerID==p.id or swap.out==p.id then\n   local taker,giver=ent(takerID),ent(swap.out)\n   if not swap.done and swap.wave==wave and eyeHasChain(taker,2775) and eyeHasChain(giver,2776)then\n    swap.done=true\n   end\n   if not swap.done and swap.wave==wave and taker and giver and taker.alive and giver.alive\n    and eyeHasChain(taker,2776) and eyeHasChain(giver,2775)then\n    local other=takerID==p.id and giver or taker\n    e.partner=other.id\n    local text=takerID==p.id and 'TAKE RED CHAIN FROM MARKED PARTNER' or 'PASS RED CHAIN TO MARKED PARTNER'\n    show(function()local actor=ent(other.id);return actor and actor.pos end,text,eyeColor[2775])\n    return\n   end\n  end\n end\n if wave>=4 then show(pos(90,100),'WEST EYE');S.guides.eye.said=true\n elseif red then show(e.positions[p.id]or eyeHomes[r]or p.pos,'HOLD DIVE SPOT',eyeColor[2775])\n else show(pos(90,100),'GO WEST')end\nend\nupdates.vow=function(now,p)\n local v=S.vow;if v then v.partner=nil;if not v.expires or now<v.expires-3700 then S.guides.vow=nil end end\n if v and v.expires and now<v.expires then\n  local r=role();local primary=O.vowMelee==1 and 'M2'or'M1'\n  local nextSlot=({[1]='T1',[2]='T2',[3]=primary,[4]='R2'})[v.progress]\n  if nextSlot==primary then local e=ent(idOf(primary));local b=e and TensorCore.getBuff(e,2897)\n   if b and b.duration*1000>v.expires-now then nextSlot=primary=='M1'and'M2'or'M1'end\n  end\n  local owner=ent(v.owner)\n  if nextSlot and owner and owner.alive and now>=v.expires-10000 and(p.id==v.owner or r==nextSlot)then\n   local receiver=ent(idOf(nextSlot));local immunity=receiver and TensorCore.getBuff(receiver,2897)\n   if receiver and receiver.alive and receiver.id~=owner.id and(not immunity or immunity.duration*1000<=v.expires-now)then\n    v.partner=p.id==v.owner and receiver.id or owner.id\n    local key=tostring(v.progress)..':'..v.owner..':'..receiver.id\n    if v.infoKey~=key then say('vowPartner:'..key,'VOW PARTNER MARKED - WAIT FOR PASS',2500);v.infoKey=key end\n   end\n  end\n  if nextSlot and owner and now>=v.expires-3700 then\n   if p.id==v.owner or r==nextSlot then\n    local dest=v.progress==4 and pos(100,81)or pos(100,100)\n    local hot=S.p6 and S.p6.hot\n    if v.progress==2 and hot and hot.kind=='tail'then\n     local w=S.p6.wroth;dest=pos(100,100-(w and w.sz or 1)*10)\n    end\n    local receiver=ent(idOf(nextSlot));local immunity=receiver and TensorCore.getBuff(receiver,2897)\n    if not immunity or immunity.duration*1000<=v.expires-now then\n     guide('vow',dest,v.expires,p.id==v.owner and 'PASS VOW'or'TAKE VOW',10,1,27953)\n     v.partner=p.id==v.owner and idOf(nextSlot)or v.owner\n     if O.aoeTimers~=false and v.timerEnd~=v.expires then AnyoneCore.addWorldTextCountdown(v.expires-now,{x=dest.x,y=dest.y+2,z=dest.z},0xFFFFFFFF,true,1.5);v.timerEnd=v.expires end\n    else S.guides.vow=nil end\n   else danger('vow',function()local e=ent(v.owner);return e and e.pos end,5,v.expires,27953)end\n  end\n end\n\nend\nupdates.giga=function(now,p)\n local giga=S.giga\n if giga and now-giga.at<22000 and #giga.list>0 and(giga.hits>0 or S.sword)then\n  local next=giga.list[1];local c=pos(100,100);local radius=S.sword and S.sword.inside and 7 or 10\n  local h=TensorCore.getHeadingToTarget(next.p,c);local dest=polar(c,h,radius)\n  guide('giga',dest,next.expires,'GIGAFLARE SAFE',8,1,next.spell)\n end\n\nend\nupdates.exa=function(now,p)\n local exa=S.exa\n if exa and now<exa.expires then\n  local rear=polar(exa.boss,exa.h+math.pi,10);local source;local d\n  for _,v in pairs(exa.helpers)do local n=dist(v.p,rear);if not d or n<d then source=v;d=n end end\n  if source then\n   if exa.stage==0 then\n    local best,score\n    if S.sword then\n     for i=0,63 do\n      local q=polar(source.p,i*math.pi/32,6.5);local d=dist(q,exa.boss)\n      local safe=S.sword.inside and d<7.6 or not S.sword.inside and d>8.5\n      if dist(q,pos(100,100))>20.5 then safe=false end\n      for _,v in pairs(exa.helpers)do if dist(q,v.p)<6.3 then safe=false end end\n      local rank=math.abs(d-(S.sword.inside and 7.2 or 10.5))+dist(q,p.pos)*.01\n      if safe and(not score or rank<score)then best=q;score=rank end\n     end\n    end\n    if best then guide('exa',best,source.expires,'REAR EXA - '..(S.sword.inside and 'IN'or'OUT'),6,1)else S.guides.exa=nil end\n   elseif exa.stage==1 then guide('exa',source.p,exa.expires,'INTO CLEARED EXA',8,1)\n   elseif exa.stage==2 then guide('exa',polar(source.p,exa.h+math.pi,7),exa.expires,'BACK OUT',8,1)\n   else S.guides.exa=nil end\n  end\n end\n\nend\nlocal trinityTimes={1561.2,1565.3,1585.8,1589.9,1619,1623.1,1640.2,1644.3,1665.9,1670,1699.1,1703.2,1720.2,1724.3,1747,1751.1}\nlocal trinityRoles={'M1','M2','R1','R2','H1','H2'}\nfunction S.trinityWindow()\n local t=TensorReactions_CurrentTimer or 0\n if t<1555.2 or t>1752.1 then return end\n local r=role();if not r or r:sub(1,1)=='T'then return end\n local b=ent(S.p7Boss or S.akhBoss or(S.exa and S.exa.bossID))\n if not b or not b.alive or b.contentid~=11319 then return end\n for i,at in ipairs(trinityTimes)do\n  if i>(S.trinityResolvedIndex or 0)and r==trinityRoles[(i-1)%6+1]and t>=at-6 and t<=at+1 then return i,at-t,b end\n end\nend\nfunction S.resolveTrinitySchedule()\n local t=TensorReactions_CurrentTimer or 0;local found,delta\n for i,at in ipairs(trinityTimes)do local d=math.abs(t-at);if d<=2.5 and(not delta or d<delta)then found=i;delta=d end end\n if found then S.trinityResolvedIndex=math.max(S.trinityResolvedIndex or 0,found)end\n S.trinityMoveIndex=nil\nend\nupdates.trinity=function(now,p)\n local index,remaining,b=S.trinityWindow()\n if index then\n  if S.trinityWarnedIndex~=index then say('trinitySoon:'..index,'YOUR TRINITY AUTO IN '..math.ceil(math.max(0,remaining))..'s',2500);S.trinityWarnedIndex=index end\n  -- Advance warning is informational. Keep the preceding mechanic's actual completion gate.\n  if remaining<=2.2001 and S.trinityReady then\n   guide('trinity',function()local q=ent(b.id);return q and q.pos end,now+math.max(100,(remaining+1)*1000),'MOVE IN - TAKE YOUR TRINITY AUTO',4,1,28065)\n   if S.trinityMoveIndex==index then S.guides.trinity.said=true end\n   S.guides.trinity.trinityIndex=index\n  else S.guides.trinity=nil end\n  return\n end\n S.guides.trinity=nil\n -- Preserve event-driven recovery outside the supported schedule; do not repeat a scheduled turn after expiry.\n local t=TensorReactions_CurrentTimer or 0\n if t<1555.2 and S.trinityReady and not tank()then\n  local nextRole=trinityRoles[(S.trinityCount or 0)%6+1];local r=role();local boss=ent(S.akhBoss or(S.exa and S.exa.bossID))\n  if r==nextRole and boss then guide('trinity',function()local q=ent(boss.id);return q and q.pos end,now+1000,'BAIT TRINITY',4,1,28065)end\n end\nend\n\nfunction S.chargePathClear(from,q)\n local st=S.spiral\n if not st or Now()>=st.ends then return true end\n for _,k in pairs(st.knights)do\n  local a=(from.x-k.p.x)*math.cos(k.h)-(from.z-k.p.z)*math.sin(k.h)\n  local b=(q.x-k.p.x)*math.cos(k.h)-(q.z-k.p.z)*math.sin(k.h)\n  if math.abs(a)<8.25 then\n   if (math.abs(a)>.05 and a*b<=0)or math.abs(b)<8.25 or math.abs(b)<=math.abs(a)then return false end\n  elseif a*b<=0 or math.abs(b)<8.25 then return false end\n end\n return true\nend\n-- Optional ownership diagnostics; fixed labels, never countdowns or console spam.\nfunction S.labelOwnedDraws(now)\n if not O.debugLabels or(S.debugLabelAt and now-S.debugLabelAt<750)then return end\n S.debugLabelAt=now\n local function label(key,q,expires)\n  if type(q)=='function'then q=q()end\n  if q and expires>now then\n   AnyoneCore.addTimedWorldText(math.min(850,expires-now),'LPDU: '..key,{x=q.x,y=q.y+2,z=q.z},0xFFFFFFFF,true,.85)\n  end\n end\n for key,v in pairs(S.danger)do label(key,v.p,v.expires)end\n local best,key\n for k,v in pairs(S.guides)do if now<v.expires and(not best or v.priority>best.priority)then best=v;key=k end end\n if best and not best.noWorld then label(key..' - '..best.text,best.p,best.expires)end\n local landing=S.guides.meteor\n if landing and landing.noArrow and S.guides.meteorKB then label('meteor landing tower',landing.p,landing.expires)end\n local spiral=S.spiral\n if spiral and spiral.spreadDestination and now<spiral.ends and(S.lightningPrep or S.lightningEnds and now<S.lightningEnds)then label('P2 role spread destination',spiral.spreadDestination,spiral.ends)end\n local leap=S.strengthState\n if leap and now<leap.expires and not S.strengthLeap then for i,q in ipairs(leap.leapChoices or{})do label('P2 blue jump choice '..i,q,leap.expires)end end\n local beam=S.beam\n if beam and now<beam.expires then for _,i in ipairs(beam.visible or{})do label('P1 available beam spot '..i,beam.spots[i],beam.expires)end end\n local p6=S.p6\n if p6 and now<p6.expires then for i,v in ipairs(p6.drawCones or{})do label(v.own and'P6 your breath cone'or'P6 other breath cone '..i,polar(v.p,v.h,12),now+850)end end\n local pure=S.pure\n if pure and now<pure.expires then for i,v in ipairs(pure.cones or{})do\n  label(v.own and'own tether cone'or'other tether cone '..i,polar(v.p,v.h,5),pure.expires)\n end end\n local st=S.strengthState\n if st and now<st.expires and not S.strengthLeap then for id in pairs(st.marks)do local e=ent(id);if e then label('blue leap marker',e.pos,st.expires)end end end\n local t=S.sanctity\n if t and now<t.expires and(t.severHits or 0)<4 then for icon,id in pairs(t.markers)do local e=ent(id);if e then label('sword '..(icon==50 and'1'or'2')..' stack',e.pos,t.expires)end end end\n if S.psPartner and S.psExpires then local e=ent(S.psPartner);if e then label('symbol partner',e.pos,S.psExpires)end end\n local st=S.strengthState\n if st and now<st.expires then for _,t in pairs(st.tethers)do local e=not t.done and ent(t.target);if e then label('P2 tether holder',e.pos,st.expires)end end end\n if S.diveTower then label('P3 assigned dive tower',S.diveTower.p,S.diveTower.expires)end\n if S.jumpChoices and now<S.jumpChoices.expires then for i,q in ipairs(S.jumpChoices.points)do label('P3 jump standing spot '..i,q,S.jumpChoices.expires)end end\n if S.jumpPreviews and now<S.jumpPreviews.expires then for _,v in ipairs(S.jumpPreviews.points)do label(v.own and'P3 your predicted jump landing'or'P3 other predicted jump landing',v.p,S.jumpPreviews.expires)end end\n local phase=S.p3phase\n if phase and now<phase.expires then for _,t in pairs(phase.tethers)do local e=ent(t.target);if e then label('P3 Soul Tether holder',e.pos,phase.expires)end end end\n if st and now<st.expires then for source,t in pairs(st.tethers)do local b=ent(source);local e=ent(t.target)\n  if b and e and(not t.done or t.danceUntil and now<t.danceUntil)then label('P2 tether cleave',polar(b.pos,TensorCore.getHeadingToTarget(b.pos,e.pos),6),t.danceUntil or st.expires)end\n end end\n local eye=S.eyes\n if eye and now<eye.expires and eye.mirage and O.p4DiveIndicators~=false then\n  for _,id in ipairs(eye.rings or{})do local q=ent(id);if q then label('P4 Mirage Dive target',q.pos,eye.expires)end end\n end\n if eye and eye.partner then local q=ent(eye.partner);if q then label('P4 swap partner',q.pos,eye.expires)end end\n local t=S.doorTether\n if t and not t.detached and not t.hit then local e=ent(t.target);if e then label('P1 tether holder',e.pos,t.expires)end end\nend\nfunction S.update(scope)\n local now=Now();local p=player()\n if not p or not p.alive or not O.enabled then S.releaseDiveFacing();S.releaseGaze();S.guides={};S.danger={};return end\n if scope then if updates[scope]then updates[scope](now,p)end\n else\n  updates.strengthPosition(now,p)\n  updates.sanctity(now,p)\n  updates.gaze(now,p)\n  updates.strengthTowers(now,p)\n  updates.shining(now,p)\n  updates.doorTether(now,p)\n  updates.sword(now,p)\n  updates.beam(now,p)\n  updates.ps(now,p)\n  updates.meteor(now,p)\n  updates.pure(now,p)\n  updates.spiral(now,p)\n  updates.mercy(now,p)\n  updates.might(now,p)\n  updates.dive(now,p)\n  updates.generalP3(now,p)\n  updates.wrath(now,p)\n  updates.death(now,p)\n  updates.eyes(now,p)\n  updates.generalP6(now,p)\n  updates.vow(now,p)\n  updates.giga(now,p)\n  updates.exa(now,p)\n  updates.trinity(now,p)\n end\n S.labelOwnedDraws(now)\nend\n\nfunction S.tether(a)\n local p=player();if not p or not p.alive then return end\n if S.p6Tether and S.p6Tether(a)then return end\n local phase=S.p3phase\n if phase and Now()<phase.expires and(a.newTetherID==84 or a.oldTetherID==84)then\n  phase.tethers[a.sourceEntityID]=a.newTetherID==84 and{source=a.sourceEntityID,target=a.newTargetID}or nil\n  return\n end\n local st=S.strengthState\n if st and Now()<st.expires and(a.newTetherID==84 or a.oldTetherID==84)then\n  local source=ent(a.sourceEntityID)\n  if source and(source.contentid==3634 or source.contentid==3635)then\n   local q=st.tethers[source.id]or{}\n   if a.newTetherID==84 then\n    if q.target~=a.newTargetID then q.warned=nil end;q.target=a.newTargetID\n   else q.target=nil end\n   st.tethers[source.id]=q;return\n  end\n end\n if a.newTetherID==84 then\n  if S.doorTether and S.doorTether.target==a.newTargetID and not S.doorTether.detached then return end\n  S.doorTether={source=a.sourceEntityID,target=a.newTargetID,expires=Now()+12000}\n elseif a.oldTetherID==84 and a.newTetherID~=84 then\n  if S.doorTether and S.doorTether.target==a.oldTargetID then S.doorTether.detached=true;S.doorTether.expires=math.min(S.doorTether.expires,Now()+800);S.guides.doorTether=nil end\n elseif a.newTetherID==5 and S.wrath then\n  local w=S.wrath;local source=ent(a.sourceEntityID)\n  if source then\n   local list={};for _,cid in ipairs({3636,3638})do for _,v in ipairs(actors(cid))do if v.alive and dist(v.pos,pos(100,100))>20 then list[#list+1]=v end end end\n   if #list==2 then\n    local x=list[1].pos.x+list[2].pos.x-200;local z=list[1].pos.z+list[2].pos.z-200\n    local h=math.atan2(-x,-z);local cross=x*(source.pos.z-100)-z*(source.pos.x-100)\n    w.tethers[a.newTargetID]={source=source.id,p=polar(pos(100,100),h+(cross>0 and 1 or -1)*math.pi/9,19)}\n   end\n  end\n end\nend\nfunction S.draw()\n local p=player();if not p or not p.alive or not O.enabled then return end\n local now=Now();local flags=Argus2.RenderFlags.FLAG_RENDER_UI\n local red=TensorCore.getStaticDrawer(0x553333FF,2,1,flags)\n local green=TensorCore.getStaticDrawer(0x8833FF33,2,1,flags)\n local facing=S.diveFacePreview\n if facing and now<facing.expires then\n  local landing=facing.landing\n  local ring=facing.safe and green or red\n  ring:addCircle(landing.x,landing.y+.16,landing.z,1.45,false,flags)\n  if facing.heading then\n   local arrow=TensorCore.getStaticDrawer(0xFF33DDFF,2,0,flags)\n   arrow:addArrow(p.pos.x,p.pos.y+.16,p.pos.z,facing.heading,3,.38,.8,.75,false,flags)\n  end\n end\n S.drawSanctityFloor(now)\n local options=S.strengthOptions\n if O.strengthOptions~=false and options and now<options.expires and not(S.strengthState and S.strengthState.marks[p.id])then\n  for _,v in ipairs(options.points)do if now<v.expires then local optionFlags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY+Argus2.RenderFlags.FLAG_WARP_TERRAIN\n   local choices=TensorCore.getStaticDrawer(0xCC33FF33,2,0,optionFlags)\n   choices:addCircle(v.p.x,v.p.y+.13,v.p.z,1.2,false,optionFlags)end end\n end\n local ice=S.icePartner;local iceMate=ice and now<ice.expires and ent(ice.id)\n if O.icePartner~=false and iceMate and iceMate.alive and not(S.meteors and(S.meteors.done or S.meteors.stormDone))then\n  local marker=TensorCore.getStaticDrawer(0xFFFFCC33,2,0,flags)\n  marker:addCircle(iceMate.pos.x,iceMate.pos.y+.15,iceMate.pos.z,1.1,false,flags)\n  marker:addLine(p.pos.x,p.pos.y+.15,p.pos.z,iceMate.pos.x,iceMate.pos.y+.15,iceMate.pos.z,.06,.06)\n end\n local sanctity=S.sanctity\n if O.sanctityFlex~=false and sanctity and now<sanctity.expires and(sanctity.severHits or 0)<4 then\n  local mate=ent(sanctity.flexPartner)\n  if mate and mate.alive then\n   local ring=TensorCore.getStaticDrawer(0xCCFFCC33,2,1,flags)\n   ring:addCircle(mate.pos.x,mate.pos.y+.15,mate.pos.z,1,false,flags)\n   ring:addLine(p.pos.x,p.pos.y+.15,p.pos.z,mate.pos.x,mate.pos.y+.15,mate.pos.z,.06,.06)\n  end\n end\n\n local q=S.p6\n if q and now<q.expires then\n  local breath=q.breath\n  if breath and now<breath.expires and not breath.resolved then\n   local channel=Argus2.getNextUnusedChannel(true)\n   if channel~=nil then\n    local ground=Argus2.RenderFlags.FLAG_WARP_TERRAIN+Argus2.RenderFlags.FLAG_RENDER_UI\n    local baseFlags=ground+Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n    local cutFlags=ground+Argus2.RenderFlags.FLAG_OCCLUDE\n    local hazard=TensorCore.getCachedFlatDrawer(0x224444FF,0x224444FF,0x224444FF,0xCC4444FF,1,channel,baseFlags)\n    local own=TensorCore.getCachedFlatDrawer(0x00000000,0x00000000,0x00000000,0xFFFFFFFF,1,channel,baseFlags)\n    local cut=TensorCore.getCachedFlatDrawer(0x00000000,0x00000000,0x00000000,0x00000000,0,channel,cutFlags)\n    local partner=breath.pairs and breath.pairs[p.id]\n    if not partner and breath.pairs then for flex,anchor in pairs(breath.pairs)do if anchor==p.id then partner=flex;break end end end\n    for _,v in ipairs(q.drawCones or{})do\n     if v.own then own:addCone(v.p.x,v.p.y+.1,v.p.z,100,math.pi/9,v.h,false,baseFlags)\n     elseif v.target~=partner then hazard:addCone(v.p.x,v.p.y+.1,v.p.z,100,math.pi/9,v.h,false,baseFlags)end\n    end\n    for _,v in ipairs(breath.fixedCones or{})do hazard:addCone(v.p.x,v.p.y+.1,v.p.z,50,math.pi/6,v.h,false,baseFlags)end\n    -- Arena boundary is square, x/z 79..121; cut only the four exterior half-planes.\n    cut:addCenteredRect(100,p.pos.y+.1,-71,300,300,0,false,cutFlags)\n    cut:addCenteredRect(100,p.pos.y+.1,271,300,300,0,false,cutFlags)\n    cut:addCenteredRect(-71,p.pos.y+.1,100,300,300,0,false,cutFlags)\n    cut:addCenteredRect(271,p.pos.y+.1,100,300,300,0,false,cutFlags)\n   end\n  end\n  if q.afah and now<q.afah.expires and not q.afah.mineResolved then\n   local R=AnyoneCore.Roster;local g=group()\n   if R and R.current()and R.isReady()and g then local healer=ent(R.idOf('H'..g));if healer and healer.alive then green:addCircle(healer.pos.x,healer.pos.y+.12,healer.pos.z,4,false,flags)end end\n  end\n  local wing=q.wing\n  if wing and now<wing.expires then for _,id in ipairs(wing.baits or{})do local e=ent(id);if e then red:addCircle(e.pos.x,e.pos.y+.12,e.pos.z,10,false,flags)end end end\n  local b=q.breath\n  if b and now<b.expires and not b.resolved then\n   local blue=TensorCore.getStaticDrawer(0xCCFFAA33,2,1,flags)\n   for _,v in ipairs(b.tankBaits or{})do local e=ent(v.id);if e then blue:addCircle(e.pos.x,e.pos.y+.12,e.pos.z,v.radius,false,flags)end end\n\n  end\n  local vow=S.vow\n  if vow and vow.partner and vow.expires and now<vow.expires then local e=ent(vow.partner);if e then green:addCircle(e.pos.x,e.pos.y+.15,e.pos.z,1,false,flags)end end\n  local w=q.wroth\n  if w and not w.finished and now<w.expires then\n   if w.partner then local e=ent(w.partner);if e then green:addCircle(e.pos.x,e.pos.y+.12,e.pos.z,1,false,flags)end end\n   if w.hits>=4 then for id,status in pairs(w.statuses)do local e=ent(id);if e then local ring=id==p.id and green or red;ring:addCircle(e.pos.x,e.pos.y+.1,e.pos.z,status==2758 and 5 or 4,false,flags)end end end\n  end\n end\n local spiral=S.spiral\n if spiral and now<spiral.ends and spiral.spreadDestination and(S.lightningPrep or S.lightningEnds and now<S.lightningEnds)then local q=spiral.spreadDestination;green:addCircle(q.x,q.y+.12,q.z,.8,false,flags)end\n local leap=S.strengthState\n if leap and now<leap.expires and not S.strengthLeap and leap.marks[p.id]then for _,q in ipairs(leap.leapChoices or{})do green:addCircle(q.x,q.y+.12,q.z,1,false,flags)end end\n local beam=S.beam\n if beam and now<beam.expires then for _,i in ipairs(beam.visible or{})do local q=beam.spots[i];green:addCircle(q.x,q.y+.12,q.z,.9,false,flags)end end\n local w=S.wrath\n if w and now<w.expires then\n  if w.protean and now<w.protean then for _,v in ipairs(w.cones or{})do local ring=v.own and green or red;ring:addCone(v.p.x,v.p.y+.1,v.p.z,50,math.pi/6,v.h,false,flags)end end\n  for id in pairs(w.lightning)do local e=ent(id);if e then red:addCircle(e.pos.x,e.pos.y+.12,e.pos.z,5,false,flags)end end\n end\n local d=S.death\n if d and now<d.expires then\n  -- Four open slots on each half of the same Warrior-relative line.\n  if not d.doomAt and d.north then\n   local centre=pos(100,100,p.pos.y)\n   local flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY+Argus2.RenderFlags.FLAG_WARP_TERRAIN\n   local drawer=TensorCore.getStaticDrawer(0xFF33FF33,2,0,flags)\n   if not O.congaConfigured and d.congaOpen then\n    for index,offset in ipairs(congaOffsets)do\n     if d.congaOpen[index]then\n      local spot=polar(centre,d.north-math.pi/2,offset)\n      drawer:addCircle(spot.x,spot.y+.15,spot.z,.65,false,flags)\n     end\n    end\n   end\n   drawer:addArrow(centre.x,centre.y+.15,centre.z,d.north,3,.6,1.3,1.2,false,flags)\n  end\n  for id,v in pairs(d.meteors or{})do local e=ent(id);if e and e.alive and now<v.expires then green:addCircle(v.p.x,v.p.y+.12,v.p.z,1.6,false,flags)end end\n  if d.partner then local e=ent(d.partner);local color=psColors[d.symbols[p.id]];if e and color then local ring=TensorCore.getStaticDrawer(color,2,1,flags);ring:addCircle(e.pos.x,e.pos.y+.12,e.pos.z,1,false,flags)end end\n  if d.lightningHit and now<d.lightningHit+5000 then for _,q in ipairs(d.twisters or{})do red:addCircle(q.x,q.y+.1,q.z,2,false,flags)end end\n end\n local eye=S.eyes\n if eye and now<eye.expires and eye.mirage and O.p4DiveIndicators~=false then\n  for _,id in ipairs(eye.rings or{})do local e=ent(id);if e and e.alive then\n   local ring=e.id==p.id and green or red;ring:addCircle(e.pos.x,e.pos.y+.12,e.pos.z,4,false,flags)\n  end end\n end\n if eye and eye.partner and now<eye.expires then local q=ent(eye.partner)\n  if q then local ring=TensorCore.getStaticDrawer(S.guides.eye and S.guides.eye.color or 0xCC4444FF,2,1,flags);ring:addCircle(q.pos.x,q.pos.y+.15,q.pos.z,1,false,flags)end\n end\n local rw=S.rewind\n if rw and now<rw.expires and (p.job==24 or p.job==28 or p.job==33 or p.job==40)then for _,q in ipairs(actors(1455))do\n  if q.alive then green:addCircle(q.pos.x,q.pos.y+.12,q.pos.z,1,false,flags)end\n end end\n if S.psPartner and S.psExpires and now<S.psExpires then\n  local other=ent(S.psPartner)\n  if other and other.alive then\n   local ring=TensorCore.getStaticDrawer(psColors[S.myPS],2,1,flags)\n   ring:addCircle(other.pos.x,other.pos.y+.12,other.pos.z,1,false,flags)\n  end\n end\n if S.pure and now<S.pure.expires then\n  for _,v in ipairs(S.pure.cones or{})do\n   local drawer=v.own and green or red\n   drawer:addCone(v.p.x,v.p.y+.1,v.p.z,18,math.pi/6,v.h,false,flags)\n  end\n end\n local strength=S.strengthState\n if strength and now<strength.expires and not S.strengthLeap then\n  local blue=TensorCore.getStaticDrawer(0xCCFFAA33,2,1,flags)\n  for id in pairs(strength.marks)do local e=ent(id);if e and e.alive then blue:addCircle(e.pos.x,e.pos.y+.15,e.pos.z,1,false,flags)end end\n end\n local sanctity=S.sanctity\n if sanctity and now<sanctity.expires and(sanctity.severHits or 0)<4 then\n  local neutral=TensorCore.getStaticDrawer(0x88FFFFFF,2,1,flags)\n  for icon,id in pairs(sanctity.markers)do local e=ent(id)\n   if e and e.alive then\n    local own=sanctity.groups and sanctity.groups[p.id]==(icon==50 and 1 or 2)\n    local ring=own and green or neutral\n    ring:addCircle(e.pos.x,e.pos.y+.12,e.pos.z,6,false,flags)\n   end\n  end\n end\n local landing=S.guides.meteor\n if landing and landing.noArrow and now<landing.expires and S.guides.meteorKB then\n  local q=landing.p;green:addCircle(q.x,q.y+.12,q.z,landing.radius,false,flags)\n end\n local st=S.strengthState\n if st and now<st.expires then for _,t in pairs(st.tethers)do\n  local e=not t.done and ent(t.target)\n  if e and e.alive then\n   local isTank=({[19]=true,[21]=true,[32]=true,[37]=true})[e.job]\n   if not(isTank and st.marks[p.id])then\n    local drawer=isTank and TensorCore.getStaticDrawer(0xCCFFAA33,2,1,flags)or red\n    drawer:addCircle(e.pos.x,e.pos.y+.15,e.pos.z,.8,false,flags)\n   end\n  end\n end end\n if st and now<st.expires then for source,t in pairs(st.tethers)do\n  local b=ent(source);local owner=ent(t.target)\n  if b and owner and owner.alive and(not t.done or t.danceUntil and now<t.danceUntil)then\n   local drawer=owner.id==p.id and green or red\n   drawer:addCone(b.pos.x,b.pos.y+.1,b.pos.z,16,math.pi/2,TensorCore.getHeadingToTarget(b.pos,owner.pos),false,flags)\n  end\n end end\n local phase=S.p3phase\n if phase and now<phase.expires then for _,t in pairs(phase.tethers)do local e=ent(t.target)\n  if e and e.alive then local isTank=({[19]=true,[21]=true,[32]=true,[37]=true})[e.job];local ring=isTank and green or red\n   ring:addCircle(e.pos.x,e.pos.y+.15,e.pos.z,.8,false,flags)\n  end\n end end\n local dt=S.diveTower\n local choices=S.jumpChoices\n if choices and now<choices.expires then for _,q in ipairs(choices.points)do green:addCircle(q.x,q.y+.15,q.z,.8,false,flags)end end\n local previews=S.jumpPreviews\n if previews and now<previews.expires then for _,v in ipairs(previews.points)do\n  local ring=v.own and green or red\n  ring:addCircle(v.p.x,v.p.y+.12,v.p.z,5,false,flags)\n end end\n if dt and now<dt.expires then green:addCircle(dt.p.x,dt.p.y+.12,dt.p.z,5,false,flags)end\n local best\n for k,v in pairs(S.danger)do\n  if now>=v.expires then S.danger[k]=nil else\n   local q=type(v.p)=='function'and v.p()or v.p\n   if q then\n    if v.kind=='circle'then red:addCircle(q.x,q.y+.1,q.z,v.r,false,flags)\n    elseif v.kind=='donut'then red:addDonut(q.x,q.y+.1,q.z,v.r,v.angle,false,flags)\n    elseif v.kind=='cone'then\n      local might=S.danger.might==v and S.might\n      local boss=might and might.trackFacing and ent(might.source)\n      if boss or not(might and might.trackFacing)then red:addCone(q.x,q.y+.1,q.z,v.r,v.angle,boss and boss.pos.h or v.h,false,flags)end\n    elseif v.kind=='rect'then local c=polar(q,v.h,v.r/2);red:addRect(c.x,c.y+.1,c.z,v.r,v.angle,v.h,false,flags)end\n   end\n  end\n end\n for k,v in pairs(S.guides)do\n  if now>=v.expires then S.guides[k]=nil\n  elseif not best or v.priority>best.priority then best=v end\n end\n if best and not best.noWorld then\n  local q=type(best.p)=='function'and best.p()or best.p\n  if q and S.chargePathClear(p.pos,q)then\n   local ring=best.color and TensorCore.getStaticDrawer(best.color,2,1,flags)or green\n   ring:addCircle(q.x,q.y+.12,q.z,best.radius,false,flags)\n   local d=dist(p.pos,q)\n   if d>.75 and not best.noArrow then\n    -- Personal navigation remains visible over raised arena trim and scene objects.\n    local arrowFlags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY+Argus2.RenderFlags.FLAG_WARP_TERRAIN\n    local arrow=TensorCore.getStaticDrawer(0xFF33FF33,2,0,arrowFlags)\n    arrow:addArrow(p.pos.x,p.pos.y+.12,p.pos.z,TensorCore.getHeadingToTarget(p.pos,q),math.max(.1,d-1.3),.6,1.3,1.2,false,arrowFlags)\n   end\n  end\n end\nend\nfunction S.announce()\n local best;local now=Now()\n for _,v in pairs(S.guides)do if now<v.expires and(not best or v.priority>best.priority)then best=v end end\n local p=player();local q=best and(type(best.p)=='function'and best.p()or best.p)\n local strength=S.strengthState and now<S.strengthState.expires and not S.death\n local ringCue=best and best==S.guides.heavy\n local baitCue=strength and best and best==S.guides.mercy and S.mercy and S.mercy.strength\n local positionCue=strength and best and best==S.guides.strengthPosition\n if positionCue and S.strengthState.positionCues and S.strengthState.positionCues[best.text]then best.said=true end\n if ringCue and S.heavy and S.heavy.lastCue==best.text then best.said=true end\n if baitCue then\n  if now<S.mercy.baitEnd and S.mercy.stackAnnounced then best.said=true end\n  if now>=S.mercy.baitEnd and S.mercy.dodgeAnnounced then best.said=true end\n end\n if best and not best.noWorld and p and q and not best.said and S.chargePathClear(p.pos,q)then\n  say('guide:'..best.text,best.text,(ringCue or baitCue)and 1200 or nil);best.said=true\n  if S.meteors and best==S.guides.meteor and best.text=='YOUR SECOND TOWER' then S.meteors.secondTowerAnnounced=true end\n  if S.preDash and best==S.guides.shining and best.text=='OPPOSITE ADELPHEL - PREPARE KNOCKBACK' then S.preDash.announced=true end\n  if ringCue and S.heavy then S.heavy.lastCue=best.text end\n  if best.trinityIndex then S.trinityMoveIndex=best.trinityIndex end\n  if best.anchorMode and S.p6 and S.p6.breath then S.p6.breath.anchorCue=best.text end\n  if positionCue then local st=S.strengthState;st.positionCues=st.positionCues or{};st.positionCues[best.text]=true end\n  if baitCue then\n   if now<S.mercy.baitEnd then S.mercy.stackAnnounced=true else S.mercy.dodgeAnnounced=true end\n  end\n  if best==S.guides.spiral and S.spiral and(S.lightningPrep or S.lightningEnds)then S.spiral.spreadAnnounced=true;if S.strengthState then S.strengthState.spreadAnnounced=true end end\n end\nend\nself.used=true\n\nfunction S.mapEffect(a)\n if a.a1>=0 and a.a1<=7 and a.a2==1 and a.a3==2 then\n  S.gaze={eye=polar(pos(100,100),math.pi-a.a1*math.pi/4,40),expires=Now()+(S.death and 23500 or 9400)}\n end\nend\n\nfunction S.meteorObject(a)\n local m=S.meteors;local p=player();local e=ent(a.entityID)\n if not m or m.done or not p or not e or e.contentid~=11321 or Now()-m.at>=40000 then return end\n m.comets=m.comets or{}\n if m.comets[e.id]then return end\n local point=sourcePoint(e);m.comets[e.id]={p=point}\n if not m.run then return end\n local owner,first,second=nil,math.huge,math.huge\n for id in pairs(m.prey)do local v=ent(id);if v then local d=dist(v.pos,point)\n  if d<first then second=first;first=d;owner=id elseif d<second then second=d end\n end end\n if owner==p.id and first<=5 and second-first>1 then\n  m.run.drops=m.run.drops+1;m.run.last=Now()\n  if m.run.drops>=7 then S.guides.meteorRun=nil end\n end\nend\nfunction S.doorObject(a)\n local e=ent(a.entityID)\n if e and e.contentid==3293 then\n  S.doorTears=S.doorTears or{};S.doorTears[e.id]={p=sourcePoint(e),expires=Now()+45000}\n end\nend\n\n-- A waiting Lua action remains pending during one active guidance interval.\n-- Do not complete/requeue it on every update pulse (that floods debug execution logs).\nfunction S.needsUpdate()\n local now=Now();local p=player()\n if not p or not p.alive or not O.enabled then\n  return S.gazeLocked or next(S.guides)~=nil or next(S.danger)~=nil\n end\n if S.gazeLocked or S.trinityReady or S.trinityWindow()then return true end\n for _,key in ipairs({'sanctity','gaze','shining','doorTether','swordRead','sword','beam','pure','dive','wrath','eyes','vow','exa','heavy','swing','gnash'})do\n  local v=S[key];if v and v.expires and now<v.expires then return true end\n end\n if S.psExpires and now<S.psExpires then return true end\n if S.spiral and now<S.spiral.ends then return true end\n if S.meteors and not S.meteors.done and now-S.meteors.at<40000 then return true end\n if S.giga and #S.giga.list>0 and now-S.giga.at<22000 then return true end\n for _,v in pairs(S.guides)do if now<v.expires then return true end end\n return false\nend\n\n-- P6 HP information is refreshed at250ms and rendered only by the OnDraw GUI reaction.\nfunction S.dragonHPSnapshot(now)\n local q=S.p6\n if not O.enabled or O.p6DragonHP==false or not q or now>q.expires then return end\n local cache=q.hpWindow\n if cache and now<cache.next then return cache end\n if not cache then cache={};q.hpWindow=cache end\n cache.next=now+250;cache.nidd=nil;cache.hrae=nil\n for _,cid in ipairs({3458,4954})do\n  local e=ent(S.actorIDs[cid]);if not e or e.contentid~=cid then local found=actors(cid);e=found[1]end\n  if e and e.hp and e.hp.max>0 then\n   local value=math.max(0,math.min(100,e.hp.current/e.hp.max*100))\n   if cid==3458 then cache.nidd=value else cache.hrae=value end\n  end\n end\n if cache.nidd and cache.hrae then\n  cache.gap=math.abs(cache.nidd-cache.hrae)\n  cache.high=cache.nidd>cache.hrae+.05 and'Nidhogg'or cache.hrae>cache.nidd+.05 and'Hraesvelgr'or nil\n else cache.gap=nil;cache.high=nil end\n return cache\nend\nfunction S.drawDragonHP()\n local cache=S.dragonHPSnapshot(Now());if not cache or(cache.nidd==nil and cache.hrae==nil)or(cache.nidd==0 and cache.hrae==0)then return end\n local visible,open=GUI:Begin('DSR - Dragon HP',true,GUI.WindowFlags_AlwaysAutoResize)\n if visible then\n  local n=cache.nidd and string.format('Nidhogg     %.2f%%',cache.nidd)or'Nidhogg     --'\n  local h=cache.hrae and string.format('Hraesvelgr  %.2f%%',cache.hrae)or'Hraesvelgr  --'\n  if cache.high=='Nidhogg'then GUI:TextColored(1,.8,.25,1,n)else GUI:TextUnformatted(n)end\n  if cache.high=='Hraesvelgr'then GUI:TextColored(1,.8,.25,1,h)else GUI:TextUnformatted(h)end\n  if cache.gap then\n   GUI:Separator();GUI:TextUnformatted(string.format('HP gap: %.2f percentage points',cache.gap))\n   if cache.high then GUI:TextUnformatted('Higher HP: '..cache.high)else GUI:TextUnformatted('HP equal')end\n  end\n end\n GUI:End()\n if open==false then O.p6DragonHP=false;dsrStore.save()end\nend\n-- P6: established LPDU coordinates; native casts/hits own transitions.\nlocal function p6state()\n local q=S.p6\n if not q or Now()>q.expires then q={at=Now(),expires=Now()+240000,breaths=0};S.p6=q end\n return q\nend\nlocal function p6middle()\n if O.p6Middle==1 then return 'T1'elseif O.p6Middle==2 then return 'T2'end\n return 'T2' -- Frog EU defaults: T1 wall, T2 middle; explicit overrides remain above.\nend\nlocal function p6roster()\n local R=AnyoneCore.Roster;if not R or not R.current()or not R.isReady()then return end\n local ids={};for _,r in ipairs(slots)do local id=R.idOf(r);if not id or not ent(id)then return end;ids[r]=id end\n return ids\nend\nfunction S.p6Tether(a)\n local id=a.newTetherID\n if id~=194 and id~=195 and id~=196 then return false end\n local boss=ent(a.newTargetID);if not boss or(boss.contentid~=3458 and boss.contentid~=4954)then return false end\n local q=p6state();local b=q.breath\n if not b or Now()>b.expires then q.breaths=q.breaths+1;b={wave=q.breaths,expires=Now()+11000,tethers={},casts={}};q.breath=b end\n local color=boss.contentid==3458 and 194 or 195;local old=b.tethers[a.sourceEntityID]\n if not old or old.color~=color then b.assign=nil;b.pairs=nil;b.anchorHolds=nil end\n b.tethers[a.sourceEntityID]={boss=boss.id,color=color,near=id==196}\n return true\nend\nfunction S.p6Channel(a,c,h,deadline)\n local id=a.spellID;local now=Now()\n if id>=27954 and id<=27957 then\n  local q=p6state();local b=q.breath\n  if not b or now>b.expires then q.breaths=q.breaths+1;b={wave=q.breaths,tethers={},casts={}};q.breath=b end\n  b.expires=deadline+1000;b.deadline=deadline;b.casts[a.entityID]={glow=id==27955 or id==27957,c=c,h=h,cid=ent(a.entityID).contentid}\n  return true\n elseif id==27971 or id==27969 then\n  local q=p6state();q.afah={expires=deadline+700,hits={}};q.initialVow=nil;S.guides.p6Prep=nil\n  local g=group();if g then guide('afah',pos(100,g==1 and 95.3 or 104.7),deadline+700,g==1 and 'NORTH GROUP STACK'or'SOUTH GROUP STACK',6,1.2)end\n  if not q.afahCall or now-q.afahCall>5000 then say('p6Balance','BALANCE DRAGONS - WITHIN THREE PERCENT');q.afahCall=now end\n  return true\n elseif id==27939 or id==27940 or id==27942 or id==27943 then\n  local q=p6state();S.guides.p6Prep=nil\n  if q.wroth then q.hot=nil;S.guides.wings=nil end\n  q.wing={expires=deadline+1300,deadline=deadline+800,boss=a.entityID,far=id==27940 or id==27943,left=id==27939 or id==27940,c=c,h=h}\n  local v=q.wing;v.origin=polar(c,h+(v.left and math.pi/2 or -math.pi/2),11)\n  danger('wings',v.origin,50,v.deadline,v.left and 27941 or 27944,'rect',22);S.danger.wings.h=h\n  return true\n elseif id==27966 or id==27967 then\n  local q=p6state();local v={p=c,h=h,expires=deadline,source=a.entityID};if id==27966 then q.nidDive=v else q.hraeDive=v end\n  danger('p6Dive:'..a.entityID,c,80,deadline,id,'rect',22);S.danger['p6Dive:'..a.entityID].h=h\n  return true\n elseif id==27947 or id==27949 then\n  local q=p6state();q.hot={kind=id==27947 and'wing'or'tail',expires=deadline+1200}\n  return true\n elseif id==27948 or id==27950 then\n  danger('p6Hot:'..a.entityID,c,50,deadline,id,'rect',id==27948 and 21 or 16);S.danger['p6Hot:'..a.entityID].h=h;return true\n elseif id==27973 then\n  local q=p6state();q.wroth={at=now,expires=now+33000,orbs={},spawned={},puddles={},hits=0,statuses={}};q.nidDive=nil;q.wing=nil;q.hot=nil;S.guides.wings=nil;return true\n elseif id==26409 and S.p6 and S.p6.wroth then\n  local w=S.p6.wroth;w.orbs[a.entityID]={p=c,expires=deadline}\n  for i=0,1 do local key='p6Cross:'..a.entityID..':'..i;local hh=i*math.pi/2;danger(key,polar(c,hh+math.pi,44),88,deadline,id,'rect',6);S.danger[key].h=hh;S.danger[key].source=a.entityID end\n  return true\n elseif id==27974 then\n  local w=p6state().wroth;if w then w.akhAt=now;w.firstHit=deadline;w.expires=math.max(w.expires,deadline+16000)end;return true\n elseif id==27937 then\n  local q=p6state();q.enrage=deadline;guide('p6Finish',pos(group()==1 and 96 or 104,100),deadline,'FINISH BOTH DRAGONS',3,1)\n  q.enrageTimers=q.enrageTimers or{}\n  if O.aoeTimers~=false and q.enrageTimers[a.entityID]~=deadline then AnyoneCore.addWorldTextCountdown(deadline-now,{x=c.x,y=c.y+3,z=c.z},0xFFFFFFFF,true,1.5);q.enrageTimers[a.entityID]=deadline end\n  say('p6Enrage','ENRAGE - FINISH BOTH DRAGONS');return true\n end\n return false\nend\nfunction S.p6Buff(a)\n local id=a.buffID;local q=S.p6;local now=Now()\n if id==2896 then\n  p6state();S.vow=S.vow or{progress=1};S.vow.owner=a.entityID;S.vow.passOwner=S.vow.passOwner or a.entityID;S.vow.expires=now+a.buffDuration*1000;S.vow.said=nil;return true\n elseif id==2758 or id==2759 then\n  local w=p6state().wroth;if not w then return true end\n  w.statuses[a.entityID]=id;w.statusEnd=now+a.buffDuration*1000\n  return true\n elseif(id==2898 or id==2899)and q then\n  q.fireice=q.fireice or{expires=now+20000,statuses={}};q.fireice.statuses[a.entityID]=id;q.fireice.statusEnd=now+a.buffDuration*1000\n  return true\n end\n return false\nend\nfunction S.p6Hit(a)\n local id=a.spellID;local q=S.p6;local now=Now()\n if not q then return false end\n if id==27958 or id==27959 then\n  if q.breath then q.breath.resolved=true end;S.guides.p6Breath=nil\n  if q.breath and q.breath.wave==1 then q.initialVow=now+10000 end;return true\n elseif id==27952 then\n  q.initialVow=nil\n  local g=group();if g then guide('p6Prep',pos(100,g==1 and 95.3 or 104.7),now+14000,g==1 and'PREPARE NORTH GROUP STACK'or'PREPARE SOUTH GROUP STACK',4,1)end\n  return true\n elseif id==27970 or id==27972 then\n  if q.afah then local g=group();if g and a.targetID==idOf('H'..g)then q.afah.mineResolved=true end;q.afah.hits[id]=true;if q.afah.hits[27970]and q.afah.hits[27972]then S.guides.afah=nil;q.afah=nil;guide('p6Prep',pos(100,100),now+9000,'MIDDLE - PREPARE WINGS',4,1)end end;return true\n elseif id==27945 then q.wing=nil;S.guides.wings=nil;return true\n elseif id==27953 then\n  local v=S.vow;if v and(not v.lastHit or now-v.lastHit>1000)then\n   v.lastHit=now;v.progress=v.progress+1;v.partner=nil\n   if v.owner==v.passOwner then v.owner=nil;v.expires=nil;v.passOwner=nil else v.passOwner=v.owner end\n   S.guides.vow=nil;S.danger.vow=nil\n  end;return true\n elseif id==27974 or id==27975 then\n  local w=q.wroth\n  if w and(not w.lastHit or now-w.lastHit>600)then\n   w.lastHit=now;w.hits=w.hits+1\n   local e=ent(a.targetID);if e then w.puddles[#w.puddles+1]={p=sourcePoint(e),expires=now+18000}end\n   S.guides.p6Wroth=nil\n  end;return true\n elseif id==26409 then if q.wroth then q.wroth.orbs[a.entityID]=nil end;return true\n elseif(id==27966 or id==27967)and q.fireice then\n  q.finalDiveHits=q.finalDiveHits or{};q.finalDiveHits[id]=true\n  if q.finalDiveHits[27966]and q.finalDiveHits[27967]then q.northReady=true;S.guides.p6FireIce=nil end\n  return true\n elseif id==29739 or id==29740 then\n  local w=q.wroth;if w then w[id==29739 and'spreadDone'or'pairDone']=true;if w.spreadDone and w.pairDone then w.finished=true;S.guides.p6Wroth=nil end end;return true\n elseif id==27968 then\n  q.touchdown=now+9000;guide('p6North',pos(100,81),q.touchdown,'NORTH WALL - STAY',9,1,28903);S.guides.p6FireIce=nil;return true\n elseif id==28903 then q.touchdown=nil;q.fireice=nil;q.northReady=nil;q.touchdownResolved=true;S.guides.p6North=nil;S.guides.p6FireIce=nil;return true\n end\n return false\nend\nlocal function p6assignBreath(b,ids)\n if b.assign then return end\n local anchors={'H1','M1','R1'};local flex={'H2','M2','R2'}\n for _,r in ipairs({'H1','H2','M1','M2','R1','R2'})do if not b.tethers[ids[r]]then return end end\n local result={}\n if b.wave==1 then\n  local points={pos(94,116),pos(100,106),pos(106,116)}\n  for i,r in ipairs(anchors)do result[ids[r]]=points[i]end\n  -- Maximize ordinary role-pair matches, then a stable G2 bijection.\n  local best,score\n  for _,order in ipairs({{1,2,3},{1,3,2},{2,1,3},{2,3,1},{3,1,2},{3,2,1}})do\n   local ok=true;local n=0\n   for i,j in ipairs(order)do if b.tethers[ids[anchors[i]]].color==b.tethers[ids[flex[j]]].color then ok=false end;if i==j then n=n+1 end end\n   if ok and(not score or n>score)then best=order;score=n end\n  end\n  if not best then return end\n  b.pairs={}\n  for i,j in ipairs(best)do result[ids[flex[j]]]=points[i];b.pairs[ids[flex[j]]]=ids[anchors[i]] end\n else\n  -- Frog EU 5-1: H1 south; H2 north unless the healer colours match.\n  -- Solve the four DPS lanes as one bijection, preserving melee outer lanes.\n  local colors={};local counts={[194]=0,[195]=0}\n  for _,r in ipairs({'H1','H2','M1','M2','R1','R2'})do local color=b.tethers[ids[r]].color;colors[r]=color;counts[color]=counts[color]+1 end\n  if counts[194]~=3 or counts[195]~=3 then return end\n  local healerSlot=3\n  if colors.H1==colors.H2 then healerSlot=colors.H2==194 and 4 or 2 end\n  local available={};for i=1,5 do if i~=healerSlot then available[#available+1]=i end end\n  local roles={'M1','R1','R2','M2'};local defaults={M1=1,R1=2,R2=4,M2=5}\n  local best,bestScore;local chosen,used={},{}\n  local function visit(index,score)\n   if index==5 then\n    if not bestScore or score<bestScore then bestScore=score;best={H1=6,H2=healerSlot};for role,slot in pairs(chosen)do best[role]=slot end end\n    return\n   end\n   local role=roles[index]\n   for _,slot in ipairs(available)do\n    local legal=slot==3 or(slot<3 and colors[role]==195)or(slot>3 and colors[role]==194)\n    if not used[slot]and legal then\n     local melee=role=='M1'or role=='M2';local outer=slot==1 or slot==5\n     used[slot]=true;chosen[role]=slot;visit(index+1,score+math.abs(slot-defaults[role])+(melee~=outer and 20 or 0));used[slot]=nil;chosen[role]=nil\n    end\n   end\n  end\n  visit(1,0);if not best then return end\n  b.lanes=best\n  for role,slot in pairs(best)do\n   if slot<=5 then local theta=math.rad(-45+(slot-1)*22.5);result[ids[role]]=pos(100+19.1*math.sin(theta),100-19.1*math.cos(theta))\n   else result[ids[role]]=pos(100,119.5)end\n  end\n end\n b.assign=result\nend\nfunction S.p6BreathPointSafe(point,p,b,q,nonTank)\n if #q.drawCones~=6 then return false end\n local partner=b.pairs and b.pairs[p.id]\n if not partner and b.pairs then for flex,anchor in pairs(b.pairs)do if anchor==p.id then partner=flex;break end end end\n for _,v in ipairs(q.drawCones or{})do if not v.own and v.target~=partner then\n  local dx,dz=point.x-v.p.x,point.z-v.p.z;local forward=dx*math.sin(v.h)+dz*math.cos(v.h);local lateral=math.abs(dx*math.cos(v.h)-dz*math.sin(v.h))\n  if forward>=0 and forward<=100 and lateral<=forward*math.tan(math.pi/18)+.25 then return false end\n end end\n for _,v in ipairs(b.fixedCones or{})do\n  local dx,dz=point.x-v.p.x,point.z-v.p.z;local forward=dx*math.sin(v.h)+dz*math.cos(v.h);local lateral=math.abs(dx*math.cos(v.h)-dz*math.sin(v.h))\n  if forward>=0 and forward<=50 and lateral<=forward*math.tan(math.pi/12)+.25 then return false end\n end\n if nonTank or not tank()then for _,v in ipairs(b.tankBaits or{})do local owner=ent(v.id);if not owner or dist(point,owner.pos)<v.radius+.25 then return false end end end\n return true\nend\n-- Optional validated anchor hold. No chosen point is accepted merely because the player stood there.\nfunction S.wb1AnchorDestination(b,q,p,fixed,now,castsReady)\n if b.anchorOption~=O.p6WB1Chosen then b.anchorOption=O.p6WB1Chosen;b.anchorHolds=nil end\n if not O.p6WB1Chosen or b.wave~=1 or not b.pairs or b.pairs[p.id]then return fixed,'fixed' end\n local partner\n for flex,anchor in pairs(b.pairs)do if anchor==p.id then partner=flex;break end end\n if not partner then return fixed,'fixed' end\n b.anchorHolds=b.anchorHolds or{};local state=b.anchorHolds[p.id]\n if not state or state.partner~=partner then state={partner=partner};b.anchorHolds[p.id]=state end\n if state.failed then return fixed,'fallback' end\n if not castsReady or #q.drawCones~=6 then return sourcePoint(p),'checking' end\n local own,other=b.tethers[p.id],b.tethers[partner]\n local point=state.accepted or p.pos\n local inArena=math.abs(point.x-100)<=20.5 and math.abs(point.z-100)<=20.5\n local valid=own and other and not own.near and not other.near and inArena and S.p6BreathPointSafe(point,p,b,q,true)\n if not valid then\n  state.candidate=nil;state.since=nil\n  if state.accepted then state.failed=true end\n  return fixed,'fallback'\n end\n if state.accepted then return state.accepted,'chosen' end\n if not state.candidate or dist(p.pos,state.candidate)>.35 then state.candidate=sourcePoint(p);state.since=now end\n if now-state.since<400 then return sourcePoint(p),'checking' end\n state.accepted=state.candidate;return state.accepted,'chosen'\nend\nlocal breathPathPoint={}\nfunction S.p6BreathPathSafe(from,dest,p,b,q)\n if not S.p6BreathPointSafe(dest,p,b,q)then return false end\n local escaped=S.p6BreathPointSafe(from,p,b,q)\n for i=1,12 do local t=i/12;local point=breathPathPoint;point.x=from.x+(dest.x-from.x)*t;point.z=from.z+(dest.z-from.z)*t;point.y=from.y\n  local safe=S.p6BreathPointSafe(point,p,b,q)\n  if escaped and not safe then return false end\n  if safe then escaped=true end\n end\n return true\nend\nupdates.generalP6=function(now,p)\n local q=S.p6;if not q or now>q.expires then return end\n local r=role();local ids=p6roster();local b=q.breath\n q.drawCones={}\n if b and now<b.expires and not b.resolved then for id,v in pairs(b.tethers)do local boss=ent(v.boss);local owner=ent(id)\n  if boss and owner then q.drawCones[#q.drawCones+1]={p=sourcePoint(boss),h=TensorCore.getHeadingToTarget(boss.pos,owner.pos),own=id==p.id,target=id}end\n end end\n\n if b and now<b.expires and not b.resolved then\n  if ids then p6assignBreath(b,ids)end\n  b.tankBaits={};b.fixedCones={}\n  local count,glow=0,0\n  for _,v in pairs(b.casts)do count=count+1;if v.glow then glow=glow+1 end end\n  if count==2 and ids then\n   if glow==2 then b.tankBaits={{id=ids.T1,radius=6},{id=ids.T2,radius=6}}\n   elseif glow==1 then for _,v in pairs(b.casts)do\n    if not v.glow then b.tankBaits[#b.tankBaits+1]={id=v.cid==3458 and ids.T1 or ids.T2,radius=15}\n    else b.fixedCones[#b.fixedCones+1]={p=v.c,h=v.h}end\n   end end\n  end\n  if tank()then\n   if count==2 then local dest\n    if glow==2 then dest=pos(100,100)\n    elseif b.wave==1 then dest=pos(r=='T1'and 87 or 113,87)\n    else dest=r=='T1'and pos(85.25,87.75)or pos(115.28,110.83)end\n    guide('p6Breath',dest,b.expires,glow==2 and'STACK TANKBUSTERS - MITIGATE'or'SEPARATE TANKBUSTERS - MITIGATE',8,1)\n    if O.aoeTimers~=false and b.timerEnd~=b.deadline and b.deadline then AnyoneCore.addWorldTextCountdown(b.deadline-now,{x=dest.x,y=dest.y+2,z=dest.z},0xFFFFFFFF,true,1.5);b.timerEnd=b.deadline end\n   end\n  elseif b.assign and b.assign[p.id]then\n   local v=b.tethers[p.id];local dest=b.assign[p.id]\n   if b.pairs and b.pairs[p.id]then local anchor=ent(b.pairs[p.id]);if anchor then dest=sourcePoint(anchor)end end\n   local anchorMode\n   if b.wave==1 and b.pairs and not b.pairs[p.id]then dest,anchorMode=S.wb1AnchorDestination(b,q,p,dest,now,count==2)end\n   -- South healer shifts toward the non-glowing cone's opposite edge.\n   if b.wave==2 and r=='H1'and count==2 then\n    local n,h\n    for _,cast in pairs(b.casts)do if cast.cid==3458 then n=cast.glow else h=cast.glow end end\n    if n==false and h==true then dest=pos(98,119.5)elseif n==true and h==false then dest=pos(102,119.5)elseif not(n==true and h==true)then dest=nil end\n   end\n   if dest then guide('p6Breath',dest,b.expires,v.near and'STRETCH TETHER'or b.wave==1 and'PAIR FIRE AND ICE'or'STRETCH - KEEP CONES APART',8,1)else S.guides.p6Breath=nil end\n   if S.guides.p6Breath and anchorMode then\n    local guide=S.guides.p6Breath\n    if anchorMode=='checking'then guide.text='HOLD - CHECKING WB1 ANCHOR';guide.noArrow=true;guide.noWorld=true;guide.said=true\n    elseif anchorMode=='chosen'then guide.text='HOLD YOUR CHOSEN WB1 SPOT';guide.noArrow=dist(p.pos,dest)<.75\n    elseif anchorMode=='fallback'then guide.text='USE FIXED WB1 TRIANGLE SPOT'end\n    guide.anchorMode=anchorMode\n    if b.anchorCue==guide.text then guide.said=true end\n   end\n   local breathGuide=S.guides.p6Breath\n   if dest and breathGuide and not breathGuide.noWorld then\n    if not S.p6BreathPointSafe(dest,p,b,q)then\n     breathGuide.noWorld=true\n    elseif not S.p6BreathPathSafe(p.pos,dest,p,b,q)then\n     breathGuide.noArrow=true\n     breathGuide.said=true\n    end\n   end\n  end\n end\n if q.initialVow and now<q.initialVow then\n  guide('p6Prep',sourcePoint(p),q.initialVow,'SPREAD FOR MORTAL VOW',4,5);S.guides.p6Prep.noArrow=true\n end\n local v=q.wing\n if v and now<v.expires and r then\n  local axis=v.c.x>=100 and 1 or -1;local zside=(v.left and -1 or 1)*axis\n  local near=not v.far;local middle=p6middle();local wall=r~=middle\n  local north=r==((O.p6WingsNorth or 0)==0 and'T1'or'T2');local dest\n  local x,z\n  if q.wroth then\n   local hot=q.hot\n   if hot then\n    if tank()then x=wall and(near and 21 or -21)or(near and 8 or -6);z=hot.kind=='wing'and(wall and 3.25 or 1.5)or(wall and 12 or 17)\n    else x=near and -1 or 17;z=hot.kind=='wing'and 2.5 or 15 end\n   end\n  else\n   local dive=q.nidDive\n   if not dive then for _,e in ipairs(actors(3458))do if math.abs(e.pos.z-100)>28 and math.abs(e.pos.x-100)>5 then dive={p=e.pos};break end end end\n   if dive then\n    local safe=(dive.p.x<100 and 1 or -1)*axis;local close=safe>0 and 17 or -2;local far=safe>0 and 2 or -17\n    if tank()then x=near and close or far;z=north and(zside<0 and 19 or 6)or(zside<0 and 6 or 19)\n    else x=near and far or close;z=10 end\n   end\n  end\n  if x then dest=pos(100+axis*x,100+zside*z)end\n  if dest then guide('wings',dest,v.expires,tank()and(v.far and'TANKBUSTER - FAR'or'TANKBUSTER - NEAR')or(v.far and'SAFE QUARTER - STAY NEAR'or'SAFE QUARTER - STAY FAR'),8,1)else S.guides.wings=nil end\n  local list=party();table.sort(list,function(a,b)return dist(a.pos,v.c)<dist(b.pos,v.c)end);v.baits={}\n  if #list==8 then local offset=v.far and 6 or 0;for i=1,2 do v.baits[i]=list[offset+i].id end end\n end\n if q.hot and now<q.hot.expires and not q.wing and not(q.wroth and not q.wroth.finished)then\n  local z=q.hot.kind=='wing'and 100 or(p.pos.z<100 and 89 or 111)\n  guide('p6Hot',pos(math.max(82,math.min(118,p.pos.x)),z),q.hot.expires,q.hot.kind=='wing'and'MIDDLE'or'SIDES',5,1)\n end\n if S.p6WrothUpdate then S.p6WrothUpdate(now,p,ids)end\n local f=q.fireice\n if q.northReady and not q.touchdownResolved then\n  local blocked=f and f.statuses[p.id]==2898 and(TensorCore.getBuff(p,960)or TensorCore.getBuff(p,2898))\n  if blocked then guide('p6North',sourcePoint(p),now+1000,'FIRE - WAIT UNTIL SAFE TO MOVE',9,1);S.guides.p6North.noArrow=true\n  else guide('p6North',pos(100,81),now+1000,'NORTH WALL - STAY',9,1);S.guides.p6FireIce=nil end\n elseif f and now<f.expires and not q.touchdown then\n  local status=f.statuses[p.id]\n  if status then\n   local cid=status==2898 and 4954 or 3458;local boss\n   for _,e in ipairs(actors(cid))do if e.pos.z<80 then boss=e end end\n   if boss then local target=pos(boss.pos.x,85)\n    if status==2899 then\n     f.iceStep=f.iceStep or(p.pos.x>boss.pos.x and -1 or 1)\n     target=pos(boss.pos.x+f.iceStep*2,85)\n     if dist(p.pos,target)<.8 then f.iceStep=-f.iceStep;target=pos(boss.pos.x+f.iceStep*2,85)end\n    end\n    guide('p6FireIce',target,f.expires,status==2898 and(now>=f.statusEnd-1500 and'FIRE - STOP ACTIONS AND MOVEMENT'or'FIRE - HRAESVELGR SIDE')or'ICE - NIDHOGG SIDE - KEEP MOVING',9,1)\n    if status==2898 and dist(p.pos,target)<2 then S.guides.p6FireIce.noArrow=true end\n   end\n  elseif tank()then\n   local boss;for _,cid in ipairs({3458,4954})do for _,e in ipairs(actors(cid))do if e.pos.z<80 and((r=='T1')==(e.pos.x<100))then boss=e end end end\n   if boss then guide('p6FireIce',pos(boss.pos.x,80.5),f.expires,'FRONT OF DRAGON - INVULN',9,1)end\n  end\n end\nend\nfunction S.p6WrothUpdate(now,p,ids)\n local q=S.p6;local w=q and q.wroth\n if not w or w.finished or now>w.expires then return end\n if w.hits<4 then\n  -- Splatoon corner route / Toolbox Akh Morn 1-4: leave each puddle,\n  -- cross the first cleared line, then curve toward middle.\n  if w.hits==0 and #w.spawned>=4 and w.firstHit and now<w.firstHit+500 then\n   local diveX=q.hraeDive and q.hraeDive.p.x\n   if not diveX then\n    for _,dragon in ipairs(actors(4954))do\n     if math.abs(dragon.pos.z-100)>28 then\n      if diveX then diveX=nil;break end\n      diveX=dragon.pos.x\n     end\n    end\n   end\n   if diveX then\n    if math.abs(diveX-100)<=2 then diveX=100\n    elseif math.abs(diveX-89)<=2 then diveX=89\n    elseif math.abs(diveX-111)<=2 then diveX=111\n    else diveX=nil end\n   end\n   if diveX then\n    local sx=math.abs(79-diveX)>12 and -1 or 1\n    local sz=w.spawned[4].z<100 and 1 or -1\n    local start=pos(100+sx*19,100+sz*15)\n    local clear=math.abs(start.x-diveX)>12 and math.abs(w.spawned[4].z-100)>4\n    for index=1,3 do\n     local orb=w.spawned[index]\n     if math.abs(start.x-orb.x)<=4 or math.abs(start.z-orb.z)<=4 then clear=false;break end\n    end\n    if clear then w.start=start;w.sx=sx;w.sz=sz else w.start=nil end\n   end\n  end\n  if w.hits==0 and w.firstHit and now>=w.firstHit+500 then S.guides.p6Wroth=nil;return end\n  if w.start then\n   local steps={19,12,6,2};local target=pos(100+w.sx*steps[w.hits+1],100+w.sz*(w.hits==3 and 11 or 15))\n   local safe=true;local last=sourcePoint(p)\n   for step=1,12 do local t=step/12;local x=p.pos.x+(target.x-p.pos.x)*t;local z=p.pos.z+(target.z-p.pos.z)*t\n    local blocked=false\n    for _,o in pairs(w.orbs)do\n     if now<o.expires and(math.abs(x-o.p.x)<3.4 or math.abs(z-o.p.z)<3.4)then\n      local travel=dist(p.pos,target)/6*1000+350\n      if step==12 or o.expires-now<=travel then blocked=true end\n     end\n    end\n    if blocked then safe=false;break end;last=pos(x,z,p.pos.y)\n   end\n   if safe then guide('p6Wroth',target,w.hits==0 and math.min(w.expires,(w.firstHit or now)+500)or w.expires,w.hits<2 and'STACK - BAIT AKH MORN'or'MOVE TO NEXT PUDDLE SPOT',9,1)\n   elseif dist(p.pos,last)>1 then guide('p6Wroth',last,now+400,'APPROACH CROSS - WAIT FOR CLEAR',9,1)\n   else guide('p6Wroth',sourcePoint(p),now+400,'WAIT FOR CROSS TO CLEAR',9,1);S.guides.p6Wroth.noArrow=true end\n  end\n  return\n end\n if not q.hot then\n  local safe=true;for step=1,12 do local t=step/12;local x=p.pos.x+(100-p.pos.x)*t;local z=p.pos.z+(100-p.pos.z)*t\n   for _,o in pairs(w.orbs)do if now<o.expires and(math.abs(x-o.p.x)<3.4 or math.abs(z-o.p.z)<3.4)then safe=false end end\n  end\n  guide('p6Wroth',safe and pos(100,100)or sourcePoint(p),w.expires,safe and'MIDDLE - PREPARE FLAMES'or'WAIT FOR CROSS TO CLEAR',8,1);S.guides.p6Wroth.noArrow=not safe;return\n end\n if not ids then return end\n local spread,white,none={},{},{}\n for _,r in ipairs({'M1','M2','R1','R2','H1','H2','T1','T2'})do\n  local id=ids[r];local s=w.statuses[id]\n  local list=s==2758 and spread or s==2759 and white or none;list[#list+1]=id\n end\n if #spread~=4 or #white~=2 or #none~=2 then return end\n local z=100;if q.hot.kind=='tail'then z=100-w.sz*10 end\n local target,partner\n for i,id in ipairs(spread)do if id==p.id then target=pos(76+i*6,z)end end\n for i,id in ipairs(white)do if id==p.id or none[i]==p.id then target=pos(i==1 and 109 or 118,z);partner=id==p.id and none[i]or id end end\n if target then\n  guide('p6Wroth',target,w.statusEnd or w.expires,partner and'PAIR - HRAESVELGR SIDE'or'SPREAD - NIDHOGG SIDE',9,1)\n  w.partner=partner\n end\nend\n\nlocal scopes={\nstrengthPosition={states={},guides={'strengthPosition'}},\ngeneralP1={states={},guides={'doorOpen','heavensblaze','dimension','psPrep','psReturn'}},\ngeneralP2={states={},guides={'heavy','swing'}},\ngeneralP3={states={'p3phase'},guides={'p3Open','enum','enumPrep','gnash','diveTower','geirBait','geirDodge','drachen','soulTether'}},\ngeneralP5={states={'death','might','heel'},guides={'p5Open','dimension','heavy','death','might','heelSwap'}},\ngeneralP6={states={'p6'},guides={'afah','wings','p6Prep','p6Breath','p6Wroth','p6Hot','p6FireIce','p6North','p6Finish'}},\ngeneralP7={states={},guides={'akh','sword'}},\nsanctity={states={'sanctity','sanctityFloor','icePrep'},guides={'sanctity'}},\ngaze={states={'gaze'},guides={}},\nstrengthTowers={states={},guides={'strengthTower'}},\nshining={states={'shining','preDash'},guides={'shining'}},\ndoorTether={states={'doorTether'},guides={'doorTether'}},\nsword={states={'swordRead','sword'},guides={}},\nbeam={states={'beam'},guides={'beam'}},\nps={states={},guides={'ps'}},\nmeteor={states={'returnNorth'},guides={'meteor','meteorKB','returnNorth'}},\nreturnNorth={states={'returnNorth'},guides={'returnNorth'}},\npure={states={'pure'},guides={'pure','drop'}},\nspiral={states={},guides={'spiral'}},\nmercy={states={'mercy'},guides={'mercy'}},\nmight={states={'might'},guides={'might'}},\ndive={states={'dive'},guides={'dive','diveTower'}},\nwrath={states={'wrath'},guides={'wrath'}},\ndeath={states={'death'},guides={'death'}},\neyes={states={'eyes'},guides={'eye'}},\nvow={states={'vow'},guides={'vow'}},\ngiga={states={},guides={'giga'}},\nexa={states={'exa'},guides={'exa'}},\ntrinity={states={},guides={'trinity'}},\n}\nS.scopeRunning={};S.scopeNext={}\nfunction S.scopeActive(scope)\n local cfg=scopes[scope];if not cfg then return false end\n local now=Now();local p=player()\n if not p or not p.alive or not O.enabled then return S.diveFacingLock or S.gazeLocked or next(S.guides)~=nil or next(S.danger)~=nil end\n if scope=='strengthPosition'and S.strengthState then local st=S.strengthState;if not st.finished and now<st.expires and(next(st.marks)or next(st.tethers))then return true end end\n if scope=='gaze'and S.gazeLocked then return true end\n if scope=='ps'and S.psExpires and now<S.psExpires then return true end\n if scope=='meteor'and S.meteors and not S.meteors.done and now-S.meteors.at<40000 then return true end\n if scope=='spiral'and S.spiral and now<S.spiral.ends then return true end\n if scope=='spiral'and S.strengthState and not S.strengthLeap and now<S.strengthState.expires then return true end\n if scope=='giga'and S.giga and #S.giga.list>0 and now-S.giga.at<22000 then return true end\n if scope=='trinity'and(S.trinityReady or S.trinityWindow())then return true end\n if scope=='strengthTowers'then\n  for _,t in pairs(S.towers)do if t.kind=='strength'and now<t.expires then return true end end\n end\n for _,key in ipairs(cfg.states)do local v=S[key];if v and v.expires and now<v.expires then return true end end\n for _,key in ipairs(cfg.guides)do local v=S.guides[key];if v and now<v.expires then return true end end\n return false\nend\nfunction S.runScope(scope)\n local now=Now()\n if S.scopeNext[scope]and now<S.scopeNext[scope]then return false end\n S.scopeNext[scope]=now+100;S.scopeRunning[scope]=true\n S.update(scope);S.announce()\n local done=not S.scopeActive(scope)\n if done then S.scopeRunning[scope]=nil end\n return done\nend\n\nfunction S.drawDoorTether()\n local p=player();local t=S.doorTether\n if not O.enabled or not p or not p.alive or not t or t.detached or t.hit or Now()>=t.expires then return end\n local owner=ent(t.target);if not owner or not owner.alive then return end\n local flags=Argus2.RenderFlags.FLAG_RENDER_UI\n local color=owner.id==idOf('T2')and 0xCC33FF33 or 0xCC3333FF\n TensorCore.getStaticDrawer(color,2,1,flags):addCircle(owner.pos.x,owner.pos.y+.15,owner.pos.z,.8,false,flags)\nend\n\n",
							name = "Runtime setup",
							uuid = "6a724059-73df-1b1e-9272-92f46575cd77",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				eventType = 13,
				loop = true,
				name = "[LPDU DSR] Runtime setup",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "7f7e4e4d-0934-ab25-b6bb-94c8c16ec23e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- DSR preferences use an independent FileLoad/FileSave store.\nlocal dsrStore=_G.LPDU_DSR_SettingsStore\nif not dsrStore or not dsrStore.meteorTowerSideV1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[DSR-LPDU.lua]]\n local defaults={debugLabels=false,enabled=true,tts=true,role=0,group=0,enumCCW=0,akh=0,invuln=0,circleSide=0,vowMelee=0,towerTimers=true,aoeTimers=true,lockGaze=true,p1Knockback=true,meteorAxis=0,meteorSwap=0,meteorRoute=0,meteorTowerSide=1,p2Knockback=true,strengthBait=0,p3Tethers=0,p4DiveIndicators=true,p4RegroupSouth=false,p5Gaze=true,p5Baits=true,p6Middle=0,sanctityFloor=true,sanctityFlex=true,icePartner=true,strengthOptions=true,blueJumpArrow=false,congaConfigured=false,congaOrder='M1 T1 H1 T2 M2 R2 H2 R1',p4TankEye45=false,p6WingsNorth=0,p6WB1Chosen=false,p6DragonHP=true,brightwingTimer=false,diveLockFace=false}\n defaults.show=true\n local O=gDSRLPDUOptions\n if not O then\n  O={}\n  if FileExists(path) then local saved=FileLoad(path);if type(saved)==\"table\" then O=saved end end\n end\n O.east=nil;O.p3Preset=nil\n for key,value in pairs(defaults) do\n  local v=O[key]\n  if type(v)~=type(value) or (type(v)==\"number\" and (v~=v or v<0 or v>=math.huge or v%1~=0)) then O[key]=value end\n end\n dsrStore={values=O,meteorTowerSideV1=true,sanctityV1=true,p3PresetV1=true,icePartnerV1=true,strengthOptionsV1=true,eyes45V1=true,p67LPDUV1=true,wb1ChoiceV1=true,dragonHPV1=true,p3EastOnlyV1=true,blueJumpArrowV1=true,congaSlotsV1=true}\n if O.meteorTowerSide~=0 and O.meteorTowerSide~=1 then O.meteorTowerSide=1 end\n local keys={};for key in pairs(defaults) do keys[#keys+1]=key end;table.sort(keys)\n function dsrStore.save()\n  local values,parts={},{}\n  for _,key in ipairs(keys) do values[key]=O[key];parts[#parts+1]=key..\":\"..tostring(O[key]) end\n  local signature=table.concat(parts,\";\")\n  if signature==dsrStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);dsrStore.saved=signature\n end\n function dsrStore.congaOrder()\n  local order,seen={},{}\n  for slot in O.congaOrder:gmatch('%S+')do\n   if not slot:match('^[THMR][12]$') or seen[slot]then return nil end\n   seen[slot]=true;order[#order+1]=slot\n  end\n  if #order==8 then return order end\n end\n if not dsrStore.congaOrder()then O.congaOrder=defaults.congaOrder end\n gDSRLPDUOptions=O;_G.LPDU_DSR_SettingsStore=dsrStore\n dsrStore.save()\nend\nlocal O=gDSRLPDUOptions\nlocal function help(text)if GUI:IsItemHovered()then GUI:SetTooltip(text)end end\nif not O then self.used=true return end\nlocal runtime=data.dsrLPDU;if runtime and runtime.drawDragonHP then runtime.drawDragonHP()end\nif O.show==false then\n if GUI:Begin('DSR LPDU',true,GUI.WindowFlags_AlwaysAutoResize)then\n  if GUI:Button('Open draw settings')then O.show=true end\n end\n GUI:End();dsrStore.save();self.used=true return\nend\nlocal visible,open=GUI:Begin('DSR LPDU draw settings',true,GUI.WindowFlags_AlwaysAutoResize)\nif visible then\n O.enabled=GUI:Checkbox('Enable draws',O.enabled)\n help('Shows your destination in green and dangerous areas in red.')\n O.tts=GUI:Checkbox('Voice callouts',O.tts)\n help('Reads short mechanic instructions aloud.')\n O.towerTimers=GUI:Checkbox('Tower countdowns',O.towerTimers~=false)\n help('Shows seconds until each tower resolves.')\n O.aoeTimers=GUI:Checkbox('AoE countdowns',O.aoeTimers~=false)\n help('Shows seconds until supported dangerous areas resolve.')\n O.debugLabels=GUI:Checkbox('Debug: label LPDU draws',O.debugLabels==true)\n help('Adds LPDU labels beside our active draws so you can identify their source during replay checks. Other tools are not labelled. Labels expire within one second after switching this off. Off by default.')\n O.role=GUI:Combo('My role',O.role+1,{'AnyoneCore roster','T1 / MT','T2 / OT','H1 / regen','H2 / shield','M1','M2','R1 / physical ranged','R2 / caster'})-1\n help('Use AnyoneCore roster assignments, or choose your own role. T1 is main tank; T2 is off tank.')\n O.group=GUI:Combo('My light party',O.group+1,{'From role number','Group 1','Group 2'})-1\n help('Choose the light party agreed with your group. Automatic uses the number in your roster role.')\n if GUI:CollapsingHeader('P1')then\n O.brightwingTimer=GUI:Checkbox('Your Brightwing cone countdown',O.brightwingTimer==true)\n help('Shows an estimated countdown at Charibert from the start of Pure of Heart, using the healer, melee, ranged, tank bait order.')\n O.p1Knockback=GUI:Checkbox('Automatic knockback immunity',O.p1Knockback~=false)\n help(\"Uses Arm's Length or Surecast before the first knockback, during Shining Blade. Enabled by default. The later symbol knockback is ridden so you can break your chain; the ability is still on cooldown then.\")\n O.circleSide=GUI:Combo('P1 circle symbol side',O.circleSide+1,{'From preposition','East','West'})-1\n help('For the P1 circle symbol, automatic uses your east/west preposition. Choose a fixed side if your party assigns one.')\n end\n if GUI:CollapsingHeader('P2')then\n O.blueJumpArrow=GUI:Checkbox('Blue jump: nearest available spot arrow',O.blueJumpArrow==true)\n help('Optional. Points to the nearest unclaimed blue jump spot with a clear route. Keeps that suggestion while it is available. Off by default.')\n O.strengthOptions=GUI:Checkbox('Show unclaimed Strength towers',O.strengthOptions~=false)\n help('Shows unclaimed actual towers on the unmarked stack side. Hidden for blue jump-marker players; their actual assigned tower still appears at the normal time. Other eligible players hide a position after a clear unique claim lasts 250ms. Your own position stays visible.')\n\n O.icePartner=GUI:Checkbox('Mark my ice-pair partner',O.icePartner~=false)\n help('Marks the other player in your assigned ice quadrant with a following circle and line. Starts with the normal role pair, updates after prey swaps, and clears at the ice hit. No nearest-player guessing.')\n\n O.sanctityFloor=GUI:Checkbox('Sanctity safe-floor preview',O.sanctityFloor~=false)\n help('Shows green ground outside predicted charge lanes and orbs, then updates from actual spawns and hits. This preview covers these hazards only; still obey your four-player stack assignment and both gazes.')\n O.sanctityFlex=GUI:Checkbox('Mark my Sanctity flex partner',O.sanctityFlex~=false)\n help('If the sword markers require your role pair to swap groups, marks your partner with a cyan circle and connecting line until all four stack hits finish.')\n\n O.strengthBait=GUI:Combo('Strength protean bait',(O.strengthBait or 0)+1,{'Near-middle light-party stack / EU','Keep my preposition'})-1\n help('The EU replay uses two opposite light-party stacks, with players reaching them at different earthquake rings. Near-middle stack guides you 3.5 yalms from centre on your established spread side once the ring and charge path are clear. If the spread side was not captured, it waits for a clear group before choosing a side. Keep preposition holds your position when the bait cast starts; choose it if your group already has an agreed spot.')\n\n O.p2Knockback=GUI:Checkbox('Outer-position knockback immunity',O.p2Knockback~=false)\n help(\"Around the meteor knockback, your current position decides: within 10 yalms of the knockback source is middle, so no automatic immunity is requested. Outside that zone, Arm's Length or Surecast may be requested in the final 1.8 seconds when your assignment is ready. Earlier tower positions do not decide this.\")\n\n O.lockGaze=GUI:Checkbox('Lock facing away from both gazes',O.lockGaze~=false)\n help('Automatically faces away from both eyes just before the gaze hits. Releases after the hit. Enabled by default.')\n O.meteorRoute=GUI:Combo('Meteor running path',(O.meteorRoute or 0)+1,{'Clockwise zigzag / LPDU','Clockwise outer edge / observed EU'})-1\n help('Chooses the next short running step after your first meteor tower. Zigzag is the LPDU default. Both modes check recorded puddles and comet spacing; if a clear step is unavailable, the arrow waits and a callout warns you. Movement remains manual.')\n O.meteorAxis=GUI:Combo('Meteor placement',(O.meteorAxis or 0)+1,{'Force north/south / LPDU','Force east/west'})-1\n help('Moves meteor players to north/south by default. Match the whole party.')\n O.meteorTowerSide=GUI:Combo('First meteor tower preference',(O.meteorTowerSide or 0)+1,{'Middle > Right > Left / existing','Middle > Left > Right'})-1\n help('For the meteor role: keeps the two meteor towers as far apart as possible, then chooses the preferred side when layouts have equal separation. Left/right are viewed from arena centre toward your quadrant. Match this with your party before the tower assignment locks.')\n O.meteorSwap=GUI:Combo('Both meteors need a swap',(O.meteorSwap or 0)+1,{'Rotate role clockwise','Rotate role counterclockwise'})-1\n help('When both meteor players need to move, rotates their role group in this direction.')\n end\n if GUI:CollapsingHeader('P3')then\n GUI:Text('Dive from Grace: Easthogg / face east')\n O.diveLockFace=GUI:Checkbox('Dive from Grace: lock facing and hold turning actions',O.diveLockFace==true)\n help('Briefly hard-locks facing before your forward or backward tower drop. Actions that would turn you are held until your dive hits or the lock times out. Off by default.')\n help('EU/LPDU uses Easthogg. Forward jumps start west; backward jumps start east. Plain jumps claim their position by prepositioning.')\n O.enumCCW=GUI:Combo('Enumeration flex priority',O.enumCCW+1,{'Clockwise / LPDU','Counterclockwise'})-1\n help('Healers and ranged stay. Tanks and melee in a one-person tower look for a three-person tower in this direction first.')\n O.p3Tethers=GUI:Combo('Soul Tether tank plan',(O.p3Tethers or 0)+1,{'Both tanks invuln middle / LPDU','MT mitigates middle; OT invulns at add'})-1\n help('MT takes the boss tether; OT takes the add tether. Default: both meet in the middle and use invulnerability. If a tank used invulnerability in P2 and cannot use it here, choose the separate plan: MT mitigates in the middle, OT uses invulnerability beside the add. These are movement instructions and callouts; they do not automatically use tank cooldowns.')\n end\n if GUI:CollapsingHeader('P4')then\n O.p4TankEye45=GUI:Checkbox('Tanks: east eye until 45%',O.p4TankEye45==true)\n help('Optional damage-balancing guidance after your orb duties. Tanks stay by the east eye while it is above 45% HP, then return west. Mirage Dive swaps always take priority. Does not select targets or change AutoSim. Off by default.')\n\n O.p4RegroupSouth=GUI:Checkbox('Regroup south after eyes',O.p4RegroupSouth==true)\n help('Optional: after both eyes are confirmed dead, shows a green circle and arrow to regroup south before rewind. This is a party preference, not a required safe spot. Off by default.')\n O.p4DiveIndicators=GUI:Checkbox('Mirage Dive target circles',O.p4DiveIndicators~=false)\n help('Shows a 4-yalm circle around each red-chain player who can take the next dive. Your circle is green; other players are red. Swaps follow tanks, melees, then the first dive pair from north to south.')\n GUI:Text('Orbs: G1 north, G2 south. Swap after gold, then soak blue.')\n end\n if GUI:CollapsingHeader('P5')then\n O.congaConfigured=GUI:Checkbox('Use configured conga prepositions',O.congaConfigured)\n help('Free conga hides occupied spots. Configured conga guides you to your roster slot in the order below. Agree on the order with your party.')\n if O.congaConfigured then\n  local order=dsrStore.congaOrder()\n  local destination\n  for index,slot in ipairs(order)do\n   if index>1 then GUI:SameLine()end\n   local label=slot=='T1' and 'MT' or slot=='T2' and 'OT' or slot\n   GUI:Button(label..'##dsrConga'..index,36,24)\n   if GUI:IsItemClicked(0)then dsrStore.congaDrag=index end\n   local left,top=GUI:GetItemRectMin()\n   local right,bottom=GUI:GetItemRectMax()\n   if dsrStore.congaDrag and GUI:IsMouseHoveringRect(left,top,right,bottom,true)then destination=index end\n  end\n  if dsrStore.congaDrag and GUI:IsMouseReleased(0)then\n   local source=dsrStore.congaDrag\n   if destination and destination~=source then\n    order[destination],order[source]=order[source],order[destination]\n    O.congaOrder=table.concat(order,' ')\n   end\n   dsrStore.congaDrag=nil\n  end\n else\n  dsrStore.congaDrag=nil\n end\n\n O.p5Gaze=GUI:Checkbox('Lock facing away from Death gazes',O.p5Gaze~=false)\n help('Turns you away from Thordan and the arena eye before the gaze resolves. Death knockback must be ridden; this phase does not request knockback immunity.')\n O.p5Baits=GUI:Checkbox('Wrath movement around puddles',O.p5Baits~=false)\n help('Guides you toward the safe area under the warrior while avoiding recorded puddles and dive lanes. Lightning players stay apart. If a safe path is not established, no arrow is shown.')\n GUI:Text('Death uses your established conga order, not your role.')\n end\n if GUI:CollapsingHeader('P6')then\n O.p6DragonHP=GUI:Checkbox('Show separate dragon HP window',O.p6DragonHP~=false)\n help('Shows Nidhogg and Hraesvelgr HP, their percentage-point gap and the higher-HP dragon during P6. Updates every 250ms, also when settings are hidden. Informational only: never changes targets. Closing the HP window disables it until re-enabled here.')\n O.p6WB1Chosen=GUI:Checkbox('WB1: validate chosen G1 anchor spots',O.p6WB1Chosen==true)\n help('Test option, off by default. Keeps a G1 anchor position after it stays stable for 400ms and both paired tethers are stretched, with clearance from other breath cones, glowing cones and tankbusters. Unsafe positions use the fixed triangle. G2 follows its assigned anchor. This is a geometry check, not a guarantee of safe future player movement.')\n O.p6Middle=GUI:Combo('Hallowed Wings middle tank',(O.p6Middle or 0)+1,{'Frog LPDU: T2 middle / T1 wall','T1 / MT','T2 / OT'})-1\n O.p6WingsNorth=GUI:Combo('First Wings north tank',(O.p6WingsNorth or 0)+1,{'T1 / MT - Frog LPDU','T2 / OT'})-1\n help('First Wings uses separate north/south tank spots. Second Wings defaults to T1 wall and T2 middle; the middle-tank override above is preserved.')\n O.vowMelee=GUI:Combo('Third Mortal Vow pass',(O.vowMelee or 0)+1,{'M1 first, M2 fallback','M2 first, M1 fallback'})-1\n help('Chooses which melee receives the third Mortal Vow pass. Uses the other if the first still has immunity.')\n end\n if GUI:CollapsingHeader('P7')then\n O.akh=GUI:Combo('Akh Morn groups',O.akh+1,{'3-3-2 all sets','6-1-1 all sets','3-3-2 then 6-1-1'})-1\n help('Choose the party split for Akh Morn. Use the same plan as the group.')\n O.invuln=GUI:Combo('6-1-1 rear invuln tank',O.invuln+1,{'T1 / MT','T2 / OT'})-1\n help('For 6-1-1, this tank takes the rear tower alone using invulnerability.')\n end\n GUI:Text('Green: personal destination. Red: danger.')\n GUI:Text('Roster mode waits for a valid AnyoneCore roster.')\n GUI:Text('Manual role is personal only; it does not edit the party roster.')\n GUI:Text('Settings are saved automatically.')\n GUI:Text('P7 waits for exact fire/ice status counts; unknown data gets no guessed arrow.')\n GUI:Text('Meteor arrows wait for a complete roster and recorded puddle positions.')\n GUI:Text('Death / eye dive swaps: pending, no guessed arrows.')\n if GUI:Button('Hide settings')then O.show=false end\nend\nGUI:End()\nif not open then O.show=false end\ndsrStore.save()\nself.used=true\n",
							name = "Strategy settings",
							uuid = "158e38df-785e-dcbd-b32e-24a5e05b1332",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				eventType = 13,
				loop = true,
				name = "[LPDU DSR] Strategy settings",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "3b9ea196-5041-4459-8dd2-54758544ca72",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.draw()end\nself.used=true",
							conditions = 
							{
								
								{
									"2c8779cc-aa2c-9286-9464-61d5371b0876",
									true,
								},
							},
							name = "Personal arrows and danger circles",
							uuid = "84a18330-6589-f9a9-8431-b771a1cf26b4",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "2c8779cc-aa2c-9286-9464-61d5371b0876",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 12,
				loop = true,
				name = "[LPDU DSR] Personal arrows and danger circles",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "89e8ace2-2f09-9183-b6d2-50829f212d7b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.update();s.announce()end\nself.used=true",
							conditions = 
							{
								
								{
									"be11a2a6-fbc0-c800-85c4-595ba0fd7e05",
									true,
								},
							},
							name = "Active mechanic guidance",
							uuid = "6c260616-87d1-c8e4-abdb-1b5f8ef4ebca",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "be11a2a6-fbc0-c800-85c4-595ba0fd7e05",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				enabled = false,
				loop = true,
				name = "[LPDU DSR] Active mechanic guidance",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "3fc3d9be-d56d-c64f-8dea-49ac66b2285b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.hit(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"31a4e5db-4151-49bb-a3c3-34ff3b7f9b4b",
									true,
								},
								
								{
									"021f6c68-4b7d-9049-9984-0365c4acc234",
									true,
								},
							},
							name = "Advance and clear on mechanic hits",
							uuid = "14c39fca-69fa-cc7a-9d72-86ec630edbd5",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "31a4e5db-4151-49bb-a3c3-34ff3b7f9b4b",
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
								7548,
								7559,
								25294,
								25295,
								25297,
								25299,
								25301,
								25303,
								25306,
								25307,
								25308,
								25309,
								25311,
								25316,
								25368,
								25369,
								25370,
								25532,
								25533,
								25538,
								25541,
								25543,
								25544,
								25545,
								25547,
								25549,
								25551,
								25553,
								25554,
								25556,
								25558,
								25559,
								25560,
								25561,
								25562,
								25564,
								25565,
								25567,
								25571,
								25573,
								25575,
								26215,
								26376,
								26377,
								26378,
								26380,
								26381,
								26382,
								26383,
								26384,
								26385,
								26388,
								26389,
								26390,
								26391,
								26392,
								26393,
								26394,
								26396,
								26409,
								26810,
								26815,
								26816,
								26817,
								26818,
								26820,
								27530,
								27531,
								27533,
								27534,
								27535,
								27536,
								27537,
								27540,
								27941,
								27944,
								27945,
								27948,
								27950,
								27952,
								27953,
								27958,
								27959,
								27966,
								27967,
								27968,
								27970,
								27972,
								27974,
								27975,
								28049,
								28050,
								28055,
								28058,
								28060,
								28061,
								28065,
								28114,
								28115,
								28591,
								28651,
								28903,
								29346,
								29454,
								29564,
								29739,
								29740,
							},
							uuid = "021f6c68-4b7d-9049-9984-0365c4acc234",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 2,
				loop = true,
				name = "[LPDU DSR] Advance and clear on mechanic hits",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "7b7200b8-ce20-59a3-a41d-10d11d056062",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.buff(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"ab31d518-1577-454f-8314-5a308b880fb3",
									true,
								},
								
								{
									"950fa4bd-ff8a-0baa-8f6a-0ace0e3912db",
									true,
								},
							},
							name = "Personal mechanic debuffs",
							uuid = "47dd98f4-2f03-5564-a4e8-2322640759fc",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "ab31d518-1577-454f-8314-5a308b880fb3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local id=eventArgs.buffID;return not not(id==2661 or (id>=3004 and id<=3006)or(id>=2755 and id<=2759)or id==2775 or id==2776 or id==2896 or id==2898 or id==2899 or id==2976 or id==2833)",
							dequeueIfLuaFalse = true,
							name = "DSR mechanic statuses",
							uuid = "950fa4bd-ff8a-0baa-8f6a-0ace0e3912db",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 8,
				loop = true,
				name = "[LPDU DSR] Personal mechanic debuffs",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "18b68369-4c37-fd64-8e07-bee237798966",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.releaseDiveFacing();s.releaseGaze()end\ndata.dsrLPDU=nil\nself.used=true",
							name = "Clear owned state on wipe",
							uuid = "63d9974a-323a-decd-a03b-8c9093d2ec14",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				eventType = 9,
				name = "[LPDU DSR] Clear owned state on wipe",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "7ca534e9-4a82-6bcb-aea6-22998be9ab57",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.releaseDiveFacing();s.releaseGaze()end\nlocal s=data.dsrLPDU;if s then s.guides={};s.danger={}end\nself.used=true",
							conditions = 
							{
								
								{
									"e5604d85-668f-1da0-a8aa-8326a64b9e08",
									true,
								},
							},
							name = "Clear personal guidance on death",
							uuid = "b072d976-bb59-bf98-b500-31b13c4b7a59",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "e5604d85-668f-1da0-a8aa-8326a64b9e08",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 10,
				name = "[LPDU DSR] Clear personal guidance on death",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "d36647b2-ea7d-7466-8c4c-1183a5900eec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Settings.DutyHelper.enabled=false\nself.used=true",
							conditions = 
							{
								
								{
									"603c49f3-2796-b40a-8062-f5d891857aed",
									true,
								},
								
								{
									"c52f392d-27ab-3d56-ac83-3aa6e2fb23f6",
									true,
								},
							},
							name = "Disable Duty Helper",
							uuid = "3cb1322c-25f8-197e-b57f-0a3a3753476b",
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
							localmapid = 968,
							uuid = "603c49f3-2796-b40a-8062-f5d891857aed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not not(AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.DutyHelper~=nil)",
							dequeueIfLuaFalse = true,
							uuid = "c52f392d-27ab-3d56-ac83-3aa6e2fb23f6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				name = "[LPDU DSR] Disable Duty Helper at pull start",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 8,
				uuid = "d74b56ac-bde8-af9e-b7a9-b3ad5160a083",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "Setup",
				uuid = "740389f9-21f0-0d0d-9af0-f9bc00a7ebe2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s and (s.revision or 0)>=4 then s.actorAdded(eventArgs)end;self.used=true",
							conditions = 
							{
								
								{
									"7d04ff36-b00a-b49e-9af3-4c589ea9bc39",
									true,
								},
								
								{
									"33be166a-83ef-9b93-a541-e2a244f5d09c",
									true,
								},
							},
							name = "Remember actual mechanic NPC IDs",
							uuid = "b8f8d718-a3ee-f6e3-95c1-de8fdeb7b412",
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
							localmapid = 968,
							uuid = "7d04ff36-b00a-b49e-9af3-4c589ea9bc39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local id=eventArgs.entityContentID;return not not(id==3633 or id==3634 or id==3635 or id==3636 or id==3637 or id==3638 or id==3639 or id==4130 or id==1455 or id==4386 or id==4954 or id==3459 or (id==4385 and data.dsrLPDU and data.dsrLPDU.sanctityFloor and Now()<data.dsrLPDU.sanctityFloor.expires))",
							dequeueIfLuaFalse = true,
							uuid = "33be166a-83ef-9b93-a541-e2a244f5d09c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/Setup",
				eventType = 5,
				loop = true,
				name = "[LPDU DSR] Cache mechanic NPC identities",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "303b47c0-e076-c6b6-8531-fb6d52f54af6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=968 then self.used=true;return end\nif not MoogleTelegraphs or not MoogleTelegraphs.Settings then return end\nlocal settings=MoogleTelegraphs.Settings\nsettings.aoeIDUserBlacklist=settings.aoeIDUserBlacklist or{}\nlocal list=settings.aoeIDUserBlacklist\nlist[25545]={label=\"Ascalon's Mercy Concealed\",source='LPDU reactions - DSR'}\nlist[25564]={label='Dimensional Collapse',source='LPDU reactions - DSR'}\nlist[25567]={label='Conviction',source='LPDU reactions - DSR'}\nself.used=true\n",
							name = "Blacklist Moogle 25545, 25564 and 25567",
							uuid = "47a07841-64d8-e390-bc2d-b6a01c2fbbe8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws/Setup",
				name = "[LPDU DSR] Moogle draw blacklist",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 30,
				uuid = "3af92496-d5fd-4b0d-a014-d4cb04a0c259",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P3",
				uuid = "9eb26f4f-1a7a-580a-a636-dd6907e39524",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P3",
				name = "Guidance",
				uuid = "663a686a-409e-d5ae-ade9-6eee6d559d33",
			},
			objectType = "folder",
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
									"2f877451-868d-7b7f-a47d-0d82293eb75e",
									true,
								},
							},
							endIfUsed = true,
							name = "Resume All Actions",
							resumeAllActions = true,
							uuid = "3bab529c-0988-befd-a443-de5a520db2d3",
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
							conditionLua = "local s=eventArgs.oldData and eventArgs.oldData.dsrLPDU;return not not(s and s.diveActionsHeld)",
							name = "This profile stopped actions",
							uuid = "2f877451-868d-7b7f-a47d-0d82293eb75e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P3/Guidance",
				eventType = 9,
				name = "[LPDU DSR] Release dive action stop on wipe",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1900,
				uuid = "75c7245c-0c74-5253-abc3-bf9a1bf77140",
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
				name = "LPDU Draws",
				uuid = "fe9b848b-2474-e135-b1e4-bddaf40dfa2f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.channel(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"7a482810-c30c-5eec-a838-5d5366f14472",
									true,
								},
								
								{
									"fec55384-fa78-52f2-8a08-68687cd4d0ec",
									true,
								},
							},
							name = "Door boss channels",
							uuid = "79872a87-507a-131e-a5c3-53eb4ba9e011",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "7a482810-c30c-5eec-a838-5d5366f14472",
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
								25292,
								25293,
								25295,
								25296,
								25300,
								25302,
								25306,
								25307,
								25308,
								25309,
								25310,
								25316,
								25370,
							},
							uuid = "fec55384-fa78-52f2-8a08-68687cd4d0ec",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 10,
				name = "[LPDU DSR] Door boss channels",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 260,
				timerStartOffset = -10,
				uuid = "7ca7b9d9-0f41-a7d2-b076-46535d5ecc9a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.marker(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"8472404d-476b-1b53-a541-67866f7f7670",
									true,
								},
								
								{
									"b1334ada-81f3-664d-9319-8efca1208b60",
									true,
								},
							},
							name = "P1 beams and Playstation",
							uuid = "7e259d65-fc98-c457-82fd-a1cb87b76eb8",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "8472404d-476b-1b53-a541-67866f7f7670",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							conditionLua = "local id=eventArgs.markerID;return id==234 or(id>=281 and id<=284)",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							markerIDList = 
							{
								234,
								281,
								282,
								283,
								284,
							},
							name = "P1 mechanic markers",
							uuid = "b1334ada-81f3-664d-9319-8efca1208b60",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 4,
				loop = true,
				mechanicTime = 10,
				name = "[LPDU DSR] P1 beams and Playstation",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 110,
				timerStartOffset = -10,
				uuid = "9aa8f2e4-01c7-b24b-90ed-d3da14cd38ef",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P1",
				uuid = "70812539-29cf-e3dd-9aef-1d2b3e22b4df",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.tether(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"e3d6cae6-49d0-26ff-975a-e4cc283d0157",
									true,
								},
								
								{
									"7328f3a9-d806-a43c-b7f5-e8a71157c24d",
									true,
								},
							},
							name = "P1 tank tether",
							uuid = "14cd6b34-7836-1d33-ba6f-b8a7bd43d495",
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
							localmapid = 968,
							uuid = "e3d6cae6-49d0-26ff-975a-e4cc283d0157",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not not(eventArgs.newTetherID==84 or eventArgs.oldTetherID==84)",
							dequeueIfLuaFalse = true,
							uuid = "7328f3a9-d806-a43c-b7f5-e8a71157c24d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1",
				eventType = 15,
				loop = true,
				mechanicTime = 10,
				name = "[LPDU DSR] P1 tank tether",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 30,
				timerStartOffset = -10,
				uuid = "1e570e69-a22d-62cf-9c81-536bb3837409",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.doorObject(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"f5d89d83-6fd5-e5d1-a919-9b1906bb63d2",
									true,
								},
								
								{
									"00a6752d-f8a9-15ea-bd64-f122dc7835db",
									true,
								},
							},
							name = "P1 tear positions",
							uuid = "ba9eea46-3099-f52a-9b9e-ae359e20b9fe",
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
							localmapid = 968,
							uuid = "f5d89d83-6fd5-e5d1-a919-9b1906bb63d2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not not(eventArgs.entityContentID==3293)",
							dequeueIfLuaFalse = true,
							uuid = "00a6752d-f8a9-15ea-bd64-f122dc7835db",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1",
				eventType = 5,
				loop = true,
				mechanicTime = 10,
				name = "[LPDU DSR] P1 tear positions",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 65,
				timerStartOffset = 20,
				uuid = "1c2d6a4a-a0db-b87e-b288-b8bfee5438a1",
				version = 2,
			},
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
									"156c678f-aa6b-30ae-9803-31f31939213f",
									true,
								},
								
								{
									"f54bc182-85ae-51c1-9866-1b6fca853ad4",
									true,
								},
								
								{
									"65ce44f2-b2ee-947a-b7f0-c39609ff6bdd",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Surecast",
							name = "Surecast",
							uuid = "181bb2e6-2535-d025-9421-eb633d48a352",
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
							dequeueIfLuaFalse = true,
							localmapid = 968,
							uuid = "156c678f-aa6b-30ae-9803-31f31939213f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								24,
								28,
								33,
								40,
								25,
								27,
								35,
								42,
							},
							uuid = "f54bc182-85ae-51c1-9866-1b6fca853ad4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- DSR preferences use an independent FileLoad/FileSave store.\nlocal dsrStore=_G.LPDU_DSR_SettingsStore\nif not dsrStore or not dsrStore.meteorTowerSideV1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[DSR-LPDU.lua]]\n local defaults={debugLabels=false,enabled=true,tts=true,role=0,group=0,east=0,enumCCW=0,akh=0,invuln=0,circleSide=0,vowMelee=0,towerTimers=true,aoeTimers=true,lockGaze=true,p1Knockback=true,meteorAxis=0,meteorSwap=0,meteorRoute=0,meteorTowerSide=1,p2Knockback=true,strengthBait=0,p3Tethers=0,p4DiveIndicators=true,p4RegroupSouth=false,p5Gaze=true,p5Baits=true,p6Middle=0}\n defaults.show=true\n local O=gDSRLPDUOptions\n if not O then\n  O={}\n  if FileExists(path) then local saved=FileLoad(path);if type(saved)==\"table\" then O=saved end end\n end\n for key,value in pairs(defaults) do\n  local v=O[key]\n  if type(v)~=type(value) or (type(v)==\"number\" and (v~=v or v<0 or v>=math.huge or v%1~=0)) then O[key]=value end\n end\n dsrStore={values=O}\n if O.meteorTowerSide~=0 and O.meteorTowerSide~=1 then O.meteorTowerSide=1 end\n local keys={};for key in pairs(defaults) do keys[#keys+1]=key end;table.sort(keys)\n function dsrStore.save()\n  local values,parts={},{}\n  for _,key in ipairs(keys) do values[key]=O[key];parts[#parts+1]=key..\":\"..tostring(O[key]) end\n  local signature=table.concat(parts,\";\")\n  if signature==dsrStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);dsrStore.saved=signature\n end\n gDSRLPDUOptions=O;_G.LPDU_DSR_SettingsStore=dsrStore\n dsrStore.save()\nend\nlocal s=data.dsrLPDU;local q=s and s.kbRequest;return not not(gDSRLPDUOptions.p1Knockback~=false and gDSRLPDUOptions and gDSRLPDUOptions.enabled and q and Now()>=q.starts and Now()<q.expires)",
							uuid = "65ce44f2-b2ee-947a-b7f0-c39609ff6bdd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1",
				mechanicTime = 10,
				name = "[LPDU DSR] P1 knockback - Surecast",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 70,
				timerStartOffset = -10,
				uuid = "34c9dd0b-7952-a6b2-a501-530d45b5a890",
				version = 2,
			},
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
									"43f3aa1f-21fb-8e95-9261-d059eda5731d",
									true,
								},
								
								{
									"7b79d4ea-6fbe-120e-be0c-b0b3609236f9",
									true,
								},
								
								{
									"202f419f-8ed2-72cc-a3b7-131dea673641",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ArmsLength",
							name = "Arm's Length",
							uuid = "626f2128-dfa8-8e0b-a34f-81b443682c1e",
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
							dequeueIfLuaFalse = true,
							localmapid = 968,
							uuid = "43f3aa1f-21fb-8e95-9261-d059eda5731d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
								20,
								22,
								30,
								34,
								39,
								41,
								23,
								31,
								38,
							},
							uuid = "7b79d4ea-6fbe-120e-be0c-b0b3609236f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- DSR preferences use an independent FileLoad/FileSave store.\nlocal dsrStore=_G.LPDU_DSR_SettingsStore\nif not dsrStore or not dsrStore.meteorTowerSideV1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[DSR-LPDU.lua]]\n local defaults={debugLabels=false,enabled=true,tts=true,role=0,group=0,east=0,enumCCW=0,akh=0,invuln=0,circleSide=0,vowMelee=0,towerTimers=true,aoeTimers=true,lockGaze=true,p1Knockback=true,meteorAxis=0,meteorSwap=0,meteorRoute=0,meteorTowerSide=1,p2Knockback=true,strengthBait=0,p3Tethers=0,p4DiveIndicators=true,p4RegroupSouth=false,p5Gaze=true,p5Baits=true,p6Middle=0}\n defaults.show=true\n local O=gDSRLPDUOptions\n if not O then\n  O={}\n  if FileExists(path) then local saved=FileLoad(path);if type(saved)==\"table\" then O=saved end end\n end\n for key,value in pairs(defaults) do\n  local v=O[key]\n  if type(v)~=type(value) or (type(v)==\"number\" and (v~=v or v<0 or v>=math.huge or v%1~=0)) then O[key]=value end\n end\n dsrStore={values=O}\n if O.meteorTowerSide~=0 and O.meteorTowerSide~=1 then O.meteorTowerSide=1 end\n local keys={};for key in pairs(defaults) do keys[#keys+1]=key end;table.sort(keys)\n function dsrStore.save()\n  local values,parts={},{}\n  for _,key in ipairs(keys) do values[key]=O[key];parts[#parts+1]=key..\":\"..tostring(O[key]) end\n  local signature=table.concat(parts,\";\")\n  if signature==dsrStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);dsrStore.saved=signature\n end\n gDSRLPDUOptions=O;_G.LPDU_DSR_SettingsStore=dsrStore\n dsrStore.save()\nend\nlocal s=data.dsrLPDU;local q=s and s.kbRequest;return not not(gDSRLPDUOptions.p1Knockback~=false and gDSRLPDUOptions and gDSRLPDUOptions.enabled and q and Now()>=q.starts and Now()<q.expires)",
							uuid = "202f419f-8ed2-72cc-a3b7-131dea673641",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1",
				mechanicTime = 10,
				name = "[LPDU DSR] P1 knockback - Arm's Length",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 70,
				timerStartOffset = -10,
				uuid = "66535c53-0462-2a76-9bc0-08aedae07daf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P1",
				name = "Guidance",
				uuid = "879289e2-766f-7db4-a3ad-66af9f5b970c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP1')",
							conditions = 
							{
								
								{
									"e643b78e-4934-9936-ace8-ff85ff190098",
									true,
								},
								
								{
									"e3295c25-73c1-7418-ab57-7f509a91d0d2",
									true,
								},
							},
							name = "P1 opening and Dimensions",
							uuid = "be1a6d62-c6ad-ebfe-8045-730e2da3e730",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "e643b78e-4934-9936-ace8-ff85ff190098",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP1']or s.scopeActive('generalP1')))",
							name = "P1 opening and Dimensions active",
							uuid = "e3295c25-73c1-7418-ab57-7f509a91d0d2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1/Guidance",
				loop = true,
				mechanicTime = 10,
				name = "[LPDU DSR] P1 opening and Dimensions",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 130,
				timerStartOffset = -10,
				uuid = "2d0acd35-d643-a37e-a29a-13628a3d0aeb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('doorTether')",
							conditions = 
							{
								
								{
									"f9a72be8-81c1-ea58-8ad2-1dc1b4c8bd7e",
									true,
								},
								
								{
									"fc417201-b911-968a-8fbd-523adb4aa1dd",
									true,
								},
							},
							name = "P1 tether handoff",
							uuid = "24992f2c-ab63-e3c2-84cb-b2d7a4d9cebc",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "f9a72be8-81c1-ea58-8ad2-1dc1b4c8bd7e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['doorTether']or s.scopeActive('doorTether')))",
							name = "P1 tether handoff active",
							uuid = "fc417201-b911-968a-8fbd-523adb4aa1dd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1/Guidance",
				loop = true,
				mechanicTime = 10,
				name = "[LPDU DSR] P1 tether handoff",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 30,
				timerStartOffset = -10,
				uuid = "d55eae77-67ee-b87d-a550-dba3f745f25c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s and (s.revision or 0)>=4 then s.drawDoorTether()end;self.used=true",
							conditions = 
							{
								
								{
									"97c82810-ec10-7bae-80a9-dc08b5fcf138",
									true,
								},
							},
							name = "Mark current tether holder",
							uuid = "6caf161d-c27e-d6d2-8981-cb0d460d3f0a",
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
							localmapid = 968,
							uuid = "97c82810-ec10-7bae-80a9-dc08b5fcf138",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1/Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 10,
				name = "[LPDU DSR] P1 current tether holder circle",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 35,
				timerStartOffset = -10,
				uuid = "c58cb696-964d-35b3-9908-d10e0214e09b",
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
				name = "LPDU Draws",
				uuid = "e01de439-6272-b0d5-af85-e8afe0527c2a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P1",
				uuid = "5f1619e6-3798-afa3-8dc1-a0f2744d859a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P1",
				name = "Guidance",
				uuid = "b0878d81-75a0-ca66-8ec5-d45f29c4b47a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('beam')",
							conditions = 
							{
								
								{
									"ed5709ab-7c9f-7eb4-8769-3cf1aa5ae700",
									true,
								},
								
								{
									"237e0a55-f7b9-5dbc-9ce2-54a431f3b8ca",
									true,
								},
							},
							name = "P1 beam claims",
							uuid = "fc9696aa-3b2e-9461-bf2e-6e43fb529c6b",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "ed5709ab-7c9f-7eb4-8769-3cf1aa5ae700",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['beam']or s.scopeActive('beam')))",
							name = "P1 beam claims active",
							uuid = "237e0a55-f7b9-5dbc-9ce2-54a431f3b8ca",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1/Guidance",
				loop = true,
				mechanicTime = 44.8,
				name = "[LPDU DSR] P1 beam claims",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 14,
				timerStartOffset = -10,
				uuid = "aa7a443e-2f21-a2ca-953a-65775e941445",
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
				name = "LPDU Draws",
				uuid = "80e29cb7-fac7-2523-b64f-0c52a804b0a9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P1",
				uuid = "b67c48c3-efe2-ff57-859a-1a25c2ed7e72",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P1",
				name = "Guidance",
				uuid = "6545382c-a73c-d32e-952f-daf5030edcc1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('shining')",
							conditions = 
							{
								
								{
									"eab2f063-4e3a-b7bb-b5b5-9057114686cf",
									true,
								},
								
								{
									"f4d92f42-d374-69a1-b045-b8b1ee1bcbac",
									true,
								},
							},
							name = "P1 knockback and dash route",
							uuid = "ff5a6a4a-f84f-4749-bd1f-3cb8c8e4f7ec",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "eab2f063-4e3a-b7bb-b5b5-9057114686cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['shining']or s.scopeActive('shining')))",
							name = "P1 knockback and dash route active",
							uuid = "f4d92f42-d374-69a1-b045-b8b1ee1bcbac",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1/Guidance",
				loop = true,
				mechanicTime = 59.8,
				name = "[LPDU DSR] P1 knockback and dash route",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 22,
				timerStartOffset = -8,
				uuid = "3220c355-28b6-8d29-9cf4-0d84b90c3ef9",
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
				name = "LPDU Draws",
				uuid = "0be73100-b59f-dc20-9da3-328d77489393",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P1",
				uuid = "bbb001c2-3fdf-70b9-bfb8-c1b61bbfee6c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P1",
				name = "Guidance",
				uuid = "69cc49e6-1561-8892-bedd-6b6be1849dc3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('ps')",
							conditions = 
							{
								
								{
									"13b945f8-1a2f-058f-8dd7-4c24ceaa66c7",
									true,
								},
								
								{
									"08cd7911-3946-da01-bca3-71f790cba330",
									true,
								},
							},
							name = "P1 PlayStation chain positions",
							uuid = "336613e7-e5ca-9995-bbce-878deeafab1a",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "13b945f8-1a2f-058f-8dd7-4c24ceaa66c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['ps']or s.scopeActive('ps')))",
							name = "P1 PlayStation chain positions active",
							uuid = "08cd7911-3946-da01-bca3-71f790cba330",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1/Guidance",
				loop = true,
				mechanicTime = 88.2,
				name = "[LPDU DSR] P1 PlayStation chain positions",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 10,
				timerStartOffset = -12,
				uuid = "cfe128f0-2cce-fe5b-acb7-f28a117787ba",
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
				name = "LPDU Draws",
				uuid = "c9c30fef-c422-e35b-8531-4651401329ba",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P1",
				uuid = "02a983d3-139d-f816-a020-55ab4172232b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P1",
				name = "Guidance",
				uuid = "37f6d03a-24ea-e947-aa6f-f773abd72d67",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('pure')",
							conditions = 
							{
								
								{
									"8a8f3c20-aeb9-8f8a-91ca-1c8ff161c1ec",
									true,
								},
								
								{
									"58540b9a-f7f5-057c-8051-57ea39ac83c0",
									true,
								},
							},
							name = "P1 HMRT bait and puddles",
							uuid = "d6a22df7-d58f-a1bd-b7a4-358e83b5e7d6",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "8a8f3c20-aeb9-8f8a-91ca-1c8ff161c1ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['pure']or s.scopeActive('pure')))",
							name = "P1 HMRT bait and puddles active",
							uuid = "58540b9a-f7f5-057c-8051-57ea39ac83c0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P1/Guidance",
				loop = true,
				mechanicTime = 200,
				name = "[LPDU DSR] P1 HMRT bait and puddles",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 42,
				timerStartOffset = -3,
				uuid = "ea535a28-ee60-6a73-b144-0a1998b6f8e2",
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
				name = "LPDU Draws",
				uuid = "91f71faa-d929-f2d1-ae3e-165b73e3f7bd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P2",
				uuid = "e7703e48-e9ff-d1b1-a230-48139a0c3c48",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Guidance",
				uuid = "ab36d478-626a-01b3-85bc-538f193afe95",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or(s.revision or 0)<12 then self.used=true;return end\nself.used=s.runScope('mercy')",
							conditions = 
							{
								
								{
									"1c39248f-591d-9823-a726-84d8f9e557cd",
									true,
								},
								
								{
									"c68542d8-a928-2af4-a7bc-80421763d979",
									true,
								},
							},
							name = "Protean bait and dodge steps",
							uuid = "d3406b52-98cc-dc04-9b77-2a6f7995ab1a",
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
							localmapid = 968,
							uuid = "1c39248f-591d-9823-a726-84d8f9e557cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and(s.revision or 0)>=12 and(s.scopeRunning.mercy or s.scopeActive('mercy')))",
							uuid = "c68542d8-a928-2af4-a7bc-80421763d979",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 301.6,
				name = "[LPDU DSR] P2 opening protean bait and dodge",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 40,
				timerEndOffset = 4,
				timerStartOffset = -4,
				uuid = "96688f9b-3057-fe4c-9c41-7896bb9922de",
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
				name = "LPDU Draws",
				uuid = "dfca4127-ff40-0188-884e-b475e0c48f84",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P2",
				uuid = "cf1f0335-dd78-94fd-b78c-d280f8c96372",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Guidance",
				uuid = "c77c4749-036a-b7b4-bece-bd9ceaa1b314",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or(s.revision or 0)<13 then self.used=true;return end\nif not self.mightStarted then if not s.startMight(303.2)then return end;self.mightStarted=true end\nself.used=s.runScope('might')",
							conditions = 
							{
								
								{
									"f5f1e968-4f31-98c0-9660-1292d8e75f34",
									true,
								},
							},
							name = "Three tank cleaves and rear positioning",
							uuid = "d756516e-304a-e21b-b43a-80025ebd4f62",
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
							localmapid = 968,
							uuid = "f5f1e968-4f31-98c0-9660-1292d8e75f34",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				mechanicTime = 303.2,
				name = "[LPDU DSR] P2 opening tank cleaves",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 5.5,
				timerStartOffset = -1.8,
				uuid = "894cad78-8db3-4864-aaea-aaea96063382",
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
				name = "LPDU Draws",
				uuid = "85a11d2e-d74b-0685-9351-7f7f586ef3f9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.channel(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"34980a6a-240b-a9c2-b9cf-aae514ef693d",
									true,
								},
								
								{
									"71294efe-7124-eb24-bfd7-1b88cebe661c",
									true,
								},
							},
							name = "Thordan channels",
							uuid = "dd9ef475-bb9c-245f-846a-1a89c380626c",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "34980a6a-240b-a9c2-b9cf-aae514ef693d",
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
								25295,
								25308,
								25536,
								25537,
								25539,
								25542,
								25543,
								25544,
								25545,
								25548,
								25552,
								25555,
								25556,
								25558,
								25564,
								25567,
								28591,
								28651,
								29564,
							},
							uuid = "71294efe-7124-eb24-bfd7-1b88cebe661c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 317.5,
				name = "[LPDU DSR] Thordan channels",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 285,
				timerStartOffset = -65,
				uuid = "c7441e11-03bf-bb06-8a56-fd8025c70edb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P2",
				uuid = "e045e02b-5454-7a2a-9333-6b56c6a7d4ab",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Guidance",
				uuid = "d2716052-d8fc-d45e-8ad0-652c0045f729",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('spiral')",
							conditions = 
							{
								
								{
									"84efd345-7a36-7ba0-870d-101eb1f0ec74",
									true,
								},
								
								{
									"ff97c612-3a4a-d3c4-99eb-0e84ab160d3c",
									true,
								},
							},
							name = "P2 Strength safe sides",
							uuid = "424c4957-48fe-5ebd-806c-cecdfd09196c",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "84efd345-7a36-7ba0-870d-101eb1f0ec74",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['spiral']or s.scopeActive('spiral')))",
							name = "P2 Strength safe sides active",
							uuid = "ff97c612-3a4a-d3c4-99eb-0e84ab160d3c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 317.5,
				name = "[LPDU DSR] P2 Strength safe sides",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 40,
				timerStartOffset = -12,
				uuid = "2fa1bc0e-31f3-40fc-832a-81fc242bd9c8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('strengthTowers')",
							conditions = 
							{
								
								{
									"9d0bd154-dbed-f8bc-9e8e-3ab1f19840c6",
									true,
								},
								
								{
									"b551b672-05a4-ac31-98b8-1abe0c6b2640",
									true,
								},
							},
							name = "P2 Strength tower assignment",
							uuid = "37841039-2922-348a-8a6a-1e10ce14cf7d",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "9d0bd154-dbed-f8bc-9e8e-3ab1f19840c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['strengthTowers']or s.scopeActive('strengthTowers')))",
							name = "P2 Strength tower assignment active",
							uuid = "b551b672-05a4-ac31-98b8-1abe0c6b2640",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 317.5,
				name = "[LPDU DSR] P2 Strength tower assignment",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 62,
				uuid = "8f133509-0729-e108-bee2-c00a9604d5cc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP2')",
							conditions = 
							{
								
								{
									"19fb71be-958a-0e4e-8767-7ecb1084152d",
									true,
								},
								
								{
									"30e0b00c-10db-4b3b-9501-dce5822cf6a1",
									true,
								},
							},
							name = "P2 Strength earthquake steps",
							uuid = "ba20f9e1-3e65-8bac-8f55-77d940702926",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "19fb71be-958a-0e4e-8767-7ecb1084152d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP2']or s.scopeActive('generalP2')))",
							name = "P2 Strength earthquake steps active",
							uuid = "30e0b00c-10db-4b3b-9501-dce5822cf6a1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 317.5,
				name = "[LPDU DSR] P2 Strength earthquake steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 65,
				timerStartOffset = -10,
				uuid = "086c1633-812a-9945-9b4a-3b05a44de140",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or (s.revision or 0)<2 then self.used=true;return end;self.used=s.runScope('strengthPosition')",
							conditions = 
							{
								
								{
									"157d882f-b104-f659-ae26-6249db243f88",
									true,
								},
								
								{
									"b683db04-02bf-9acc-92f8-ab2bcbab13df",
									true,
								},
							},
							name = "Strength stack and cross tethers",
							uuid = "8326ce64-22fb-bac9-90f9-995af612e6a5",
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
							localmapid = 968,
							uuid = "157d882f-b104-f659-ae26-6249db243f88",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and (s.revision or 0)>=2 and(s.scopeRunning.strengthPosition or s.scopeActive('strengthPosition')))",
							uuid = "b683db04-02bf-9acc-92f8-ab2bcbab13df",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 317.5,
				name = "[LPDU DSR] P2 Strength stack and cross tethers",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 65,
				timerStartOffset = -3,
				uuid = "1553bd4b-8901-c111-85fb-f62d7a2e3b5d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Strength",
				uuid = "6bbb669d-16c5-2d9f-ad87-962b216e2212",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.marker(eventArgs)end;self.used=true",
							conditions = 
							{
								
								{
									"fd3c8123-6f93-153a-8e96-363d9820bc7d",
									true,
								},
								
								{
									"78fda268-0f85-d269-a4f7-0c9611b5239e",
									true,
								},
							},
							name = "Strength blue leap markers",
							uuid = "441357c2-0947-abe3-8dc9-72b2001ae562",
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
							localmapid = 968,
							uuid = "fd3c8123-6f93-153a-8e96-363d9820bc7d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							markerIDList = 
							{
								330,
							},
							uuid = "78fda268-0f85-d269-a4f7-0c9611b5239e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Strength",
				eventType = 4,
				loop = true,
				mechanicTime = 317.5,
				name = "[LPDU DSR] P2 Strength blue leap markers",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 65,
				timerStartOffset = -3,
				uuid = "5d5d43d2-2141-bed5-b7e3-3ccf9dfa5d36",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.tether(eventArgs)end;self.used=true",
							conditions = 
							{
								
								{
									"323fa88f-5d27-4421-9376-632a338d0047",
									true,
								},
								
								{
									"0cf0d9bb-7a56-c7ad-bdaa-2281cd4565f8",
									true,
								},
							},
							name = "Strength tank tether changes",
							uuid = "a8be8dad-125f-1f3f-b1dd-ede737799644",
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
							localmapid = 968,
							uuid = "323fa88f-5d27-4421-9376-632a338d0047",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not not(eventArgs.newTetherID==84 or eventArgs.oldTetherID==84)",
							dequeueIfLuaFalse = true,
							uuid = "0cf0d9bb-7a56-c7ad-bdaa-2281cd4565f8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Strength",
				eventType = 15,
				loop = true,
				mechanicTime = 317.5,
				name = "[LPDU DSR] P2 Strength tank tether changes",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 65,
				timerStartOffset = -3,
				uuid = "c6a6176e-84ce-992f-b493-82b17b7f8d7f",
				version = 2,
			},
		},
	},
	[50] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "f2ca5a47-40a3-df6a-be2f-6ee7775a06c2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P2",
				uuid = "b2a9f224-9cab-1886-a572-e3b06527eb22",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Guidance",
				uuid = "d5d2e109-e68d-8038-8b38-29770a25ad1e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or(s.revision or 0)<12 then self.used=true;return end\nself.used=s.runScope('mercy')",
							conditions = 
							{
								
								{
									"78e637d7-66ab-7c28-8577-7a8581465fad",
									true,
								},
								
								{
									"e39ff3f2-6283-a6f0-b00f-adda049179a9",
									true,
								},
							},
							name = "Protean bait and dodge steps",
							uuid = "17839369-2778-670a-ae97-4a4149fc4ae5",
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
							localmapid = 968,
							uuid = "78e637d7-66ab-7c28-8577-7a8581465fad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and(s.revision or 0)>=12 and(s.scopeRunning.mercy or s.scopeActive('mercy')))",
							uuid = "e39ff3f2-6283-a6f0-b00f-adda049179a9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 335.3,
				name = "[LPDU DSR] P2 Strength protean bait and dodge",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = 4,
				timerStartOffset = -4,
				uuid = "792fc10a-baaf-2fdf-9b25-2ead908131ea",
				version = 2,
			},
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "bffab420-41e4-b899-afc7-7b5c7ee084b2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P2",
				uuid = "02a23402-ccaa-c31c-942e-cbb3c0da8300",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Guidance",
				uuid = "44a1d94b-eafc-d145-afbe-eff8980db45a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or(s.revision or 0)<13 then self.used=true;return end\nif not self.mightStarted then if not s.startMight(371.3)then return end;self.mightStarted=true end\nself.used=s.runScope('might')",
							conditions = 
							{
								
								{
									"fec49b81-6a60-a37e-889e-5b0bfa33a773",
									true,
								},
							},
							name = "Three tank cleaves and rear positioning",
							uuid = "55ea352a-c6ea-865a-bc26-860558904424",
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
							localmapid = 968,
							uuid = "fec49b81-6a60-a37e-889e-5b0bfa33a773",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				mechanicTime = 371.3,
				name = "[LPDU DSR] P2 post-Strength tank cleaves",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 5.5,
				timerStartOffset = -1.8,
				uuid = "661a6a40-dcac-d202-a1c3-d4eb2c183342",
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
				name = "LPDU Draws",
				uuid = "6db33ecb-018e-b199-8230-1a6f94ea7e35",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.marker(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"9496ec25-6ea2-460a-90c4-623f8d187cad",
									true,
								},
								
								{
									"99433d64-ce19-4f50-8b61-39476fcfd6dd",
									true,
								},
							},
							name = "Meteor prey capture",
							uuid = "347b7c68-0833-5705-949e-1c8106ca47e6",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "9496ec25-6ea2-460a-90c4-623f8d187cad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 285,
							uuid = "99433d64-ce19-4f50-8b61-39476fcfd6dd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 4,
				loop = true,
				mechanicTime = 385.6,
				name = "[LPDU DSR] Meteor prey capture",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = 65,
				timerStartOffset = -3,
				uuid = "429b82c3-697b-1827-8375-923f5e28a3bd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.mapEffect(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"6b34533a-6e7f-d0cd-8223-47feff435f6a",
									true,
								},
								
								{
									"f64bf013-96b3-bbaa-8541-4e0d947acf29",
									true,
								},
							},
							name = "Sanctity gaze position",
							uuid = "22c75965-2c94-ef4b-b829-8ea7f7047bcc",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "6b34533a-6e7f-d0cd-8223-47feff435f6a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not not(eventArgs.a1>=0 and eventArgs.a1<=7 and eventArgs.a2==1 and eventArgs.a3==2)",
							uuid = "f64bf013-96b3-bbaa-8541-4e0d947acf29",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 14,
				loop = true,
				mechanicTime = 385.6,
				name = "[LPDU DSR] Sanctity gaze position",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = 25,
				timerStartOffset = -3,
				uuid = "15e90187-146c-03be-9c81-fbaa68956f29",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P2",
				uuid = "556beb1c-2823-8e78-8038-34a6f75a979e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.marker(eventArgs)end;self.used=true",
							conditions = 
							{
								
								{
									"4437f482-463f-d21c-b568-5b65f8fa3e56",
									true,
								},
								
								{
									"2bd40cf7-425e-6e6f-9002-81e9a6283fc2",
									true,
								},
							},
							name = "Track Sanctity sword groups",
							uuid = "c6ac455f-9b23-48ed-b003-c2a980a00f06",
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
							localmapid = 968,
							uuid = "4437f482-463f-d21c-b568-5b65f8fa3e56",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							markerIDList = 
							{
								50,
								51,
							},
							uuid = "2bd40cf7-425e-6e6f-9002-81e9a6283fc2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2",
				eventType = 4,
				loop = true,
				mechanicTime = 385.6,
				name = "[LPDU DSR] Sanctity sword assignments",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = 35,
				timerStartOffset = -12,
				uuid = "a13fcdb4-ed90-13c9-8f83-2e00c36f3ba6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Guidance",
				uuid = "3176db99-9564-8d4b-935a-c9f18edd3583",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('sanctity')",
							conditions = 
							{
								
								{
									"cbcb27e5-6474-900d-a4f9-34e0b39c3254",
									true,
								},
								
								{
									"5947f5bf-b4d8-2672-b6c5-74f4490afc9f",
									true,
								},
							},
							name = "P2 Sanctity group and orb route",
							uuid = "602a9285-4755-eed3-b9e5-cc3f7ff0fe75",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "cbcb27e5-6474-900d-a4f9-34e0b39c3254",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['sanctity']or s.scopeActive('sanctity')))",
							name = "P2 Sanctity group and orb route active",
							uuid = "5947f5bf-b4d8-2672-b6c5-74f4490afc9f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 385.6,
				name = "[LPDU DSR] P2 Sanctity group and orb route",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = 35,
				timerStartOffset = -12,
				uuid = "4e10e499-73d9-5de3-b83e-d5bb00114b2e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('gaze')",
							conditions = 
							{
								
								{
									"1c94b0a7-792e-658d-999a-727099af98d3",
									true,
								},
								
								{
									"31a7352e-9796-f61b-b9cb-487022b1bc8a",
									true,
								},
							},
							name = "P2 Sanctity gaze facing",
							uuid = "974d90e3-e3f7-fa0f-a4c0-ec2dd4e06da2",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "1c94b0a7-792e-658d-999a-727099af98d3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['gaze']or s.scopeActive('gaze')))",
							name = "P2 Sanctity gaze facing active",
							uuid = "31a7352e-9796-f61b-b9cb-487022b1bc8a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 385.6,
				name = "[LPDU DSR] P2 Sanctity gaze facing",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = 25,
				timerStartOffset = -3,
				uuid = "d8be3e53-24ae-cb18-ba6a-640aa7f68157",
				version = 2,
			},
		},
	},
	[71] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "fc79e452-01d5-0f12-9200-eb2a48b9c753",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P2",
				uuid = "24b2cca9-b30d-389d-839d-ad53e30d766d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Guidance",
				uuid = "32220c83-5980-1683-8566-f73ed5a68787",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('meteor')",
							conditions = 
							{
								
								{
									"4a9ef522-9aff-47c5-b351-cf105fe50f88",
									true,
								},
								
								{
									"e1627b37-c5ba-0075-bc81-c556882b0bce",
									true,
								},
							},
							name = "P2 meteor ice and towers",
							uuid = "e9dedbb4-4f68-167c-93d2-de75b5056516",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "4a9ef522-9aff-47c5-b351-cf105fe50f88",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['meteor']or s.scopeActive('meteor')))",
							name = "P2 meteor ice and towers active",
							uuid = "e1627b37-c5ba-0075-bc81-c556882b0bce",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 417.4,
				name = "[LPDU DSR] P2 meteor ice and towers",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = 30,
				timerStartOffset = -12,
				uuid = "c4306a17-5928-d264-a349-c10259072acc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Meteors",
				uuid = "abe7a562-8421-4377-ab61-93758eb113b3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or(s.revision or 0)<8 then return end\ns.meteorObject(eventArgs);self.used=true",
							conditions = 
							{
								
								{
									"9f46a737-f602-7828-a810-cd1b8d7b2b3c",
									true,
								},
								
								{
									"1379d14d-3773-d435-b1fb-6bbe406752ba",
									true,
								},
							},
							name = "Record actual comet drops",
							uuid = "e92a50ab-6ad4-9a3d-a4c5-42b9ccd2b4c5",
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
							localmapid = 968,
							uuid = "9f46a737-f602-7828-a810-cd1b8d7b2b3c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 11321,
							uuid = "1379d14d-3773-d435-b1fb-6bbe406752ba",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Meteors",
				eventType = 5,
				loop = true,
				mechanicTime = 417.4,
				name = "[LPDU DSR] P2 meteor comet drops",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = 30,
				timerStartOffset = -12,
				uuid = "269f4ce3-de18-431d-8033-740cb3cdc8d6",
				version = 2,
			},
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
									"f71b10d5-cca9-9d68-a087-5b24ee063f78",
									true,
								},
								
								{
									"00699407-466f-afc8-aca2-cda8fbf2a876",
									true,
								},
								
								{
									"92b64665-b8ca-4820-8320-b9ace0310b13",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Surecast",
							name = "Surecast",
							uuid = "6f0044d9-e5cd-05ed-bc9a-19e8e14db9b9",
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
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								24,
								28,
								33,
								40,
								25,
								27,
								35,
								42,
							},
							uuid = "00699407-466f-afc8-aca2-cda8fbf2a876",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- DSR preferences use an independent FileLoad/FileSave store.\nlocal dsrStore=_G.LPDU_DSR_SettingsStore\nif not dsrStore or not dsrStore.meteorTowerSideV1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[DSR-LPDU.lua]]\n local defaults={debugLabels=false,enabled=true,tts=true,role=0,group=0,east=0,enumCCW=0,akh=0,invuln=0,circleSide=0,vowMelee=0,towerTimers=true,aoeTimers=true,lockGaze=true,p1Knockback=true,meteorAxis=0,meteorSwap=0,meteorRoute=0,meteorTowerSide=1,p2Knockback=true,strengthBait=0,p3Tethers=0,p4DiveIndicators=true,p4RegroupSouth=false,p5Gaze=true,p5Baits=true,p6Middle=0}\n defaults.show=true\n local O=gDSRLPDUOptions\n if not O then\n  O={}\n  if FileExists(path) then local saved=FileLoad(path);if type(saved)==\"table\" then O=saved end end\n end\n for key,value in pairs(defaults) do\n  local v=O[key]\n  if type(v)~=type(value) or (type(v)==\"number\" and (v~=v or v<0 or v>=math.huge or v%1~=0)) then O[key]=value end\n end\n dsrStore={values=O}\n if O.meteorTowerSide~=0 and O.meteorTowerSide~=1 then O.meteorTowerSide=1 end\n local keys={};for key in pairs(defaults) do keys[#keys+1]=key end;table.sort(keys)\n function dsrStore.save()\n  local values,parts={},{}\n  for _,key in ipairs(keys) do values[key]=O[key];parts[#parts+1]=key..\":\"..tostring(O[key]) end\n  local signature=table.concat(parts,\";\")\n  if signature==dsrStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);dsrStore.saved=signature\n end\n gDSRLPDUOptions=O;_G.LPDU_DSR_SettingsStore=dsrStore\n dsrStore.save()\nend\nlocal s=data.dsrLPDU;return not not(s and s.p2KnockbackAllowed and s.p2KnockbackAllowed())",
							uuid = "92b64665-b8ca-4820-8320-b9ace0310b13",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 968,
							uuid = "f71b10d5-cca9-9d68-a087-5b24ee063f78",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Meteors",
				mechanicTime = 417.4,
				name = "[LPDU DSR] P2 outer tower knockback - Surecast",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = 20,
				uuid = "8a584aa8-aa86-6f8b-ab37-546e6773046c",
				version = 2,
			},
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
									"ff39028d-5474-f537-acc6-6932b0882446",
									true,
								},
								
								{
									"c1b7bcdc-f94e-8994-b475-0bacebaa8210",
									true,
								},
								
								{
									"c344d0b8-587b-0820-9dc6-b1ef95e05690",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ArmsLength",
							name = "Arm's Length",
							uuid = "f770733f-e59a-224b-931f-8a1a33c0b3f2",
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
							category = "Lua",
							conditionLua = "-- DSR preferences use an independent FileLoad/FileSave store.\nlocal dsrStore=_G.LPDU_DSR_SettingsStore\nif not dsrStore or not dsrStore.meteorTowerSideV1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[DSR-LPDU.lua]]\n local defaults={debugLabels=false,enabled=true,tts=true,role=0,group=0,east=0,enumCCW=0,akh=0,invuln=0,circleSide=0,vowMelee=0,towerTimers=true,aoeTimers=true,lockGaze=true,p1Knockback=true,meteorAxis=0,meteorSwap=0,meteorRoute=0,meteorTowerSide=1,p2Knockback=true,strengthBait=0,p3Tethers=0,p4DiveIndicators=true,p4RegroupSouth=false,p5Gaze=true,p5Baits=true,p6Middle=0}\n defaults.show=true\n local O=gDSRLPDUOptions\n if not O then\n  O={}\n  if FileExists(path) then local saved=FileLoad(path);if type(saved)==\"table\" then O=saved end end\n end\n for key,value in pairs(defaults) do\n  local v=O[key]\n  if type(v)~=type(value) or (type(v)==\"number\" and (v~=v or v<0 or v>=math.huge or v%1~=0)) then O[key]=value end\n end\n dsrStore={values=O}\n if O.meteorTowerSide~=0 and O.meteorTowerSide~=1 then O.meteorTowerSide=1 end\n local keys={};for key in pairs(defaults) do keys[#keys+1]=key end;table.sort(keys)\n function dsrStore.save()\n  local values,parts={},{}\n  for _,key in ipairs(keys) do values[key]=O[key];parts[#parts+1]=key..\":\"..tostring(O[key]) end\n  local signature=table.concat(parts,\";\")\n  if signature==dsrStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);dsrStore.saved=signature\n end\n gDSRLPDUOptions=O;_G.LPDU_DSR_SettingsStore=dsrStore\n dsrStore.save()\nend\nlocal s=data.dsrLPDU;return not not(s and s.p2KnockbackAllowed and s.p2KnockbackAllowed())",
							uuid = "c344d0b8-587b-0820-9dc6-b1ef95e05690",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 968,
							uuid = "ff39028d-5474-f537-acc6-6932b0882446",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
								20,
								22,
								30,
								34,
								39,
								41,
								23,
								31,
								38,
							},
							uuid = "c1b7bcdc-f94e-8994-b475-0bacebaa8210",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Meteors",
				mechanicTime = 417.4,
				name = "[LPDU DSR] P2 outer tower knockback - Arm's Length",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = 20,
				uuid = "26b3089c-51d2-1397-b19c-1ed50c5b89f2",
				version = 2,
			},
		},
	},
	[86] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "5569e587-91f1-579a-b831-506bba7aeec7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P2",
				uuid = "b3f5ee82-27fb-81fb-b1d1-3cc9f9975c84",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P2",
				name = "Guidance",
				uuid = "85ca4e1f-278a-d5b2-a29f-9bc483d8e3a9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP2')",
							conditions = 
							{
								
								{
									"c5f65268-4502-705e-93e1-b081a8ad19aa",
									true,
								},
								
								{
									"0c90e48c-c524-35f2-ac11-672d04c7ee7d",
									true,
								},
							},
							name = "P2 Broad Swing steps",
							uuid = "8070de2f-5e60-f21e-bdbe-74fe50785f09",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "c5f65268-4502-705e-93e1-b081a8ad19aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP2']or s.scopeActive('generalP2')))",
							name = "P2 Broad Swing steps active",
							uuid = "0c90e48c-c524-35f2-ac11-672d04c7ee7d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P2/Guidance",
				loop = true,
				mechanicTime = 465.3,
				name = "[LPDU DSR] P2 Broad Swing steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 86,
				timerEndOffset = 18,
				timerStartOffset = -8,
				uuid = "a0d52a91-8263-60b1-9d15-205db8528889",
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
				name = "LPDU Draws",
				uuid = "eb17d9fe-5e82-f3e8-ac7d-49ed5acc5b7b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.channel(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"e12664ac-76a2-6589-a45a-a212aafa6fc4",
									true,
								},
								
								{
									"0b385ccd-8eb0-c28f-903d-b94a4f11fd9f",
									true,
								},
							},
							name = "Nidhogg channels",
							uuid = "38103816-6a7f-15fa-9218-9133a8ad6a76",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "e12664ac-76a2-6589-a45a-a212aafa6fc4",
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
								26378,
								26380,
								26381,
								26385,
								26386,
								26387,
								26391,
								26392,
								26393,
								26394,
								29750,
							},
							uuid = "0b385ccd-8eb0-c28f-903d-b94a4f11fd9f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 620.5,
				name = "[LPDU DSR] Nidhogg channels",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 120,
				timerStartOffset = -30,
				uuid = "1a07566c-f35d-e682-b7a0-869ca8b02021",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.channel(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"18076165-e620-7a52-a132-c1eae0078271",
									true,
								},
								
								{
									"1ff0c801-c2a5-8ead-88f1-8ea7aefbb117",
									true,
								},
							},
							name = "Eyes and rewind channels",
							uuid = "a87de604-cff7-fd6e-8f41-469fba75562b",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "18076165-e620-7a52-a132-c1eae0078271",
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
								25296,
								25314,
								25316,
								25370,
								26402,
								26813,
								26814,
								26819,
								26971,
							},
							uuid = "1ff0c801-c2a5-8ead-88f1-8ea7aefbb117",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 620.5,
				name = "[LPDU DSR] Eyes and rewind channels",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 380,
				timerStartOffset = 100,
				uuid = "e3accff5-0ffc-0cbd-a7a9-ddcfcfd30693",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P3",
				uuid = "ebd42413-faae-6fec-9681-00402ae61d60",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P3",
				name = "Guidance",
				uuid = "32d08491-d1ef-df68-9096-1084316f4842",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('dive')",
							conditions = 
							{
								
								{
									"f5f73a8b-ba66-5b7a-bbfb-138fd9a07718",
									true,
								},
								
								{
									"eaa1b823-a2e4-2f51-a7ea-edf68540bb15",
									true,
								},
							},
							name = "P3 Dive from Grace steps",
							uuid = "08b0f290-aa33-3ce8-a6f7-f9a43d98a222",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "f5f73a8b-ba66-5b7a-bbfb-138fd9a07718",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['dive']or s.scopeActive('dive')))",
							name = "P3 Dive from Grace steps active",
							uuid = "eaa1b823-a2e4-2f51-a7ea-edf68540bb15",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P3/Guidance",
				loop = true,
				mechanicTime = 620.5,
				name = "[LPDU DSR] P3 Dive from Grace steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 75,
				timerStartOffset = -8,
				uuid = "e1c4470f-5afc-8857-a884-07fef9d5fe9f",
				version = 2,
			},
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
									"2b33826b-ae1d-799e-ae11-1b17926551fb",
									true,
								},
							},
							name = "Stop All Actions",
							stopAllActions = true,
							stopCasting = true,
							uuid = "2ce37684-715c-0754-bf3e-a4e486119c28",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.diveActionsHeld=true end;TensorCore.timelineLogToFile(\"[DSR Dive] Stop All Actions used\\n\");self.used=true",
							conditions = 
							{
								
								{
									"5e03f726-4078-844b-9f8c-32adf1e5809d",
									true,
								},
							},
							name = "Record the owned action stop",
							uuid = "f3d009c5-a568-769d-b7a1-6162b1e8f7c9",
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
									"5e03f726-4078-844b-9f8c-32adf1e5809d",
									true,
								},
								
								{
									"8ff91428-8538-4ae0-aec7-bd1432d598a3",
									true,
								},
							},
							name = "Resume All Actions",
							resumeAllActions = true,
							uuid = "89b3708a-0f34-5b80-92f3-11b6f90d9401",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.diveActionsHeld=nil end;TensorCore.timelineLogToFile(\"[DSR Dive] Resume All Actions used\\n\");self.used=true",
							conditions = 
							{
								
								{
									"7c4d2cc6-6fd8-5e35-a922-19d2cff6d439",
									true,
								},
							},
							endIfUsed = true,
							name = "Clear the owned action stop",
							uuid = "e6f273cc-969a-ea54-a616-1892d7d53be9",
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
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.diveFacingLock and not s.diveActionsHeld)",
							name = "Personal facing lock active",
							uuid = "2b33826b-ae1d-799e-ae11-1b17926551fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionUUID = "2ce37684-715c-0754-bf3e-a4e486119c28",
							category = "Action",
							name = "Native action used",
							uuid = "5e03f726-4078-844b-9f8c-32adf1e5809d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not s or not s.diveFacingLock",
							name = "Personal facing lock released",
							uuid = "8ff91428-8538-4ae0-aec7-bd1432d598a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionUUID = "89b3708a-0f34-5b80-92f3-11b6f90d9401",
							category = "Action",
							name = "Native action used",
							uuid = "7c4d2cc6-6fd8-5e35-a922-19d2cff6d439",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P3/Guidance",
				mechanicTime = 620.5,
				name = "[LPDU DSR] Dive facing - Stop and Resume",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 48,
				uuid = "50b9ea84-af15-5593-99c4-cbfc9249b5a9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P3",
				name = "Dive from Grace",
				uuid = "b2f8c783-27b4-9cf9-85d5-03e3449d97c9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.marker(eventArgs)end;self.used=true",
							conditions = 
							{
								
								{
									"c2594cde-262a-cb01-a27e-50dcd04b2c01",
									true,
								},
								
								{
									"7e011f18-d73b-14c0-a8a2-b3bbf0f888ae",
									true,
								},
							},
							name = "Capture every Dive order marker",
							uuid = "893a0191-cb48-f060-83b7-f83116b21037",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "c2594cde-262a-cb01-a27e-50dcd04b2c01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							markerIDList = 
							{
								319,
								320,
								321,
							},
							name = "Dive orders 1 / 2 / 3",
							uuid = "7e011f18-d73b-14c0-a8a2-b3bbf0f888ae",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P3/Dive from Grace",
				eventType = 4,
				loop = true,
				mechanicTime = 620.5,
				name = "[LPDU DSR] P3 Dive order markers",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 55,
				timerStartOffset = -8,
				uuid = "9bbe8aa8-b519-5bd2-9786-90693a6ca5ef",
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
				name = "LPDU Draws",
				uuid = "6a077444-f5b1-52da-9558-58c20eac8352",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P3",
				uuid = "538dc3a7-55ba-4e42-aabd-96ac52239a89",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P3",
				name = "Guidance",
				uuid = "9b8595a7-e099-3c62-9927-aaf9d83ac9d8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP3')",
							conditions = 
							{
								
								{
									"12b74c53-b3ed-bd37-ad96-11496b4b0e44",
									true,
								},
								
								{
									"d95f8f44-b8cc-0159-a91a-1a45aa53544c",
									true,
								},
							},
							name = "P3 Gnash Lash and towers",
							uuid = "164a54b0-bd6c-d654-b0a3-e866ee1ca1a6",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "12b74c53-b3ed-bd37-ad96-11496b4b0e44",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP3']or s.scopeActive('generalP3')))",
							name = "P3 Gnash Lash and towers active",
							uuid = "d95f8f44-b8cc-0159-a91a-1a45aa53544c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P3/Guidance",
				loop = true,
				mechanicTime = 630.2,
				name = "[LPDU DSR] P3 in-out, lines and tether steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 105,
				timerStartOffset = -35,
				uuid = "57b8e9f7-665a-c269-b017-2f39a0e7f94d",
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
				name = "LPDU Draws",
				uuid = "5949cfc3-07d5-fb9a-b818-fb852303fe26",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P3",
				uuid = "9cb9e454-1924-e006-9661-3c833da53f5f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P3",
				name = "Soul Tether",
				uuid = "6a73c560-55b2-f7ce-840d-4232a9cc1725",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.tether(eventArgs)end;self.used=true",
							conditions = 
							{
								
								{
									"ca8652fe-9edc-96c5-8244-c29d7153bb1b",
									true,
								},
								
								{
									"de68715b-47d0-9240-b928-24ced50c9ab3",
									true,
								},
							},
							name = "Track Soul Tether ownership and transfers",
							uuid = "f436c7e9-a27a-2452-abc6-9f947a28d852",
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
							localmapid = 968,
							uuid = "ca8652fe-9edc-96c5-8244-c29d7153bb1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not not(eventArgs.newTetherID==84 or eventArgs.oldTetherID==84)",
							dequeueIfLuaFalse = true,
							uuid = "de68715b-47d0-9240-b928-24ced50c9ab3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P3/Soul Tether",
				eventType = 15,
				loop = true,
				mechanicTime = 683.9,
				name = "[LPDU DSR] P3 Soul Tether changes",
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "c6970b7a-30ea-bdaf-afd9-afe4ee0858c2",
				version = 2,
			},
		},
	},
	[124] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "4d4d9abd-c055-2c5e-8edd-579eb0b350e9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P4",
				uuid = "e0375474-8c89-eaba-a295-19660d0d8071",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P4",
				name = "Guidance",
				uuid = "70b0b190-38dc-0670-bebf-901e1a7034e6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('eyes')",
							conditions = 
							{
								
								{
									"c3cf114b-1e92-c953-9d8d-730068ef6ba2",
									true,
								},
								
								{
									"a6106b16-ad20-9007-9254-457afa77f334",
									true,
								},
							},
							name = "P4 eye groups",
							uuid = "33e8c627-d5c8-fbb8-8449-88bd605c4de5",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "c3cf114b-1e92-c953-9d8d-730068ef6ba2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['eyes']or s.scopeActive('eyes')))",
							name = "P4 eye groups active",
							uuid = "a6106b16-ad20-9007-9254-457afa77f334",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P4/Guidance",
				loop = true,
				mechanicTime = 740,
				name = "[LPDU DSR] P4 buffs, orbs and Mirage swaps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = 110,
				timerStartOffset = -35,
				uuid = "a17cf800-8f9d-632f-b3c6-34128d039e28",
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
				name = "LPDU Draws",
				uuid = "c845aa7f-71de-62f3-9cf7-9fa6357d0cd6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P4",
				uuid = "8cce9b6e-363e-dd5b-a5f3-52928b455242",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P4",
				name = "Guidance",
				uuid = "c1994aa8-e0a0-fc70-ac27-52e806c04afa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('pure')",
							conditions = 
							{
								
								{
									"7334d69b-0e03-d54a-8058-5f7d79ebae0a",
									true,
								},
								
								{
									"f620cd7a-b7b5-f09b-a440-6d033f2cb1b2",
									true,
								},
							},
							name = "P4 rewind HMRT bait and puddles",
							uuid = "b598680a-c7bf-6071-9cf4-55d21542bc55",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "7334d69b-0e03-d54a-8058-5f7d79ebae0a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['pure']or s.scopeActive('pure')))",
							name = "P4 rewind HMRT bait and puddles active",
							uuid = "f620cd7a-b7b5-f09b-a440-6d033f2cb1b2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P4/Guidance",
				loop = true,
				mechanicTime = 900,
				name = "[LPDU DSR] P4 rewind HMRT bait and puddles",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 136,
				timerEndOffset = 42,
				timerStartOffset = -3,
				uuid = "e15b1c22-8a02-239c-b9b7-e0251642b569",
				version = 2,
			},
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "4eddb607-7f59-f083-a5db-5708e06f6366",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.channel(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"baf8e267-61e1-60d1-bde1-ddbddcd19880",
									true,
								},
								
								{
									"6fa91aad-70c5-2e2c-ba19-85760b27117a",
									true,
								},
							},
							name = "Alternate Thordan channels",
							uuid = "870e2908-3468-f04a-9ed8-804d17303e70",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "baf8e267-61e1-60d1-bde1-ddbddcd19880",
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
								25295,
								25306,
								25308,
								25310,
								25542,
								25543,
								25546,
								25548,
								25552,
								25558,
								25573,
								27526,
								27528,
								27529,
								27531,
								27533,
								27534,
								27538,
								27539,
								27542,
								27543,
								28651,
								29564,
							},
							uuid = "6fa91aad-70c5-2e2c-ba19-85760b27117a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 1024.8,
				name = "[LPDU DSR] Alternate Thordan channels",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 170,
				timerStartOffset = -40,
				uuid = "a0c4ece2-b2c2-c4ca-a7b6-0a1279c17c87",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.marker(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"aca32de3-e1f0-4102-8b72-260861985841",
									true,
								},
								
								{
									"27f382a7-2905-8349-a287-47fbf140588a",
									true,
								},
							},
							name = "Wrath blue marker",
							uuid = "501c1cfb-e8f3-7cea-a2ff-164b754dc2ef",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "aca32de3-e1f0-4102-8b72-260861985841",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							conditionLua = "return eventArgs.markerID==14",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							markerIDList = 
							{
								14,
								20,
								281,
								282,
								283,
								284,
							},
							name = "Blue jump marker",
							uuid = "27f382a7-2905-8349-a287-47fbf140588a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 4,
				loop = true,
				mechanicTime = 1024.8,
				name = "[LPDU DSR] P5 Wrath and Death markers",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 130,
				timerStartOffset = -5,
				uuid = "6f54316e-fb92-27fc-ad6e-2cd6b4500508",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.tether(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"54961126-e1f4-cbb2-8402-3c628fe83c40",
									true,
								},
								
								{
									"8036607e-6d90-d870-9631-47a6c608f7df",
									true,
								},
							},
							name = "Wrath tether and Twister handoff",
							uuid = "0d0cbe2a-a007-7130-9b3c-5755e6e9987e",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "54961126-e1f4-cbb2-8402-3c628fe83c40",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not not(eventArgs.newTetherID==5 or eventArgs.oldTetherID==5)",
							dequeueIfLuaFalse = true,
							name = "Dragoon tether",
							uuid = "8036607e-6d90-d870-9631-47a6c608f7df",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 15,
				loop = true,
				mechanicTime = 1024.8,
				name = "[LPDU DSR] Wrath tether and Twister handoff",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 40,
				timerStartOffset = -5,
				uuid = "9a85f43e-f758-21c3-87ee-e017da3254bb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P5",
				uuid = "bcf9bd3f-6d69-761d-9df4-7ce6c2c895e4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P5",
				name = "Guidance",
				uuid = "8619e849-b40f-39e8-b30a-76d68e286ba0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('wrath')",
							conditions = 
							{
								
								{
									"bce1d5fb-935c-273c-8acd-2fccc7faac7d",
									true,
								},
								
								{
									"2a068f13-05fc-881b-b3af-256db34edf0e",
									true,
								},
							},
							name = "P5 Wrath marks and tethers",
							uuid = "8401ec32-caf6-2b82-baed-e081e32dc17f",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "bce1d5fb-935c-273c-8acd-2fccc7faac7d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['wrath']or s.scopeActive('wrath')))",
							name = "P5 Wrath marks and tethers active",
							uuid = "2a068f13-05fc-881b-b3af-256db34edf0e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P5/Guidance",
				loop = true,
				mechanicTime = 1024.8,
				name = "[LPDU DSR] P5 Wrath marks and tethers",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 45,
				timerStartOffset = -8,
				uuid = "45171527-ec4e-bc85-bd6b-0b85932fa519",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP5')",
							conditions = 
							{
								
								{
									"268a33e2-0add-05d6-86ba-15147e4151fd",
									true,
								},
								
								{
									"0451e0de-117e-f554-b52f-7b9f1e27aa0b",
									true,
								},
							},
							name = "P5 Dimensions",
							uuid = "cfcf4963-b7d9-16d4-b472-c812e80103ee",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "268a33e2-0add-05d6-86ba-15147e4151fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP5']or s.scopeActive('generalP5')))",
							name = "P5 Dimensions active",
							uuid = "0451e0de-117e-f554-b52f-7b9f1e27aa0b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P5/Guidance",
				loop = true,
				mechanicTime = 1024.8,
				name = "[LPDU DSR] P5 Death, dimensions and tank cleaves",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 170,
				timerStartOffset = -40,
				uuid = "69ff16a2-53d1-e749-82ad-493e9fc9e6e7",
				version = 2,
			},
		},
	},
	[180] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "91a61fc2-4c43-447b-a915-8d42403e5541",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P5",
				uuid = "a643d6c3-743a-5dcc-82f5-b857b7fd8897",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P5",
				name = "Death",
				uuid = "de95b485-663b-a155-b2cf-e2bd1af10b31",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.mapEffect(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"2b4292ac-2c18-f9e0-8dac-bd84007270ae",
									true,
								},
								
								{
									"271b8b3a-21e1-f735-a309-650872f9560d",
									true,
								},
							},
							name = "Capture Death gaze eye position",
							uuid = "af7f8f63-6c8f-9adc-9954-cc04064eac11",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "2b4292ac-2c18-f9e0-8dac-bd84007270ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not not(eventArgs.a1>=0 and eventArgs.a1<=7 and eventArgs.a2==1 and eventArgs.a3==2)",
							uuid = "271b8b3a-21e1-f735-a309-650872f9560d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P5/Death",
				eventType = 14,
				loop = true,
				mechanicTime = 1085.1,
				name = "[LPDU DSR] P5 Death gaze eye position",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 40,
				timerStartOffset = -3,
				uuid = "49ce1758-6020-292d-ada7-883b62b5c526",
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
				name = "LPDU Draws",
				uuid = "299b1733-969c-ff3c-8dce-468d4b7a41a5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P6",
				uuid = "f55fc082-a223-408b-9527-9640764108b6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P6",
				name = "Guidance",
				uuid = "17525347-079a-07c6-94b5-78e644d32ca8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('vow')",
							conditions = 
							{
								
								{
									"8d05ecc4-3442-3733-8f53-10c362f7611e",
									true,
								},
								
								{
									"39be473b-a408-83f6-a888-b8d84a8eb2a2",
									true,
								},
							},
							name = "P6 Mortal Vow handoffs",
							uuid = "27b4c302-1f99-a411-a2b6-91889eb63642",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "8d05ecc4-3442-3733-8f53-10c362f7611e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['vow']or s.scopeActive('vow')))",
							name = "P6 Mortal Vow handoffs active",
							uuid = "39be473b-a408-83f6-a888-b8d84a8eb2a2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P6/Guidance",
				loop = true,
				mechanicTime = 1243.1,
				name = "[LPDU DSR] P6 Mortal Vow handoffs",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 160,
				timerStartOffset = -10,
				uuid = "21037c5a-4d29-2072-9149-77506815e8c1",
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
				name = "LPDU Draws",
				uuid = "94b42237-f225-0906-b879-1f0ffd04746d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.channel(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"d59a8e5e-f950-7af3-8448-ab00e80acf57",
									true,
								},
								
								{
									"d05751fa-bd47-1465-b00d-e756f51c18fd",
									true,
								},
							},
							name = "Double dragon channels",
							uuid = "54fe5802-1b0a-6faf-b950-ecdc8aea22da",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "d59a8e5e-f950-7af3-8448-ab00e80acf57",
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
								26409,
								27937,
								27939,
								27940,
								27942,
								27943,
								27947,
								27948,
								27949,
								27950,
								27954,
								27955,
								27956,
								27957,
								27966,
								27967,
								27968,
								27969,
								27971,
								27973,
								27974,
							},
							uuid = "d05751fa-bd47-1465-b00d-e756f51c18fd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 1293.5,
				name = "[LPDU DSR] Double dragon channels",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 225,
				timerStartOffset = -100,
				uuid = "7288e145-a1a6-3677-bcd2-db5a17cd540c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P6",
				uuid = "1e0598c8-5997-26d3-a1a9-aa39a980080a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P6",
				name = "Guidance",
				uuid = "2038008b-13c1-dcc4-b0b0-a909d1f93fff",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP6')",
							conditions = 
							{
								
								{
									"aff5fcec-86a1-48b3-93d3-436f9d7ff333",
									true,
								},
								
								{
									"717224f4-dee5-f231-8ca7-bb37584c6e8c",
									true,
								},
							},
							name = "P6 wing and Akh Afah guidance",
							uuid = "caf55a6c-91dc-1018-9122-d3262986067d",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "aff5fcec-86a1-48b3-93d3-436f9d7ff333",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP6']or s.scopeActive('generalP6')))",
							name = "P6 wing and Akh Afah guidance active",
							uuid = "717224f4-dee5-f231-8ca7-bb37584c6e8c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P6/Guidance",
				loop = true,
				mechanicTime = 1293.5,
				name = "[LPDU DSR] P6 breaths, wings and Wroth guidance",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 225,
				timerStartOffset = -100,
				uuid = "f0d3a9ef-efac-fb85-becb-02d27c398fb9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.tether(eventArgs)end;self.used=true",
							conditions = 
							{
								
								{
									"6a7a2f0e-1483-8e58-bfb0-d55aa8ed9cbd",
									true,
								},
								
								{
									"dfabada4-5e69-27cd-8181-d6f019150d2f",
									true,
								},
							},
							name = "Capture actual dragon tether",
							uuid = "a3cfaa1f-7286-4852-9674-9824e624927a",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "6a7a2f0e-1483-8e58-bfb0-d55aa8ed9cbd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local id=eventArgs.newTetherID;return not not(id==194 or id==195 or id==196)",
							dequeueIfLuaFalse = true,
							name = "Fire / ice tether",
							uuid = "dfabada4-5e69-27cd-8181-d6f019150d2f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P6",
				eventType = 15,
				loop = true,
				mechanicTime = 1293.5,
				name = "[LPDU DSR] P6 fire and ice tether changes",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = 110,
				timerStartOffset = -100,
				uuid = "fb9ef5aa-182b-a613-b195-4ab2bb3eb8fc",
				version = 2,
			},
		},
	},
	[244] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "7163ab8e-ddef-c209-a8fc-35a179d311a0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.channel(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"22c81649-63a9-4ac5-aba8-aedd5568e55d",
									true,
								},
								
								{
									"32494a76-fbd3-09f7-8322-a0468cb0ccb5",
									true,
								},
							},
							name = "Dragonking channels",
							uuid = "b97a3c17-8e0e-8c9d-b2af-5fcac5bf85df",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "22c81649-63a9-4ac5-aba8-aedd5568e55d",
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
								28051,
								29452,
								29453,
								29454,
								28058,
								28114,
								28115,
								28059,
								28060,
							},
							uuid = "32494a76-fbd3-09f7-8322-a0468cb0ccb5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 1553,
				name = "[LPDU DSR] Dragonking channels",
				timeRange = true,
				timelineIndex = 244,
				timerEndOffset = 340,
				timerStartOffset = -30,
				uuid = "f8b10264-44f1-488e-a207-465e5d2d6b92",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.buff(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"c72ae8bf-eb00-3da6-aa94-ade144dcea10",
									true,
								},
								
								{
									"19bfb348-9c34-1503-a275-572b8ae185c6",
									true,
								},
							},
							name = "Dragonking exact sword status",
							uuid = "76a61437-5fbe-aeec-861b-4b2c5b61607c",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "c72ae8bf-eb00-3da6-aa94-ade144dcea10",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventBuffID = 2056,
							uuid = "19bfb348-9c34-1503-a275-572b8ae185c6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 8,
				loop = true,
				mechanicTime = 1553,
				name = "[LPDU DSR] Dragonking exact sword status",
				timeRange = true,
				timelineIndex = 244,
				timerEndOffset = 340,
				timerStartOffset = -30,
				uuid = "b8cd7a87-bdd5-76df-9747-28d280958213",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if s then s.channel(eventArgs)end\nself.used=true",
							conditions = 
							{
								
								{
									"f0620331-e89e-e0c4-af85-d9f27d3c1abd",
									true,
								},
								
								{
									"f1ee4ba8-c8ea-e2ad-bec7-ac327e44c6e2",
									true,
								},
							},
							name = "Enrage tower countdowns",
							uuid = "cb3fdd1a-28a1-7d56-a3eb-85836958221d",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "f0620331-e89e-e0c4-af85-d9f27d3c1abd",
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
								29455,
								29456,
								29457,
							},
							uuid = "f1ee4ba8-c8ea-e2ad-bec7-ac327e44c6e2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				loop = true,
				mechanicTime = 1553,
				name = "[LPDU DSR] Enrage tower countdowns",
				timeRange = true,
				timelineIndex = 244,
				timerEndOffset = 340,
				uuid = "36445cc8-f978-dd49-a197-58c1338722ef",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P7",
				uuid = "fdb94a16-364e-e997-b08c-32b71971d3e8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P7",
				name = "Guidance",
				uuid = "348cae09-6f39-26eb-b3d8-f96c534cbaa3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('sword')",
							conditions = 
							{
								
								{
									"ecd7bafe-434e-c57a-b7e8-893cce8ccfa4",
									true,
								},
								
								{
									"df5ab272-af5c-dced-8211-846ebd1077e0",
									true,
								},
							},
							name = "P7 fire ice sword state",
							uuid = "4e2c5c61-4220-6bb2-9518-659fe28155b7",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "ecd7bafe-434e-c57a-b7e8-893cce8ccfa4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['sword']or s.scopeActive('sword')))",
							name = "P7 fire ice sword state active",
							uuid = "df5ab272-af5c-dced-8211-846ebd1077e0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1553,
				name = "[LPDU DSR] P7 fire ice sword state",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 244,
				timerEndOffset = 340,
				timerStartOffset = -30,
				uuid = "48fbffe4-aa09-d982-ac97-237bfd4c5551",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('trinity')",
							conditions = 
							{
								
								{
									"3a336c2d-b222-c599-a59c-943f671f0b9b",
									true,
								},
								
								{
									"fa9f858a-fa54-0a47-bce0-8437182ac2cc",
									true,
								},
							},
							name = "P7 Trinity bait order",
							uuid = "b0feb6d5-4ce6-0a1a-a0f2-9a258bce882f",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "3a336c2d-b222-c599-a59c-943f671f0b9b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['trinity']or s.scopeActive('trinity')))",
							name = "P7 Trinity bait order active",
							uuid = "fa9f858a-fa54-0a47-bce0-8437182ac2cc",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1553,
				name = "[LPDU DSR] P7 Trinity bait order",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 244,
				timerEndOffset = 340,
				timerStartOffset = -10,
				uuid = "d2d33201-e28b-befd-8c1c-32d3e6a84949",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('exa')",
							conditions = 
							{
								
								{
									"c52cf39c-c038-de49-bcd8-e056f1e00753",
									true,
								},
								
								{
									"8c4bf9be-f3ea-3c0c-9da1-74ac18e2fa27",
									true,
								},
							},
							name = "P7 Exaflare 1 steps",
							uuid = "b9de9ce3-a289-a639-be49-ef2d1a6d55a8",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "c52cf39c-c038-de49-bcd8-e056f1e00753",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['exa']or s.scopeActive('exa')))",
							name = "P7 Exaflare 1 steps active",
							uuid = "8c4bf9be-f3ea-3c0c-9da1-74ac18e2fa27",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1553,
				name = "[LPDU DSR] P7 Exaflare 1 steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 244,
				timerEndOffset = 28,
				timerStartOffset = -8,
				uuid = "b326e877-d592-302f-b194-cfe0691668e0",
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
				name = "LPDU Draws",
				uuid = "48d09373-7219-8cae-a0d1-329b97f60bc0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P7",
				uuid = "7f3d20c9-a761-585e-b602-8dac613938c8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P7",
				name = "Guidance",
				uuid = "8d4d5df1-fa46-4e3d-9f2f-5abc120e0bb3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP7')",
							conditions = 
							{
								
								{
									"dd6bb13b-281d-7316-af49-6ac8ad66ce43",
									true,
								},
								
								{
									"97b98301-c600-724a-96a1-438bc5ca7318",
									true,
								},
							},
							name = "P7 Akh Morn 1 tower",
							uuid = "1cab1775-5bea-398b-b418-db36129435f8",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "dd6bb13b-281d-7316-af49-6ac8ad66ce43",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP7']or s.scopeActive('generalP7')))",
							name = "P7 Akh Morn 1 tower active",
							uuid = "97b98301-c600-724a-96a1-438bc5ca7318",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1573.9,
				name = "[LPDU DSR] P7 Akh Morn 1 tower",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 248,
				timerEndOffset = 23,
				timerStartOffset = -10,
				uuid = "942de7bd-a190-ba1e-a9af-788c88aa1234",
				version = 2,
			},
		},
	},
	[252] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "8e250f92-c18c-450c-ab93-47777c0a93a8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P7",
				uuid = "976ecab8-ebc4-566e-83eb-59941cb65938",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P7",
				name = "Guidance",
				uuid = "53e097f5-cace-aecc-adf9-59acfd8b10e0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('giga')",
							conditions = 
							{
								
								{
									"470585ae-0051-1d67-b674-d60253ed5425",
									true,
								},
								
								{
									"5c02c53d-8f2e-4f06-9220-bc58e6af5953",
									true,
								},
							},
							name = "P7 Gigaflare 1 steps",
							uuid = "531a41ef-0a8c-55ce-84db-8c144d58eee3",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "470585ae-0051-1d67-b674-d60253ed5425",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['giga']or s.scopeActive('giga')))",
							name = "P7 Gigaflare 1 steps active",
							uuid = "5c02c53d-8f2e-4f06-9220-bc58e6af5953",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1600.8,
				name = "[LPDU DSR] P7 Gigaflare 1 steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 252,
				timerEndOffset = 28,
				timerStartOffset = -10,
				uuid = "2eb176af-2470-8df9-bc2a-25c2a413ed49",
				version = 2,
			},
		},
	},
	[257] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "56054c38-0397-169e-99b2-029ef19b18d2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P7",
				uuid = "0d79f2cc-e2ec-f206-8981-8cef7f9efdec",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P7",
				name = "Guidance",
				uuid = "faac4fae-a2b0-3af0-a537-f2aa623137e2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('exa')",
							conditions = 
							{
								
								{
									"402a78e3-e8e1-62dd-88db-b14fc02eb609",
									true,
								},
								
								{
									"9c66464b-6065-fef3-9ae6-919838054ef3",
									true,
								},
							},
							name = "P7 Exaflare 2 steps",
							uuid = "92307372-f5e3-74b4-a079-fffaa5adda25",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "402a78e3-e8e1-62dd-88db-b14fc02eb609",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['exa']or s.scopeActive('exa')))",
							name = "P7 Exaflare 2 steps active",
							uuid = "9c66464b-6065-fef3-9ae6-919838054ef3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1632,
				name = "[LPDU DSR] P7 Exaflare 2 steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 257,
				timerEndOffset = 28,
				timerStartOffset = -8,
				uuid = "1c46f74b-04a7-e4b5-bfe3-8b4ff463f357",
				version = 2,
			},
		},
	},
	[261] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "7528faaa-8eb9-d166-84a2-cb40e397aae6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P7",
				uuid = "a27e043a-cfab-938d-9413-e09a4575ccb2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P7",
				name = "Guidance",
				uuid = "ab6f6f2d-e165-5fec-9fad-6ad14c683a36",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP7')",
							conditions = 
							{
								
								{
									"36a4131a-4842-e17d-9317-eaafb32f7728",
									true,
								},
								
								{
									"7ba0acba-1e9f-9e7e-99e2-55e9e6a05d31",
									true,
								},
							},
							name = "P7 Akh Morn 2 tower",
							uuid = "89675d4b-bf41-f210-85bc-49902cd20197",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "36a4131a-4842-e17d-9317-eaafb32f7728",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP7']or s.scopeActive('generalP7')))",
							name = "P7 Akh Morn 2 tower active",
							uuid = "7ba0acba-1e9f-9e7e-99e2-55e9e6a05d31",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1652.9,
				name = "[LPDU DSR] P7 Akh Morn 2 tower",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 261,
				timerEndOffset = 23,
				timerStartOffset = -10,
				uuid = "8daf733e-a94b-e2fb-847b-3f8518f06719",
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
				name = "LPDU Draws",
				uuid = "1c670dbb-49f0-f083-8f13-99a2615dca65",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P7",
				uuid = "696b5235-71c3-7612-8616-e2af4218a417",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P7",
				name = "Guidance",
				uuid = "7f24a48d-b713-e305-bb40-ca4127aef4eb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('giga')",
							conditions = 
							{
								
								{
									"c2368c6f-a48c-7da4-a149-473dcabc9d51",
									true,
								},
								
								{
									"0458f37f-f1ea-e7c2-806c-83c204ef8c36",
									true,
								},
							},
							name = "P7 Gigaflare 2 steps",
							uuid = "5f8bc49f-c474-4121-b3d2-1679c0122e7c",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "c2368c6f-a48c-7da4-a149-473dcabc9d51",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['giga']or s.scopeActive('giga')))",
							name = "P7 Gigaflare 2 steps active",
							uuid = "0458f37f-f1ea-e7c2-806c-83c204ef8c36",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1680.9,
				name = "[LPDU DSR] P7 Gigaflare 2 steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 265,
				timerEndOffset = 28,
				timerStartOffset = -10,
				uuid = "4f6b7a30-8ad8-7625-a0ec-0ad56a47be8b",
				version = 2,
			},
		},
	},
	[270] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "d92a1ab1-11a9-cb57-b27a-5d670255ca80",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P7",
				uuid = "fa9d5225-b39a-63a3-85cf-64b61d6314b5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P7",
				name = "Guidance",
				uuid = "d1e8fe63-d574-bda4-9d27-ae700f459196",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('exa')",
							conditions = 
							{
								
								{
									"48717194-8932-c73a-bab5-e3f2a638c56f",
									true,
								},
								
								{
									"b09b92d0-f655-ecaf-a680-0db8790dcb3a",
									true,
								},
							},
							name = "P7 Exaflare 3 steps",
							uuid = "c61dc55e-a52d-35fa-a27b-d8993eb3cd46",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "48717194-8932-c73a-bab5-e3f2a638c56f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['exa']or s.scopeActive('exa')))",
							name = "P7 Exaflare 3 steps active",
							uuid = "b09b92d0-f655-ecaf-a680-0db8790dcb3a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1712,
				name = "[LPDU DSR] P7 Exaflare 3 steps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 270,
				timerEndOffset = 28,
				timerStartOffset = -8,
				uuid = "abb977c9-15a1-ef06-8368-400a89816416",
				version = 2,
			},
		},
	},
	[274] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "df56b834-f420-7e58-929d-482d160bd768",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws",
				name = "P7",
				uuid = "99d3c5c1-f44c-ff99-9f53-d7906580e4b3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "LPDU Draws/P7",
				name = "Guidance",
				uuid = "4ef01bdf-9469-410e-81be-8a9375a8df43",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.dsrLPDU;if not s or s.version~=14 then self.used=true;return end\nself.used=s.runScope('generalP7')",
							conditions = 
							{
								
								{
									"9e92eac4-9206-f64a-834a-0cfe7057ef69",
									true,
								},
								
								{
									"7dfd7b3c-5714-ea7b-a63b-b73fd782e549",
									true,
								},
							},
							name = "P7 Akh Morn 3 tower",
							uuid = "38b1a84e-63b8-782e-8851-b82c56329318",
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
							localmapid = 968,
							name = "DSR only",
							uuid = "9e92eac4-9206-f64a-834a-0cfe7057ef69",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.dsrLPDU;return not not(s and s.version==14 and(s.scopeRunning['generalP7']or s.scopeActive('generalP7')))",
							name = "P7 Akh Morn 3 tower active",
							uuid = "7dfd7b3c-5714-ea7b-a63b-b73fd782e549",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws/P7/Guidance",
				loop = true,
				mechanicTime = 1732.9,
				name = "[LPDU DSR] P7 Akh Morn 3 tower",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 274,
				timerEndOffset = 23,
				timerStartOffset = -10,
				uuid = "09cb4ec4-a470-31f7-b163-70a1968ea2a8",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "dsw",
	version = "1.0.5",
}



return tbl
function onCreate()
	
	makeLuaSprite('bg','characters/zanta/bg',-52.6,86.65)
	makeAnimatedLuaSprite('gate','characters/zanta/gate',1099.85,-3.7)
	addAnimationByIndices('gate','close','gate','0',24)
	addAnimationByIndices('gate','open','gate','1',24)
	objectPlayAnimation('gate','close')
	addLuaSprite('bg',false)





	makeAnimatedLuaSprite('santa','characters/zanta/terence',1500.65,-190.95)

	addAnimationByPrefix('santa','idle','terence',24,false)
	addAnimationByPrefix('santa','alt','terence hurt',24,false)
	addAnimationByPrefix('santa','hurt','terence alt',24,false)
	addAnimationByPrefix('santa','bald','terence bald',24,false)
	addLuaSprite('santa',false)
	objectPlayAnimation('santa','idle')








	addLuaSprite('gate',false)

	makeAnimatedLuaSprite('tom','characters/zanta/chuck',130.85,180.25)

	addAnimationByPrefix('tom','idle','chuck idle',24,false)
	addAnimationByPrefix('tom','singLEFT','chuck slingshot left',24,false)
	addAnimationByPrefix('tom','singDOWN','chuck slingshot down',24,false)
	addAnimationByPrefix('tom','singUP','chuck slingshot up',24,false)
	addAnimationByPrefix('tom','singRIGHT','chuck slingshot right',24,false)
	addAnimationByPrefix('tom','idleboobs','chuck slingshot idle',24,false)
	addAnimationByPrefix('tom','shoot','chuck shoot',24,false)
	addAnimationByPrefix('tom','shot','chuck shot',24,false)


	addLuaSprite('tom',true)



	makeAnimatedLuaSprite('matt','characters/zanta/bomb',-120,100)
	addAnimationByIndices('matt','idle','Bomb Idle','0',24)
	addAnimationByIndices('matt','hm','Bomb Idle','1',24)
	addLuaSprite('matt',true)

	makeLuaSprite('bartop','',0,0)
	makeGraphic('bartop',1280,100,'000000')
	addLuaSprite('bartop',true)

	makeLuaSprite('barbot','',0,620)
	makeGraphic('barbot',1280,100,'000000')
	addLuaSprite('barbot',true)
	setScrollFactor('bartop',0,0)
	setScrollFactor('barbot',0,0)
	setObjectCamera('bartop','hud')
	setObjectCamera('barbot','hud')
end

local originy = 0
function onCreatePost()
	originy = getProperty('boyfriend.y')

	setProperty('gf.visible',false)
	
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
	end


	--triggerEvent('Camera Follow Pos','900','360')
	setProperty('camFollow.y',393)
	setProperty('camFollow.x',900)
	setProperty('camPos.x',0)
	setProperty('camPos.y',0)
	setProperty('camGame.scroll.x',640)
	setProperty('camGame.scroll.y',370)


	

end


function goodNoteHit(id,d,t,s)

	if getPropertyFromGroup('notes',id,'gfNote') then
	tomAnim(d)
	end

end
function opponentNoteHit(id,d,t,s)

	if getPropertyFromGroup('notes',id,'gfNote') then
	tomAnim(d)
	end


end
function tomAnim(anim)

	anims = {'singLEFT','singDOWN','singUP','singRIGHT'}
	setProperty('tom.offset.y',-20)
	doTweenY('tomss','tom.offset',0,0.08,'linear')
	objectPlayAnimation('tom',anims[anim+1])
	runTimer('tomsing',(stepCrochet/1000)*6.1)

end
function onUpdatePost()
	--setProperty('camHUD.zoom',0.8)


end
function onTimerCompleted(t,l,ll)

	if t == "tomsing" then
		objectPlayAnimation('tom','idleboobs')
	end

end
function onEvent(n,v1,v2)

if n == "duet" then

	duet = v1 == "true"

end

if n == "red sing" then
setProperty('health',getProperty('health')+0.01)
		setProperty('boyfriend.y',originy+20)
		doTweenY('wifjwif','boyfriend',originy,0.08,'linear')

end
if n == "chuck sing" then
tomAnim(tonumber(v1))

end

end
function onBeatHit()
	if duet then
			triggerEvent('Camera Follow Pos','1000','393')

	else
		if mustHitSection then
		
			triggerEvent('Camera Follow Pos','600','393')

		else
			triggerEvent('Camera Follow Pos','1440','393')

		end
	end

	setProperty('matt.y',100+40)
	doTweenY('mattbounce','matt',100,0.15,'circOut')

	setProperty('tom.y',180.25+30)
	doTweenY('tombounce','tom',180.25,0.15,'cubeOut')


end
function onCreate()

	makeLuaSprite('sky', 'Cobalt Plateaus/sky', -1076, -482);
	setScrollFactor('sky', 0.6, 0.6);
	
	makeLuaSprite('clouds', 'Cobalt Plateaus/clouds', -1085, -95);
	setScrollFactor('clouds', 0.6, 0.6);
	
	makeLuaSprite('ground2', 'Cobalt Plateaus/ground2', -1076, 194);
	setScrollFactor('ground2', 0.7, 0.7);
	
	makeLuaSprite('woods', 'Cobalt Plateaus/woods', -858, -128);
	setScrollFactor('woods', 0.6, 0.6);
	
	makeLuaSprite('ground', 'Cobalt Plateaus/ground', -1099, 285);
	
	makeAnimatedLuaSprite('bomb', 'Cobalt Plateaus/Bomb', 140, 142);

	addAnimationByPrefix('bomb', 'idle', 'idle', 24, false);
	addAnimationByPrefix('bomb', 'idle2', 'look back idle', 24, true);
	addAnimationByPrefix('bomb', 'idle3', 'confused idle', 24, false);
	addAnimationByPrefix('bomb', 'look back', 'look back', 24, false);
	addAnimationByPrefix('bomb', 'shocked', 'shocked', 24, false);
	addAnimationByPrefix('bomb', 'surprised', 'surprised', 24, false);
	addAnimationByPrefix('bomb', 'confused', 'confused', 24, false);

	

	addLuaSprite('sky', false);
	addLuaSprite('clouds', false);
	addLuaSprite('ground2', false);
	addLuaSprite('woods', false);
	addLuaSprite('ground', false);
	addLuaSprite('bomb');	
end

function onStepHit()
	if curStep == 192 then
	   objectPlayAnimation('bomb', 'shocked')
	end
	if curStep == 196 then
	   objectPlayAnimation('bomb', 'look back')
	   setProperty('bomb.y', 154);
	end
	if curStep == 197 then
	   objectPlayAnimation('bomb', 'idle2')
	   setProperty('bomb.y', 154);
	end
end

function onBeatHit()
	if curBeat %2 == 0 then
	   objectPlayAnimation('bomb', 'idle')
	end
	if curBeat %2 == 0 and curStep > 198 then
	   objectPlayAnimation('bomb', 'idle2')
	   setProperty('bomb.y', 154);
	end
end

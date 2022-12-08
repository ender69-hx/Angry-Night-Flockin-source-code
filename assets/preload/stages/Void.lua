function onCreate()
	-- background shit
	makeLuaSprite('voidbg', 'voidbg', -580, -240);
	setScrollFactor('voidbg', 0.9, 0.9);
	
	makeLuaSprite('voidfr', 'voidfr', -540, -200);
	setScrollFactor('voidfr', 1.0, 1.0);
	scaleObject('voidfr', 1.0, 1.0);

	addLuaSprite('voidbg', false);
	addLuaSprite('voidfr', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
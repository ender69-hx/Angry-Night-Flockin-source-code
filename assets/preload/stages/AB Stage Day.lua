function onCreate()
	-- background shit
	makeLuaSprite('stagedaybg', 'stagedaybg', -580, -240);
	setScrollFactor('stagedaybg', 0.9, 0.9);
	
	makeLuaSprite('stagedayfr', 'stagedayfr', -540, -200);
	setScrollFactor('stagedayfr', 1.0, 1.0);
	scaleObject('stagedayfr', 1.0, 1.0);

	addLuaSprite('stagedaybg', false);
	addLuaSprite('stagedayfr', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
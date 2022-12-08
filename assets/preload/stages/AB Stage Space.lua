function onCreate()
	-- background shit
	makeLuaSprite('planetbg', 'planetbg', -600, -200);
	setScrollFactor('planetbg', 0.5, 0.5);
	
	makeLuaSprite('planetfront', 'planetfront', -440, -270);
	setScrollFactor('planetfront', 1.0, 1.0);
	scaleObject('planetfront', 1.0, 1.0);
	
    makeLuaSprite('atmofr', 'atmofr', -440, -270);
	setScrollFactor('atmofr', 1.0, 1.0);
	scaleObject('atmofr', 1.0, 1.0);
	
	addLuaSprite('planetbg', false);
	addLuaSprite('planetfront', false);
    addLuaSprite('atmofr', true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
package;

import flixel.FlxGame;
import openfl.Lib;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		Lib.current.addChild(new FlxGame(0, 0, Menu, 1, 60, 60, false, false));
		#if debug
		Lib.current.addChild(new FPS());
		#end
	}
}

package;

import entity.Enemy;
import entity.Player;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class Arena extends FlxState
{
	public static var background:FlxSprite;

	public static var player:Player;
	public static var enemies:Array<Enemy>;

	override public function create()
	{
		super.create();

		background = new FlxSprite();
		background.makeGraphic(FlxG.width, FlxG.height, 0xFF21A70C);
		background.screenCenter(XY);
		add(background);
	}

	override public function update(dt:Float)
	{
		super.update(dt);
	}
}

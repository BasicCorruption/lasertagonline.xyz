package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class Menu extends FlxState
{
	// declare all the visual objects
	public static var title:FlxText;
	public static var playButton:FlxButton;

	override public function create()
	{
		super.create();

		// initialize all the visual objects
		title = new FlxText(0, 0, 0, "Laser Tag Online").setFormat("res/fonts/Westminster.ttf", 60, FlxColor.WHITE, "center");
		title.screenCenter(X);
		add(title);
		playButton = new FlxButton(0, 0, "Play", function()
		{
			FlxG.switchState(null);
		});
		playButton.screenCenter(XY);
		playButton.y += 0.2 * (FlxG.height / 2);
		add(playButton);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}

package;

import flixel.FlxState;
import flixel.addons.text.FlxTextField;
import flixel.addons.ui.FlxInputText;
import flixel.input.FlxInput;
import flixel.util.FlxColor;

class GameSelector extends FlxState
{
	public static var textInput:FlxInputText;

	override public function create()
	{
		super.create();

		textInput = new FlxInputText(0, 0, 0, "Enter game code", 32, FlxColor.WHITE, FlxColor.BLACK);
		add(textInput);
	}

	override public function update(dt:Float)
	{
		super.update(dt);
	}
}

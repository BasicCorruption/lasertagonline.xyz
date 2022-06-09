package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.addons.text.FlxTextField;
import flixel.addons.ui.FlxInputText;
import flixel.input.FlxInput;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class GameSelector extends FlxState
{
	public static var textInput:FlxInputText;
	public static var submitButton:FlxButton;

	override public function create()
	{
		super.create();

		textInput = new FlxInputText(0, 0, 0, "Enter game code: ", 32, FlxColor.WHITE, FlxColor.BLACK);
		textInput.screenCenter(XY);
		textInput.y -= FlxG.height / 4;
		submitButton = new FlxButton(0, 0, "Submit", function()
		{
			processInput(textInput.textField.text);
		});
		submitButton.screenCenter(XY);
		submitButton.scale.set(3, 4);
		submitButton.label.size = Std.int((submitButton.scale.x * submitButton.scale.y) * 2.5);
		submitButton.label.offset.y += submitButton.height / 2;
		submitButton.label.font = Fonts.WESTMINSTER;
		submitButton.getHitbox().width = submitButton.width * submitButton.scale.x;
		submitButton.getHitbox().height = submitButton.height * submitButton.scale.y;
		// submitButton.y += FlxG.height / 4;

		add(textInput);
		add(submitButton);
	}

	override public function update(dt:Float)
	{
		super.update(dt);
	}

	public function processInput(text:String)
	{
		var code = text.substring(17);
		if (code.length != 6)
		{
			trace("Invalid game code: " + code);
		}
		// make sure the code is all numbers
		var valiation = ~/^[0-9]+$/;
		if (valiation.match(code))
		{
			trace("Valid game code: " + code);
		}
		else
		{
			trace("Invalid game code: " + code);
		}
	}
}

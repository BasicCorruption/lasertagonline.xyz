package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.system.FlxSound;
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

		#if cpp
		switch (Config.MUSIC_SELECTION)
		{
			case METAL:
				FlxG.sound.playMusic(AssetPaths.metal__wav, Config.MUSIC_VOLUME, true);
			case EIGHTBIT:
			// FlxG.sound.playMusic(AssetPaths.eightbit__wav, Config.MUSIC_VOLUME, true);
			default:
				FlxG.sound.playMusic(AssetPaths.metal__wav, Config.MUSIC_VOLUME, true);
		}
		#else
		switch (Config.MUSIC_SELECTION)
		{
			case METAL:
				FlxG.sound.playMusic(AssetPaths.metal__mp3, Config.MUSIC_VOLUME, true);
			case EIGHTBIT:
			// FlxG.sound.playMusic(AssetPaths.eightbit__mp3, Config.MUSIC_VOLUME, true);
			default:
				FlxG.sound.playMusic(AssetPaths.metal__mp3, Config.MUSIC_VOLUME, true);
		}
		#end

		// initialize all the visual objects
		title = new FlxText(0, 0, 0, "Laser Tag Online").setFormat(Fonts.WESTMINSTER, 60, FlxColor.WHITE, "center");
		title.screenCenter(X);
		add(title);
		playButton = new FlxButton(0, 0, "Play", function()
		{
			FlxG.switchState(new Arena());
		});
		playButton.screenCenter(XY);
		playButton.y += 0.2 * (FlxG.height / 2);
		playButton.scale.set(3, 4);
		playButton.label.size = Std.int((playButton.scale.x * playButton.scale.y) * 2.5);
		playButton.label.offset.y += playButton.height / 2;
		playButton.label.font = Fonts.WESTMINSTER;
		playButton.getHitbox().width = playButton.width * playButton.scale.x;
		playButton.getHitbox().height = playButton.height * playButton.scale.y;
		add(playButton);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}

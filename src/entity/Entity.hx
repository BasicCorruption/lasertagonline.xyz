package entity;

import flixel.FlxSprite;

class Entity extends FlxSprite
{
	/*
	 * The entity's current horizontal position.
	 */
	public static var posX:Int;
	/*
	 * The entity's current vertical position.
	 */
	public static var posY:Int;

	// abilities
	/*
	 * Does the entity have a laser?
	 */
	public static var hasLaser:Bool;
	/*
	 * Entity's current laser power.
	 */
	public static var laserPower:Float; // this is the power of the laser in milliwatts
	/*
	 * Does the entity have a shield?
	 */
	public static var hasShield:Bool;
	/*
	 * Entity's current shield power.
	 */
	public static var shieldPower:Float; // this is the power of the shield in light absorbtion per second in joules

	// appearance
	public static var skin:Skin;
}

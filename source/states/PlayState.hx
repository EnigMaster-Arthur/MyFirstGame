package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	// Variables
	public var up:Int;
	public var down:Int;
	public var right:Int;
	public var left:Int;
	public var myText = new FlxText();
	public var lastInput = new FlxText();
	public var lastInputNotFlx:String = 'No last input.';

	// Functions
	override public function create()
	{
		super.create();
		// Number config
		up = 0;
		left = 0;
		right = 0;
		down = 0;

		// Text config
		myText.text = 'UP Number: ${up}\nDOWN Number: ${down}\nLEFT Number: ${left}\nRIGHT Number: ${right}';
		myText.color = FlxColor.CYAN;
		myText.size = 32;
		myText.screenCenter();

		add(myText);

		lastInput.text = 'No last input.';
		lastInput.color = FlxColor.WHITE;
		lastInput.size = 16;
		lastInput.x = 320;
		lastInput.y = 0;

		add(lastInput);
	}

	override public function update(elapsed:Float)
	{
		// Input config
		if (FlxG.keys.justPressed.UP)
		{
			up += 1;
			lastInputNotFlx = "Up";
			lastInput.color = FlxColor.LIME;
			lastInput.x = 280;
			lastInput.y = 0;
		}
		if (FlxG.keys.justPressed.DOWN)
		{
			down += 1;
			lastInputNotFlx = "Down";
			lastInput.color = FlxColor.CYAN;
			lastInput.x = 280;
			lastInput.y = 400;
		}
		if (FlxG.keys.justPressed.RIGHT)
		{
			right += 1;
			lastInputNotFlx = "Right";
			lastInput.color = FlxColor.MAGENTA;
			lastInput.x = 520;
			lastInput.y = 240;
		}
		if (FlxG.keys.justPressed.LEFT)
		{
			left += 1;
			lastInputNotFlx = "LEFT";
			lastInput.color = FlxColor.RED;
			lastInput.x = 10;
			lastInput.y = 240;
		}
		// Text update
		myText.text = 'UP Number: ${up}\nDOWN Number: ${down}\nLEFT Number: ${left}\nRIGHT Number: ${right}';
		lastInput.text = 'Last Input:\n${lastInputNotFlx}';
		super.update(elapsed);
	}
}

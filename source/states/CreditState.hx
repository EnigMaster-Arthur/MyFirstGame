package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class CreditState extends FlxState
{
	public var n:Int = 0;

	override public function create()
	{
		var initText = new FlxText();
		initText.text = "Made by: EnigMaster/Arthur";
		initText.color = FlxColor.LIME;
		initText.size = 32;
		initText.screenCenter();
		super.create();
		add(initText);
	}

	override public function update(elapsed:Float)
	{
		if (n >= 50)
		{
			FlxG.switchState(new PlayState());
		}
		n += 1;
		super.update(elapsed);
	}
}

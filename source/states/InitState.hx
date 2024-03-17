package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class InitState extends FlxState
{
	public var number:Int = 0;
	public var ntwo:Int = 1;
	public var initText = new FlxText();
	public var color = FlxColor.CYAN;

	override public function create()
	{
		initText.text = "Press\nSpace\nTo Start!";
		initText.color = color;
		initText.size = 32;
		initText.screenCenter();
		super.create();
		add(initText);
	}

	override public function update(elapsed:Float)
	{
		number += 1;
		updateNumber();
		if (FlxG.keys.justPressed.SPACE)
		{
			FlxG.switchState(new CreditState());
		}
		super.update(elapsed);
	}

	public function updateNumber()
	{
		if (number >= 50)
		{
			number = 0;
			NPL();
			ntwo += 1;
		}
	}

	public function NPL()
	{
		if (ntwo == 2)
		{
			color = FlxColor.RED;
			ntwo = 0;
		}
		else if (ntwo == 1)
		{
			color = FlxColor.CYAN;
		}
	}
}

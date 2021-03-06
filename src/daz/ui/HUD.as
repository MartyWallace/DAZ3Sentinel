package daz.ui
{
	
	import sentinel.gameplay.states.GameplayState;
	import sentinel.gameplay.ui.BaseUI;
	
	
	public class HUD extends BaseUI
	{
		
		private var _healthbar:Healthbar;
		private var _counter:KillCounter;
		private var _gunDisplay:GunDisplay;
		
		
		protected override function added(to:GameplayState):void
		{
			_gunDisplay = new GunDisplay();
			_healthbar = new Healthbar();
			_counter = new KillCounter();
			
			add(_gunDisplay);
			add(_healthbar);
			add(_counter);
			
			_gunDisplay.x = viewport.width;
			_gunDisplay.y = viewport.height;
			
			_healthbar.x = viewport.width - _healthbar.graphics.width - 10;
			_healthbar.y = viewport.height - _healthbar.graphics.height - 10;
			
			_counter.x = viewport.center.x;
			_counter.y = 35;
		}
		
	}
	
}
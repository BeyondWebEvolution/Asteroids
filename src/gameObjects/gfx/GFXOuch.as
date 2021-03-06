package gameObjects.gfx{
	import core.Config;
	import core.Utils;
	public class GFXOuch extends GFX { 
		public function GFXOuch(x:Number=0, y:Number=0) 
		{
			super(x, y, Config.getSetting("text", "gfxouch"), Config.getNumber("size", "gfxouch"), Config.getColor("color", "gfxouch"));
			_vr = Config.getNumber("rotation", "gfxouch");
			
						
		}
		
		override public function update():void{
			super.update(); 
			scaleX *= 1.05; 
			scaleY *= 1.05; 
			alpha *= .92; 
			if (alpha < 0.02){
				_isAlive = false; 
				visible = false; 
			}
		}
	}

}
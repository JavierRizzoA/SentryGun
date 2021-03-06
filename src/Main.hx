import com.haxepunk.Engine;
import com.haxepunk.HXP;
import com.haxepunk.Sfx;

class Main extends Engine {

	public static var isMute:Bool;
	public static var mouseShooting:Bool;

	override public function init() {
		isMute = false;
		mouseShooting = true;
#if debug
		HXP.console.enable();
		HXP.scene = new scenes.GameScene();
#else
		HXP.scene = new scenes.MainMenu();
#end
	}

	public static function main() { 
		new Main();
	}

}
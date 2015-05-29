/**
 * Created by ALGTRO on 28.05.2015.
 */
package view.screen.command {
import com.gamua.flox.Flox;

import model.IClickStorage;
import model.vo.ClickEventData;

import robotlegs.bender.bundles.mvcs.Command;

public class ScreenChangeCommand extends Command {

    [Inject]
    public var clickData: ClickEventData;

    [Inject]
    public var clickStorage: IClickStorage;


    override public function execute():void
    {
        clickStorage.addClick( clickData );
    }

}
}

/**
 * Created by ALGTRO on 29.05.2015.
 */
package view.save.command {
import model.IClickStorage;

import robotlegs.bender.bundles.mvcs.Command;

public class SaveDataCommand extends Command
{

    [Inject]
    public var clickStorage: IClickStorage;


    override public function execute():void
    {
        clickStorage.saveData();
    }
}
}

/**
 * Created by ALGTRO on 29.05.2015.
 */
package view.save.mediator {
import robotlegs.bender.bundles.mvcs.Mediator;

import view.save.ISaveControl;
import view.save.signal.SaveDataSignal;

public class SaveControlMediator extends Mediator
{

    [Inject]
    public var saveDataSignal: SaveDataSignal;

    [Inject]
    public var control: ISaveControl;


    override public function destroy():void
    {
        super.destroy();
        if( control ) control.dispose();
        control = null;
    }


    override public function initialize():void
    {
        control.saveDataSignal.add( saveData );
    }


    private function saveData(): void
    {
        saveDataSignal.dispatch();
    }



}
}

/**
 * Created by ALGTRO on 29.05.2015.
 */
package view.save.ui {
import flash.events.MouseEvent;

import org.osflash.signals.ISignal;
import org.osflash.signals.Signal;

import spark.components.Button;

import view.save.ISaveControl;

public class SaveDataButton extends Button implements ISaveControl
{

    private var _signal: ISignal;


    public function SaveDataButton()
    {
        super();
        _signal = new Signal();
        addEventListener( MouseEvent.CLICK, saveData );
        label = "Save Data";
    }


    public function get saveDataSignal(): ISignal
    {
        return _signal;
    }


    public function dispose(): void
    {
        removeEventListener( MouseEvent.CLICK, saveData );

        if( _signal ) _signal.removeAll();
        _signal = null;
    }


    private function saveData ( event:MouseEvent ):void
    {
        _signal.dispatch();
    }

}
}

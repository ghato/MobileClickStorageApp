/**
 * Created by ALGTRO on 29.05.2015.
 */
package view.save {
import org.osflash.signals.ISignal;

import view.IView;

public interface ISaveControl  extends IView
{

    function get saveDataSignal():ISignal;

}
}

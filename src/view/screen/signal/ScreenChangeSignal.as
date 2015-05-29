/**
 * Created by ALGTRO on 28.05.2015.
 */
package view.screen.signal {
import model.vo.ClickEventData;

import org.osflash.signals.Signal;

public class ScreenChangeSignal extends Signal {

    public function ScreenChangeSignal() {
        super(ClickEventData);
    }

}
}

/**
 * Created by ALGTRO on 28.05.2015.
 */
package view.screen {
import org.osflash.signals.ISignal;

import spark.components.ViewNavigator;

import view.IView;

public interface IScreen extends IView
{

    function get changeScreenSignal(): ISignal;

    function get navigator(): ViewNavigator;

    function get type(): String;

}
}

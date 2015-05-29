/**
 * Created by ALGTRO on 28.05.2015.
 */
package view.screen.ui {

import flash.events.MouseEvent;

import flashx.textLayout.formats.VerticalAlign;

import org.osflash.signals.ISignal;
import org.osflash.signals.Signal;

import spark.components.Button;
import spark.components.View;
import spark.layouts.HorizontalAlign;
import spark.layouts.VerticalLayout;

import view.screen.IScreen;

public class BaseScreen extends View implements IScreen
{

    private var _type: String;
    private var _signal: ISignal;
    private var _button: Button;


    public function BaseScreen( buttonLabel:String, clickEventType:String )
    {
        _type = clickEventType;

        _signal = new Signal();

        var verticalLayout:VerticalLayout = new VerticalLayout();
        verticalLayout.gap = 25;
        verticalLayout.horizontalAlign = HorizontalAlign.CENTER;
        verticalLayout.verticalAlign = VerticalAlign.MIDDLE;

        layout = verticalLayout;

        _button = new Button();
        _button.label = buttonLabel;
        _button.addEventListener( MouseEvent.CLICK, changeScreen );

        addElement( _button );
    }


    protected function changeScreen( event:MouseEvent ):void
    {
        _signal.dispatch();
    }


    public function get changeScreenSignal(): ISignal
    {
        return _signal;
    }


    public function dispose(): void
    {
        if (_button) {
            _button.removeEventListener(MouseEvent.CLICK, changeScreen);
            removeElement(_button);
        }
        _button = null;

        if( _signal ) _signal.removeAll();
        _signal = null;
    }


    public function get type():String {
        return _type;
    }
}
}

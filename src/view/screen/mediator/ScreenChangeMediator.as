/**
 * Created by ALGTRO on 28.05.2015.
 */
package view.screen.mediator {
import model.enum.ClickEventType;
import model.vo.ClickEventData;

import robotlegs.bender.bundles.mvcs.Mediator;

import view.screen.IScreen;
import view.screen.signal.ScreenChangeSignal;
import view.screen.ui.MainScreen;

public class ScreenChangeMediator extends Mediator {

    [Inject]
    public var screenChangeSignal: ScreenChangeSignal;

    [Inject]
    public var screen: IScreen;


    override public function destroy():void
    {
        super.destroy();
        if( screen ) screen.dispose();
        screen = null;
    }


    override public function initialize():void
    {
        screen.changeScreenSignal.add( changeScreen );
    }


    private function changeScreen(): void
    {
        switch( screen.type )
        {
            case ClickEventType.GO_INTRO_CLICKED:
                screen.navigator.popToFirstView();
                break;

            case ClickEventType.GO_MAIN_CLICKED:
                screen.navigator.pushView( MainScreen );
                break;

            default:
                break;
        }

        screenChangeSignal.dispatch( new ClickEventData( screen.type ) );
    }

}
}

/**
 * Created by ALGTRO on 29.05.2015.
 */
package view.screen.ui {
import model.enum.ClickEventType;

import view.save.ui.SaveDataButton;

public class MainScreen extends BaseScreen
{

    private var _saveDataButton: SaveDataButton;


    public function MainScreen()
    {
        super( "Go to Intro", ClickEventType.GO_INTRO_CLICKED );
        title = "Main";

        _saveDataButton = new SaveDataButton();
        addElement( _saveDataButton )
    }


    override public function dispose():void
    {
        super.dispose();

        _saveDataButton.dispose();
        removeElement( _saveDataButton );
        _saveDataButton = null;
    }

}
}

/**
 * Created by ALGTRO on 29.05.2015.
 */
package view.screen.ui {
import model.enum.ClickEventType;

public class IntroScreen extends BaseScreen
{
    public function IntroScreen()
    {
        super( "Go to Main", ClickEventType.GO_MAIN_CLICKED );
        title = "Intro";
    }

}
}

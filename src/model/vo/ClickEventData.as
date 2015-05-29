/**
 * Created by ALGTRO on 28.05.2015.
 */
package model.vo {
public class ClickEventData {


    private var _type:String;


    public function ClickEventData( type:String )
    {
        _type = type;
    }


    public function get type():String
    {
        return _type;
    }


}
}

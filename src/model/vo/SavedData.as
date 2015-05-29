/**
 * Created by ALGTRO on 28.05.2015.
 */
package model.vo {
import com.gamua.flox.Entity;
import com.gamua.flox.Flox;

public class SavedData extends Entity
{

    private var _serverTime:*;


    public function SavedData( serverTime:* )
    {
        _serverTime = serverTime;
    }


    public function get serverTime():int
    {
        return _serverTime;
    }


    public function set serverTime( value:int ):void
    {
        _serverTime = value;
    }

}
}

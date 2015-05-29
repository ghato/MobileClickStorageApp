/**
 * Created by ALGTRO on 28.05.2015.
 */
package model.impl {
import model.*;

import com.gamua.flox.Entity;
import com.gamua.flox.Flox;

import model.enum.ClickEventType;
import model.vo.ClickEventData;
import model.vo.SavedData;

public class ClickStorage implements IClickStorage
{

    private var _clicksGoIntro:Vector.<ClickEventData>;
    private var _clicksGoMain:Vector.<ClickEventData>;


    public function ClickStorage()
    {
        _clicksGoIntro = new Vector.<ClickEventData>();
        _clicksGoMain = new Vector.<ClickEventData>();
    }


    public  function addClick( clickData:ClickEventData ):void
    {
        switch( clickData.type )
        {
            case ClickEventType.GO_INTRO_CLICKED:
                _clicksGoIntro.push( clickData );
                logEvent( clickData.type, _clicksGoIntro.length );
                break;

            case ClickEventType.GO_MAIN_CLICKED:
                _clicksGoMain.push( clickData );
                logEvent( clickData.type, _clicksGoMain.length );
                break;

            default:
                break;
        }
    }


    public function saveData():void
    {
        Flox.getTime( onGetTimeComplete, onGetTimeError );
    }


    private function onGetTimeComplete( time:Date ):void
    {
        trace( "ClickStorage :: ON GET TIME COMPETE: " + time );

        var entity:SavedData = new SavedData( time );
        entity.save( onComplete, onError );
    }


    private function onGetTimeError( error:String, httpStatus:int ):void
    {
        trace( "ClickStorage :: ON  GET TIME ERROR: " + error + "; httpStatus: " + httpStatus );
    }


    private function onComplete( entity:Entity ):void
    {
        trace( "ClickStorage :: ON COMPETE: " + entity );
    }


    private function onError( error:String, httpStatus:int ):void
    {
        trace( "ClickStorage :: ON ERROR: " + error + "; httpStatus: " + httpStatus );
    }


    private function logEvent( type:String, amount:uint ):void
    {
        Flox.logEvent( type, { amount_of_times: amount } );
    }

}
}

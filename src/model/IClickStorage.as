/**
 * Created by ALGTRO on 28.05.2015.
 */
package model {
import model.vo.ClickEventData;

public interface IClickStorage
{

    function addClick( click:ClickEventData ):void;

    function saveData():void;



}
}

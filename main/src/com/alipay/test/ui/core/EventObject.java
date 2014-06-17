package com.alipay.test.ui.core;

public enum EventObject
{
  static
  {
    OnPause = new EventObject("OnPause", 2);
    OnDestroy = new EventObject("OnDestroy", 3);
    OnException = new EventObject("OnException", 4);
    OnDialogShown = new EventObject("OnDialogShown", 5);
    OnAbort = new EventObject("OnAbort", 6);
    OnPopupWindowShown = new EventObject("OnPopupWindowShown", 7);
    OnToastShown = new EventObject("OnToastShown", 8);
    OnResponse = new EventObject("OnResponse", 9);
    Others = new EventObject("Others", 10);
    EventObject[] arrayOfEventObject = new EventObject[11];
    arrayOfEventObject[0] = OnCreate;
    arrayOfEventObject[1] = OnResume;
    arrayOfEventObject[2] = OnPause;
    arrayOfEventObject[3] = OnDestroy;
    arrayOfEventObject[4] = OnException;
    arrayOfEventObject[5] = OnDialogShown;
    arrayOfEventObject[6] = OnAbort;
    arrayOfEventObject[7] = OnPopupWindowShown;
    arrayOfEventObject[8] = OnToastShown;
    arrayOfEventObject[9] = OnResponse;
    arrayOfEventObject[10] = Others;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.test.ui.core.EventObject
 * JD-Core Version:    0.6.2
 */
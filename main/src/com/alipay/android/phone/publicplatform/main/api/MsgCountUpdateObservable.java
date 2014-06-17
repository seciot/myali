package com.alipay.android.phone.publicplatform.main.api;

import java.util.Observable;

public class MsgCountUpdateObservable extends Observable
{
  public void update()
  {
    setChanged();
    notifyObservers();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.main.api.MsgCountUpdateObservable
 * JD-Core Version:    0.6.2
 */
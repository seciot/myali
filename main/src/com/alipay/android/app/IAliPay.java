package com.alipay.android.app;

import android.os.IInterface;

public abstract interface IAliPay extends IInterface
{
  public abstract String Pay(String paramString1, String paramString2, String paramString3);

  public abstract void deployFastConnect();

  public abstract void registerCallback(IRemoteServiceCallback paramIRemoteServiceCallback);

  public abstract String test();

  public abstract void unregisterCallback(IRemoteServiceCallback paramIRemoteServiceCallback);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.IAliPay
 * JD-Core Version:    0.6.2
 */
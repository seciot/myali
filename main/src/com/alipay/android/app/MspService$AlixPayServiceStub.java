package com.alipay.android.app;

import java.lang.ref.WeakReference;

public class MspService$AlixPayServiceStub extends IAlixPay.Stub
{
  private WeakReference b;

  public MspService$AlixPayServiceStub(MspService paramMspService1, MspService paramMspService2)
  {
    this.b = new WeakReference(paramMspService2);
  }

  public String Pay(String paramString)
  {
    return PayEngine.a(paramString);
  }

  public void deployFastConnect()
  {
    MspService.getBundle((MspService)this.b.get());
  }

  public String prePay(String paramString)
  {
    this.b.get();
    return MspService.getBundleName();
  }

  public void registerCallback(IRemoteServiceCallback paramIRemoteServiceCallback)
  {
    MspService.v((MspService)this.b.get(), paramIRemoteServiceCallback);
  }

  public String test()
  {
    this.b.get();
    return MspService.a();
  }

  public void unregisterCallback(IRemoteServiceCallback paramIRemoteServiceCallback)
  {
    this.b.get();
    MspService.stop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.MspService.AlixPayServiceStub
 * JD-Core Version:    0.6.2
 */
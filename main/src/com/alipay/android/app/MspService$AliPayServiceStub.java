package com.alipay.android.app;

import java.lang.ref.WeakReference;

public class MspService$AliPayServiceStub extends IAliPay.Stub
{
  private WeakReference b;

  public MspService$AliPayServiceStub(MspService paramMspService1, MspService paramMspService2)
  {
    this.b = new WeakReference(paramMspService2);
  }

  public String Pay(String paramString1, String paramString2, String paramString3)
  {
    this.b.get();
    return MspService.a(paramString1, paramString2, paramString3);
  }

  public void deployFastConnect()
  {
    MspService.getBundle((MspService)this.b.get());
  }

  public void registerCallback(IRemoteServiceCallback paramIRemoteServiceCallback)
  {
    MspService.a((MspService)this.b.get(), paramIRemoteServiceCallback);
  }

  public String test()
  {
    this.b.get();
    return MspService.a();
  }

  public void unregisterCallback(IRemoteServiceCallback paramIRemoteServiceCallback)
  {
    this.b.get();
    MspService.b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.MspService.AliPayServiceStub
 * JD-Core Version:    0.6.2
 */
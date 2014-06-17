package com.alipay.mobile.security.authcenter.service;

import com.alipay.mobile.framework.service.ext.security.GestureCallBack;

final class c
  implements GestureCallBack
{
  c(AuthServiceImpl paramAuthServiceImpl)
  {
  }

  public final void onGestureResult(boolean paramBoolean)
  {
    try
    {
      Thread.sleep(50L);
      this.a.notifyUnlockGestureApp();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.c
 * JD-Core Version:    0.6.2
 */
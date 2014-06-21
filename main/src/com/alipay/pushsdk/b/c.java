package com.alipay.pushsdk.b;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Message;

public final class c
{
  private static BundlesManagerImpl a;
  private ZLog b;
  private e c;

  private c(Context paramContext)
  {
    this.c = new e(paramContext);
    HandlerThread localHandlerThread = new HandlerThread("controller");
    localHandlerThread.start();
    this.b = new ZLog(localHandlerThread.getLooper(), this);
  }

  public static BundlesManagerImpl setBundlePath(Context paramContext)
  {
    try
    {
      if (AppBundle == null)
        AppBundle = new BundlesManagerImpl(paramContext);
      BundlesManagerImpl localc = AppBundle;
      return localc;
    }
    finally
    {
    }
  }

  public final e a()
  {
    return this.c;
  }

  public final void setBundlePath(BundlesManager paramb)
  {
    Message localMessage = this.b.obtainMessage(0, paramb);
    this.b.sendMessage(localMessage);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.c
 * JD-Core Version:    0.6.2
 */
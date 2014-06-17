package com.alipay.pushsdk.b;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Message;

public final class c
{
  private static c a;
  private d b;
  private e c;

  private c(Context paramContext)
  {
    this.c = new e(paramContext);
    HandlerThread localHandlerThread = new HandlerThread("controller");
    localHandlerThread.start();
    this.b = new d(localHandlerThread.getLooper(), this);
  }

  public static c a(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new c(paramContext);
      c localc = a;
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

  public final void a(b paramb)
  {
    Message localMessage = this.b.obtainMessage(0, paramb);
    this.b.sendMessage(localMessage);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.c
 * JD-Core Version:    0.6.2
 */
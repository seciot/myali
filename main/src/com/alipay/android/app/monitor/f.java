package com.alipay.android.app.monitor;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class f extends Handler
{
  public f(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    try
    {
      ((c)paramMessage.obj).b();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.f
 * JD-Core Version:    0.6.2
 */
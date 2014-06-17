package com.alipay.mobile.command.manager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alipay.mobile.command.engine.ScripterExecutor;
import com.alipay.mobile.command.model.TaskMetaWrap;

final class e extends Handler
{
  e(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 273);
    try
    {
      ScripterExecutor.a().a((TaskMetaWrap)paramMessage.obj);
      return;
    }
    catch (Exception localException)
    {
      new Object[] { "script ext Error." };
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.manager.e
 * JD-Core Version:    0.6.2
 */
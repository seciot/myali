package com.alipay.mobile.command.manager;

import com.alipay.mobile.command.listener.NotifyListener;
import java.util.concurrent.Callable;

final class b
  implements Callable<Boolean>
{
  b(NotifyListener paramNotifyListener, Object paramObject)
  {
  }

  private Boolean a()
  {
    try
    {
      Boolean localBoolean = Boolean.valueOf(this.a.notify(this.b));
      return localBoolean;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return Boolean.valueOf(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.manager.b
 * JD-Core Version:    0.6.2
 */
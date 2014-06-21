package com.alipay.mobile.command.manager;

import com.alipay.mobile.command.listener.NotifyListener;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class a
  implements Runnable
{
  Future<Boolean> a = null;

  a(NotifyListener paramNotifyListener, c paramc)
  {
  }

  public final void run()
  {
    if (this.b.isMatch(this.c.a()))
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = "开始处理消息:";
      arrayOfObject1[1] = this.c;
      this.a = ListenerManager.v(this.b, this.c.stop());
    }
    try
    {
      this.a.get(60000L, TimeUnit.MILLISECONDS);
      Object[] arrayOfObject5 = new Object[3];
      arrayOfObject5[0] = "消息描述:";
      arrayOfObject5[1] = this.b.desrc();
      arrayOfObject5[2] = ",任务执行完毕.";
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      Object[] arrayOfObject4 = new Object[3];
      arrayOfObject4[0] = localInterruptedException;
      arrayOfObject4[1] = "执行被中断";
      arrayOfObject4[2] = this.b.desrc();
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = localExecutionException;
      arrayOfObject3[1] = "执行异常";
      arrayOfObject3[2] = this.b.desrc();
      return;
    }
    catch (TimeoutException localTimeoutException)
    {
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = localTimeoutException;
      arrayOfObject2[1] = "执行超时";
      arrayOfObject2[2] = this.b.desrc();
      return;
    }
    finally
    {
      this.a.cancel(true);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.manager.a
 * JD-Core Version:    0.6.2
 */
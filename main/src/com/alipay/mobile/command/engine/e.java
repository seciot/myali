package com.alipay.mobile.command.engine;

import com.alipay.mobile.command.model.TriggerTypeEnum;

final class e
  implements Runnable
{
  e(TaskExeService paramTaskExeService, TriggerTypeEnum paramTriggerTypeEnum, long paramLong, String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
  }

  public final void run()
  {
    Thread.currentThread().setUncaughtExceptionHandler(new f(this));
    try
    {
      TriggerTypeEnum localTriggerTypeEnum = this.a;
      long l = this.b;
      String str1 = this.c;
      String str2 = this.d;
      TaskTriggerService.a(localTriggerTypeEnum, l, str1, str2);
      Object[] arrayOfObject4;
      return;
    }
    catch (Throwable localThrowable)
    {
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = "do ";
      arrayOfObject2[1] = this.a;
      arrayOfObject2[2] = "trigger  Error!";
      Object[] arrayOfObject3;
      return;
    }
    finally
    {
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = "do ";
      arrayOfObject1[1] = this.a;
      arrayOfObject1[2] = "trigger  finish!";
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.e
 * JD-Core Version:    0.6.2
 */
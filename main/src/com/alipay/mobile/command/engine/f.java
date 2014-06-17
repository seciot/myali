package com.alipay.mobile.command.engine;

import com.alipay.mobile.command.util.CommandLogUtil;

final class f
  implements Thread.UncaughtExceptionHandler
{
  f(e parame)
  {
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = "do ";
    arrayOfObject1[1] = this.a.a;
    arrayOfObject1[2] = " Trigger  unKnow Exception.";
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = "do ";
    arrayOfObject2[1] = this.a.a;
    arrayOfObject2[2] = " Trigger  unKnow Exception.";
    CommandLogUtil.upErrorInfo(paramThrowable, arrayOfObject2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.f
 * JD-Core Version:    0.6.2
 */
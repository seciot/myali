package com.googlecode.androidannotations.api;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class BackgroundExecutor
{
  private static Executor a = Executors.newCachedThreadPool();

  public static void execute(Runnable paramRunnable)
  {
    a.execute(paramRunnable);
  }

  public static void setExecutor(Executor paramExecutor)
  {
    a = paramExecutor;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.BackgroundExecutor
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.app.script;

import android.os.Handler;
import android.os.Looper;

public final class ScriptEventRunnable
  implements Runnable
{
  private static ScriptEventRunnable mRunnable;
  private static boolean mRunning;
  private Handler mHandler;
  private Looper mLooper;
  private Thread.UncaughtExceptionHandler uncaught = new ScriptEventRunnable.1(this);

  private ScriptEventRunnable()
  {
    mRunning = false;
  }

  public static ScriptEventRunnable getInstance()
  {
    if (mRunnable == null)
      mRunnable = new ScriptEventRunnable();
    return mRunnable;
  }

  public static void startThread()
  {
    if (mRunning)
      return;
    new Thread(getInstance()).start();
  }

  public final void distory()
  {
    if (this.mLooper != null)
      this.mLooper.quit();
  }

  public final Handler getHandler()
  {
    return this.mHandler;
  }

  public final Looper getLooper()
  {
    return this.mLooper;
  }

  public final void run()
  {
    mRunning = true;
    Thread.currentThread().setPriority(5);
    Thread.currentThread().setName("lua thread");
    Thread.currentThread().setUncaughtExceptionHandler(this.uncaught);
    this.mLooper = Looper.myLooper();
    if (this.mLooper == null)
    {
      Looper.prepare();
      this.mLooper = Looper.myLooper();
    }
    this.mHandler = new Handler(this.mLooper);
    Looper.loop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.ScriptEventRunnable
 * JD-Core Version:    0.6.2
 */
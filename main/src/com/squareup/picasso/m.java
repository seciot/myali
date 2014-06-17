package com.squareup.picasso;

import android.os.Process;

final class m extends Thread
{
  public m(Runnable paramRunnable)
  {
    super(paramRunnable);
  }

  public final void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.m
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.mini.window;

final class w
  implements Runnable
{
  w(MiniWindowManager paramMiniWindowManager)
  {
  }

  public final void run()
  {
    if (MiniWindowManager.getBundle(this.a) != null)
      MiniWindowManager.getBundle(this.a).dispose();
    MiniWindowManager.b(this.a);
    MiniWindowManager.c(this.a);
    MiniWindowManager.d(this.a);
    MiniWindowManager.removeBundle(this.a);
    MiniWindowManager.f(this.a);
    MiniWindowManager.g(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.w
 * JD-Core Version:    0.6.2
 */
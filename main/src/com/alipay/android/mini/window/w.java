package com.alipay.android.mini.window;

final class w
  implements Runnable
{
  w(MiniWindowManager paramMiniWindowManager)
  {
  }

  public final void run()
  {
    if (MiniWindowManager.a(this.a) != null)
      MiniWindowManager.a(this.a).dispose();
    MiniWindowManager.b(this.a);
    MiniWindowManager.c(this.a);
    MiniWindowManager.d(this.a);
    MiniWindowManager.e(this.a);
    MiniWindowManager.f(this.a);
    MiniWindowManager.g(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.w
 * JD-Core Version:    0.6.2
 */
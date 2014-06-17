package com.alipay.android.app.display.uielement;

final class bg
  implements Runnable
{
  bg(UILabel paramUILabel, String paramString)
  {
  }

  public final void run()
  {
    if (UILabel.e(this.b) != null)
    {
      this.b.a(UILabel.e(this.b), this.a);
      UILabel.f(this.b);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bg
 * JD-Core Version:    0.6.2
 */
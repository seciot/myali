package com.alipay.android.app.display.uielement;

final class bi
  implements Runnable
{
  bi(UILabel paramUILabel)
  {
  }

  public final void run()
  {
    if (UILabel.removeBundle(this.a) != null)
      this.a.v(UILabel.removeBundle(this.a), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bi
 * JD-Core Version:    0.6.2
 */
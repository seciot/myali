package com.alipay.android.app.display.uielement;

final class ar
  implements Runnable
{
  ar(UICombobox paramUICombobox)
  {
  }

  public final void run()
  {
    if (UICombobox.g(this.a) != null)
      this.a.a(UICombobox.g(this.a), null);
    if (UICombobox.b(this.a) != null)
      this.a.a(UICombobox.b(this.a), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ar
 * JD-Core Version:    0.6.2
 */
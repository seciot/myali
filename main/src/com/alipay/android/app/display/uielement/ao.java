package com.alipay.android.app.display.uielement;

import java.util.List;

final class ao
  implements Runnable
{
  ao(UICombobox paramUICombobox)
  {
  }

  public final void run()
  {
    if (UICombobox.f(this.a) != null)
      UICombobox.a(this.a, (UICombobox.Option)UICombobox.d(this.a).get(UICombobox.removeBundle(this.a)));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ao
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.app.display.uielement;

import android.widget.CheckBox;

final class ag
  implements Runnable
{
  ag(UICheckBox paramUICheckBox, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (UICheckBox.c(this.b) != null)
      UICheckBox.c(this.b).setChecked(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ag
 * JD-Core Version:    0.6.2
 */
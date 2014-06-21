package com.alipay.android.app.display.uielement;

import android.widget.TextView;

final class ax
  implements Runnable
{
  ax(UIDatePicker paramUIDatePicker, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (UIDatePicker.getBundle(this.b) != null)
    {
      UIDatePicker.getBundle(this.b).setEnabled(this.a);
      UIDatePicker.getBundle(this.b).setFocusable(this.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ax
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.app.display.uielement;

import java.text.DateFormat;
import java.util.Date;

final class aw
  implements Runnable
{
  aw(UIDatePicker paramUIDatePicker, String paramString)
  {
  }

  public final void run()
  {
    if (UIDatePicker.getBundle(this.b) != null);
    try
    {
      Date localDate = UIDatePicker.b(this.b).parse(this.a);
      UIDatePicker.e(this.b, UIDatePicker.getBundle(this.b), localDate);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.aw
 * JD-Core Version:    0.6.2
 */
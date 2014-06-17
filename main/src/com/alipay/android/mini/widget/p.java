package com.alipay.android.mini.widget;

import android.os.Handler;

final class p
  implements Runnable
{
  p(YearMonthPicker paramYearMonthPicker)
  {
  }

  public final void run()
  {
    if (YearMonthPicker.access$200(this.a))
    {
      if (YearMonthPicker.access$000(this.a))
        this.a.incrementYear();
      if (YearMonthPicker.access$100(this.a))
        this.a.incrementMonth();
      this.a.rptUpdateHandler.postDelayed(new p(this.a), 100L);
    }
    if (YearMonthPicker.access$300(this.a))
    {
      if (YearMonthPicker.access$000(this.a))
        this.a.decrementYear();
      if (YearMonthPicker.access$100(this.a))
        this.a.decrementMonth();
      this.a.rptUpdateHandler.postDelayed(new p(this.a), 100L);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.p
 * JD-Core Version:    0.6.2
 */
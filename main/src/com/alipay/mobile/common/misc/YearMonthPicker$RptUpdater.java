package com.alipay.mobile.common.misc;

import android.os.Handler;

class YearMonthPicker$RptUpdater
  implements Runnable
{
  YearMonthPicker$RptUpdater(YearMonthPicker paramYearMonthPicker)
  {
  }

  public void run()
  {
    if (YearMonthPicker.access$200(this.this$0))
    {
      if (YearMonthPicker.access$000(this.this$0))
        this.this$0.incrementYear();
      if (YearMonthPicker.access$100(this.this$0))
        this.this$0.incrementMonth();
      this.this$0.rptUpdateHandler.postDelayed(new RptUpdater(this.this$0), 100L);
    }
    if (YearMonthPicker.access$300(this.this$0))
    {
      if (YearMonthPicker.access$000(this.this$0))
        this.this$0.decrementYear();
      if (YearMonthPicker.access$100(this.this$0))
        this.this$0.decrementMonth();
      this.this$0.rptUpdateHandler.postDelayed(new RptUpdater(this.this$0), 100L);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.YearMonthPicker.RptUpdater
 * JD-Core Version:    0.6.2
 */
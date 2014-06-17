package com.alipay.mobile.common.misc;

import android.os.Handler;
import android.view.View;
import android.view.View.OnLongClickListener;

class YearMonthPicker$2
  implements View.OnLongClickListener
{
  YearMonthPicker$2(YearMonthPicker paramYearMonthPicker, boolean paramBoolean1, boolean paramBoolean2)
  {
  }

  public boolean onLongClick(View paramView)
  {
    boolean bool1 = true;
    YearMonthPicker.access$002(this.this$0, this.val$isYear);
    YearMonthPicker localYearMonthPicker1 = this.this$0;
    boolean bool2;
    YearMonthPicker localYearMonthPicker2;
    if (!this.val$isYear)
    {
      bool2 = bool1;
      YearMonthPicker.access$102(localYearMonthPicker1, bool2);
      YearMonthPicker.access$202(this.this$0, this.val$isUp);
      localYearMonthPicker2 = this.this$0;
      if (this.val$isUp)
        break label100;
    }
    while (true)
    {
      YearMonthPicker.access$302(localYearMonthPicker2, bool1);
      this.this$0.rptUpdateHandler.post(new YearMonthPicker.RptUpdater(this.this$0));
      return false;
      bool2 = false;
      break;
      label100: bool1 = false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.YearMonthPicker.2
 * JD-Core Version:    0.6.2
 */
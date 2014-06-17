package com.alipay.mobile.common.misc;

import android.view.View;
import android.view.View.OnClickListener;

class YearMonthPicker$1
  implements View.OnClickListener
{
  YearMonthPicker$1(YearMonthPicker paramYearMonthPicker, boolean paramBoolean1, boolean paramBoolean2)
  {
  }

  public void onClick(View paramView)
  {
    if (this.val$isUp)
    {
      this.this$0.increment(this.val$isYear);
      return;
    }
    this.this$0.decrement(this.val$isYear);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.YearMonthPicker.1
 * JD-Core Version:    0.6.2
 */
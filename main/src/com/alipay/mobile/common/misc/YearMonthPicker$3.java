package com.alipay.mobile.common.misc;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class YearMonthPicker$3
  implements View.OnTouchListener
{
  YearMonthPicker$3(YearMonthPicker paramYearMonthPicker)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3))
    {
      if (YearMonthPicker.access$200(this.this$0))
        YearMonthPicker.access$202(this.this$0, false);
      if (YearMonthPicker.access$300(this.this$0))
        YearMonthPicker.access$302(this.this$0, false);
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.YearMonthPicker.3
 * JD-Core Version:    0.6.2
 */
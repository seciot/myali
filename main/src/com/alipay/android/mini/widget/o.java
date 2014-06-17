package com.alipay.android.mini.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class o
  implements View.OnTouchListener
{
  o(YearMonthPicker paramYearMonthPicker)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3))
    {
      if (YearMonthPicker.access$200(this.a))
        YearMonthPicker.access$202(this.a, false);
      if (YearMonthPicker.access$300(this.a))
        YearMonthPicker.access$302(this.a, false);
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.o
 * JD-Core Version:    0.6.2
 */
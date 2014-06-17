package com.alipay.android.mini.widget;

import android.view.View;
import android.view.View.OnClickListener;

final class m
  implements View.OnClickListener
{
  m(YearMonthPicker paramYearMonthPicker, boolean paramBoolean1, boolean paramBoolean2)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a)
    {
      this.c.increment(this.b);
      return;
    }
    this.c.decrement(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.m
 * JD-Core Version:    0.6.2
 */
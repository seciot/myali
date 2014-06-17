package com.alipay.android.mini.widget;

import android.os.Handler;
import android.view.View;
import android.view.View.OnLongClickListener;

final class n
  implements View.OnLongClickListener
{
  n(YearMonthPicker paramYearMonthPicker, boolean paramBoolean1, boolean paramBoolean2)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    boolean bool1 = true;
    YearMonthPicker.access$002(this.c, this.a);
    YearMonthPicker localYearMonthPicker1 = this.c;
    boolean bool2;
    YearMonthPicker localYearMonthPicker2;
    if (!this.a)
    {
      bool2 = bool1;
      YearMonthPicker.access$102(localYearMonthPicker1, bool2);
      YearMonthPicker.access$202(this.c, this.b);
      localYearMonthPicker2 = this.c;
      if (this.b)
        break label100;
    }
    while (true)
    {
      YearMonthPicker.access$302(localYearMonthPicker2, bool1);
      this.c.rptUpdateHandler.post(new p(this.c));
      return false;
      bool2 = false;
      break;
      label100: bool1 = false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.n
 * JD-Core Version:    0.6.2
 */
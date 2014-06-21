package com.alipay.android.app.display.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.widget.CustomDatePickerDialog;

final class at
  implements View.OnClickListener
{
  at(UIDatePicker paramUIDatePicker, CustomDatePickerDialog paramCustomDatePickerDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.show();
    au localau = new au(this, EventType.b);
    this.b.getBundle(localau);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.at
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.app.display.uielement;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;
import android.widget.TextView;
import java.util.Calendar;

final class as
  implements DatePickerDialog.OnDateSetListener
{
  as(UIDatePicker paramUIDatePicker, Calendar paramCalendar, TextView paramTextView)
  {
  }

  public final void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    this.a.set(paramInt1, paramInt2, paramInt3);
    UIDatePicker.a(this.c, this.b, this.a.getTime());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.as
 * JD-Core Version:    0.6.2
 */
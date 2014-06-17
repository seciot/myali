package com.alipay.mobile.commonui.widget;

import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import java.util.Calendar;

class APDateTimePickerDialog$2
  implements DatePicker.OnDateChangedListener
{
  APDateTimePickerDialog$2(APDateTimePickerDialog paramAPDateTimePickerDialog, Calendar paramCalendar)
  {
  }

  public void onDateChanged(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    this.val$selectedCalendar.set(1, paramInt1);
    this.val$selectedCalendar.set(2, paramInt2);
    this.val$selectedCalendar.set(5, paramInt3);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APDateTimePickerDialog.2
 * JD-Core Version:    0.6.2
 */
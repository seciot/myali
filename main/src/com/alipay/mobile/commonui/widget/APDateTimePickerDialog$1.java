package com.alipay.mobile.commonui.widget;

import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;
import java.util.Calendar;

class APDateTimePickerDialog$1
  implements TimePicker.OnTimeChangedListener
{
  APDateTimePickerDialog$1(APDateTimePickerDialog paramAPDateTimePickerDialog, Calendar paramCalendar)
  {
  }

  public void onTimeChanged(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    this.val$selectedCalendar.set(11, paramInt1);
    this.val$selectedCalendar.set(12, paramInt2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APDateTimePickerDialog.1
 * JD-Core Version:    0.6.2
 */
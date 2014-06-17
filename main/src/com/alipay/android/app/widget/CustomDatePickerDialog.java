package com.alipay.android.app.widget;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.Context;
import android.widget.DatePicker;
import java.util.Calendar;
import java.util.Date;

public class CustomDatePickerDialog extends DatePickerDialog
{
  private Date a;
  private Date b;

  public CustomDatePickerDialog(Context paramContext, DatePickerDialog.OnDateSetListener paramOnDateSetListener, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramContext, paramOnDateSetListener, paramInt1, paramInt2, paramInt3);
  }

  private static void a(DatePicker paramDatePicker, Calendar paramCalendar)
  {
    paramDatePicker.updateDate(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5));
  }

  public final void a(Date paramDate)
  {
    this.a = paramDate;
  }

  public final void b(Date paramDate)
  {
    this.b = paramDate;
  }

  public void onDateChanged(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(paramInt1, paramInt2, paramInt3);
    Date localDate = localCalendar.getTime();
    if ((this.a != null) && (localDate.before(this.a)))
    {
      localCalendar.setTime(this.a);
      a(paramDatePicker, localCalendar);
    }
    while ((this.b == null) || (!localDate.after(this.b)))
      return;
    localCalendar.setTime(this.a);
    a(paramDatePicker, localCalendar);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.CustomDatePickerDialog
 * JD-Core Version:    0.6.2
 */
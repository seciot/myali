package com.alipay.mobile.commonui.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TimePicker;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import java.util.Calendar;

public class APDateTimePickerDialog extends View
  implements APViewInterface
{
  private DatePicker a;
  private TimePicker b;

  public APDateTimePickerDialog(Context paramContext, AttributeSet paramAttributeSet, int paramInt, Calendar paramCalendar1, Calendar paramCalendar2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramCalendar1, paramCalendar2, paramOnClickListener1, paramOnClickListener2);
  }

  public APDateTimePickerDialog(Context paramContext, AttributeSet paramAttributeSet, Calendar paramCalendar1, Calendar paramCalendar2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramCalendar1, paramCalendar2, paramOnClickListener1, paramOnClickListener2);
  }

  public APDateTimePickerDialog(Context paramContext, Calendar paramCalendar1, Calendar paramCalendar2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    super(paramContext);
    a(paramContext, paramCalendar1, paramCalendar2, paramOnClickListener1, paramOnClickListener2);
  }

  private AlertDialog a(Context paramContext, Calendar paramCalendar1, Calendar paramCalendar2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(paramContext).inflate(R.layout.date_time_picker_dialog, null);
    this.a = ((DatePicker)localLinearLayout.findViewById(R.id.DatePicker));
    this.b = ((TimePicker)localLinearLayout.findViewById(R.id.TimePicker));
    this.b.setIs24HourView(Boolean.valueOf(true));
    this.a.setDescendantFocusability(393216);
    this.b.setDescendantFocusability(393216);
    APDateTimePickerDialog.1 local1 = new APDateTimePickerDialog.1(this, paramCalendar2);
    APDateTimePickerDialog.2 local2 = new APDateTimePickerDialog.2(this, paramCalendar2);
    this.a.init(paramCalendar1.get(1), paramCalendar1.get(2), paramCalendar1.get(5), local2);
    if (Build.VERSION.SDK_INT >= 11)
      this.a.setCalendarViewShown(false);
    this.b.setCurrentHour(Integer.valueOf(paramCalendar1.get(11)));
    this.b.setCurrentMinute(Integer.valueOf(paramCalendar1.get(12)));
    this.b.setOnTimeChangedListener(local1);
    return new AlertDialog.Builder(getContext()).setTitle("设置日期时间").setView(localLinearLayout).setPositiveButton("确定", paramOnClickListener1).setNegativeButton("取消", paramOnClickListener2).show();
  }

  public DatePicker getDatePicker()
  {
    return this.a;
  }

  public TimePicker getTimePicker()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APDateTimePickerDialog
 * JD-Core Version:    0.6.2
 */
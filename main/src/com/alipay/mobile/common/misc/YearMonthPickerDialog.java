package com.alipay.mobile.common.misc;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;

public class YearMonthPickerDialog
{
  public YearMonthPicker mDatePicker;
  public AlertDialog.Builder mDialogBuilder = null;
  public String mNegativeLabel;
  public String mPositiveLabel;

  public YearMonthPickerDialog(String paramString, Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(R.layout.ext_express_year_month_picker, null, false);
    this.mDatePicker = ((YearMonthPicker)localView.findViewById(R.id.datePicker1));
    this.mDatePicker.disableBeforeYear();
    hideDayPick();
    this.mDialogBuilder = new AlertDialog.Builder(paramContext);
    this.mDialogBuilder.setTitle(paramString);
    this.mDialogBuilder.setView(localView);
    this.mPositiveLabel = "确定";
    this.mNegativeLabel = "取消";
  }

  public void hideDayPick()
  {
  }

  public void setCurrentDate()
  {
    this.mDatePicker.setCurrentDate();
  }

  public void setNegativeListener(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.mDialogBuilder.setNegativeButton(this.mNegativeLabel, paramOnClickListener);
  }

  public void setPositiveListener(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.mDialogBuilder.setPositiveButton(this.mPositiveLabel, paramOnClickListener);
  }

  public void setStartPickDate(int paramInt1, int paramInt2)
  {
    this.mDatePicker.setYearMonth(paramInt1, paramInt2);
  }

  public void show()
  {
    this.mDialogBuilder.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.YearMonthPickerDialog
 * JD-Core Version:    0.6.2
 */
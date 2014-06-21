package com.alipay.android.mini.widget;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;

public class YearMonthPickerDialog
{
  public AlertDialog.Builder a = null;
  public YearMonthPicker b;
  public String c;
  public String d;

  public YearMonthPickerDialog(String paramString, Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(R.layout.BundlesManager, null, false);
    this.b = ((YearMonthPicker)localView.findViewById(R.id.i));
    this.b.disableBeforeYear();
    this.a = new AlertDialog.Builder(paramContext);
    this.a.setTitle(paramString);
    this.a.setView(localView);
    this.c = "确定";
    this.d = "取消";
  }

  public final void a()
  {
    this.b.setCurrentDate();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.b.setYearMonth(paramInt1, paramInt2);
  }

  public final void setBundlePath(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.setPositiveButton(this.c, paramOnClickListener);
  }

  public final void b()
  {
    this.a.show();
  }

  public final void b(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.setNegativeButton(this.d, paramOnClickListener);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.YearMonthPickerDialog
 * JD-Core Version:    0.6.2
 */
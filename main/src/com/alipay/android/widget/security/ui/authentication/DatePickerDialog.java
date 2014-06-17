package com.alipay.android.widget.security.ui.authentication;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;

public class DatePickerDialog extends AlertDialog
  implements DialogInterface.OnClickListener, DatePicker.OnDateChangedListener
{
  private final DatePicker a;
  private final OnDateSetListener b;
  private int c;
  private int d;
  private int e;

  public DatePickerDialog(Context paramContext, OnDateSetListener paramOnDateSetListener, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramContext);
    this.b = paramOnDateSetListener;
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
    setTitle("选择有效期");
    setButton(paramContext.getText(R.string.aO), this);
    setButton2(paramContext.getText(R.string.aI), null);
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(R.layout.s, null);
    setView(localView);
    this.a = ((DatePicker)localView.findViewById(R.id.aO));
    APButton localAPButton = (APButton)localView.findViewById(R.id.aX);
    APImageView localAPImageView = (APImageView)localView.findViewById(R.id.aP);
    this.a.init(this.c, this.d, this.e, this);
    localAPButton.setOnClickListener(new DatePickerDialog.1(this));
    if (Build.VERSION.SDK_INT < 11)
      localAPImageView.setVisibility(8);
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.b != null)
    {
      this.a.clearFocus();
      OnDateSetListener localOnDateSetListener = this.b;
      localOnDateSetListener.a(this.a.getYear(), this.a.getMonth(), this.a.getDayOfMonth());
    }
  }

  public void onDateChanged(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    int i = paramBundle.getInt("year");
    int j = paramBundle.getInt("month");
    int k = paramBundle.getInt("day");
    this.a.init(i, j, k, this);
  }

  public Bundle onSaveInstanceState()
  {
    Bundle localBundle = super.onSaveInstanceState();
    localBundle.putInt("year", this.a.getYear());
    localBundle.putInt("month", this.a.getMonth());
    localBundle.putInt("day", this.a.getDayOfMonth());
    return localBundle;
  }

  public void show()
  {
    super.show();
  }

  public static abstract interface OnDateSetListener
  {
    public abstract void a();

    public abstract void a(int paramInt1, int paramInt2, int paramInt3);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.DatePickerDialog
 * JD-Core Version:    0.6.2
 */
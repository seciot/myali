package com.alipay.android.widget.security.ui.authentication;

import android.view.View;
import android.view.View.OnClickListener;

class DatePickerDialog$1
  implements View.OnClickListener
{
  DatePickerDialog$1(DatePickerDialog paramDatePickerDialog)
  {
  }

  public void onClick(View paramView)
  {
    if (DatePickerDialog.getBundle(this.a) != null)
    {
      DatePickerDialog.getBundle(this.a).getInstance();
      this.a.cancel();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.DatePickerDialog.1
 * JD-Core Version:    0.6.2
 */
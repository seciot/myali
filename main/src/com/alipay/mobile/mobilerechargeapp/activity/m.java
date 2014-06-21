package com.alipay.mobile.mobilerechargeapp.activity;

import android.text.Editable;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APButtonInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.mobilerechargeapp.utils.Validator;

final class m
  implements TextWatcher
{
  m(BalancesWarnInputActivity paramBalancesWarnInputActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    new StringBuilder("afterTextChanged s = -").append(paramEditable.toString()).append("-").toString();
    if ((paramEditable != null) && (BalancesWarnInputActivity.a(paramEditable.toString()).length() >= 11))
    {
      BalancesWarnInputActivity.getBundle(this.a);
      if (!Validator.getBundle(BalancesWarnInputActivity.getBundle(this.a.a.getInputedText())))
      {
        this.a.b.setVisibility(0);
        this.a.c.setEnabled(false);
        return;
      }
      this.a.c.setEnabled(true);
      return;
    }
    this.a.c.setEnabled(false);
    this.a.b.setVisibility(8);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.m
 * JD-Core Version:    0.6.2
 */
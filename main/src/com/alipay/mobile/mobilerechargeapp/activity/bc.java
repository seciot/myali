package com.alipay.mobile.mobilerechargeapp.activity;

import android.text.Editable;
import android.text.TextWatcher;

final class bc
  implements TextWatcher
{
  bc(MobileRechargeActivity paramMobileRechargeActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    new StringBuilder("@ afterTextChanged : s=").append(paramEditable).append("-").toString();
    this.a.getBundle(paramEditable);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.bc
 * JD-Core Version:    0.6.2
 */
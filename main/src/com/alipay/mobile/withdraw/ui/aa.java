package com.alipay.mobile.withdraw.ui;

import android.text.Editable;
import android.text.TextWatcher;

final class aa
  implements TextWatcher
{
  aa(WithdrawSmsCheckActivity paramWithdrawSmsCheckActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    WithdrawSmsCheckActivity.b(this.a);
    WithdrawSmsCheckActivity.v(this.a, Integer.valueOf(1 + WithdrawSmsCheckActivity.b(this.a).intValue()));
    new StringBuilder("{[info=smsCheckCodeSendBox], [msg=autoReadCount:").append(WithdrawSmsCheckActivity.b(this.a)).append("]}").toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.aa
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.commonui.widget;

import android.text.Editable;
import android.text.TextWatcher;

class APPwdInputBox$2
  implements TextWatcher
{
  APPwdInputBox$2(APPwdInputBox paramAPPwdInputBox)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    String str = APPwdInputBox.access$000(this.this$0).getText().toString();
    APPwdInputBox.access$202(this.this$0, str);
    if (APPwdInputBox.access$200(this.this$0).length() >= 6)
      APPwdInputBox.access$300(this.this$0);
    if (APPwdInputBox.access$400(this.this$0) != null)
      APPwdInputBox.access$000(this.this$0).postDelayed(new APPwdInputBox.2.1(this), 100L);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPwdInputBox.2
 * JD-Core Version:    0.6.2
 */
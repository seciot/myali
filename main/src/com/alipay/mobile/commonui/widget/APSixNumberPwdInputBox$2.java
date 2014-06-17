package com.alipay.mobile.commonui.widget;

import android.text.Editable;
import android.text.TextWatcher;

class APSixNumberPwdInputBox$2
  implements TextWatcher
{
  APSixNumberPwdInputBox$2(APSixNumberPwdInputBox paramAPSixNumberPwdInputBox)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    String str = APSixNumberPwdInputBox.access$000(this.this$0).getText().toString();
    APSixNumberPwdInputBox.access$202(this.this$0, str);
    APSixNumberPwdInputBox.access$300(this.this$0, str.length());
    if (APSixNumberPwdInputBox.access$200(this.this$0).length() == 6)
      APSixNumberPwdInputBox.access$400(this.this$0);
    if (APSixNumberPwdInputBox.access$500(this.this$0) != null)
      APSixNumberPwdInputBox.access$000(this.this$0).postDelayed(new APSixNumberPwdInputBox.2.1(this), 100L);
    if (APSixNumberPwdInputBox.access$700(this.this$0) != null)
      APSixNumberPwdInputBox.access$000(this.this$0).postDelayed(new APSixNumberPwdInputBox.2.2(this), 100L);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox.2
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.about.ui;

import android.text.Editable;
import android.text.TextWatcher;

final class d
  implements TextWatcher
{
  d(AboutFeedbackActivity paramAboutFeedbackActivity)
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
    AboutFeedbackActivity localAboutFeedbackActivity = this.a;
    if (paramCharSequence.length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      AboutFeedbackActivity.d(localAboutFeedbackActivity, bool);
      AboutFeedbackActivity.v(this.a, paramCharSequence.length());
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.d
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.about.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.widget.APButton;

final class c
  implements TextWatcher
{
  c(AboutFeedbackActivity paramAboutFeedbackActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    AboutFeedbackActivity.removeBundle(this.a).setEnabled(AboutFeedbackActivity.d(this.a));
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    AboutFeedbackActivity localAboutFeedbackActivity;
    if (!AboutFeedbackActivity.getBundleByComponentName(this.a))
    {
      localAboutFeedbackActivity = this.a;
      if (paramCharSequence.length() <= 0)
        break label37;
    }
    label37: for (boolean bool = true; ; bool = false)
    {
      AboutFeedbackActivity.v(localAboutFeedbackActivity, bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.c
 * JD-Core Version:    0.6.2
 */
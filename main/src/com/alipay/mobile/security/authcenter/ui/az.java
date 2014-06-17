package com.alipay.mobile.security.authcenter.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;

final class az
  implements TextWatcher
{
  az(TaobaoBindingAlipayUserActivity paramTaobaoBindingAlipayUserActivity)
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
    if ((this.a.a.getInputedText() != null) && (this.a.a.getInputedText().trim().length() > 0));
    for (int i = 1; ; i = 0)
    {
      if (this.a.b.getInputedText() == null);
      for (int j = 0; (i != 0) && (j > 0); j = this.a.b.getInputedText().length())
      {
        this.a.e.setEnabled(true);
        return;
      }
      this.a.e.setEnabled(false);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.az
 * JD-Core Version:    0.6.2
 */
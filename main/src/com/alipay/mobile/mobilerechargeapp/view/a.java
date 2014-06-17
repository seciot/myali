package com.alipay.mobile.mobilerechargeapp.view;

import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.inputfomatter.APFormatter;
import com.alipay.mobile.commonui.widget.APEditText;

final class a
  implements TextWatcher
{
  a(APInputBoxAutoC paramAPInputBoxAutoC)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    APInputBoxAutoC localAPInputBoxAutoC = this.a;
    if (paramEditable.length() == 0);
    for (boolean bool = true; ; bool = false)
    {
      localAPInputBoxAutoC.onInputTextStatusChanged(bool, APInputBoxAutoC.access$000(this.a).hasFocus());
      new StringBuilder("APButtonInputAutoC : prefix=").append(paramEditable.toString()).append("-").toString();
      if (APInputBoxAutoC.access$100(this.a) != null)
      {
        InputFilter[] arrayOfInputFilter = paramEditable.getFilters();
        paramEditable.setFilters(new InputFilter[0]);
        APInputBoxAutoC.access$100(this.a).format(paramEditable);
        paramEditable.setFilters(arrayOfInputFilter);
      }
      return;
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.view.a
 * JD-Core Version:    0.6.2
 */
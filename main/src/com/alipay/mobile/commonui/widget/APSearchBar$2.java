package com.alipay.mobile.commonui.widget;

import android.text.Editable;
import android.text.TextWatcher;

class APSearchBar$2
  implements TextWatcher
{
  APSearchBar$2(APSearchBar paramAPSearchBar)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramCharSequence == null) || (paramCharSequence.length() == 0))
    {
      APSearchBar.access$000(this.this$0);
      return;
    }
    APSearchBar.access$100(this.this$0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSearchBar.2
 * JD-Core Version:    0.6.2
 */
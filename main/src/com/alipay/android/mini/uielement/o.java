package com.alipay.android.mini.uielement;

import com.alipay.android.mini.event.MiniReadBankCardArgs;
import com.alipay.android.mini.widget.CustomEditText;

final class o extends MiniReadBankCardArgs
{
  o(UIInput paramUIInput)
  {
  }

  public final void onReadSuccess(String paramString)
  {
    if (UIInput.a(this.a) != null)
      UIInput.a(this.a).setText(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.o
 * JD-Core Version:    0.6.2
 */
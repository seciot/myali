package com.alipay.android.widget.security.ui.authentication;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

class BaseAuthenticationFragment$1
  implements Runnable
{
  BaseAuthenticationFragment$1(BaseAuthenticationFragment paramBaseAuthenticationFragment, View paramView)
  {
  }

  public void run()
  {
    ((InputMethodManager)this.a.getContext().getSystemService("input_method")).showSoftInput(this.a, 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationFragment.1
 * JD-Core Version:    0.6.2
 */
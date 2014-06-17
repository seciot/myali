package com.alipay.mobile.security.authcenter.ui;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

final class ay
  implements Runnable
{
  ay(SecurityBaseFuncFragment paramSecurityBaseFuncFragment, View paramView)
  {
  }

  public final void run()
  {
    ((InputMethodManager)this.a.getContext().getSystemService("input_method")).showSoftInput(this.a, 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ay
 * JD-Core Version:    0.6.2
 */
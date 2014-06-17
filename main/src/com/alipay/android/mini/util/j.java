package com.alipay.android.mini.util;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class j
  implements Runnable
{
  j(EditText paramEditText)
  {
  }

  public final void run()
  {
    this.a.requestFocus();
    ((InputMethodManager)this.a.getContext().getSystemService("input_method")).showSoftInput(this.a, 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.j
 * JD-Core Version:    0.6.2
 */
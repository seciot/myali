package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

class APPwdInputBox$3
  implements Runnable
{
  APPwdInputBox$3(APPwdInputBox paramAPPwdInputBox, View paramView)
  {
  }

  public void run()
  {
    ((InputMethodManager)this.val$view.getContext().getSystemService("input_method")).showSoftInput(this.val$view, 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPwdInputBox.3
 * JD-Core Version:    0.6.2
 */
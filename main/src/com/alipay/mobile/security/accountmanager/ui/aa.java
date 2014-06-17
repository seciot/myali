package com.alipay.mobile.security.accountmanager.ui;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import java.util.TimerTask;

final class aa extends TimerTask
{
  aa(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void run()
  {
    ((InputMethodManager)this.a.i.getEtContent().getContext().getSystemService("input_method")).showSoftInput(this.a.i.getEtContent(), 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.aa
 * JD-Core Version:    0.6.2
 */
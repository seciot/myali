package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import com.alipay.mobile.commonui.widget.APEditText;

class SecurityDribbletActivity$11
  implements DialogInterface.OnClickListener
{
  SecurityDribbletActivity$11(SecurityDribbletActivity paramSecurityDribbletActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(this.a.f.getWindowToken(), 2);
    paramDialogInterface.cancel();
    this.a.a(Boolean.valueOf(false));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.11
 * JD-Core Version:    0.6.2
 */
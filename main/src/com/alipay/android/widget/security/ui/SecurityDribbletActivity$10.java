package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.view.inputmethod.InputMethodManager;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APEditText;

class SecurityDribbletActivity$10
  implements DialogInterface.OnClickListener
{
  SecurityDribbletActivity$10(SecurityDribbletActivity paramSecurityDribbletActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.e = this.a.f.getText().toString();
    if ((this.a.e != null) && (!"".equals(this.a.e.trim())))
    {
      ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(this.a.f.getWindowToken(), 2);
      this.a.showProgressDialog(null, true, this.a.n);
      new Thread(new SecurityDribbletActivity.ListenerThread(this.a, 1, (byte)0)).start();
      return;
    }
    this.a.getBundle(Boolean.valueOf(false));
    this.a.toast(this.a.getResources().getString(R.string.by), 1);
    this.a.dismissProgressDialog();
    this.a.getInitLevel();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.10
 * JD-Core Version:    0.6.2
 */
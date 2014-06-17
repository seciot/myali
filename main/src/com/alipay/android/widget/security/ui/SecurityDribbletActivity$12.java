package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

class SecurityDribbletActivity$12
  implements DialogInterface.OnClickListener
{
  SecurityDribbletActivity$12(SecurityDribbletActivity paramSecurityDribbletActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a(Boolean.valueOf(false));
    paramDialogInterface.cancel();
    try
    {
      SecurityDribbletActivity.g(this.a).getMicroApplicationContext().startApp(SecurityDribbletActivity.f(this.a).getAppId(), "20000010", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("{[info=isGoCertification], [msg=").append(localAppLoadException.getMessage()).append("]}").toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.12
 * JD-Core Version:    0.6.2
 */
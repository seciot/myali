package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

class SecurityDribbletActivity$4
  implements DialogInterface.OnClickListener
{
  SecurityDribbletActivity$4(SecurityDribbletActivity paramSecurityDribbletActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    try
    {
      SecurityDribbletActivity.d(this.a).getMicroApplicationContext().startApp(SecurityDribbletActivity.getBundleByComponentName(this.a).getAppId(), "20000013", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.4
 * JD-Core Version:    0.6.2
 */
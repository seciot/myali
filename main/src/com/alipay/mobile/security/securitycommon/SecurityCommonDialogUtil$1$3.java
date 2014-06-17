package com.alipay.mobile.security.securitycommon;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

class SecurityCommonDialogUtil$1$3
  implements DialogInterface.OnKeyListener
{
  SecurityCommonDialogUtil$1$3(SecurityCommonDialogUtil.1 param1)
  {
  }

  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramDialogInterface.cancel();
      this.a.c.getMicroApplicationContext().finishApp(this.a.c.getAppId(), this.a.c.getAppId(), null);
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil.1.3
 * JD-Core Version:    0.6.2
 */
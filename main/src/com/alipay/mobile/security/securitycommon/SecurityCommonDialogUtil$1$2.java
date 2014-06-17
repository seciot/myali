package com.alipay.mobile.security.securitycommon;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

class SecurityCommonDialogUtil$1$2
  implements DialogInterface.OnClickListener
{
  SecurityCommonDialogUtil$1$2(SecurityCommonDialogUtil.1 param1)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    if (this.a.b.booleanValue())
      this.a.c.getMicroApplicationContext().finishApp(this.a.c.getAppId(), this.a.c.getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil.1.2
 * JD-Core Version:    0.6.2
 */
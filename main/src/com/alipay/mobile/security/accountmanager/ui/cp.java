package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class cp
  implements DialogInterface.OnClickListener
{
  cp(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      ModifyLoginPwdActivity.m(this.a).getMicroApplicationContext().startApp(ModifyLoginPwdActivity.l(this.a).getAppId(), "20000010", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("{[info=doDialog], [msg=").append(localAppLoadException.getMessage()).append("]}").toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cp
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class am
  implements DialogInterface.OnClickListener
{
  am(ForgotLoginPwdActivity paramForgotLoginPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      this.a.e();
      ForgotLoginPwdActivity.t(this.a).getMicroApplicationContext().startApp(ForgotLoginPwdActivity.s(this.a).getAppId(), "20000008", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("{[info=onPostCheckUserAccountAndSendSms],[msg=").append(localAppLoadException.getMessage()).append("]}").toString();
      this.a.a(this.a.getResources().getString(R.string.BundlesManagerImpl));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.am
 * JD-Core Version:    0.6.2
 */
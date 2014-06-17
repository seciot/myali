package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class bx
  implements DialogInterface.OnClickListener
{
  bx(ForgotPayPwdActivity paramForgotPayPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putCharSequence("loginId", ForgotPayPwdActivity.m(this.a));
    try
    {
      ForgotPayPwdActivity.t(this.a).getMicroApplicationContext().startApp(ForgotPayPwdActivity.r(this.a).getAppId(), ForgotPayPwdActivity.s(this.a).getSourceId(), localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("{[info=onPostResetPassword],[msg=").append(localAppLoadException.getMessage()).append("]}").toString();
      this.a.a(this.a.getResources().getString(R.string.c));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bx
 * JD-Core Version:    0.6.2
 */
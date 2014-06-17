package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class bu
  implements DialogInterface.OnCancelListener
{
  bu(ForgotPayPwdActivity paramForgotPayPwdActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((ForgotPayPwdActivity.f(this.a) != null) && (ForgotPayPwdActivity.f(this.a).isAlive()))
    {
      ForgotPayPwdActivity.f(this.a).interrupt();
      this.a.dismissProgressDialog();
    }
    do
    {
      return;
      if ((ForgotPayPwdActivity.g(this.a) != null) && (ForgotPayPwdActivity.g(this.a).isAlive()))
      {
        ForgotPayPwdActivity.g(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
      if ((ForgotPayPwdActivity.h(this.a) != null) && (ForgotPayPwdActivity.h(this.a).isAlive()))
      {
        ForgotPayPwdActivity.h(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
      if ((ForgotPayPwdActivity.i(this.a) != null) && (ForgotPayPwdActivity.i(this.a).isAlive()))
      {
        ForgotPayPwdActivity.i(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
    }
    while ((ForgotPayPwdActivity.j(this.a) == null) || (!ForgotPayPwdActivity.j(this.a).isAlive()));
    ForgotPayPwdActivity.j(this.a).interrupt();
    this.a.dismissProgressDialog();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bu
 * JD-Core Version:    0.6.2
 */
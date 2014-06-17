package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class bd
  implements DialogInterface.OnCancelListener
{
  bd(ForgotLoginPwdActivity paramForgotLoginPwdActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((ForgotLoginPwdActivity.h(this.a) != null) && (ForgotLoginPwdActivity.h(this.a).isAlive()))
    {
      ForgotLoginPwdActivity.h(this.a).interrupt();
      this.a.dismissProgressDialog();
    }
    do
    {
      return;
      if ((ForgotLoginPwdActivity.i(this.a) != null) && (ForgotLoginPwdActivity.i(this.a).isAlive()))
      {
        ForgotLoginPwdActivity.i(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
      if ((ForgotLoginPwdActivity.j(this.a) != null) && (ForgotLoginPwdActivity.j(this.a).isAlive()))
      {
        ForgotLoginPwdActivity.j(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
      if ((ForgotLoginPwdActivity.k(this.a) != null) && (ForgotLoginPwdActivity.k(this.a).isAlive()))
      {
        ForgotLoginPwdActivity.k(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
      if ((ForgotLoginPwdActivity.l(this.a) != null) && (ForgotLoginPwdActivity.l(this.a).isAlive()))
      {
        ForgotLoginPwdActivity.l(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
    }
    while ((ForgotLoginPwdActivity.m(this.a) == null) || (!ForgotLoginPwdActivity.m(this.a).isAlive()));
    ForgotLoginPwdActivity.m(this.a).interrupt();
    this.a.dismissProgressDialog();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bd
 * JD-Core Version:    0.6.2
 */
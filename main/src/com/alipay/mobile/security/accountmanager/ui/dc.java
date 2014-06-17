package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class dc
  implements DialogInterface.OnCancelListener
{
  dc(ModifyPayPwdActivity paramModifyPayPwdActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((ModifyPayPwdActivity.b(this.a) != null) && (ModifyPayPwdActivity.b(this.a).isAlive()))
    {
      ModifyPayPwdActivity.b(this.a).interrupt();
      this.a.dismissProgressDialog();
      ModifyPayPwdActivity.e(this.a).getMicroApplicationContext().finishApp(ModifyPayPwdActivity.c(this.a).getAppId(), ModifyPayPwdActivity.d(this.a).getAppId(), null);
    }
    do
    {
      return;
      if ((ModifyPayPwdActivity.f(this.a) != null) && (ModifyPayPwdActivity.f(this.a).isAlive()))
      {
        ModifyPayPwdActivity.f(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
    }
    while ((ModifyPayPwdActivity.g(this.a) == null) || (!ModifyPayPwdActivity.g(this.a).isAlive()));
    ModifyPayPwdActivity.g(this.a).interrupt();
    this.a.dismissProgressDialog();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.dc
 * JD-Core Version:    0.6.2
 */
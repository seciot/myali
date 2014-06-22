package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class cm
  implements DialogInterface.OnCancelListener
{
  cm(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((ModifyLoginPwdActivity.dexopt(this.a) != null) && (ModifyLoginPwdActivity.dexopt(this.a).isAlive()))
    {
      ModifyLoginPwdActivity.dexopt(this.a).interrupt();
      this.a.dismissProgressDialog();
      ModifyLoginPwdActivity.removeBundle(this.a).getMicroApplicationContext().finishApp(ModifyLoginPwdActivity.getBundleByComponentName(this.a).getAppId(), ModifyLoginPwdActivity.d(this.a).getAppId(), null);
    }
    do
    {
      return;
      if ((ModifyLoginPwdActivity.f(this.a) != null) && (ModifyLoginPwdActivity.f(this.a).isAlive()))
      {
        ModifyLoginPwdActivity.f(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
    }
    while ((ModifyLoginPwdActivity.g(this.a) == null) || (!ModifyLoginPwdActivity.g(this.a).isAlive()));
    ModifyLoginPwdActivity.g(this.a).interrupt();
    this.a.dismissProgressDialog();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cm
 * JD-Core Version:    0.6.2
 */
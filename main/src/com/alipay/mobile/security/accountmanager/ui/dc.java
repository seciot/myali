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
    if ((ModifyPayPwdActivity.dexopt(this.a) != null) && (ModifyPayPwdActivity.dexopt(this.a).isAlive()))
    {
      ModifyPayPwdActivity.dexopt(this.a).interrupt();
      this.a.dismissProgressDialog();
      ModifyPayPwdActivity.removeBundle(this.a).getMicroApplicationContext().finishApp(ModifyPayPwdActivity.getBundleByComponentName(this.a).getAppId(), ModifyPayPwdActivity.d(this.a).getAppId(), null);
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
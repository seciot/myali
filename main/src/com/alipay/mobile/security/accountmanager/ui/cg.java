package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class cg
  implements DialogInterface.OnCancelListener
{
  cg(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    ModifyLoginPwdActivity.s(this.a).getMicroApplicationContext().finishApp(ModifyLoginPwdActivity.q(this.a).getAppId(), ModifyLoginPwdActivity.r(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cg
 * JD-Core Version:    0.6.2
 */
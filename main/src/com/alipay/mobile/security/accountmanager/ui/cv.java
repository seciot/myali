package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class cv
  implements DialogInterface.OnCancelListener
{
  cv(ModifyPayPwdActivity paramModifyPayPwdActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    ModifyPayPwdActivity.s(this.a).getMicroApplicationContext().finishApp(ModifyPayPwdActivity.q(this.a).getAppId(), ModifyPayPwdActivity.r(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cv
 * JD-Core Version:    0.6.2
 */
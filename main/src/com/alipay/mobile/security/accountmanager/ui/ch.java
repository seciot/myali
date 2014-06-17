package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class ch
  implements DialogInterface.OnClickListener
{
  ch(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ModifyLoginPwdActivity.v(this.a).getMicroApplicationContext().finishApp(ModifyLoginPwdActivity.t(this.a).getAppId(), ModifyLoginPwdActivity.u(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ch
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class cf
  implements DialogInterface.OnClickListener
{
  cf(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ModifyLoginPwdActivity.p(this.a).getMicroApplicationContext().finishApp(ModifyLoginPwdActivity.n(this.a).getAppId(), ModifyLoginPwdActivity.o(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cf
 * JD-Core Version:    0.6.2
 */
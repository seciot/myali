package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class cu
  implements DialogInterface.OnClickListener
{
  cu(ModifyPayPwdActivity paramModifyPayPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ModifyPayPwdActivity.p(this.a).getMicroApplicationContext().finishApp(ModifyPayPwdActivity.n(this.a).getAppId(), ModifyPayPwdActivity.o(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cu
 * JD-Core Version:    0.6.2
 */
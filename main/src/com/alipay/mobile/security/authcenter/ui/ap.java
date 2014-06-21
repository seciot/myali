package com.alipay.mobile.security.authcenter.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdRes;

final class ap
  implements DialogInterface.OnClickListener
{
  ap(RegisterNewActivity paramRegisterNewActivity, SetMobilePayPwdRes paramSetMobilePayPwdRes)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RegisterNewActivity.a(this.b.b(), RegisterNewActivity.getBundle(this.b), false, false, this.a.isMobileUser());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ap
 * JD-Core Version:    0.6.2
 */
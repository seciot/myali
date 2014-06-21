package com.alipay.mobile.security.authcenter.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobileapp.biz.rpc.register.vo.VerifyCheckRes;

final class ar
  implements DialogInterface.OnClickListener
{
  ar(RegisterNewActivity paramRegisterNewActivity, VerifyCheckRes paramVerifyCheckRes)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RegisterNewActivity.a(this.b.stop(), "", false, false, this.a.isMobileUser());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ar
 * JD-Core Version:    0.6.2
 */
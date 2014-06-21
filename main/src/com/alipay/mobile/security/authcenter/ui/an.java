package com.alipay.mobile.security.authcenter.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class an
  implements DialogInterface.OnClickListener
{
  an(RegisterNewActivity paramRegisterNewActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RegisterNewActivity.a(this.a.b(), RegisterNewActivity.getBundle(this.a), true, true, true);
    RegisterNewActivity.a(this.a, "");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.an
 * JD-Core Version:    0.6.2
 */
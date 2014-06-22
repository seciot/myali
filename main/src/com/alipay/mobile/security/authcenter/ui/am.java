package com.alipay.mobile.security.authcenter.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class am
  implements DialogInterface.OnClickListener
{
  am(RegisterNewActivity paramRegisterNewActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RegisterNewActivity.getBundleByComponentName(this.a);
    this.a.onBackPressed();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.am
 * JD-Core Version:    0.6.2
 */
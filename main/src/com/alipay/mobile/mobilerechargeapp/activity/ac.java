package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ac
  implements DialogInterface.OnClickListener
{
  ac(MobileBalancesWarnActivity paramMobileBalancesWarnActivity, boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (this.a)
      this.b.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.ac
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class q
  implements DialogInterface.OnCancelListener
{
  q(BalancesWarnInputActivity paramBalancesWarnInputActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.a)
      this.b.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.q
 * JD-Core Version:    0.6.2
 */
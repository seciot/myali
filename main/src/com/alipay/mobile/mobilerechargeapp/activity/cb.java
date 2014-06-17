package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class cb
  implements DialogInterface.OnCancelListener
{
  cb(MobileRechargeCashierActivity paramMobileRechargeCashierActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.a)
      this.b.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.cb
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class z
  implements DialogInterface.OnCancelListener
{
  z(BaseAuthActivity.c paramc)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.cancel(true);
    this.a.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.z
 * JD-Core Version:    0.6.2
 */
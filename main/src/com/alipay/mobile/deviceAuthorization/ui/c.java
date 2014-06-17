package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class c
  implements DialogInterface.OnCancelListener
{
  c(AuthAdminActivity.b paramb)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.cancel(true);
    this.a.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.c
 * JD-Core Version:    0.6.2
 */
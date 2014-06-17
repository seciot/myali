package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class aj
  implements DialogInterface.OnCancelListener
{
  aj(LoginLogsWelcomeActivity paramLoginLogsWelcomeActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.aj
 * JD-Core Version:    0.6.2
 */
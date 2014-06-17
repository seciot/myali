package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import java.util.concurrent.atomic.AtomicBoolean;

final class z
  implements DialogInterface.OnCancelListener
{
  z(AlipassListActivity paramAlipassListActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    AlipassListActivity.a(this.a).set(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.z
 * JD-Core Version:    0.6.2
 */
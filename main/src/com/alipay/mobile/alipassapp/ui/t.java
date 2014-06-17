package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.alipay.mobile.commonui.widget.APShareSelectDialog;

final class t
  implements DialogInterface.OnDismissListener
{
  t(AlipassForShareActivity paramAlipassForShareActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (AlipassForShareActivity.c(this.a) != null)
      AlipassForShareActivity.c(this.a).dismiss();
    this.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.t
 * JD-Core Version:    0.6.2
 */
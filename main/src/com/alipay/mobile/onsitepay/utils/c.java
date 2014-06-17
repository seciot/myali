package com.alipay.mobile.onsitepay.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.alipay.mobile.commonui.widget.APShareSelectDialog;

final class c
  implements DialogInterface.OnDismissListener
{
  c(ShareSavePicThireBtnActivity paramShareSavePicThireBtnActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (ShareSavePicThireBtnActivity.d(this.a) != null)
      ShareSavePicThireBtnActivity.d(this.a).dismiss();
    this.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.c
 * JD-Core Version:    0.6.2
 */
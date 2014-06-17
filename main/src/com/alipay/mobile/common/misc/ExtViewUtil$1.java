package com.alipay.mobile.common.misc;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ExtViewUtil$1
  implements DialogInterface.OnClickListener
{
  ExtViewUtil$1(boolean paramBoolean, Context paramContext)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if ((this.val$back) && (this.val$context != null))
      ((Activity)this.val$context).finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ExtViewUtil.1
 * JD-Core Version:    0.6.2
 */
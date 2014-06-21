package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.kabaoprod.core.model.model.RemindInfo;

final class cr
  implements DialogInterface.OnClickListener
{
  cr(cp paramcp)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AlipassRemindActivity.getBundle(this.a.a).setRemindSet(paramInt + 1);
    AlipassRemindActivity.a(this.a.a, AlipassRemindActivity.getBundle(this.a.a));
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.cr
 * JD-Core Version:    0.6.2
 */
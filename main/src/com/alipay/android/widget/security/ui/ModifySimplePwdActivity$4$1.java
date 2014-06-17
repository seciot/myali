package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

class ModifySimplePwdActivity$4$1
  implements DialogInterface.OnClickListener
{
  ModifySimplePwdActivity$4$1(ModifySimplePwdActivity.4 param4)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ModifySimplePwdActivity.e(this.a.a).finishApp("", ModifySimplePwdActivity.d(this.a.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ModifySimplePwdActivity.4.1
 * JD-Core Version:    0.6.2
 */
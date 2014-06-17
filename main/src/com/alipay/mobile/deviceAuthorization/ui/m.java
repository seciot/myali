package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;

final class m
  implements DialogInterface.OnClickListener
{
  m(BaseAuthActivity paramBaseAuthActivity, boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a)
      BaseAuthActivity.C(this.b).finishApp("20000055", "20000055", null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.m
 * JD-Core Version:    0.6.2
 */
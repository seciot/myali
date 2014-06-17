package com.alipay.mobile.alipassapp.ui.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.alipay.mobile.framework.app.ui.BaseActivity;

final class aw
  implements DialogInterface.OnCancelListener
{
  aw(au paramau, BaseActivity paramBaseActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.b.b.a(this.a);
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.aw
 * JD-Core Version:    0.6.2
 */
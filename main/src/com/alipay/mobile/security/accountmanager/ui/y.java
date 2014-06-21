package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class y
  implements DialogInterface.OnCancelListener
{
  y(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((BindPhoneActivity.getBundle(this.a) != null) && (BindPhoneActivity.getBundle(this.a).isAlive()))
    {
      BindPhoneActivity.getBundle(this.a).interrupt();
      this.a.dismissProgressDialog();
    }
    do
    {
      return;
      if ((BindPhoneActivity.b(this.a) != null) && (BindPhoneActivity.b(this.a).isAlive()))
      {
        BindPhoneActivity.b(this.a).interrupt();
        BindPhoneActivity.b(this.a, Boolean.valueOf(true));
        this.a.dismissProgressDialog();
        return;
      }
      if ((BindPhoneActivity.c(this.a) != null) && (BindPhoneActivity.c(this.a).isAlive()))
      {
        BindPhoneActivity.c(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
      if ((BindPhoneActivity.d(this.a) != null) && (BindPhoneActivity.d(this.a).isAlive()))
      {
        BindPhoneActivity.d(this.a).interrupt();
        this.a.dismissProgressDialog();
        return;
      }
    }
    while ((BindPhoneActivity.removeBundle(this.a) == null) || (!BindPhoneActivity.removeBundle(this.a).isAlive()));
    BindPhoneActivity.removeBundle(this.a).interrupt();
    this.a.dismissProgressDialog();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.y
 * JD-Core Version:    0.6.2
 */
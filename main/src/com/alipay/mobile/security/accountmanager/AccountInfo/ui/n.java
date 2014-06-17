package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.alipay.mobile.commonui.widget.APShareSelectDialog;

final class n
  implements DialogInterface.OnDismissListener
{
  n(SecurityAccountQrCodeActivity paramSecurityAccountQrCodeActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (SecurityAccountQrCodeActivity.g(this.a) != null)
      SecurityAccountQrCodeActivity.g(this.a).dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.n
 * JD-Core Version:    0.6.2
 */
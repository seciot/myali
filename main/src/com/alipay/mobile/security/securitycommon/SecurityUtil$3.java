package com.alipay.mobile.security.securitycommon;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

class SecurityUtil$3
  implements DialogInterface.OnKeyListener
{
  SecurityUtil$3(SecurityUtil paramSecurityUtil)
  {
  }

  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      paramDialogInterface.dismiss();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityUtil.3
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Build.VERSION;

class NFCSettingActivity$1$1
  implements DialogInterface.OnClickListener
{
  NFCSettingActivity$1$1(NFCSettingActivity.1 param1)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      this.a.b.startActivityForResult(new Intent("android.settings.NFC_SETTINGS"), 0);
      return;
    }
    this.a.b.startActivityForResult(new Intent("android.settings.WIRELESS_SETTINGS"), 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.NFCSettingActivity.1.1
 * JD-Core Version:    0.6.2
 */
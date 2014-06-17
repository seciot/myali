package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class IndependentPwdSettingActivity$3
  implements DialogInterface.OnClickListener
{
  IndependentPwdSettingActivity$3(IndependentPwdSettingActivity paramIndependentPwdSettingActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:95188"));
    this.a.startActivity(localIntent);
    IndependentPwdSettingActivity.a(this.a, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IndependentPwdSettingActivity.3
 * JD-Core Version:    0.6.2
 */
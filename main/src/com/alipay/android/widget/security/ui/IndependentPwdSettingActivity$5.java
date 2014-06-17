package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class IndependentPwdSettingActivity$5
  implements DialogInterface.OnClickListener
{
  IndependentPwdSettingActivity$5(IndependentPwdSettingActivity paramIndependentPwdSettingActivity, String paramString)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (IndependentPwdSettingActivity.b(this.a))
    {
      IndependentPwdSettingActivity.e(this.b);
      return;
    }
    IndependentPwdSettingActivity.a(this.b, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IndependentPwdSettingActivity.5
 * JD-Core Version:    0.6.2
 */
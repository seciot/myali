package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

class IndependentPwdSettingActivity$2
  implements DialogInterface.OnClickListener
{
  IndependentPwdSettingActivity$2(IndependentPwdSettingActivity paramIndependentPwdSettingActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (StringUtils.equals("msp", IndependentPwdSettingActivity.c(this.a)))
    {
      IndependentPwdSettingActivity.d(this.a).getMicroApplicationContext().exit();
      return;
    }
    IndependentPwdSettingActivity.v(this.a, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IndependentPwdSettingActivity.2
 * JD-Core Version:    0.6.2
 */
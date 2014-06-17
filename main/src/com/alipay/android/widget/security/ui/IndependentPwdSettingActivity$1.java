package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

class IndependentPwdSettingActivity$1
  implements View.OnClickListener
{
  IndependentPwdSettingActivity$1(IndependentPwdSettingActivity paramIndependentPwdSettingActivity)
  {
  }

  public void onClick(View paramView)
  {
    SecurityUtil.b(AlipayApplication.getInstance(), IndependentPwdSettingActivity.a(this.a));
    if (IndependentPwdSettingActivity.b(this.a) != null)
      this.a.a(IndependentPwdSettingActivity.b(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IndependentPwdSettingActivity.1
 * JD-Core Version:    0.6.2
 */
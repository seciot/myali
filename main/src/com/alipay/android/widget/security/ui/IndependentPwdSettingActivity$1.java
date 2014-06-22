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
    SecurityUtil.d(AlipayApplication.getInstance(), IndependentPwdSettingActivity.getBundle(this.a));
    if (IndependentPwdSettingActivity.dexopt(this.a) != null)
      this.a.getBundle(IndependentPwdSettingActivity.dexopt(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IndependentPwdSettingActivity.1
 * JD-Core Version:    0.6.2
 */
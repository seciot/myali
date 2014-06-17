package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.app.ActivityApplication;

class SecurityPasswordManagerActivity$14
  implements View.OnClickListener
{
  SecurityPasswordManagerActivity$14(SecurityPasswordManagerActivity paramSecurityPasswordManagerActivity)
  {
  }

  public void onClick(View paramView)
  {
    SecurityPasswordManagerActivity.b(this.a, false);
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, SecurityPasswordManagerActivity.g(this.a).getAppId(), "-", "mobilePasswordIndex", "openMobilePayPwd");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity.14
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.widget.security.ui;

import android.view.View;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;
import com.alipay.mobile.framework.app.ActivityApplication;

class SecurityPasswordManagerActivity$4
  implements APAbsTableView.OnSwitchListener
{
  SecurityPasswordManagerActivity$4(SecurityPasswordManagerActivity paramSecurityPasswordManagerActivity)
  {
  }

  public void onSwitchListener(boolean paramBoolean, View paramView)
  {
    if (paramBoolean)
      AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "security", "-", "inputLoginPwdBox", "mobilePasswordIndex", "openGesture");
    for (this.a.l = 1; ; this.a.l = 2)
    {
      SecurityPasswordManagerActivity.a(this.a, paramBoolean);
      return;
      AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", SecurityPasswordManagerActivity.e(this.a).getAppId(), "-", "-", "mobilePasswordIndex", "closeGesture");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity.4
 * JD-Core Version:    0.6.2
 */
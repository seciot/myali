package com.alipay.android.widget.security.ui;

import android.view.View;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;

class SecurityPasswordManagerForTUserActivity$1
  implements APAbsTableView.OnSwitchListener
{
  SecurityPasswordManagerForTUserActivity$1(SecurityPasswordManagerForTUserActivity paramSecurityPasswordManagerForTUserActivity)
  {
  }

  public void onSwitchListener(boolean paramBoolean, View paramView)
  {
    if (paramBoolean)
      AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "security", "-", "inputLoginPwdBox", "mobilePasswordIndex", "openGesture");
    for (this.a.j = 1; ; this.a.j = 2)
    {
      SecurityPasswordManagerForTUserActivity.a(this.a, paramBoolean);
      return;
      AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "security", "-", "inputLoginPwdBox", "mobilePasswordIndex", "closeGesture");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerForTUserActivity.1
 * JD-Core Version:    0.6.2
 */
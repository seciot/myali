package com.alipay.mobile.security.accountmanager.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

final class a
  implements View.OnClickListener
{
  a(AccountManagerActivity paramAccountManagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "20000027", "-", "-", "accountManageView", "addAccount");
    AccountManagerActivity.a(this.a, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.a
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.mobilerechargeapp.activity;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.mobilerechargeapp.utils.LogAgentWriteLog;

final class bv
  implements View.OnClickListener
{
  bv(MobileRechargeCashierActivity paramMobileRechargeCashierActivity)
  {
  }

  public final void onClick(View paramView)
  {
    LogAgentWriteLog.h(this.a);
    this.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.bv
 * JD-Core Version:    0.6.2
 */
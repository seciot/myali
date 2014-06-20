package com.alipay.mobile.mobilerechargeapp.activity;

import android.view.View;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;

final class ca
  implements APAbsTableView.OnSwitchListener
{
  ca(MobileRechargeCashierActivity paramMobileRechargeCashierActivity)
  {
  }

  public final void onSwitchListener(boolean paramBoolean, View paramView)
  {
    if (paramBoolean)
    {
      this.a.a(MobileRechargeCashierActivity.removeBundle(this.a), MobileRechargeCashierActivity.f(this.a));
      return;
    }
    this.a.b(MobileRechargeCashierActivity.removeBundle(this.a), MobileRechargeCashierActivity.f(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.ca
 * JD-Core Version:    0.6.2
 */
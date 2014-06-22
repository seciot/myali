package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.Intent;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.mobilerechargeapp.adapter.WarnManagerListAdapter.OperationListener;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;
import com.alipay.mobile.mobilerechargeapp.utils.LogAgentWriteLog;
import java.util.ArrayList;

final class aa
  implements WarnManagerListAdapter.OperationListener
{
  aa(MobileBalancesWarnActivity paramMobileBalancesWarnActivity)
  {
  }

  public final void a()
  {
    if (!MobileBalancesWarnActivity.getBundle(this.a))
      return;
    MobileBalancesWarnActivity.dexopt(this.a);
    LogAgentWriteLog.getBundleByComponentName(this.a);
    MicroApplicationContext localMicroApplicationContext = MobileBalancesWarnActivity.getBundleByComponentName(this.a).getMicroApplicationContext();
    Intent localIntent = new Intent(this.a, BalancesWarnInputActivity_.class);
    localIntent.setFlags(67108864);
    localMicroApplicationContext.startActivityForResult(MobileBalancesWarnActivity.d(this.a), localIntent, 10);
  }

  public final void a(int paramInt)
  {
    new StringBuilder("onStartCmsListener =").append(paramInt).toString();
    MicroApplicationContext localMicroApplicationContext = MobileBalancesWarnActivity.removeBundle(this.a).getMicroApplicationContext();
    Intent localIntent = new Intent(this.a, BalancesWarnCmsActivity_.class);
    localIntent.setFlags(67108864);
    localMicroApplicationContext.startActivityForResult(MobileBalancesWarnActivity.f(this.a), localIntent, 10);
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    new StringBuilder("onSwitchListener pos = ").append(paramInt).append(" isOff = ").append(paramBoolean).toString();
    if (paramBoolean)
    {
      this.a.e(((ItemData)this.a.b.get(paramInt)).b, paramInt, ((ItemData)this.a.b.get(paramInt)).d);
      return;
    }
    this.a.b(((ItemData)this.a.b.get(paramInt)).b, paramInt, ((ItemData)this.a.b.get(paramInt)).d);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.aa
 * JD-Core Version:    0.6.2
 */
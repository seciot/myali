package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.mobilerechargeapp.utils.LogAgentWriteLog;

final class bz
  implements View.OnClickListener
{
  bz(MobileRechargeCashierActivity paramMobileRechargeCashierActivity, String paramString1, String paramString2)
  {
  }

  public final void onClick(View paramView)
  {
    LogAgentWriteLog.g(this.c);
    try
    {
      if (this.a != null)
      {
        Bundle localBundle = new Bundle();
        localBundle.putString("actionType", this.a);
        MobileRechargeCashierActivity.getBundle(this.c).getMicroApplicationContext().startApp("10000003", this.b, localBundle);
      }
      while (true)
      {
        MobileRechargeCashierActivity.getBundleByComponentName(this.c).getMicroApplicationContext().finishApp("10000003", "10000003", null);
        return;
        MobileRechargeCashierActivity.b(this.c).getMicroApplicationContext().startApp("10000003", this.b, null);
      }
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("app load error:").append(localAppLoadException.getMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.bz
 * JD-Core Version:    0.6.2
 */
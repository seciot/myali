package com.alipay.mobile.framework.service.ext.openplatform.apps;

import android.os.Handler;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BundleContext;
import com.alipay.mobile.framework.MicroApplicationContext;

final class d
  implements Runnable
{
  d(InnerApp paramInnerApp)
  {
  }

  public final void run()
  {
    if (AlipayApplication.getInstance().getMicroApplicationContext().findDescriptionById(this.a.getAppId()) == null)
      try
      {
        AlipayApplication.getInstance().getBundleContext().addExternelBundle(this.a.a());
        InnerApp.getBundle(this.a).post(new e(this));
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        InnerApp.getBundle(this.a).post(new f(this));
        return;
      }
    this.a.onInstallComplete(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.d
 * JD-Core Version:    0.6.2
 */
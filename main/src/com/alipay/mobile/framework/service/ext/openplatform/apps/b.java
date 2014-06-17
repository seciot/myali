package com.alipay.mobile.framework.service.ext.openplatform.apps;

import android.os.Bundle;
import android.os.Handler;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BundleContext;

final class b
  implements Runnable
{
  b(InnerApp paramInnerApp, String paramString1, String paramString2, Bundle paramBundle)
  {
  }

  public final void run()
  {
    try
    {
      AlipayApplication.getInstance().getBundleContext().addExternelBundle(this.d.a());
      InnerApp.a(this.d).post(new c(this));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.b
 * JD-Core Version:    0.6.2
 */
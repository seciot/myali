package com.alipay.mobile.appstoreapp.manager;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BundleContext;

final class b
  implements Runnable
{
  b(AppManageServiceImpl paramAppManageServiceImpl, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      AlipayApplication.getInstance().getBundleContext().addExternelBundle(this.a);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder().append(localException.getMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.manager.b
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.core.init.impl;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import android.webkit.CookieSyncManager;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.core.init.BootLoader;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BundleContext;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.ActivityCollections;

public class BootLoaderImpl
  implements BootLoader
{
  private MicroApplicationContext a;
  private BundleLoadHelper b;

  public BootLoaderImpl(MicroApplicationContext paramMicroApplicationContext)
  {
    this.a = paramMicroApplicationContext;
  }

  public MicroApplicationContext getContext()
  {
    return this.a;
  }

  public void load()
  {
    new CommonServiceLoadHelper(this).loadServices();
    LogCatLog.init();
    CookieSyncManager.createInstance(this.a.getApplicationContext());
    ActivityCollections.createInstance();
    this.b = new BundleLoadHelper(this);
    this.b.loadBundleDefinitions();
    Intent localIntent = new Intent();
    localIntent.setAction("com.alipay.mobile.framework.INITED");
    LocalBroadcastManager.getInstance(this.a.getApplicationContext()).sendBroadcast(localIntent);
  }

  public void loadBundle(String paramString)
  {
    BundleContext localBundleContext = AlipayApplication.getInstance().getBundleContext();
    this.b.loadBundle(localBundleContext, paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.init.impl.BootLoaderImpl
 * JD-Core Version:    0.6.2
 */
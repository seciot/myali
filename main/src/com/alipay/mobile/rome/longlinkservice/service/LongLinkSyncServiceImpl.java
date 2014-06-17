package com.alipay.mobile.rome.longlinkservice.service;

import android.os.Bundle;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.longlink.LongLinkServiceManager;
import com.alipay.mobile.rome.longlinkservice.LongLinkSyncService;

public class LongLinkSyncServiceImpl extends LongLinkSyncService
{
  public static final String TAG = LongLinkSyncServiceImpl.class.getSimpleName();
  private LongLinkServiceManager a;

  public boolean getLinkState()
  {
    return this.a.isConnected();
  }

  protected void onCreate(Bundle paramBundle)
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    this.a = LongLinkServiceManager.getInstance(localAlipayApplication);
    if (AppInfo.getInstance().isDebuggable())
      this.a.setDebugMode(true);
    this.a.bindService(new a(localAlipayApplication));
  }

  protected void onDestroy(Bundle paramBundle)
  {
    this.a.unBindService();
    this.a = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.longlinkservice.service.LongLinkSyncServiceImpl
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import android.os.Handler;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.ShortLinkService;
import com.alipay.mobile.framework.service.common.ShortLinkService.OnShortLinkCreated;
import com.alipay.mobileapp.biz.rpc.shortlink.CreateShortLinkFacade;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public class ShortLinkServiceImpl extends ShortLinkService
{
  public void CreateShortLink(String paramString, ShortLinkService.OnShortLinkCreated paramOnShortLinkCreated)
  {
    BackgroundExecutor.execute(new ShortLinkServiceImpl.1(this, paramString, (CreateShortLinkFacade)((RpcService)getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(CreateShortLinkFacade.class), new Handler(), paramOnShortLinkCreated));
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.ShortLinkServiceImpl
 * JD-Core Version:    0.6.2
 */
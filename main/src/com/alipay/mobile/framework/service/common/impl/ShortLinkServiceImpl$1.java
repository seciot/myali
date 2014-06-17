package com.alipay.mobile.framework.service.common.impl;

import android.os.Handler;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.common.ShortLinkService.OnShortLinkCreated;
import com.alipay.mobileapp.biz.rpc.shortlink.CreateShortLinkFacade;
import com.alipay.mobileapp.biz.rpc.shortlink.CreateShortLinkReq;
import com.alipay.mobileapp.biz.rpc.shortlink.CreateShortLinkRes;

class ShortLinkServiceImpl$1
  implements Runnable
{
  ShortLinkServiceImpl$1(ShortLinkServiceImpl paramShortLinkServiceImpl, String paramString, CreateShortLinkFacade paramCreateShortLinkFacade, Handler paramHandler, ShortLinkService.OnShortLinkCreated paramOnShortLinkCreated)
  {
  }

  public void run()
  {
    CreateShortLinkReq localCreateShortLinkReq = new CreateShortLinkReq();
    localCreateShortLinkReq.setOriginalUrl(this.val$originalLink);
    CreateShortLinkRes localCreateShortLinkRes;
    try
    {
      localCreateShortLinkRes = this.val$facade.createShortLink(localCreateShortLinkReq);
      if (localCreateShortLinkRes == null)
        throw new RpcException("res is null");
    }
    catch (RpcException localRpcException)
    {
      this.val$handler.post(new ShortLinkServiceImpl.1.2(this));
      return;
    }
    this.val$handler.post(new ShortLinkServiceImpl.1.1(this, localCreateShortLinkRes));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.ShortLinkServiceImpl.1
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.framework.service.common.impl;

import com.alipay.mobile.framework.service.common.ShortLinkService.OnShortLinkCreated;
import com.alipay.mobileapp.biz.rpc.shortlink.CreateShortLinkRes;

class ShortLinkServiceImpl$1$1
  implements Runnable
{
  ShortLinkServiceImpl$1$1(ShortLinkServiceImpl.1 param1, CreateShortLinkRes paramCreateShortLinkRes)
  {
  }

  public void run()
  {
    ShortLinkService.OnShortLinkCreated localOnShortLinkCreated;
    if (this.this$1.val$callback != null)
    {
      localOnShortLinkCreated = this.this$1.val$callback;
      if (this.val$res.getResultStatus() != 100)
        break label54;
    }
    label54: for (boolean bool = true; ; bool = false)
    {
      localOnShortLinkCreated.onFinish(bool, this.this$1.val$originalLink, this.val$res.getShortUrl());
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.ShortLinkServiceImpl.1.1
 * JD-Core Version:    0.6.2
 */
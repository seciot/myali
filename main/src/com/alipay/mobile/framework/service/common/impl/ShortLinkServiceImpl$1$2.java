package com.alipay.mobile.framework.service.common.impl;

import com.alipay.mobile.framework.service.common.ShortLinkService.OnShortLinkCreated;

class ShortLinkServiceImpl$1$2
  implements Runnable
{
  ShortLinkServiceImpl$1$2(ShortLinkServiceImpl.1 param1)
  {
  }

  public void run()
  {
    if (this.this$1.val$callback != null)
      this.this$1.val$callback.onFinish(false, this.this$1.val$originalLink, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.ShortLinkServiceImpl.1.2
 * JD-Core Version:    0.6.2
 */
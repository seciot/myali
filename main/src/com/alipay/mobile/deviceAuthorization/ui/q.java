package com.alipay.mobile.deviceAuthorization.ui;

import com.alipay.mobile.common.image.ImageCacheListener;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.transport.http.HttpUrlResponse;

final class q
  implements ImageCacheListener
{
  q(BaseAuthActivity paramBaseAuthActivity)
  {
  }

  public final long getCachePeriod(HttpUrlRequest paramHttpUrlRequest, HttpUrlResponse paramHttpUrlResponse)
  {
    return 2592000000L;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.q
 * JD-Core Version:    0.6.2
 */
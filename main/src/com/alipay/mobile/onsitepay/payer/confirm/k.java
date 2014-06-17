package com.alipay.mobile.onsitepay.payer.confirm;

import com.alipay.mobile.common.image.ImageCacheListener;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.transport.http.HttpUrlResponse;

final class k
  implements ImageCacheListener
{
  k(C2CConfirmActivity paramC2CConfirmActivity)
  {
  }

  public final long getCachePeriod(HttpUrlRequest paramHttpUrlRequest, HttpUrlResponse paramHttpUrlResponse)
  {
    return 2592000000L;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.k
 * JD-Core Version:    0.6.2
 */
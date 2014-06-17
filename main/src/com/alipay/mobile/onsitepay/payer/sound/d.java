package com.alipay.mobile.onsitepay.payer.sound;

import com.alipay.mobile.common.image.ImageCacheListener;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.transport.http.HttpUrlResponse;

final class d
  implements ImageCacheListener
{
  d(NearbyFriend paramNearbyFriend)
  {
  }

  public final long getCachePeriod(HttpUrlRequest paramHttpUrlRequest, HttpUrlResponse paramHttpUrlResponse)
  {
    return 2592000000L;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.d
 * JD-Core Version:    0.6.2
 */
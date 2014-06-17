package com.alipay.mobile.onsitepay.payer.sound;

import android.graphics.Bitmap;
import android.os.Handler;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

final class b
  implements ImageLoaderListener
{
  b(NearbyFriend paramNearbyFriend)
  {
  }

  public final void onCancelled(String paramString)
  {
  }

  public final void onFailed(String paramString1, int paramInt, String paramString2)
  {
  }

  public final void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    NearbyFriend.access$100(this.a).post(new c(this, paramBitmap, paramString));
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.b
 * JD-Core Version:    0.6.2
 */
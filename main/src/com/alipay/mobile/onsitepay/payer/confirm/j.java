package com.alipay.mobile.onsitepay.payer.confirm;

import android.graphics.Bitmap;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

final class j
  implements ImageLoaderListener
{
  j(C2CConfirmActivity paramC2CConfirmActivity)
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
    this.a.a(paramBitmap);
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.j
 * JD-Core Version:    0.6.2
 */
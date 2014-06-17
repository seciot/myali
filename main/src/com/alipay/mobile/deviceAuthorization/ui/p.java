package com.alipay.mobile.deviceAuthorization.ui;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

final class p
  implements ImageLoaderListener
{
  p(BaseAuthActivity paramBaseAuthActivity, ImageView paramImageView)
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
    this.b.a(this.a, paramBitmap);
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.p
 * JD-Core Version:    0.6.2
 */
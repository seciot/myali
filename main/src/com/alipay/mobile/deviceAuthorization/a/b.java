package com.alipay.mobile.deviceAuthorization.a;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

final class b
  implements ImageLoaderListener
{
  b(AppBundle parama, View paramView)
  {
  }

  public final void onCancelled(String paramString)
  {
  }

  public final void onFailed(String paramString1, int paramInt, String paramString2)
  {
    new StringBuilder("load image failed,path:").append(paramString1).toString();
  }

  public final void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    ((Activity)AppBundle.a(this.b)).runOnUiThread(new c(this, paramBitmap));
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.a.b
 * JD-Core Version:    0.6.2
 */
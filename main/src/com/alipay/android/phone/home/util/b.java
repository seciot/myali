package com.alipay.android.phone.home.util;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.widget.ImageView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

final class b
  implements ImageLoaderListener
{
  b(a parama)
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
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(AlipayApplication.getInstance().getResources(), paramBitmap);
    Bitmap localBitmap = ImageLoadHelper.a(paramBitmap);
    if ((this.a.c == null) || (this.a.c.getHandler() == null))
      return;
    this.a.c.getHandler().post(new c(this, localBitmap, localBitmapDrawable));
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.util.b
 * JD-Core Version:    0.6.2
 */
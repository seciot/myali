package com.alipay.mobile.framework.service.ext.openplatform.app;

import android.graphics.Bitmap;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;
import com.alipay.mobile.framework.service.ext.openplatform.AppIconLoadCallback;
import com.alipay.mobile.framework.service.ext.openplatform.AppUtils;

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
    new StringBuilder("load icon:").append(paramString1).append(" failed, msg:").append(paramString2).toString();
  }

  public final void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    new StringBuilder("load icon:").append(paramString).append(" succeed ").toString();
    this.a.b.icon = AppUtils.createRoundIcon(paramBitmap);
    this.a.a.onLoad(this.a.b.icon);
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.app.b
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.onsitepay.payee;

import android.graphics.Bitmap;
import android.os.Handler;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

final class v
  implements ImageLoaderListener
{
  v(FacePayeeHead paramFacePayeeHead)
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
    FacePayeeHead.access$200(this.a).post(new w(this, paramBitmap, paramString));
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.v
 * JD-Core Version:    0.6.2
 */
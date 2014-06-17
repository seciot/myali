package com.alipay.mobile.common.misc;

import android.graphics.Bitmap;

final class ExtViewUtil$2 extends ImageLoaderListenerAdapter
{
  ExtViewUtil$2(LoadUrlCallback paramLoadUrlCallback)
  {
  }

  public final void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    this.val$callback.callback(paramBitmap);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ExtViewUtil.2
 * JD-Core Version:    0.6.2
 */
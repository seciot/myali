package com.alipay.mobile.appstoreapp.adapter;

import android.app.Activity;
import android.graphics.Bitmap;
import com.alipay.mobile.framework.service.ext.openplatform.AppIconLoadCallback;

final class b
  implements AppIconLoadCallback
{
  b(FastLoginAppAdapter paramFastLoginAppAdapter, FastLoginAppAdapter.ViewHolder paramViewHolder)
  {
  }

  public final void onLoad(Bitmap paramBitmap)
  {
    if ((FastLoginAppAdapter.a(this.b) instanceof Activity))
      ((Activity)FastLoginAppAdapter.b(this.b)).runOnUiThread(new c(this, paramBitmap));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.adapter.b
 * JD-Core Version:    0.6.2
 */
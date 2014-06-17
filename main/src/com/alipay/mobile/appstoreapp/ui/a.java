package com.alipay.mobile.appstoreapp.ui;

import android.graphics.Bitmap;
import com.alipay.mobile.framework.service.ext.openplatform.AppIconLoadCallback;

final class a
  implements AppIconLoadCallback
{
  a(AppDetailActivity paramAppDetailActivity)
  {
  }

  public final void onLoad(Bitmap paramBitmap)
  {
    this.a.runOnUiThread(new b(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.a
 * JD-Core Version:    0.6.2
 */
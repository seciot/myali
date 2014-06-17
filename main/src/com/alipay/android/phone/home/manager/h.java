package com.alipay.android.phone.home.manager;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class h
  implements Runnable
{
  h(g paramg, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    BaseAppsItemAdapter localBaseAppsItemAdapter = this.b.c;
    Bitmap localBitmap = this.a;
    this.b.a.isAlipayApp();
    Drawable localDrawable = localBaseAppsItemAdapter.a(localBitmap);
    this.b.b.a.setImageDrawable(localDrawable);
    this.b.c.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.h
 * JD-Core Version:    0.6.2
 */
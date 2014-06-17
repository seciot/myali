package com.alipay.mobile.appstoreapp.ui;

import android.os.Handler;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class f extends Thread
{
  f(AppDetailActivity paramAppDetailActivity)
  {
  }

  public final void run()
  {
    AppDetailActivity.e(this.a).downloadApp();
    AppDetailActivity.j(this.a).postDelayed(new g(this), 500L);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.f
 * JD-Core Version:    0.6.2
 */
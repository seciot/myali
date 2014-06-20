package com.alipay.mobile.appstoreapp.ui;

import android.os.Handler;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class h extends Thread
{
  h(AppDetailActivity paramAppDetailActivity)
  {
  }

  public final void run()
  {
    AppDetailActivity.removeBundle(this.a).downloadApp();
    AppDetailActivity.j(this.a).postDelayed(new i(this), 500L);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.h
 * JD-Core Version:    0.6.2
 */
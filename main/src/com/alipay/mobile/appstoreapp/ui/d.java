package com.alipay.mobile.appstoreapp.ui;

import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.openplatform.R.string;

final class d
  implements Runnable
{
  d(AppDetailActivity paramAppDetailActivity)
  {
  }

  public final void run()
  {
    AppDetailActivity.g(this.a).setEnabled(true);
    if (!AppDetailActivity.removeBundle(this.a).isInstalled())
    {
      AppDetailActivity.g(this.a).setText(this.a.getString(R.string.BundlesManagerImpl));
      AppDetailActivity.v(this.a, "main_button_style");
    }
    while (!AppDetailActivity.removeBundle(this.a).isNeedUpgrade())
      return;
    AppDetailActivity.g(this.a).setText(this.a.getString(R.string.j));
    AppDetailActivity.v(this.a, "main_button_style");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.d
 * JD-Core Version:    0.6.2
 */
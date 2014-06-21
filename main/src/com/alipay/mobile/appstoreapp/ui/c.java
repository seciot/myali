package com.alipay.mobile.appstoreapp.ui;

import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.openplatform.R.string;

final class c
  implements Runnable
{
  c(AppDetailActivity paramAppDetailActivity)
  {
  }

  public final void run()
  {
    AppDetailActivity.g(this.a).setEnabled(false);
    AppDetailActivity.g(this.a).setText(this.a.getString(R.string.f));
    AppDetailActivity.v(this.a, "main_button_style");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.c
 * JD-Core Version:    0.6.2
 */
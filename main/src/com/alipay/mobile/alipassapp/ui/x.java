package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

final class x
  implements View.OnClickListener
{
  x(AlipassHtmlActivity paramAlipassHtmlActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AlipassHtmlActivity.dexopt(this.a).loadUrl(AlipassHtmlActivity.getBundle(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.x
 * JD-Core Version:    0.6.2
 */
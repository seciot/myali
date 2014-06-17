package com.alipay.android.app.widget;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.alipay.android.app.util.LogUtils;

public class BaseWebView
{
  private WebView a;

  public BaseWebView(WebView paramWebView, Context paramContext)
  {
    if (paramWebView == null);
    for (this.a = new WebView(paramContext); ; this.a = paramWebView)
    {
      this.a.setWebViewClient(new h(this, (byte)0));
      this.a.setWebChromeClient(new a(this, (byte)0));
      WebSettings localWebSettings = this.a.getSettings();
      localWebSettings.setJavaScriptEnabled(true);
      localWebSettings.setMinimumFontSize(8 + localWebSettings.getMinimumFontSize());
      LogUtils.d();
      return;
    }
  }

  public final WebView a()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.BaseWebView
 * JD-Core Version:    0.6.2
 */
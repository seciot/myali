package com.alipay.mobile.quinox.splash;

import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class f extends WebViewClient
{
  private f(c paramc)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if ((c.getBundle(this.a) != null) && (!c.b(this.a)))
      c.d(this.a).postDelayed(new g(this), 1000L);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith("alipay"))
      this.a.getBundle(paramString);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.splash.f
 * JD-Core Version:    0.6.2
 */
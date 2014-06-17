package com.alipay.mobile.browser;

import android.webkit.WebView;
import android.webkit.WebViewClient;

class HtmlActivity$2 extends WebViewClient
{
  HtmlActivity$2(HtmlActivity paramHtmlActivity)
  {
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool = this.this$0.processCustomLogic(paramWebView, paramString);
    if (bool)
      return bool;
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.HtmlActivity.2
 * JD-Core Version:    0.6.2
 */
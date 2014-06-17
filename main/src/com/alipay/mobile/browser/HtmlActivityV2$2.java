package com.alipay.mobile.browser;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.mobile.browser.handler.HtmlActivityHandler;

class HtmlActivityV2$2 extends WebViewClient
{
  HtmlActivityV2$2(HtmlActivityV2 paramHtmlActivityV2)
  {
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    this.this$0.loadUrl = paramString;
    if (HtmlActivityV2.access$000(this.this$0));
    while (HtmlActivityV2.access$100(this.this$0).callBackWhenURLLoding(this.this$0, paramWebView, paramString) == 1)
      return true;
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.HtmlActivityV2.2
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.mini.uielement;

import android.webkit.WebView;
import android.webkit.WebViewClient;

final class aj extends WebViewClient
{
  aj(UIWebView paramUIWebView)
  {
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.aj
 * JD-Core Version:    0.6.2
 */
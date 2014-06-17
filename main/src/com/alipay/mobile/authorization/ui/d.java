package com.alipay.mobile.authorization.ui;

import android.webkit.WebView;
import android.webkit.WebViewClient;

final class d extends WebViewClient
{
  d(AuthorizationCheckProtocol paramAuthorizationCheckProtocol)
  {
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.ui.d
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.widget.security.ui;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class SecurityWebviewActivity$4 extends WebViewClient
{
  SecurityWebviewActivity$4(SecurityWebviewActivity paramSecurityWebviewActivity)
  {
  }

  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    SecurityWebviewActivity.getBundle(this.a);
    paramSslErrorHandler.proceed();
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    super.shouldOverrideUrlLoading(paramWebView, paramString);
    try
    {
      boolean bool = SecurityWebviewActivity.a(this.a, paramWebView, paramString);
      return bool;
    }
    catch (Exception localException)
    {
      SecurityWebviewActivity.getBundle(this.a);
      new StringBuilder("webview内跳转地址有问题").append(paramString).toString();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityWebviewActivity.4
 * JD-Core Version:    0.6.2
 */
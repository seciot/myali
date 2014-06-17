package com.alipay.mobile.security.accountmanager.ui;

import android.webkit.WebView;
import android.webkit.WebViewClient;

final class ds extends WebViewClient
{
  ds(WapForgotPayPwdActivity paramWapForgotPayPwdActivity)
  {
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (this.a.a(paramString))
      return true;
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ds
 * JD-Core Version:    0.6.2
 */
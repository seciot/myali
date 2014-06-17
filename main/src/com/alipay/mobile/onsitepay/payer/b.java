package com.alipay.mobile.onsitepay.payer;

import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.mobile.onsitepay.utils.GenericProgressView;

final class b extends WebViewClient
{
  b(AutoPaySuccessActivity paramAutoPaySuccessActivity)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    this.a.e.setVisibility(8);
    new StringBuilder("onPageFinished:").append(paramString).toString();
    super.onPageFinished(paramWebView, paramString);
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    new StringBuilder("onReceivedError errorCode:").append(paramInt).append(" description=").append(paramString1).toString();
    this.a.f.post(new c(this));
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    new StringBuilder("shouldOverrideUrlLoading url:").append(paramString).toString();
    this.a.e.setVisibility(8);
    AutoPaySuccessActivity.a(this.a, paramWebView, paramString);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.b
 * JD-Core Version:    0.6.2
 */
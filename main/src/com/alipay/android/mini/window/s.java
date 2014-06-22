package com.alipay.android.mini.window;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;

final class s extends WebViewClient
{
  s(MiniWebActivity paramMiniWebActivity)
  {
  }

  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    super.onLoadResource(paramWebView, paramString);
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    boolean bool1 = true;
    super.onPageFinished(paramWebView, paramString);
    ImageView localImageView1 = MiniWebActivity.getBundleByComponentName(this.a);
    boolean bool2;
    ImageView localImageView2;
    if (MiniWebActivity.b(this.a).canGoBack())
    {
      bool2 = bool1;
      localImageView1.setEnabled(bool2);
      localImageView2 = MiniWebActivity.d(this.a);
      if (!paramWebView.canGoForward())
        break label69;
    }
    while (true)
    {
      localImageView2.setEnabled(bool1);
      return;
      bool2 = false;
      break;
      label69: bool1 = false;
    }
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    MiniWebActivity.getBundle(this.a).setVisibility(0);
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.s
 * JD-Core Version:    0.6.2
 */
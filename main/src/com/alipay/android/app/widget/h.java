package com.alipay.android.app.widget;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.android.app.util.LogUtils;

final class h extends WebViewClient
{
  private h(BaseWebView paramBaseWebView)
  {
  }

  public final void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    LogUtils.d();
  }

  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    new StringBuilder("onLoadResource ").append(paramString).toString();
    LogUtils.d();
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    new StringBuilder("onPageFinished ").append(paramString).toString();
    LogUtils.d();
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    new StringBuilder("onPageStarted ").append(paramString).toString();
    LogUtils.d();
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
    new StringBuilder(" handler.proceed: ").append(paramSslError).toString();
    LogUtils.d();
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    new StringBuilder("shouldOverrideUrlLoading ").append(paramString).toString();
    LogUtils.d();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.h
 * JD-Core Version:    0.6.2
 */
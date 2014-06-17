package com.alipay.android.app.widget;

import android.app.AlertDialog.Builder;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class a extends WebChromeClient
{
  private a(BaseWebView paramBaseWebView)
  {
  }

  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    new AlertDialog.Builder(paramWebView.getContext()).setTitle(17039380).setMessage(paramString2).setPositiveButton(17039370, new c(this, paramJsResult)).setNegativeButton(17039360, new b(this, paramJsResult)).show();
    return true;
  }

  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    new AlertDialog.Builder(paramWebView.getContext()).setTitle(17039380).setMessage(paramString2).setPositiveButton(17039370, new e(this, paramJsResult)).setNegativeButton(17039360, new d(this, paramJsResult)).show();
    return true;
  }

  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    new AlertDialog.Builder(paramWebView.getContext()).setTitle(17039380).setMessage(paramString2).setPositiveButton(17039370, new g(this, paramJsPromptResult)).setNegativeButton(17039360, new f(this, paramJsPromptResult)).show();
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.a
 * JD-Core Version:    0.6.2
 */
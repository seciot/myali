package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;

class RobotXiaoBaoActivity$1 extends WebViewClient
{
  RobotXiaoBaoActivity$1(RobotXiaoBaoActivity paramRobotXiaoBaoActivity)
  {
  }

  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith("tel:"))
    {
      Intent localIntent1 = new Intent("android.intent.action.DIAL", Uri.parse(paramString));
      this.a.startActivity(localIntent1);
    }
    while (true)
    {
      return true;
      if (ReadSettingServerUrl.isDebug(this.a.getApplicationContext()))
      {
        if (paramString.contains("onlinehelp.test.alipay.net"))
          paramString = paramString.replace("onlinehelp.test.alipay.net", "10.20.155.18");
        if (paramString.contains("portal.manjushri.alibaba.com"))
          paramString = paramString.replace("portal.manjushri.alibaba.com", "10.20.155.18");
        if (paramString.contains("onlinehelp.alipay.net"))
          paramString = paramString.replace("onlinehelp.alipay.net", "10.20.155.18");
      }
      if (paramString.contains("target=_blank"))
      {
        Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        this.a.startActivity(localIntent2);
      }
      else
      {
        paramWebView.loadUrl(paramString);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.RobotXiaoBaoActivity.1
 * JD-Core Version:    0.6.2
 */
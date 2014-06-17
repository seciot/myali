package com.alipay.android.widget.security.ui;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.alipay.mobile.commonui.widget.APTitleBar;

class SecurityWebviewActivity$3 extends WebChromeClient
{
  SecurityWebviewActivity$3(SecurityWebviewActivity paramSecurityWebviewActivity)
  {
  }

  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    super.onProgressChanged(paramWebView, paramInt);
    if (paramInt == 100)
      this.a.dismissProgressDialog();
  }

  public void onReceivedTitle(WebView paramWebView, String paramString)
  {
    this.a.a.setTitleText(paramString);
    super.onReceivedTitle(paramWebView, paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityWebviewActivity.3
 * JD-Core Version:    0.6.2
 */
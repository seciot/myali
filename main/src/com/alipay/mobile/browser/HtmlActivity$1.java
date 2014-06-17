package com.alipay.mobile.browser;

import android.content.Intent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

class HtmlActivity$1 extends WebChromeClient
{
  HtmlActivity$1(HtmlActivity paramHtmlActivity)
  {
  }

  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 100))
    {
      this.this$0.mProgressBar.setVisibility(0);
      this.this$0.mProgressBar.setProgress(paramInt);
      return;
    }
    this.this$0.mProgressBar.setVisibility(8);
  }

  public void onReceivedTitle(WebView paramWebView, String paramString)
  {
    String str = this.this$0.getIntent().getStringExtra(HtmlActivity.TITLE);
    if ((str != null) && (!str.trim().equals("")))
    {
      this.this$0.setTitles(str);
      return;
    }
    this.this$0.setTitles(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.HtmlActivity.1
 * JD-Core Version:    0.6.2
 */
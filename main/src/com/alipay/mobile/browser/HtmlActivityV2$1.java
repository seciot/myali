package com.alipay.mobile.browser;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

class HtmlActivityV2$1 extends WebChromeClient
{
  HtmlActivityV2$1(HtmlActivityV2 paramHtmlActivityV2)
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
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.HtmlActivityV2.1
 * JD-Core Version:    0.6.2
 */
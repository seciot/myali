package com.alipay.android.mini.window;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

final class r extends WebChromeClient
{
  r(MiniWebActivity paramMiniWebActivity)
  {
  }

  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    MiniWebActivity.a(this.a).setSecondaryProgress(paramInt);
    if (paramInt == 100)
      MiniWebActivity.a(this.a).setVisibility(8);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.r
 * JD-Core Version:    0.6.2
 */
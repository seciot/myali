package com.alipay.mobile.security.accountmanager.ui;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.alipay.mobile.commonui.widget.APProgressBar;

final class dr extends WebChromeClient
{
  dr(WapForgotPayPwdActivity paramWapForgotPayPwdActivity)
  {
  }

  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 100))
    {
      this.a.b.setVisibility(0);
      this.a.b.setProgress(paramInt);
      return;
    }
    this.a.b.setVisibility(8);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.dr
 * JD-Core Version:    0.6.2
 */
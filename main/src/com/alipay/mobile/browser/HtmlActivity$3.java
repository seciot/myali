package com.alipay.mobile.browser;

import android.net.Uri;
import android.webkit.WebView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;

class HtmlActivity$3 extends Thread
{
  HtmlActivity$3(HtmlActivity paramHtmlActivity, Uri paramUri, WebView paramWebView)
  {
  }

  public void run()
  {
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    String str = this.this$0.getParam(this.val$uri, "wapurl", null);
    if (localAuthService.isLogin())
    {
      this.val$view.loadUrl(Uri.decode(str));
      return;
    }
    if (localAuthService.auth())
    {
      this.val$view.loadUrl(Uri.decode(str));
      return;
    }
    this.this$0.closeWebView();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.HtmlActivity.3
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.browser.handler;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.WebView;
import com.alipay.mobile.browser.HtmlActivityV2;
import java.util.concurrent.atomic.AtomicInteger;

class CMSHtmlActivityHandler$1
  implements DialogInterface.OnClickListener
{
  CMSHtmlActivityHandler$1(CMSHtmlActivityHandler paramCMSHtmlActivityHandler, HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    CMSHtmlActivityHandler.access$000(this.this$0).set(0);
    this.this$0.forceLoginAndLoadUrl(this.val$htmlActivity, this.val$view, this.val$url);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.handler.CMSHtmlActivityHandler.1
 * JD-Core Version:    0.6.2
 */
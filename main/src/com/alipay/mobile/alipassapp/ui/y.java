package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class y
  implements DownloadListener
{
  private y(AlipassHtmlActivity paramAlipassHtmlActivity)
  {
  }

  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
    AlipassHtmlActivity.d(this.a).getMicroApplicationContext().startActivity(AlipassHtmlActivity.c(this.a), localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.y
 * JD-Core Version:    0.6.2
 */
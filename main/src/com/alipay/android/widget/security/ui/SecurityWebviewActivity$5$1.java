package com.alipay.android.widget.security.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.download.DownloadCallback;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;

class SecurityWebviewActivity$5$1
  implements DownloadCallback
{
  SecurityWebviewActivity$5$1(SecurityWebviewActivity.5 param5)
  {
  }

  public void onCancel(DownloadRequest paramDownloadRequest)
  {
    this.a.a.toast("已取消下载", 0);
  }

  public void onFailed(DownloadRequest paramDownloadRequest, int paramInt, String paramString)
  {
    this.a.a.toast("下载失败", 0);
  }

  public void onFinish(DownloadRequest paramDownloadRequest, String paramString)
  {
    this.a.a.toast("下载成功" + paramString, 0);
    if ((paramString != null) && (paramString.trim().toLowerCase().endsWith(".apk")))
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setFlags(268435456);
      localIntent.setDataAndType(Uri.parse("file://" + paramString), "application/vnd.android.package-archive");
      AlipayApplication.getInstance().getApplicationContext().startActivity(localIntent);
    }
  }

  public void onPrepare(DownloadRequest paramDownloadRequest)
  {
  }

  public void onProgress(DownloadRequest paramDownloadRequest, int paramInt)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityWebviewActivity.5.1
 * JD-Core Version:    0.6.2
 */
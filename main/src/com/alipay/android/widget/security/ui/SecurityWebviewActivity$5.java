package com.alipay.android.widget.security.ui;

import android.webkit.DownloadListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager;

class SecurityWebviewActivity$5
  implements DownloadListener
{
  SecurityWebviewActivity$5(SecurityWebviewActivity paramSecurityWebviewActivity)
  {
  }

  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    if ((paramString1 == null) || ("".equals(paramString1.trim())))
      return;
    SecurityWebviewActivity.b(this.a).d(null);
    ExternalDownloadManager localExternalDownloadManager = (ExternalDownloadManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ExternalDownloadManager.class.getName());
    if (localExternalDownloadManager.isDownloading(paramString1))
    {
      this.a.toast("正在下载……", 0);
      return;
    }
    this.a.toast("开始下载", 0);
    DownloadRequest localDownloadRequest = new DownloadRequest();
    localDownloadRequest.setDescription(SecurityWebviewActivity.a(paramString1));
    localDownloadRequest.setDownloadUrl(paramString1);
    localDownloadRequest.setTitle(SecurityWebviewActivity.a(paramString1));
    localDownloadRequest.setFileName(SecurityWebviewActivity.a(paramString1));
    localDownloadRequest.setShowRunningNotification(true);
    localExternalDownloadManager.addDownload(localDownloadRequest, new SecurityWebviewActivity.5.1(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityWebviewActivity.5
 * JD-Core Version:    0.6.2
 */
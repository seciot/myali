package com.alipay.mobile.appstoreapp.download;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.download.DownloadCallback;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager;

public class ExternalDownloadManagerImpl extends ExternalDownloadManager
{
  public void addDownload(DownloadRequest paramDownloadRequest, DownloadCallback paramDownloadCallback)
  {
    if (paramDownloadRequest != null)
    {
      if ((paramDownloadRequest.getDownloadUrl() == null) || ("".equalsIgnoreCase(paramDownloadRequest.getDownloadUrl().trim())))
        paramDownloadCallback.onFailed(paramDownloadRequest, 9999, "下载失败");
    }
    else
      return;
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    Intent localIntent = new Intent(localAlipayApplication, ExternalDownloadIntentService.class);
    localIntent.putExtra("command", "add");
    localIntent.putExtra("request", paramDownloadRequest);
    if (paramDownloadCallback != null)
      ExternalDownloadStatusReceiver.registerCallback(paramDownloadRequest.getDownloadUrl(), paramDownloadCallback);
    localAlipayApplication.startService(localIntent);
  }

  public void cancel(String paramString)
  {
    if (paramString != null)
    {
      AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
      Intent localIntent = new Intent(localAlipayApplication, ExternalDownloadIntentService.class);
      localIntent.putExtra("command", "cancel");
      localIntent.putExtra("downloadUrl", paramString);
      localAlipayApplication.startService(localIntent);
    }
  }

  public boolean isDownloading(String paramString)
  {
    return ExternalDownloadStatusReceiver.isDownloadTaskExists(paramString);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.download.ExternalDownloadManagerImpl
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.framework.service.ext.download;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class ExternalDownloadManager extends ExternalService
{
  public abstract void addDownload(DownloadRequest paramDownloadRequest, DownloadCallback paramDownloadCallback);

  public abstract void cancel(String paramString);

  public abstract boolean isDownloading(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager
 * JD-Core Version:    0.6.2
 */
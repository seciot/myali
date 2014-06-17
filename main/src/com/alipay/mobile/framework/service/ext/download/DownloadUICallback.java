package com.alipay.mobile.framework.service.ext.download;

public abstract interface DownloadUICallback
{
  public abstract void onCancel(DownloadRequest paramDownloadRequest);

  public abstract void onFailed(DownloadRequest paramDownloadRequest, int paramInt, String paramString);

  public abstract void onFinish(DownloadRequest paramDownloadRequest, String paramString);

  public abstract void onPrepare(DownloadRequest paramDownloadRequest);

  public abstract void onProgress(DownloadRequest paramDownloadRequest, int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.download.DownloadUICallback
 * JD-Core Version:    0.6.2
 */
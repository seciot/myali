package com.alipay.mobile.framework.service.ext.openplatform;

import com.alipay.mobile.framework.service.ext.openplatform.app.App;

public class InstallStatus
{
  public static final int STATUS_DEFAULT = 1;
  public static final int STATUS_DOLNLOADING = 3;
  public static final int STATUS_DOLNLOADING_PREPARE = 2;
  public static final int STATUS_DOWNLOAD_FAILD = 4;
  public static final int STATUS_DOWNLOAD_SUCCESS = 5;
  public static final int STATUS_INSTALLING = 6;
  public static final int STATUS_INSTALL_FAILD = 7;
  public static final int STATUS_INSTALL_SUCCESS = 8;
  private App app;
  private int downLoadProgress = -1;
  private int status;

  public InstallStatus(App paramApp)
  {
    this.app = paramApp;
  }

  public App getApp()
  {
    return this.app;
  }

  public int getDownLoadProgress()
  {
    return this.downLoadProgress;
  }

  public int getStatus()
  {
    return this.status;
  }

  public void setApp(App paramApp)
  {
    this.app = paramApp;
  }

  public void setDownLoadProgress(int paramInt)
  {
    this.downLoadProgress = paramInt;
  }

  public void setDownloadProgress(int paramInt)
  {
    this.downLoadProgress = paramInt;
  }

  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.InstallStatus
 * JD-Core Version:    0.6.2
 */
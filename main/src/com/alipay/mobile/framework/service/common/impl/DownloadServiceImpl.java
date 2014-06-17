package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.common.transport.download.DownloadManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.common.DownloadService;
import java.util.ArrayList;
import java.util.concurrent.Future;
import org.apache.http.Header;

public class DownloadServiceImpl extends DownloadService
{
  private DownloadManager a = new DownloadManager(AlipayApplication.getInstance());

  public Future<?> addDownload(String paramString1, String paramString2, ArrayList<Header> paramArrayList, TransportCallback paramTransportCallback)
  {
    return this.a.addDownload(paramString1, paramString2, paramArrayList, paramTransportCallback);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
    this.a.close();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.DownloadServiceImpl
 * JD-Core Version:    0.6.2
 */
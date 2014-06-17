package com.alipay.mobile.common.transport.download;

import android.content.Context;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.common.transport.http.HttpManager;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.transport.http.HttpWorker;
import java.util.ArrayList;
import java.util.concurrent.Future;

public class DownloadManager extends HttpManager
{
  public DownloadManager(Context paramContext)
  {
    super(paramContext);
  }

  public Future addDownload(String paramString1, String paramString2, ArrayList paramArrayList, TransportCallback paramTransportCallback)
  {
    if (paramArrayList == null)
      paramArrayList = new ArrayList();
    DownloadRequest localDownloadRequest = new DownloadRequest(paramString1, paramString2, null, paramArrayList);
    localDownloadRequest.setTransportCallback(paramTransportCallback);
    return execute(localDownloadRequest);
  }

  protected HttpWorker generateWorker(HttpUrlRequest paramHttpUrlRequest)
  {
    return new DownloadWorker(this, paramHttpUrlRequest);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.download.DownloadManager
 * JD-Core Version:    0.6.2
 */
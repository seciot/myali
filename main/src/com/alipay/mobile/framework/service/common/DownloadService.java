package com.alipay.mobile.framework.service.common;

import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.framework.service.CommonService;
import java.util.ArrayList;
import java.util.concurrent.Future;
import org.apache.http.Header;

public abstract class DownloadService extends CommonService
{
  public abstract Future<?> addDownload(String paramString1, String paramString2, ArrayList<Header> paramArrayList, TransportCallback paramTransportCallback);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.DownloadService
 * JD-Core Version:    0.6.2
 */
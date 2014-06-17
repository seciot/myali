package com.alipay.mobile.common.transport.download;

import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import java.util.ArrayList;

public class DownloadRequest extends HttpUrlRequest
{
  private String a;

  public DownloadRequest(String paramString)
  {
    super(paramString);
  }

  public DownloadRequest(String paramString1, String paramString2, ArrayList paramArrayList1, ArrayList paramArrayList2)
  {
    super(paramString1, paramArrayList1, paramArrayList2);
    setPath(paramString2);
  }

  public DownloadRequest(String paramString, ArrayList paramArrayList1, ArrayList paramArrayList2)
  {
    super(paramString, paramArrayList1, paramArrayList2);
  }

  public String getPath()
  {
    return this.a;
  }

  public void setPath(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("Not set valid path.");
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.download.DownloadRequest
 * JD-Core Version:    0.6.2
 */
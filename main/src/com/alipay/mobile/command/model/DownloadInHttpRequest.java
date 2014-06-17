package com.alipay.mobile.command.model;

import java.util.ArrayList;
import org.apache.http.Header;
import org.apache.http.message.BasicNameValuePair;

public class DownloadInHttpRequest extends HttpUrlRequest
{
  private String a;

  public DownloadInHttpRequest(String paramString1, String paramString2)
  {
    super(paramString1);
    this.a = paramString2;
  }

  public DownloadInHttpRequest(String paramString1, ArrayList<BasicNameValuePair> paramArrayList, ArrayList<Header> paramArrayList1, String paramString2)
  {
    super(paramString1, paramArrayList, paramArrayList1);
    this.a = paramString2;
  }

  public String getPath()
  {
    return this.a;
  }

  public RpcTypeEnum rpcTypeEnum()
  {
    return RpcTypeEnum.HTTP_DOWNLAOD;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.DownloadInHttpRequest
 * JD-Core Version:    0.6.2
 */
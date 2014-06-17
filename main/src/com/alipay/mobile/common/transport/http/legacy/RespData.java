package com.alipay.mobile.common.transport.http.legacy;

public class RespData
{
  public String charset;
  public String contentType;
  public String strResponse;

  RespData(String paramString1, String paramString2, String paramString3)
  {
    this.strResponse = paramString1;
    this.contentType = paramString2;
    this.charset = paramString3;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.legacy.RespData
 * JD-Core Version:    0.6.2
 */
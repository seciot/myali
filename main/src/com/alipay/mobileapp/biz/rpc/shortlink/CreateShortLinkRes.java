package com.alipay.mobileapp.biz.rpc.shortlink;

public class CreateShortLinkRes
{
  public String memo;
  public int resultStatus;
  public String shortUrl;

  public String getMemo()
  {
    return this.memo;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public String getShortUrl()
  {
    return this.shortUrl;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }

  public void setShortUrl(String paramString)
  {
    this.shortUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.shortlink.CreateShortLinkRes
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobileapp.biz.rpc.appengine.facade;

public class AndroidEngineRes
{
  public String downloadUrl;
  public String memo;
  public String newEngineVersion;
  public int resultStatus;

  public String getDownloadUrl()
  {
    return this.downloadUrl;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getNewEngineVersion()
  {
    return this.newEngineVersion;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public void setDownloadUrl(String paramString)
  {
    this.downloadUrl = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setNewEngineVersion(String paramString)
  {
    this.newEngineVersion = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.appengine.facade.AndroidEngineRes
 * JD-Core Version:    0.6.2
 */
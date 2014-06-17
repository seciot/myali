package com.alipay.mobileapp.common.service.facade.version.model;

public class ClientUpdateCheckRes
{
  public String downloadURL;
  public String guideMemo;
  public String memo;
  public String newestVersion;
  public int resultStatus;

  public String getDownloadURL()
  {
    return this.downloadURL;
  }

  public String getGuideMemo()
  {
    return this.guideMemo;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getNewestVersion()
  {
    return this.newestVersion;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public void setDownloadURL(String paramString)
  {
    this.downloadURL = paramString;
  }

  public void setGuideMemo(String paramString)
  {
    this.guideMemo = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setNewestVersion(String paramString)
  {
    this.newestVersion = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes
 * JD-Core Version:    0.6.2
 */
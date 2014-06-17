package com.alipay.mobilesecurity.core.model.mobiletoken;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class MobileTokenBatchSyncReq extends ToString
{
  public String imei;
  public String imsi;
  public String location;
  public String logonIdList;
  public String sePubKey;
  public String tid;

  public String getImei()
  {
    return this.imei;
  }

  public String getImsi()
  {
    return this.imsi;
  }

  public String getLocation()
  {
    return this.location;
  }

  public String getLogonIdList()
  {
    return this.logonIdList;
  }

  public String getSePubKey()
  {
    return this.sePubKey;
  }

  public String getTid()
  {
    return this.tid;
  }

  public void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public void setLocation(String paramString)
  {
    this.location = paramString;
  }

  public void setLogonIdList(String paramString)
  {
    this.logonIdList = paramString;
  }

  public void setSePubKey(String paramString)
  {
    this.sePubKey = paramString;
  }

  public void setTid(String paramString)
  {
    this.tid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenBatchSyncReq
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobilesecurity.core.model;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class Tid extends ToString
{
  public String clientKey;
  public String imei;
  public String imsi;
  public String tid;
  public String vimei;
  public String vimsi;

  public String getClientKey()
  {
    return this.clientKey;
  }

  public String getImei()
  {
    return this.imei;
  }

  public String getImsi()
  {
    return this.imsi;
  }

  public String getTid()
  {
    return this.tid;
  }

  public String getVimei()
  {
    return this.vimei;
  }

  public String getVimsi()
  {
    return this.vimsi;
  }

  public void setClientKey(String paramString)
  {
    this.clientKey = paramString;
  }

  public void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public void setTid(String paramString)
  {
    this.tid = paramString;
  }

  public void setVimei(String paramString)
  {
    this.vimei = paramString;
  }

  public void setVimsi(String paramString)
  {
    this.vimsi = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.Tid
 * JD-Core Version:    0.6.2
 */
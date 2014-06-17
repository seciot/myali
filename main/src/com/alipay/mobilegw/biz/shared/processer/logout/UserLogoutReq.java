package com.alipay.mobilegw.biz.shared.processer.logout;

public class UserLogoutReq
{
  public String clientId;
  public String logonId;
  public String mspClientKey;
  public String mspImei;
  public String mspImsi;
  public String mspTid;
  public String walletClientKey;
  public String walletTid;

  public String getClientId()
  {
    return this.clientId;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getMspClientKey()
  {
    return this.mspClientKey;
  }

  public String getMspImei()
  {
    return this.mspImei;
  }

  public String getMspImsi()
  {
    return this.mspImsi;
  }

  public String getMspTid()
  {
    return this.mspTid;
  }

  public String getWalletClientKey()
  {
    return this.walletClientKey;
  }

  public String getWalletTid()
  {
    return this.walletTid;
  }

  public void setClientId(String paramString)
  {
    this.clientId = paramString;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setMspClientKey(String paramString)
  {
    this.mspClientKey = paramString;
  }

  public void setMspImei(String paramString)
  {
    this.mspImei = paramString;
  }

  public void setMspImsi(String paramString)
  {
    this.mspImsi = paramString;
  }

  public void setMspTid(String paramString)
  {
    this.mspTid = paramString;
  }

  public void setWalletClientKey(String paramString)
  {
    this.walletClientKey = paramString;
  }

  public void setWalletTid(String paramString)
  {
    this.walletTid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.logout.UserLogoutReq
 * JD-Core Version:    0.6.2
 */
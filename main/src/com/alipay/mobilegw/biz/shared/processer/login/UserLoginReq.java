package com.alipay.mobilegw.biz.shared.processer.login;

import java.util.HashMap;
import java.util.Map;

public class UserLoginReq
{
  public String cellId;
  public String channels;
  public String clientDigest;
  public String clientId;
  public String deviceToken;
  public Map<String, String> externParams = new HashMap();
  public String location;
  public String loginCheckCode;
  public String loginId;
  public String loginPassword;
  public String loginType = "alipay";
  public String loginWthPwd = "withpwd";
  public String mac;
  public String mspClientKey;
  public String mspImei;
  public String mspImsi;
  public String mspTid;
  public String osVersion;
  public String productId;
  public String productVersion;
  public String screenHigh;
  public String screenWidth;
  public String secTS;
  public String sourceId;
  public String tbCheckCode;
  public String tbCheckCodeId;
  public String userAgent;
  public String vimei;
  public String vimsi;
  public String walletClientKey;
  public String walletTid;

  public String getCellId()
  {
    return this.cellId;
  }

  public String getChannels()
  {
    return this.channels;
  }

  public String getClientDigest()
  {
    return this.clientDigest;
  }

  public String getClientId()
  {
    return this.clientId;
  }

  public String getDeviceToken()
  {
    return this.deviceToken;
  }

  public Map<String, String> getExternParams()
  {
    return this.externParams;
  }

  public String getLocation()
  {
    return this.location;
  }

  public String getLoginCheckCode()
  {
    return this.loginCheckCode;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getLoginPassword()
  {
    return this.loginPassword;
  }

  public String getLoginType()
  {
    return this.loginType;
  }

  public String getLoginWthPwd()
  {
    return this.loginWthPwd;
  }

  public String getMac()
  {
    return this.mac;
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

  public String getOsVersion()
  {
    return this.osVersion;
  }

  public String getProductId()
  {
    return this.productId;
  }

  public String getProductVersion()
  {
    return this.productVersion;
  }

  public String getScreenHigh()
  {
    return this.screenHigh;
  }

  public String getScreenWidth()
  {
    return this.screenWidth;
  }

  public String getSecTS()
  {
    return this.secTS;
  }

  public String getSourceId()
  {
    return this.sourceId;
  }

  public String getTbCheckCode()
  {
    return this.tbCheckCode;
  }

  public String getTbCheckCodeId()
  {
    return this.tbCheckCodeId;
  }

  public String getUserAgent()
  {
    return this.userAgent;
  }

  public String getVimei()
  {
    return this.vimei;
  }

  public String getVimsi()
  {
    return this.vimsi;
  }

  public String getWalletClientKey()
  {
    return this.walletClientKey;
  }

  public String getWalletTid()
  {
    return this.walletTid;
  }

  public void setCellId(String paramString)
  {
    this.cellId = paramString;
  }

  public void setChannels(String paramString)
  {
    this.channels = paramString;
  }

  public void setClientDigest(String paramString)
  {
    this.clientDigest = paramString;
  }

  public void setClientId(String paramString)
  {
    this.clientId = paramString;
  }

  public void setDeviceToken(String paramString)
  {
    this.deviceToken = paramString;
  }

  public void setExternParams(Map<String, String> paramMap)
  {
    this.externParams = paramMap;
  }

  public void setLocation(String paramString)
  {
    this.location = paramString;
  }

  public void setLoginCheckCode(String paramString)
  {
    this.loginCheckCode = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setLoginPassword(String paramString)
  {
    this.loginPassword = paramString;
  }

  public void setLoginType(String paramString)
  {
    this.loginType = paramString;
  }

  public void setLoginWthPwd(String paramString)
  {
    this.loginWthPwd = paramString;
  }

  public void setMac(String paramString)
  {
    this.mac = paramString;
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

  public void setOsVersion(String paramString)
  {
    this.osVersion = paramString;
  }

  public void setProductId(String paramString)
  {
    this.productId = paramString;
  }

  public void setProductVersion(String paramString)
  {
    this.productVersion = paramString;
  }

  public void setScreenHigh(String paramString)
  {
    this.screenHigh = paramString;
  }

  public void setScreenWidth(String paramString)
  {
    this.screenWidth = paramString;
  }

  public void setSecTS(String paramString)
  {
    this.secTS = paramString;
  }

  public void setSourceId(String paramString)
  {
    this.sourceId = paramString;
  }

  public void setTbCheckCode(String paramString)
  {
    this.tbCheckCode = paramString;
  }

  public void setTbCheckCodeId(String paramString)
  {
    this.tbCheckCodeId = paramString;
  }

  public void setUserAgent(String paramString)
  {
    this.userAgent = paramString;
  }

  public void setVimei(String paramString)
  {
    this.vimei = paramString;
  }

  public void setVimsi(String paramString)
  {
    this.vimsi = paramString;
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
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.login.UserLoginReq
 * JD-Core Version:    0.6.2
 */
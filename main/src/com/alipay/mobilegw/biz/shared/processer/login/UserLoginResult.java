package com.alipay.mobilegw.biz.shared.processer.login;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class UserLoginResult
  implements Serializable
{
  private static final long serialVersionUID = -5105269619141195490L;
  public String barcodePayToken;
  public boolean bindCard;
  public String currentProductVersion;
  public String downloadURL;
  public String existNewVersion = "0";
  public Map<String, String> extResAttrs = new HashMap();
  public String extern_token;
  public String headImg;
  public String iconUrl;
  public String isCertified;
  public String loginCheckCodeImg;
  public String loginCheckCodeUrl;
  public String loginContext;
  public String loginId;
  public String loginServerTime;
  public String loginToken;
  public String memo;
  public String mobileNo;
  public int resultStatus;
  public String sessionId;
  public String taobaoSid;
  public String tbCheckCodeId;
  public String tbCheckCodeUrl;
  public String userId;
  public String userName;
  public boolean wirelessUser;

  public String getBarcodePayToken()
  {
    return this.barcodePayToken;
  }

  public String getCurrentProductVersion()
  {
    return this.currentProductVersion;
  }

  public String getDownloadURL()
  {
    return this.downloadURL;
  }

  public String getExistNewVersion()
  {
    return this.existNewVersion;
  }

  public Map<String, String> getExtResAttrs()
  {
    return this.extResAttrs;
  }

  public String getExtern_token()
  {
    return this.extern_token;
  }

  public String getHeadImg()
  {
    return this.headImg;
  }

  public String getIconUrl()
  {
    return this.iconUrl;
  }

  public String getIsCertified()
  {
    return this.isCertified;
  }

  public String getLoginCheckCodeImg()
  {
    return this.loginCheckCodeImg;
  }

  public String getLoginCheckCodeUrl()
  {
    return this.loginCheckCodeUrl;
  }

  public String getLoginContext()
  {
    return this.loginContext;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getLoginServerTime()
  {
    return this.loginServerTime;
  }

  public String getLoginToken()
  {
    return this.loginToken;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getMobileNo()
  {
    return this.mobileNo;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public String getSessionId()
  {
    return this.sessionId;
  }

  public String getTaobaoSid()
  {
    return this.taobaoSid;
  }

  public String getTbCheckCodeId()
  {
    return this.tbCheckCodeId;
  }

  public String getTbCheckCodeUrl()
  {
    return this.tbCheckCodeUrl;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public boolean isBindCard()
  {
    return this.bindCard;
  }

  public boolean isWirelessUser()
  {
    return this.wirelessUser;
  }

  public void setBarcodePayToken(String paramString)
  {
    this.barcodePayToken = paramString;
  }

  public void setBindCard(boolean paramBoolean)
  {
    this.bindCard = paramBoolean;
  }

  public void setCurrentProductVersion(String paramString)
  {
    this.currentProductVersion = paramString;
  }

  public void setDownloadURL(String paramString)
  {
    this.downloadURL = paramString;
  }

  public void setExistNewVersion(String paramString)
  {
    this.existNewVersion = paramString;
  }

  public void setExtResAttrs(Map<String, String> paramMap)
  {
    this.extResAttrs = paramMap;
  }

  public void setExtern_token(String paramString)
  {
    this.extern_token = paramString;
  }

  public void setHeadImg(String paramString)
  {
    this.headImg = paramString;
  }

  public void setIconUrl(String paramString)
  {
    this.iconUrl = paramString;
  }

  public void setIsCertified(String paramString)
  {
    this.isCertified = paramString;
  }

  public void setLoginCheckCodeImg(String paramString)
  {
    this.loginCheckCodeImg = paramString;
  }

  public void setLoginCheckCodeUrl(String paramString)
  {
    this.loginCheckCodeUrl = paramString;
  }

  public void setLoginContext(String paramString)
  {
    this.loginContext = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setLoginServerTime(String paramString)
  {
    this.loginServerTime = paramString;
  }

  public void setLoginToken(String paramString)
  {
    this.loginToken = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setMobileNo(String paramString)
  {
    this.mobileNo = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }

  public void setSessionId(String paramString)
  {
    this.sessionId = paramString;
  }

  public void setTaobaoSid(String paramString)
  {
    this.taobaoSid = paramString;
  }

  public void setTbCheckCodeId(String paramString)
  {
    this.tbCheckCodeId = paramString;
  }

  public void setTbCheckCodeUrl(String paramString)
  {
    this.tbCheckCodeUrl = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }

  public void setWirelessUser(boolean paramBoolean)
  {
    this.wirelessUser = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.login.UserLoginResult
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobilegw.biz.shared.processer.login;

public class TaobaoTokenParam
{
  public String deviceId;
  public String loginSource;
  public String ssoToken;
  public long timeStamp;
  public String tokenSign;

  public String getDeviceId()
  {
    return this.deviceId;
  }

  public String getLoginSource()
  {
    return this.loginSource;
  }

  public String getSsoToken()
  {
    return this.ssoToken;
  }

  public long getTimeStamp()
  {
    return this.timeStamp;
  }

  public String getTokenSign()
  {
    return this.tokenSign;
  }

  public void setDeviceId(String paramString)
  {
    this.deviceId = paramString;
  }

  public void setLoginSource(String paramString)
  {
    this.loginSource = paramString;
  }

  public void setSsoToken(String paramString)
  {
    this.ssoToken = paramString;
  }

  public void setTimeStamp(long paramLong)
  {
    this.timeStamp = paramLong;
  }

  public void setTokenSign(String paramString)
  {
    this.tokenSign = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.login.TaobaoTokenParam
 * JD-Core Version:    0.6.2
 */
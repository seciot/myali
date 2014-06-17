package com.alipay.mobilesecurity.core.model.account;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class TaobaoSsoToken extends ToString
{
  public String imei;
  public String imsi;
  public String nickName;
  public String secSign;
  public String ssoToken;
  public String taobaoDeviceId;
  public long timeStamp;

  public String getImei()
  {
    return this.imei;
  }

  public String getImsi()
  {
    return this.imsi;
  }

  public String getNickName()
  {
    return this.nickName;
  }

  public String getSecSign()
  {
    return this.secSign;
  }

  public String getSsoToken()
  {
    return this.ssoToken;
  }

  public String getTaobaoDeviceId()
  {
    return this.taobaoDeviceId;
  }

  public long getTimeStamp()
  {
    return this.timeStamp;
  }

  public void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public void setNickName(String paramString)
  {
    this.nickName = paramString;
  }

  public void setSecSign(String paramString)
  {
    this.secSign = paramString;
  }

  public void setSsoToken(String paramString)
  {
    this.ssoToken = paramString;
  }

  public void setTaobaoDeviceId(String paramString)
  {
    this.taobaoDeviceId = paramString;
  }

  public void setTimeStamp(long paramLong)
  {
    this.timeStamp = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.TaobaoSsoToken
 * JD-Core Version:    0.6.2
 */
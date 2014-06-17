package com.alipay.mobilesecurity.core.model.mobiletoken;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class MobileTokenRes extends MobileSecurityResult
{
  public String cardId;
  public String interval;
  public String logonIdList;
  public String seed;
  public String serverTime;

  public String getCardId()
  {
    return this.cardId;
  }

  public String getInterval()
  {
    return this.interval;
  }

  public String getLogonIdList()
  {
    return this.logonIdList;
  }

  public String getSeed()
  {
    return this.seed;
  }

  public String getServerTime()
  {
    return this.serverTime;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
  }

  public void setInterval(String paramString)
  {
    this.interval = paramString;
  }

  public void setLogonIdList(String paramString)
  {
    this.logonIdList = paramString;
  }

  public void setSeed(String paramString)
  {
    this.seed = paramString;
  }

  public void setServerTime(String paramString)
  {
    this.serverTime = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenRes
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobilesecurity.core.model.mobiletoken;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class MobileTokenTimeRes extends MobileSecurityResult
{
  public String serverTime;

  public String getServerTime()
  {
    return this.serverTime;
  }

  public void setServerTime(String paramString)
  {
    this.serverTime = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenTimeRes
 * JD-Core Version:    0.6.2
 */
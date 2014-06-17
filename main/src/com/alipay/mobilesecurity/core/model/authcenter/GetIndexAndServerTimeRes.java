package com.alipay.mobilesecurity.core.model.authcenter;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class GetIndexAndServerTimeRes extends MobileSecurityResult
{
  public String index;
  public String serverTime;

  public String getIndex()
  {
    return this.index;
  }

  public String getServerTime()
  {
    return this.serverTime;
  }

  public void setIndex(String paramString)
  {
    this.index = paramString;
  }

  public void setServerTime(String paramString)
  {
    this.serverTime = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.authcenter.GetIndexAndServerTimeRes
 * JD-Core Version:    0.6.2
 */
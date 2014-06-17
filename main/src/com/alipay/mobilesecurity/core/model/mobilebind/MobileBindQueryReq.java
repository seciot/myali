package com.alipay.mobilesecurity.core.model.mobilebind;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class MobileBindQueryReq extends ToString
{
  public String logonId;

  public String getLogonId()
  {
    return this.logonId;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryReq
 * JD-Core Version:    0.6.2
 */
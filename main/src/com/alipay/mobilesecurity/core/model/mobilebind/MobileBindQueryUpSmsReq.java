package com.alipay.mobilesecurity.core.model.mobilebind;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class MobileBindQueryUpSmsReq extends ToString
{
  public String logonId;
  public String sessionId;

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getSessionId()
  {
    return this.sessionId;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setSessionId(String paramString)
  {
    this.sessionId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryUpSmsReq
 * JD-Core Version:    0.6.2
 */
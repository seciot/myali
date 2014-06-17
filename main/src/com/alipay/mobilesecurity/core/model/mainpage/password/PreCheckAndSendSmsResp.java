package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class PreCheckAndSendSmsResp extends MobileSecurityResult
{
  public String imageCode;
  public String sessionId;

  public String getImageCode()
  {
    return this.imageCode;
  }

  public String getSessionId()
  {
    return this.sessionId;
  }

  public void setImageCode(String paramString)
  {
    this.imageCode = paramString;
  }

  public void setSessionId(String paramString)
  {
    this.sessionId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsResp
 * JD-Core Version:    0.6.2
 */
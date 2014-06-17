package com.alipay.mobilesecurity.core.model.mainpage.password;

public class PreCheckAndSendSmsReq
{
  public String imageCode;
  public String loginId;
  public String sessionId;

  public String getImageCode()
  {
    return this.imageCode;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getSessionId()
  {
    return this.sessionId;
  }

  public void setImageCode(String paramString)
  {
    this.imageCode = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setSessionId(String paramString)
  {
    this.sessionId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsReq
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class CheckUserAccountRequest extends ToString
{
  public String codeImage;
  public String loginId;
  public String sessionId;

  public String getCodeImage()
  {
    return this.codeImage;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getSessionId()
  {
    return this.sessionId;
  }

  public void setCodeImage(String paramString)
  {
    this.codeImage = paramString;
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
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.CheckUserAccountRequest
 * JD-Core Version:    0.6.2
 */
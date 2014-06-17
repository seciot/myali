package com.alipay.mobilesecurity.common.service.model.req;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class ValidatePasswordRequest extends ToString
{
  public String encryType = "RSA";
  public String loginId;
  public String password;
  public String passwordType = "login";

  public String getEncryType()
  {
    return this.encryType;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getPassword()
  {
    return this.password;
  }

  public String getPasswordType()
  {
    return this.passwordType;
  }

  public void setEncryType(String paramString)
  {
    this.encryType = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setPassword(String paramString)
  {
    this.password = paramString;
  }

  public void setPasswordType(String paramString)
  {
    this.passwordType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.common.service.model.req.ValidatePasswordRequest
 * JD-Core Version:    0.6.2
 */
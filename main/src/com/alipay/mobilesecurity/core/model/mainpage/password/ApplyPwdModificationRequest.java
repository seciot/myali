package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class ApplyPwdModificationRequest extends ToString
{
  public String loginId;
  public String oldPwd;
  public String pwd;
  public String pwdType;

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getOldPwd()
  {
    return this.oldPwd;
  }

  public String getPwd()
  {
    return this.pwd;
  }

  public String getPwdType()
  {
    return this.pwdType;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setOldPwd(String paramString)
  {
    this.oldPwd = paramString;
  }

  public void setPwd(String paramString)
  {
    this.pwd = paramString;
  }

  public void setPwdType(String paramString)
  {
    this.pwdType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.ApplyPwdModificationRequest
 * JD-Core Version:    0.6.2
 */
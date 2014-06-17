package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class CheckUserCertRequest extends ToString
{
  public String certNo;
  public String certType;
  public String loginId;
  public String passwordType;

  public String getCertNo()
  {
    return this.certNo;
  }

  public String getCertType()
  {
    return this.certType;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getPasswordType()
  {
    return this.passwordType;
  }

  public void setCertNo(String paramString)
  {
    this.certNo = paramString;
  }

  public void setCertType(String paramString)
  {
    this.certType = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setPasswordType(String paramString)
  {
    this.passwordType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.CheckUserCertRequest
 * JD-Core Version:    0.6.2
 */
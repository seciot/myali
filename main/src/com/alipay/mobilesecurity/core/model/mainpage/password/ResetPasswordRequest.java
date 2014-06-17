package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;

public class ResetPasswordRequest extends ToString
{
  public String businessMobileValidateStatus;
  public String loginId;
  public String pwd;
  public String pwdType;
  public Tid tid;

  public String getBusinessMobileValidateStatus()
  {
    return this.businessMobileValidateStatus;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getPwd()
  {
    return this.pwd;
  }

  public String getPwdType()
  {
    return this.pwdType;
  }

  public Tid getTid()
  {
    return this.tid;
  }

  public void setBusinessMobileValidateStatus(String paramString)
  {
    this.businessMobileValidateStatus = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setPwd(String paramString)
  {
    this.pwd = paramString;
  }

  public void setPwdType(String paramString)
  {
    this.pwdType = paramString;
  }

  public void setTid(Tid paramTid)
  {
    this.tid = paramTid;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.ResetPasswordRequest
 * JD-Core Version:    0.6.2
 */
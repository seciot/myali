package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;

public class VerifySmsCodeRequest extends ToString
{
  public String businessMobileValidateStatus;
  public String loginId;
  public String oldPwd;
  public String pwd;
  public String pwdType;
  public String smsCode;
  public Tid tid;
  public String userAction;

  public String getBusinessMobileValidateStatus()
  {
    return this.businessMobileValidateStatus;
  }

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

  public String getSmsCode()
  {
    return this.smsCode;
  }

  public Tid getTid()
  {
    return this.tid;
  }

  public String getUserAction()
  {
    return this.userAction;
  }

  public void setBusinessMobileValidateStatus(String paramString)
  {
    this.businessMobileValidateStatus = paramString;
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

  public void setSmsCode(String paramString)
  {
    this.smsCode = paramString;
  }

  public void setTid(Tid paramTid)
  {
    this.tid = paramTid;
  }

  public void setUserAction(String paramString)
  {
    this.userAction = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsCodeRequest
 * JD-Core Version:    0.6.2
 */
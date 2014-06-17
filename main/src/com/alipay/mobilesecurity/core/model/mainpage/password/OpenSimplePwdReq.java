package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;

public class OpenSimplePwdReq extends ToString
{
  public String businessMobileValidateStatus;
  public String cellID;
  public String code;
  public String loginId;
  public boolean prisonBreak;
  public String pwd;
  public boolean resetPwd;
  public boolean smsAuth;
  public Tid tid;

  public String getBusinessMobileValidateStatus()
  {
    return this.businessMobileValidateStatus;
  }

  public String getCellID()
  {
    return this.cellID;
  }

  public String getCode()
  {
    return this.code;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getPwd()
  {
    return this.pwd;
  }

  public boolean getSmsAuth()
  {
    return this.smsAuth;
  }

  public Tid getTid()
  {
    return this.tid;
  }

  public boolean isPrisonBreak()
  {
    return this.prisonBreak;
  }

  public boolean isResetPwd()
  {
    return this.resetPwd;
  }

  public void setBusinessMobileValidateStatus(String paramString)
  {
    this.businessMobileValidateStatus = paramString;
  }

  public void setCellID(String paramString)
  {
    this.cellID = paramString;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setPrisonBreak(boolean paramBoolean)
  {
    this.prisonBreak = paramBoolean;
  }

  public void setPwd(String paramString)
  {
    this.pwd = paramString;
  }

  public void setResetPwd(boolean paramBoolean)
  {
    this.resetPwd = paramBoolean;
  }

  public void setSmsAuth(boolean paramBoolean)
  {
    this.smsAuth = paramBoolean;
  }

  public void setTid(Tid paramTid)
  {
    this.tid = paramTid;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.OpenSimplePwdReq
 * JD-Core Version:    0.6.2
 */
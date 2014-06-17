package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.core.model.Tid;

public class VerifySmsAndUserStatusReq
{
  public String businessMobileValidateStatus;
  public String loginId;
  public boolean policyCenter;
  public String smsPwd;
  public Tid tid;

  public String getBusinessMobileValidateStatus()
  {
    return this.businessMobileValidateStatus;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getSmsPwd()
  {
    return this.smsPwd;
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

  public void setSmsPwd(String paramString)
  {
    this.smsPwd = paramString;
  }

  public void setTid(Tid paramTid)
  {
    this.tid = paramTid;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusReq
 * JD-Core Version:    0.6.2
 */
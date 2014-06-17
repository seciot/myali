package com.alipay.mobileapp.biz.rpc.register.vo;

public class SetMobilePayPwdReq
{
  public String businessMobileValidateStatus;
  public String cellID;
  public String imei;
  public String imsi;
  public String loginId;
  public boolean prisonBreak;
  public String pwd;
  public String regid;
  public String tid;

  public String getBusinessMobileValidateStatus()
  {
    return this.businessMobileValidateStatus;
  }

  public String getCellID()
  {
    return this.cellID;
  }

  public String getImei()
  {
    return this.imei;
  }

  public String getImsi()
  {
    return this.imsi;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getPwd()
  {
    return this.pwd;
  }

  public String getRegid()
  {
    return this.regid;
  }

  public String getTid()
  {
    return this.tid;
  }

  public boolean isPrisonBreak()
  {
    return this.prisonBreak;
  }

  public void setBusinessMobileValidateStatus(String paramString)
  {
    this.businessMobileValidateStatus = paramString;
  }

  public void setCellID(String paramString)
  {
    this.cellID = paramString;
  }

  public void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public void setImsi(String paramString)
  {
    this.imsi = paramString;
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

  public void setRegid(String paramString)
  {
    this.regid = paramString;
  }

  public void setTid(String paramString)
  {
    this.tid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdReq
 * JD-Core Version:    0.6.2
 */
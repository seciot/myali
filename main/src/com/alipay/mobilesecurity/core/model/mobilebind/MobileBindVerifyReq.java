package com.alipay.mobilesecurity.core.model.mobilebind;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class MobileBindVerifyReq extends ToString
{
  public String authCode;
  public String bindMobile;
  public String isp;
  public String logonId;
  public String paymentPwd;

  public String getAuthCode()
  {
    return this.authCode;
  }

  public String getBindMobile()
  {
    return this.bindMobile;
  }

  public String getIsp()
  {
    return this.isp;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getPaymentPwd()
  {
    return this.paymentPwd;
  }

  public void setAuthCode(String paramString)
  {
    this.authCode = paramString;
  }

  public void setBindMobile(String paramString)
  {
    this.bindMobile = paramString;
  }

  public void setIsp(String paramString)
  {
    this.isp = paramString;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setPaymentPwd(String paramString)
  {
    this.paymentPwd = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobilebind.MobileBindVerifyReq
 * JD-Core Version:    0.6.2
 */
package com.alipay.securitycore.common.service.facade.mobile.domain;

public class SecurityValidateResult
{
  public String message;
  public String resultCode;
  public boolean success;

  public String getMessage()
  {
    return this.message;
  }

  public String getResultCode()
  {
    return this.resultCode;
  }

  public boolean isSuccess()
  {
    return this.success;
  }

  public void setMessage(String paramString)
  {
    this.message = paramString;
  }

  public void setResultCode(String paramString)
  {
    this.resultCode = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.securitycore.common.service.facade.mobile.domain.SecurityValidateResult
 * JD-Core Version:    0.6.2
 */
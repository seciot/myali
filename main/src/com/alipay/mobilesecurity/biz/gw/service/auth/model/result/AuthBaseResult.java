package com.alipay.mobilesecurity.biz.gw.service.auth.model.result;

public class AuthBaseResult
{
  public String launchType;
  public String message = "";
  public String resultCode = "";
  public boolean success = false;

  public String getLaunchType()
  {
    return this.launchType;
  }

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

  public void setLaunchType(String paramString)
  {
    this.launchType = paramString;
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
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.auth.model.result.AuthBaseResult
 * JD-Core Version:    0.6.2
 */
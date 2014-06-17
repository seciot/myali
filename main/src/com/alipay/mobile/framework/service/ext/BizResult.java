package com.alipay.mobile.framework.service.ext;

public class BizResult
{
  public String appName;
  public String message;
  public int resultCode;
  public boolean success;

  public String getAppName()
  {
    return this.appName;
  }

  public String getMessage()
  {
    return this.message;
  }

  public int getResultCode()
  {
    return this.resultCode;
  }

  public boolean isSuccess()
  {
    return this.success;
  }

  public void setAppName(String paramString)
  {
    this.appName = paramString;
  }

  public void setMessage(String paramString)
  {
    this.message = paramString;
  }

  public void setResultCode(int paramInt)
  {
    this.resultCode = paramInt;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.BizResult
 * JD-Core Version:    0.6.2
 */
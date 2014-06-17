package com.alipay.mobileapp.common.service.facade.authcenter.model;

public class TidVerifyRes
{
  public String message = "";
  public int resultCode = 0;
  public boolean success = false;

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
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.authcenter.model.TidVerifyRes
 * JD-Core Version:    0.6.2
 */
package com.alipay.logistics.client.dto.response;

public class BaseResult
{
  private String errorCode;
  private String errorMsg;
  private Boolean success = Boolean.valueOf(false);

  public String getErrorCode()
  {
    return this.errorCode;
  }

  public String getErrorMsg()
  {
    return this.errorMsg;
  }

  public Boolean getSuccess()
  {
    return this.success;
  }

  public void setErrorCode(String paramString)
  {
    this.errorCode = paramString;
  }

  public void setErrorMsg(String paramString)
  {
    this.errorMsg = paramString;
  }

  public void setSuccess(Boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.response.BaseResult
 * JD-Core Version:    0.6.2
 */
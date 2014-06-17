package com.alipay.barcodeprod.core.model.common;

import com.alipay.barcodeprod.common.domain.result.ToString;

public class RpcCommonResult extends ToString
{
  public String message;
  public int resultCode;
  public boolean success;

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
 * Qualified Name:     com.alipay.barcodeprod.core.model.common.RpcCommonResult
 * JD-Core Version:    0.6.2
 */
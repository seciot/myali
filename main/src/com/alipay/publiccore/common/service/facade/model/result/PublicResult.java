package com.alipay.publiccore.common.service.facade.model.result;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class PublicResult extends ToString
  implements Serializable
{
  public int resultCode = 0;
  public String resultMsg = "";
  public boolean success = true;

  public int getResultCode()
  {
    return this.resultCode;
  }

  public String getResultMsg()
  {
    return this.resultMsg;
  }

  public boolean isSuccess()
  {
    return this.success;
  }

  public void setResultCode(int paramInt)
  {
    this.resultCode = paramInt;
  }

  public void setResultMsg(String paramString)
  {
    this.resultMsg = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.result.PublicResult
 * JD-Core Version:    0.6.2
 */
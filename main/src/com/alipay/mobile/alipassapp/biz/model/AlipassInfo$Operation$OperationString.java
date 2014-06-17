package com.alipay.mobile.alipassapp.biz.model;

import java.io.Serializable;

public final class AlipassInfo$Operation$OperationString extends AlipassInfo.Operation
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  String message;

  public AlipassInfo$Operation$OperationString()
  {
  }

  public AlipassInfo$Operation$OperationString(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.altText = paramString1;
    this.format = paramString2;
    this.messageEncoding = paramString3;
    this.message = paramString4;
  }

  public final String getMessage()
  {
    return this.message;
  }

  public final void setMessage(String paramString)
  {
    this.message = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString
 * JD-Core Version:    0.6.2
 */
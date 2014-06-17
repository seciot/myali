package com.alipay.mobile.common.rpc.protocol;

public abstract class AbstractSerializer
  implements Serializer
{
  protected String mOperationType;
  protected Object mParams;

  public AbstractSerializer(String paramString, Object paramObject)
  {
    this.mOperationType = paramString;
    this.mParams = paramObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.protocol.AbstractSerializer
 * JD-Core Version:    0.6.2
 */
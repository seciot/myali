package com.alipay.mobile.common.rpc.protocol;

public abstract interface Serializer
{
  public abstract Object packet();

  public abstract void setExtParam(Object paramObject);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.protocol.Serializer
 * JD-Core Version:    0.6.2
 */
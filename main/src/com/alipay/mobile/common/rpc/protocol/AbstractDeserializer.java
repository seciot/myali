package com.alipay.mobile.common.rpc.protocol;

import java.lang.reflect.Type;

public abstract class AbstractDeserializer
  implements Deserializer
{
  protected String mData;
  protected Type mType;

  public AbstractDeserializer(Type paramType, String paramString)
  {
    this.mType = paramType;
    this.mData = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.protocol.AbstractDeserializer
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.command.rpc.serialize;

import java.lang.reflect.Type;

public abstract interface Serializer<T>
{
  public abstract <E> E deCodeData(T paramT, Type paramType);

  public abstract T encodeData(Object paramObject);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.serialize.Serializer
 * JD-Core Version:    0.6.2
 */
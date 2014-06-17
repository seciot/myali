package com.alibaba.fastjson.serializer;

public final class JSONSerializerContext$Entry
{
  public final int hashCode;
  public Entry next;
  public final Object object;

  public JSONSerializerContext$Entry(Object paramObject, int paramInt, Entry paramEntry)
  {
    this.object = paramObject;
    this.next = paramEntry;
    this.hashCode = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.JSONSerializerContext.Entry
 * JD-Core Version:    0.6.2
 */
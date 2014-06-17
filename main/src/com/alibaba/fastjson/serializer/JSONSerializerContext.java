package com.alibaba.fastjson.serializer;

public final class JSONSerializerContext
{
  public static final int DEFAULT_TABLE_SIZE = 128;
  private final JSONSerializerContext.Entry[] buckets;
  private final int indexMask;

  public JSONSerializerContext()
  {
    this(128);
  }

  public JSONSerializerContext(int paramInt)
  {
    this.indexMask = (paramInt - 1);
    this.buckets = new JSONSerializerContext.Entry[paramInt];
  }

  public final boolean put(Object paramObject)
  {
    int i = System.identityHashCode(paramObject);
    int j = i & this.indexMask;
    for (JSONSerializerContext.Entry localEntry1 = this.buckets[j]; localEntry1 != null; localEntry1 = localEntry1.next)
      if (paramObject == localEntry1.object)
        return true;
    JSONSerializerContext.Entry localEntry2 = new JSONSerializerContext.Entry(paramObject, i, this.buckets[j]);
    this.buckets[j] = localEntry2;
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.JSONSerializerContext
 * JD-Core Version:    0.6.2
 */
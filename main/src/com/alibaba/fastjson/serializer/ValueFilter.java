package com.alibaba.fastjson.serializer;

public abstract interface ValueFilter extends SerializeFilter
{
  public abstract Object process(Object paramObject1, String paramString, Object paramObject2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.ValueFilter
 * JD-Core Version:    0.6.2
 */
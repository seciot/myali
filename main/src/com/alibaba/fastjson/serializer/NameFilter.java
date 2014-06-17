package com.alibaba.fastjson.serializer;

public abstract interface NameFilter extends SerializeFilter
{
  public abstract String process(Object paramObject1, String paramString, Object paramObject2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.NameFilter
 * JD-Core Version:    0.6.2
 */
package com.alibaba.fastjson.serializer;

public abstract interface PropertyPreFilter extends SerializeFilter
{
  public abstract boolean apply(JSONSerializer paramJSONSerializer, Object paramObject, String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.PropertyPreFilter
 * JD-Core Version:    0.6.2
 */
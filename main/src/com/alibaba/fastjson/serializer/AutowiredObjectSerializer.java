package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.util.Set;

public abstract interface AutowiredObjectSerializer extends ObjectSerializer
{
  public abstract Set<Type> getAutowiredFor();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.AutowiredObjectSerializer
 * JD-Core Version:    0.6.2
 */
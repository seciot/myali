package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
import java.util.Set;

public abstract interface AutowiredObjectDeserializer extends ObjectDeserializer
{
  public abstract Set<Type> getAutowiredFor();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.AutowiredObjectDeserializer
 * JD-Core Version:    0.6.2
 */
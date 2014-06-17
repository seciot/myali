package com.alibaba.fastjson;

import java.lang.reflect.Type;

public class TypeReference<T>
{
  public static final Type LIST_STRING = new TypeReference.1().getType();
  private final Type type = ((java.lang.reflect.ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0];

  public Type getType()
  {
    return this.type;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.TypeReference
 * JD-Core Version:    0.6.2
 */
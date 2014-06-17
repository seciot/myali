package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class ClassSerializer
  implements ObjectSerializer
{
  public static final ClassSerializer instance = new ClassSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    paramJSONSerializer.getWriter().writeString(((Class)paramObject1).getName());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.ClassSerializer
 * JD-Core Version:    0.6.2
 */
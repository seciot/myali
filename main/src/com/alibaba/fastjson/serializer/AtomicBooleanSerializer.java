package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;

public class AtomicBooleanSerializer
  implements ObjectSerializer
{
  public static final AtomicBooleanSerializer instance = new AtomicBooleanSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (((AtomicBoolean)paramObject1).get())
    {
      localSerializeWriter.append("true");
      return;
    }
    localSerializeWriter.append("false");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.AtomicBooleanSerializer
 * JD-Core Version:    0.6.2
 */
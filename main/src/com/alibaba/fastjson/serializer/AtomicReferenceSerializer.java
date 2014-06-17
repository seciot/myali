package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

public class AtomicReferenceSerializer
  implements ObjectSerializer
{
  public static final AtomicReferenceSerializer instance = new AtomicReferenceSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    paramJSONSerializer.write(((AtomicReference)paramObject1).get());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.AtomicReferenceSerializer
 * JD-Core Version:    0.6.2
 */
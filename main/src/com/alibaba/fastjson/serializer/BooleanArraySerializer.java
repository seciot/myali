package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class BooleanArraySerializer
  implements ObjectSerializer
{
  public static BooleanArraySerializer instance = new BooleanArraySerializer();

  public final void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramObject1 == null)
    {
      if (localSerializeWriter.isEnabled(SerializerFeature.WriteNullListAsEmpty))
      {
        localSerializeWriter.write("[]");
        return;
      }
      localSerializeWriter.writeNull();
      return;
    }
    localSerializeWriter.writeBooleanArray((boolean[])paramObject1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.BooleanArraySerializer
 * JD-Core Version:    0.6.2
 */
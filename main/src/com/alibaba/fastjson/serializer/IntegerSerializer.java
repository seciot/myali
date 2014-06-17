package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class IntegerSerializer
  implements ObjectSerializer
{
  public static IntegerSerializer instance = new IntegerSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Number localNumber = (Number)paramObject1;
    if (localNumber == null)
    {
      if (localSerializeWriter.isEnabled(SerializerFeature.WriteNullNumberAsZero))
      {
        localSerializeWriter.write('0');
        return;
      }
      localSerializeWriter.writeNull();
      return;
    }
    localSerializeWriter.writeInt(localNumber.intValue());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.IntegerSerializer
 * JD-Core Version:    0.6.2
 */
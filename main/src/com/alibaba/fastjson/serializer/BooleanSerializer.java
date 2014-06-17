package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class BooleanSerializer
  implements ObjectSerializer
{
  public static final BooleanSerializer instance = new BooleanSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Boolean localBoolean = (Boolean)paramObject1;
    if (localBoolean == null)
    {
      if (localSerializeWriter.isEnabled(SerializerFeature.WriteNullBooleanAsFalse))
      {
        localSerializeWriter.write("false");
        return;
      }
      localSerializeWriter.writeNull();
      return;
    }
    if (localBoolean.booleanValue())
    {
      localSerializeWriter.write("true");
      return;
    }
    localSerializeWriter.write("false");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.BooleanSerializer
 * JD-Core Version:    0.6.2
 */
package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class EnumSerializer
  implements ObjectSerializer
{
  public static final EnumSerializer instance = new EnumSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramObject1 == null)
    {
      paramJSONSerializer.getWriter().writeNull();
      return;
    }
    if (paramJSONSerializer.isEnabled(SerializerFeature.WriteEnumUsingToString))
    {
      paramJSONSerializer.write(((Enum)paramObject1).name());
      return;
    }
    localSerializeWriter.writeInt(((Enum)paramObject1).ordinal());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.EnumSerializer
 * JD-Core Version:    0.6.2
 */
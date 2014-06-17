package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class LongSerializer
  implements ObjectSerializer
{
  public static LongSerializer instance = new LongSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramObject1 == null)
      if (localSerializeWriter.isEnabled(SerializerFeature.WriteNullNumberAsZero))
        localSerializeWriter.write('0');
    long l;
    do
    {
      return;
      localSerializeWriter.writeNull();
      return;
      l = ((Long)paramObject1).longValue();
      localSerializeWriter.writeLong(l);
    }
    while ((!paramJSONSerializer.isEnabled(SerializerFeature.WriteClassName)) || (l > 2147483647L) || (l < -2147483648L) || (paramType == Long.class));
    localSerializeWriter.write('L');
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.LongSerializer
 * JD-Core Version:    0.6.2
 */
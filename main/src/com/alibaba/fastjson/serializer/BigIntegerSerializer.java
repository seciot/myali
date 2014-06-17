package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.math.BigInteger;

public class BigIntegerSerializer
  implements ObjectSerializer
{
  public static final BigIntegerSerializer instance = new BigIntegerSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramObject1 == null)
    {
      if (localSerializeWriter.isEnabled(SerializerFeature.WriteNullNumberAsZero))
      {
        localSerializeWriter.write('0');
        return;
      }
      localSerializeWriter.writeNull();
      return;
    }
    localSerializeWriter.write(((BigInteger)paramObject1).toString());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.BigIntegerSerializer
 * JD-Core Version:    0.6.2
 */
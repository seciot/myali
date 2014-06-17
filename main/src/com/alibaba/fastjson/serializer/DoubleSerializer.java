package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class DoubleSerializer
  implements ObjectSerializer
{
  public static final DoubleSerializer instance = new DoubleSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramObject1 == null)
      if (paramJSONSerializer.isEnabled(SerializerFeature.WriteNullNumberAsZero))
        localSerializeWriter.write('0');
    do
    {
      return;
      localSerializeWriter.writeNull();
      return;
      double d = ((Double)paramObject1).doubleValue();
      if (Double.isNaN(d))
      {
        localSerializeWriter.writeNull();
        return;
      }
      if (Double.isInfinite(d))
      {
        localSerializeWriter.writeNull();
        return;
      }
      String str = Double.toString(d);
      if (str.endsWith(".0"))
        str = str.substring(0, -2 + str.length());
      localSerializeWriter.append(str);
    }
    while (!paramJSONSerializer.isEnabled(SerializerFeature.WriteClassName));
    localSerializeWriter.write('D');
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.DoubleSerializer
 * JD-Core Version:    0.6.2
 */
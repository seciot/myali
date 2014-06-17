package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class ArraySerializer
  implements ObjectSerializer
{
  private final ObjectSerializer compObjectSerializer;

  public ArraySerializer(ObjectSerializer paramObjectSerializer)
  {
    this.compObjectSerializer = paramObjectSerializer;
  }

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
    Object[] arrayOfObject = (Object[])paramObject1;
    int i = -1 + arrayOfObject.length;
    if (i == -1)
    {
      localSerializeWriter.append("[]");
      return;
    }
    SerialContext localSerialContext = paramJSONSerializer.getContext();
    paramJSONSerializer.setContext(localSerialContext, paramObject1, paramObject2);
    while (true)
    {
      int j;
      try
      {
        localSerializeWriter.append('[');
        j = 0;
        if (j < i)
        {
          Object localObject2 = arrayOfObject[j];
          if (localObject2 == null)
          {
            localSerializeWriter.append("null,");
          }
          else
          {
            this.compObjectSerializer.write(paramJSONSerializer, localObject2, Integer.valueOf(j), null);
            localSerializeWriter.append(',');
          }
        }
      }
      finally
      {
        paramJSONSerializer.setContext(localSerialContext);
      }
      Object localObject3 = arrayOfObject[i];
      if (localObject3 == null)
        localSerializeWriter.append("null]");
      while (true)
      {
        paramJSONSerializer.setContext(localSerialContext);
        return;
        this.compObjectSerializer.write(paramJSONSerializer, localObject3, Integer.valueOf(i), null);
        localSerializeWriter.append(']');
      }
      j++;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.ArraySerializer
 * JD-Core Version:    0.6.2
 */
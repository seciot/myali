package com.alibaba.fastjson.serializer;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Enumeration;

public class EnumerationSeriliazer
  implements ObjectSerializer
{
  public static EnumerationSeriliazer instance = new EnumerationSeriliazer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
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
    if ((paramJSONSerializer.isEnabled(SerializerFeature.WriteClassName)) && ((paramType instanceof ParameterizedType)));
    for (Type localType = ((ParameterizedType)paramType).getActualTypeArguments()[0]; ; localType = null)
    {
      Enumeration localEnumeration = (Enumeration)paramObject1;
      SerialContext localSerialContext = paramJSONSerializer.getContext();
      paramJSONSerializer.setContext(localSerialContext, paramObject1, paramObject2);
      while (true)
      {
        int j;
        try
        {
          localSerializeWriter.append('[');
          i = 0;
          if (localEnumeration.hasMoreElements())
          {
            Object localObject2 = localEnumeration.nextElement();
            j = i + 1;
            if (i != 0)
              localSerializeWriter.append(',');
            if (localObject2 == null)
            {
              localSerializeWriter.writeNull();
              i = j;
              continue;
            }
            Class localClass = localObject2.getClass();
            if (localClass == Integer.class)
            {
              localSerializeWriter.writeInt(((Integer)localObject2).intValue());
              i = j;
              continue;
            }
            if (localClass == Long.class)
            {
              localSerializeWriter.writeLong(((Long)localObject2).longValue());
              if (!localSerializeWriter.isEnabled(SerializerFeature.WriteClassName))
                break label288;
              localSerializeWriter.write('L');
              i = j;
              continue;
            }
            paramJSONSerializer.getObjectWriter(localClass).write(paramJSONSerializer, localObject2, Integer.valueOf(j - 1), localType);
            i = j;
            continue;
          }
          localSerializeWriter.append(']');
          return;
        }
        finally
        {
          paramJSONSerializer.setContext(localSerialContext);
        }
        label288: int i = j;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.EnumerationSeriliazer
 * JD-Core Version:    0.6.2
 */
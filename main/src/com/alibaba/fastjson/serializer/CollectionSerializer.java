package com.alibaba.fastjson.serializer;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

public class CollectionSerializer
  implements ObjectSerializer
{
  public static final CollectionSerializer instance = new CollectionSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    int i = 0;
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
      Collection localCollection = (Collection)paramObject1;
      SerialContext localSerialContext = paramJSONSerializer.getContext();
      paramJSONSerializer.setContext(localSerialContext, paramObject1, paramObject2);
      if (paramJSONSerializer.isEnabled(SerializerFeature.WriteClassName))
      {
        if (HashSet.class != localCollection.getClass())
          break label190;
        localSerializeWriter.append("Set");
      }
      while (true)
      {
        int j;
        try
        {
          localSerializeWriter.append('[');
          Iterator localIterator = localCollection.iterator();
          if (localIterator.hasNext())
          {
            Object localObject2 = localIterator.next();
            j = i + 1;
            if (i != 0)
              localSerializeWriter.append(',');
            if (localObject2 == null)
            {
              localSerializeWriter.writeNull();
              i = j;
              continue;
              label190: if (TreeSet.class != localCollection.getClass())
                continue;
              localSerializeWriter.append("TreeSet");
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
                break label346;
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
        label346: i = j;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.CollectionSerializer
 * JD-Core Version:    0.6.2
 */
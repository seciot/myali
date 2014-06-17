package com.alibaba.fastjson.serializer;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

public final class ListSerializer
  implements ObjectSerializer
{
  public static final ListSerializer instance = new ListSerializer();

  public final void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    int i = 0;
    boolean bool = paramJSONSerializer.isEnabled(SerializerFeature.WriteClassName);
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Type localType;
    List localList;
    int k;
    SerialContext localSerialContext;
    if ((bool) && ((paramType instanceof ParameterizedType)))
    {
      localType = ((ParameterizedType)paramType).getActualTypeArguments()[0];
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
      localList = (List)paramObject1;
      int j = localList.size();
      k = j - 1;
      if (k == -1)
      {
        localSerializeWriter.append("[]");
        return;
      }
      localSerialContext = paramJSONSerializer.getContext();
      paramJSONSerializer.setContext(localSerialContext, paramObject1, paramObject2);
      if (j > 1)
      {
        try
        {
          if (!localSerializeWriter.isEnabled(SerializerFeature.PrettyFormat))
            break label301;
          localSerializeWriter.append('[');
          paramJSONSerializer.incrementIndent();
          label153: if (i >= j)
            break label278;
          if (i != 0)
            localSerializeWriter.append(',');
          paramJSONSerializer.println();
          Object localObject4 = localList.get(i);
          if (localObject4 != null)
            if (paramJSONSerializer.containsReference(localObject4))
            {
              paramJSONSerializer.writeReference(localObject4);
            }
            else
            {
              ObjectSerializer localObjectSerializer = paramJSONSerializer.getObjectWriter(localObject4.getClass());
              paramJSONSerializer.setContext(new SerialContext(localSerialContext, paramObject1, paramObject2));
              localObjectSerializer.write(paramJSONSerializer, localObject4, Integer.valueOf(i), localType);
            }
        }
        finally
        {
          paramJSONSerializer.setContext(localSerialContext);
        }
        paramJSONSerializer.getWriter().writeNull();
        break label691;
        label278: paramJSONSerializer.decrementIdent();
        paramJSONSerializer.println();
        localSerializeWriter.append(']');
        paramJSONSerializer.setContext(localSerialContext);
        return;
      }
      label301: localSerializeWriter.append('[');
    }
    for (int m = 0; ; m++)
      if (m < k)
      {
        Object localObject1 = localList.get(m);
        if (localObject1 == null)
        {
          localSerializeWriter.append("null,");
        }
        else
        {
          Class localClass1 = localObject1.getClass();
          if (localClass1 == Integer.class)
          {
            localSerializeWriter.writeIntAndChar(((Integer)localObject1).intValue(), ',');
          }
          else if (localClass1 == Long.class)
          {
            long l = ((Long)localObject1).longValue();
            if (bool)
            {
              localSerializeWriter.writeLongAndChar(l, 'L');
              localSerializeWriter.write(',');
            }
            else
            {
              localSerializeWriter.writeLongAndChar(l, ',');
            }
          }
          else
          {
            paramJSONSerializer.setContext(new SerialContext(localSerialContext, paramObject1, paramObject2));
            if (paramJSONSerializer.containsReference(localObject1))
              paramJSONSerializer.writeReference(localObject1);
            while (true)
            {
              localSerializeWriter.append(',');
              break;
              paramJSONSerializer.getObjectWriter(localObject1.getClass()).write(paramJSONSerializer, localObject1, Integer.valueOf(m), localType);
            }
          }
        }
      }
      else
      {
        Object localObject3 = localList.get(k);
        if (localObject3 == null)
          localSerializeWriter.append("null]");
        while (true)
        {
          paramJSONSerializer.setContext(localSerialContext);
          return;
          Class localClass2 = localObject3.getClass();
          if (localClass2 == Integer.class)
          {
            localSerializeWriter.writeIntAndChar(((Integer)localObject3).intValue(), ']');
          }
          else
          {
            if (localClass2 != Long.class)
              break;
            if (bool)
            {
              localSerializeWriter.writeLongAndChar(((Long)localObject3).longValue(), 'L');
              localSerializeWriter.write(']');
            }
            else
            {
              localSerializeWriter.writeLongAndChar(((Long)localObject3).longValue(), ']');
            }
          }
        }
        paramJSONSerializer.setContext(new SerialContext(localSerialContext, paramObject1, paramObject2));
        if (paramJSONSerializer.containsReference(localObject3))
          paramJSONSerializer.writeReference(localObject3);
        while (true)
        {
          localSerializeWriter.append(']');
          break;
          paramJSONSerializer.getObjectWriter(localObject3.getClass()).write(paramJSONSerializer, localObject3, Integer.valueOf(k), localType);
        }
        localType = null;
        break;
        label691: i++;
        break label153;
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.ListSerializer
 * JD-Core Version:    0.6.2
 */
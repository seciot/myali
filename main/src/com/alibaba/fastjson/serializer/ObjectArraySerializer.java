package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class ObjectArraySerializer
  implements ObjectSerializer
{
  public static final ObjectArraySerializer instance = new ObjectArraySerializer();

  public final void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    int i = 0;
    Object localObject1 = null;
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Object[] arrayOfObject = (Object[])paramObject1;
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
    int j = arrayOfObject.length;
    int k = j - 1;
    if (k == -1)
    {
      localSerializeWriter.append("[]");
      return;
    }
    SerialContext localSerialContext = paramJSONSerializer.getContext();
    paramJSONSerializer.setContext(localSerialContext, paramObject1, paramObject2);
    while (true)
    {
      int m;
      Object localObject4;
      Class localClass;
      try
      {
        localSerializeWriter.append('[');
        if (localSerializeWriter.isEnabled(SerializerFeature.PrettyFormat))
        {
          paramJSONSerializer.incrementIndent();
          paramJSONSerializer.println();
          if (i < j)
          {
            if (i != 0)
            {
              localSerializeWriter.write(',');
              paramJSONSerializer.println();
            }
            paramJSONSerializer.write(arrayOfObject[i]);
            i++;
            continue;
          }
          paramJSONSerializer.decrementIdent();
          paramJSONSerializer.println();
          localSerializeWriter.write(']');
          return;
        }
        m = 0;
        localObjectSerializer = null;
        if (m >= k)
          break label285;
        localObject4 = arrayOfObject[m];
        if (localObject4 == null)
        {
          localSerializeWriter.append("null,");
        }
        else
        {
          localClass = localObject4.getClass();
          if (localClass == localObject1)
          {
            localObjectSerializer.write(paramJSONSerializer, localObject4, null, null);
            localSerializeWriter.append(',');
          }
        }
      }
      finally
      {
        paramJSONSerializer.setContext(localSerialContext);
      }
      ObjectSerializer localObjectSerializer = paramJSONSerializer.getObjectWriter(localClass);
      localObjectSerializer.write(paramJSONSerializer, localObject4, null, null);
      localObject1 = localClass;
      continue;
      label285: Object localObject3 = arrayOfObject[k];
      if (localObject3 == null)
        localSerializeWriter.append("null]");
      while (true)
      {
        paramJSONSerializer.setContext(localSerialContext);
        return;
        paramJSONSerializer.write(localObject3);
        localSerializeWriter.append(']');
      }
      m++;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.ObjectArraySerializer
 * JD-Core Version:    0.6.2
 */
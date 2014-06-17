package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class MapSerializer
  implements ObjectSerializer
{
  public static MapSerializer instance = new MapSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramObject1 == null)
    {
      localSerializeWriter.writeNull();
      return;
    }
    Map localMap = (Map)paramObject1;
    if ((localSerializeWriter.isEnabled(SerializerFeature.SortField)) && (!(localMap instanceof SortedMap)) && (!(localMap instanceof LinkedHashMap)));
    Object localObject1;
    while (true)
    {
      try
      {
        TreeMap localTreeMap = new TreeMap(localMap);
        localObject1 = localTreeMap;
        if (!paramJSONSerializer.containsReference(paramObject1))
          break;
        paramJSONSerializer.writeReference(paramObject1);
        return;
      }
      catch (Exception localException)
      {
      }
      localObject1 = localMap;
    }
    SerialContext localSerialContext = paramJSONSerializer.getContext();
    paramJSONSerializer.setContext(localSerialContext, paramObject1, paramObject2);
    while (true)
    {
      String str1;
      String str2;
      try
      {
        localSerializeWriter.write('{');
        paramJSONSerializer.incrementIndent();
        int i = 1;
        if (localSerializeWriter.isEnabled(SerializerFeature.WriteClassName))
        {
          localSerializeWriter.writeFieldName("@type");
          localSerializeWriter.writeString(paramObject1.getClass().getName());
          i = 0;
        }
        Iterator localIterator1 = ((Map)localObject1).entrySet().iterator();
        int j = i;
        Object localObject3 = null;
        Object localObject4 = null;
        if (localIterator1.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator1.next();
          Object localObject5 = localEntry.getValue();
          Object localObject6 = localEntry.getKey();
          if ((localObject6 == null) || ((localObject6 instanceof String)))
          {
            str1 = (String)localObject6;
            List localList1 = paramJSONSerializer.getPropertyPreFiltersDirect();
            if (localList1 != null)
            {
              Iterator localIterator2 = localList1.iterator();
              if (!localIterator2.hasNext())
                break label693;
              if (((PropertyPreFilter)localIterator2.next()).apply(paramJSONSerializer, paramObject1, str1))
                continue;
              k = 0;
              break label696;
            }
            List localList2 = paramJSONSerializer.getPropertyFiltersDirect();
            if (localList2 != null)
            {
              Iterator localIterator3 = localList2.iterator();
              if (!localIterator3.hasNext())
                break label687;
              if (((PropertyFilter)localIterator3.next()).apply(paramObject1, str1, localObject5))
                continue;
              m = 0;
              break label704;
            }
            List localList3 = paramJSONSerializer.getNameFiltersDirect();
            if (localList3 == null)
              break label712;
            Iterator localIterator4 = localList3.iterator();
            str2 = str1;
            if (localIterator4.hasNext())
            {
              str2 = ((NameFilter)localIterator4.next()).process(paramObject1, str2, localObject5);
              continue;
            }
            List localList4 = paramJSONSerializer.getValueFiltersDirect();
            if (localList4 != null)
            {
              Iterator localIterator5 = localList4.iterator();
              if (localIterator5.hasNext())
              {
                localObject5 = ((ValueFilter)localIterator5.next()).process(paramObject1, str2, localObject5);
                continue;
              }
            }
            localObject7 = localObject5;
            if ((localObject7 == null) && (!paramJSONSerializer.isEnabled(SerializerFeature.WriteMapNullValue)))
              continue;
            if (j == 0)
              localSerializeWriter.write(',');
            if (localSerializeWriter.isEnabled(SerializerFeature.PrettyFormat))
              paramJSONSerializer.println();
            localSerializeWriter.writeFieldName(str2, true);
            if (localObject7 != null)
              continue;
            localSerializeWriter.writeNull();
            j = 0;
            continue;
          }
          if (j == 0)
            localSerializeWriter.write(',');
          paramJSONSerializer.write(localObject6);
          localSerializeWriter.write(':');
          Object localObject7 = localObject5;
          continue;
          Class localClass = localObject7.getClass();
          if (localClass == localObject4)
          {
            localObject3.write(paramJSONSerializer, localObject7, localObject6, null);
            j = 0;
            continue;
          }
          ObjectSerializer localObjectSerializer = paramJSONSerializer.getObjectWriter(localClass);
          localObjectSerializer.write(paramJSONSerializer, localObject7, localObject6, null);
          localObject3 = localObjectSerializer;
          localObject4 = localClass;
          j = 0;
          continue;
        }
        paramJSONSerializer.setContext(localSerialContext);
        paramJSONSerializer.decrementIdent();
        if ((localSerializeWriter.isEnabled(SerializerFeature.PrettyFormat)) && (((Map)localObject1).size() > 0))
          paramJSONSerializer.println();
        localSerializeWriter.write('}');
        return;
      }
      finally
      {
        paramJSONSerializer.setContext(localSerialContext);
      }
      label687: int m = 1;
      break label704;
      label693: int k = 1;
      label696: if (k != 0)
      {
        continue;
        label704: if (m != 0)
        {
          continue;
          label712: str2 = str1;
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.MapSerializer
 * JD-Core Version:    0.6.2
 */
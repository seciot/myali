package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class JavaBeanSerializer
  implements ObjectSerializer
{
  private final FieldSerializer[] getters;
  private final FieldSerializer[] sortedGetters;

  public JavaBeanSerializer(Class<?> paramClass)
  {
    this(paramClass, null);
  }

  public JavaBeanSerializer(Class<?> paramClass, Map<String, String> paramMap)
  {
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = TypeUtils.computeGetters(paramClass, paramMap, false).iterator();
    while (localIterator1.hasNext())
      localArrayList1.add(createFieldSerializer((FieldInfo)localIterator1.next()));
    this.getters = ((FieldSerializer[])localArrayList1.toArray(new FieldSerializer[localArrayList1.size()]));
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator2 = TypeUtils.computeGetters(paramClass, paramMap, true).iterator();
    while (localIterator2.hasNext())
      localArrayList2.add(createFieldSerializer((FieldInfo)localIterator2.next()));
    this.sortedGetters = ((FieldSerializer[])localArrayList2.toArray(new FieldSerializer[localArrayList2.size()]));
  }

  public JavaBeanSerializer(Class<?> paramClass, String[] paramArrayOfString)
  {
    this(paramClass, createAliasMap(paramArrayOfString));
  }

  static Map<String, String> createAliasMap(String[] paramArrayOfString)
  {
    HashMap localHashMap = new HashMap();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      localHashMap.put(str, str);
    }
    return localHashMap;
  }

  public FieldSerializer createFieldSerializer(FieldInfo paramFieldInfo)
  {
    if (paramFieldInfo.getFieldClass() == Number.class)
      return new NumberFieldSerializer(paramFieldInfo);
    return new ObjectFieldSerializer(paramFieldInfo);
  }

  public FieldSerializer[] getGetters()
  {
    return this.getters;
  }

  protected boolean isWriteClassName(JSONSerializer paramJSONSerializer, Object paramObject1, Type paramType, Object paramObject2)
  {
    return paramJSONSerializer.isWriteClassName(paramType, paramObject1);
  }

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    int i = 0;
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramObject1 == null)
    {
      localSerializeWriter.writeNull();
      return;
    }
    if (paramJSONSerializer.containsReference(paramObject1))
    {
      writeReference(paramJSONSerializer, paramObject1);
      return;
    }
    FieldSerializer[] arrayOfFieldSerializer;
    SerialContext localSerialContext;
    if (localSerializeWriter.isEnabled(SerializerFeature.SortField))
    {
      arrayOfFieldSerializer = this.sortedGetters;
      localSerialContext = paramJSONSerializer.getContext();
      paramJSONSerializer.setContext(localSerialContext, paramObject1, paramObject2);
    }
    while (true)
    {
      FieldSerializer localFieldSerializer;
      Object localObject3;
      try
      {
        localSerializeWriter.append('{');
        if ((arrayOfFieldSerializer.length > 0) && (localSerializeWriter.isEnabled(SerializerFeature.PrettyFormat)))
        {
          paramJSONSerializer.incrementIndent();
          paramJSONSerializer.println();
        }
        if ((!isWriteClassName(paramJSONSerializer, paramObject1, paramType, paramObject2)) || (paramObject1.getClass() == paramType))
          break label426;
        localSerializeWriter.writeFieldName("@type");
        paramJSONSerializer.write(paramObject1.getClass());
        j = 1;
        if (i >= arrayOfFieldSerializer.length)
          break label386;
        localFieldSerializer = arrayOfFieldSerializer[i];
        Object localObject2;
        if (paramJSONSerializer.isEnabled(SerializerFeature.SkipTransientField))
        {
          Field localField = localFieldSerializer.getField();
          if ((localField != null) && (Modifier.isTransient(localField.getModifiers())));
        }
        else
        {
          localObject2 = localFieldSerializer.getPropertyValue(paramObject1);
          if (FilterUtils.apply(paramJSONSerializer, paramObject1, localFieldSerializer.getName(), localObject2))
          {
            String str = FilterUtils.processKey(paramJSONSerializer, paramObject1, localFieldSerializer.getName(), localObject2);
            localObject3 = FilterUtils.processValue(paramJSONSerializer, paramObject1, localFieldSerializer.getName(), localObject2);
            if ((localObject3 != null) || (localFieldSerializer.isWriteNull()) || (paramJSONSerializer.isEnabled(SerializerFeature.WriteMapNullValue)))
            {
              if (j != 0)
              {
                localSerializeWriter.append(',');
                if (localSerializeWriter.isEnabled(SerializerFeature.PrettyFormat))
                  paramJSONSerializer.println();
              }
              if (str == localFieldSerializer.getName())
                continue;
              localSerializeWriter.writeFieldName(str);
              paramJSONSerializer.write(localObject3);
              j = 1;
            }
          }
        }
        i++;
        continue;
        arrayOfFieldSerializer = this.getters;
        break;
        if (localObject2 != localObject3)
        {
          localFieldSerializer.writePrefix(paramJSONSerializer);
          paramJSONSerializer.write(localObject3);
          continue;
        }
      }
      catch (Exception localException)
      {
        throw new JSONException("write javaBean error", localException);
      }
      finally
      {
        paramJSONSerializer.setContext(localSerialContext);
      }
      localFieldSerializer.writeProperty(paramJSONSerializer, localObject3);
      continue;
      label386: if ((arrayOfFieldSerializer.length > 0) && (localSerializeWriter.isEnabled(SerializerFeature.PrettyFormat)))
      {
        paramJSONSerializer.decrementIdent();
        paramJSONSerializer.println();
      }
      localSerializeWriter.append('}');
      paramJSONSerializer.setContext(localSerialContext);
      return;
      label426: int j = 0;
      i = 0;
    }
  }

  public void writeReference(JSONSerializer paramJSONSerializer, Object paramObject)
  {
    paramJSONSerializer.writeReference(paramObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.JavaBeanSerializer
 * JD-Core Version:    0.6.2
 */
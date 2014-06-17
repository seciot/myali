package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class TypeUtils
{
  private static ConcurrentMap<String, Class<?>> mappings = new ConcurrentHashMap();

  static
  {
    addBaseClassMappings();
  }

  public static void addBaseClassMappings()
  {
    mappings.put("byte", Byte.TYPE);
    mappings.put("short", Short.TYPE);
    mappings.put("int", Integer.TYPE);
    mappings.put("long", Long.TYPE);
    mappings.put("float", Float.TYPE);
    mappings.put("double", Double.TYPE);
    mappings.put("boolean", Boolean.TYPE);
    mappings.put("char", Character.TYPE);
    mappings.put("[byte", [B.class);
    mappings.put("[short", [S.class);
    mappings.put("[int", [I.class);
    mappings.put("[long", [J.class);
    mappings.put("[float", [F.class);
    mappings.put("[double", [D.class);
    mappings.put("[boolean", [Z.class);
    mappings.put("[char", [C.class);
    mappings.put(HashMap.class.getName(), HashMap.class);
  }

  public static void addClassMapping(String paramString, Class<?> paramClass)
  {
    if (paramString == null)
      paramString = paramClass.getName();
    mappings.put(paramString, paramClass);
  }

  public static final <T> T cast(Object paramObject, Class<T> paramClass, ParserConfig paramParserConfig)
  {
    if (paramObject == null)
      paramObject = null;
    do
    {
      do
      {
        do
        {
          return paramObject;
          if (paramClass == null)
            throw new IllegalArgumentException("clazz is null");
        }
        while (paramClass == paramObject.getClass());
        if (!(paramObject instanceof Map))
          break;
      }
      while (paramClass == Map.class);
      return castToJavaBean((Map)paramObject, paramClass, paramParserConfig);
      if ((paramClass.isArray()) && ((paramObject instanceof Collection)))
      {
        Collection localCollection = (Collection)paramObject;
        int i = 0;
        Object localObject = Array.newInstance(paramClass.getComponentType(), localCollection.size());
        Iterator localIterator = localCollection.iterator();
        while (localIterator.hasNext())
        {
          Array.set(localObject, i, cast(localIterator.next(), paramClass.getComponentType(), paramParserConfig));
          i++;
        }
        return localObject;
      }
    }
    while (paramClass.isAssignableFrom(paramObject.getClass()));
    if ((paramClass == Boolean.TYPE) || (paramClass == Boolean.class))
      return castToBoolean(paramObject);
    if ((paramClass == Byte.TYPE) || (paramClass == Byte.class))
      return castToByte(paramObject);
    if ((paramClass == Short.TYPE) || (paramClass == Short.class))
      return castToShort(paramObject);
    if ((paramClass == Integer.TYPE) || (paramClass == Integer.class))
      return castToInt(paramObject);
    if ((paramClass == Long.TYPE) || (paramClass == Long.class))
      return castToLong(paramObject);
    if ((paramClass == Float.TYPE) || (paramClass == Float.class))
      return castToFloat(paramObject);
    if ((paramClass == Double.TYPE) || (paramClass == Double.class))
      return castToDouble(paramObject);
    if (paramClass == String.class)
      return castToString(paramObject);
    if (paramClass == BigDecimal.class)
      return castToBigDecimal(paramObject);
    if (paramClass == BigInteger.class)
      return castToBigInteger(paramObject);
    if (paramClass == java.util.Date.class)
      return castToDate(paramObject);
    if (paramClass == java.sql.Date.class)
      return castToSqlDate(paramObject);
    if (paramClass == Timestamp.class)
      return castToTimestamp(paramObject);
    if (paramClass.isEnum())
      return castToEnum(paramObject, paramClass, paramParserConfig);
    if (Calendar.class.isAssignableFrom(paramClass))
    {
      java.util.Date localDate = castToDate(paramObject);
      Calendar localCalendar;
      if (paramClass == Calendar.class)
        localCalendar = Calendar.getInstance();
      while (true)
      {
        localCalendar.setTime(localDate);
        return localCalendar;
        try
        {
          localCalendar = (Calendar)paramClass.newInstance();
        }
        catch (Exception localException)
        {
          throw new JSONException("can not cast to : " + paramClass.getName(), localException);
        }
      }
    }
    if (((paramObject instanceof String)) && (((String)paramObject).length() == 0))
      return null;
    throw new JSONException("can not cast to : " + paramClass.getName());
  }

  public static final <T> T cast(Object paramObject, ParameterizedType paramParameterizedType, ParserConfig paramParserConfig)
  {
    Type localType1 = paramParameterizedType.getRawType();
    Object localObject;
    if ((localType1 == List.class) || (localType1 == ArrayList.class))
    {
      Type localType2 = paramParameterizedType.getActualTypeArguments()[0];
      if ((paramObject instanceof Iterable))
      {
        localObject = new ArrayList();
        Iterator localIterator1 = ((Iterable)paramObject).iterator();
        while (localIterator1.hasNext())
          ((List)localObject).add(cast(localIterator1.next(), localType2, paramParserConfig));
      }
    }
    if ((localType1 == Map.class) || (localType1 == HashMap.class))
    {
      Type localType3 = paramParameterizedType.getActualTypeArguments()[0];
      Type localType4 = paramParameterizedType.getActualTypeArguments()[1];
      if ((paramObject instanceof Map))
      {
        HashMap localHashMap = new HashMap();
        Iterator localIterator2 = ((Map)paramObject).entrySet().iterator();
        while (localIterator2.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator2.next();
          localHashMap.put(cast(localEntry.getKey(), localType3, paramParserConfig), cast(localEntry.getValue(), localType4, paramParserConfig));
        }
        localObject = localHashMap;
        return localObject;
      }
    }
    if (((paramObject instanceof String)) && (((String)paramObject).length() == 0))
      return null;
    if ((paramParameterizedType.getActualTypeArguments().length == 1) && ((paramParameterizedType.getActualTypeArguments()[0] instanceof WildcardType)))
      return cast(paramObject, localType1, paramParserConfig);
    throw new JSONException("can not cast to : " + paramParameterizedType);
  }

  public static final <T> T cast(Object paramObject, Type paramType, ParserConfig paramParserConfig)
  {
    if (paramObject == null)
      paramObject = null;
    do
    {
      return paramObject;
      if ((paramType instanceof Class))
        return cast(paramObject, (Class)paramType, paramParserConfig);
      if ((paramType instanceof ParameterizedType))
        return cast(paramObject, (ParameterizedType)paramType, paramParserConfig);
      if (((paramObject instanceof String)) && (((String)paramObject).length() == 0))
        return null;
    }
    while ((paramType instanceof TypeVariable));
    throw new JSONException("can not cast to : " + paramType);
  }

  public static final BigDecimal castToBigDecimal(Object paramObject)
  {
    if (paramObject == null)
      return null;
    if ((paramObject instanceof BigDecimal))
      return (BigDecimal)paramObject;
    if ((paramObject instanceof BigInteger))
      return new BigDecimal((BigInteger)paramObject);
    String str = paramObject.toString();
    if (str.length() == 0)
      return null;
    return new BigDecimal(str);
  }

  public static final BigInteger castToBigInteger(Object paramObject)
  {
    if (paramObject == null)
      return null;
    if ((paramObject instanceof BigInteger))
      return (BigInteger)paramObject;
    if (((paramObject instanceof Float)) || ((paramObject instanceof Double)))
      return BigInteger.valueOf(((Number)paramObject).longValue());
    String str = paramObject.toString();
    if (str.length() == 0)
      return null;
    return new BigInteger(str);
  }

  public static final Boolean castToBoolean(Object paramObject)
  {
    int i = 1;
    if (paramObject == null)
      return null;
    if ((paramObject instanceof Boolean))
      return (Boolean)paramObject;
    if ((paramObject instanceof Number))
    {
      if (((Number)paramObject).intValue() == i);
      while (true)
      {
        return Boolean.valueOf(i);
        int j = 0;
      }
    }
    if ((paramObject instanceof String))
    {
      String str = (String)paramObject;
      if (str.length() == 0)
        return null;
      if ("true".equals(str))
        return Boolean.TRUE;
      if ("false".equals(str))
        return Boolean.FALSE;
      if ("1".equals(str))
        return Boolean.TRUE;
    }
    throw new JSONException("can not cast to int, value : " + paramObject);
  }

  public static final Byte castToByte(Object paramObject)
  {
    if (paramObject == null);
    String str;
    do
    {
      return null;
      if ((paramObject instanceof Number))
        return Byte.valueOf(((Number)paramObject).byteValue());
      if (!(paramObject instanceof String))
        break;
      str = (String)paramObject;
    }
    while (str.length() == 0);
    return Byte.valueOf(Byte.parseByte(str));
    throw new JSONException("can not cast to byte, value : " + paramObject);
  }

  public static final byte[] castToBytes(Object paramObject)
  {
    if ((paramObject instanceof byte[]))
      return (byte[])paramObject;
    if ((paramObject instanceof String))
      return Base64.decodeFast((String)paramObject);
    throw new JSONException("can not cast to int, value : " + paramObject);
  }

  public static final Character castToChar(Object paramObject)
  {
    if (paramObject == null)
      return null;
    if ((paramObject instanceof Character))
      return (Character)paramObject;
    if ((paramObject instanceof String))
    {
      String str = (String)paramObject;
      if (str.length() == 0)
        return null;
      if (str.length() != 1)
        throw new JSONException("can not cast to byte, value : " + paramObject);
      return Character.valueOf(str.charAt(0));
    }
    throw new JSONException("can not cast to byte, value : " + paramObject);
  }

  public static final java.util.Date castToDate(Object paramObject)
  {
    if (paramObject == null)
      return null;
    if ((paramObject instanceof Calendar))
      return ((Calendar)paramObject).getTime();
    if ((paramObject instanceof java.util.Date))
      return (java.util.Date)paramObject;
    if ((paramObject instanceof Number));
    for (long l = ((Number)paramObject).longValue(); ; l = 0L)
    {
      if ((paramObject instanceof String))
      {
        String str1 = (String)paramObject;
        if (str1.indexOf('-') != -1)
        {
          String str2;
          if (str1.length() == JSON.DEFFAULT_DATE_FORMAT.length())
            str2 = JSON.DEFFAULT_DATE_FORMAT;
          while (true)
          {
            SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(str2);
            try
            {
              java.util.Date localDate = localSimpleDateFormat.parse(str1);
              return localDate;
              if (str1.length() == 10)
                str2 = "yyyy-MM-dd";
              else if (str1.length() == 19)
                str2 = "yyyy-MM-dd HH:mm:ss";
              else
                str2 = "yyyy-MM-dd HH:mm:ss.SSS";
            }
            catch (ParseException localParseException)
            {
              throw new JSONException("can not cast to Date, value : " + str1);
            }
          }
        }
        if (str1.length() == 0)
          return null;
        l = Long.parseLong(str1);
      }
      if (l <= 0L)
        throw new JSONException("can not cast to Date, value : " + paramObject);
      return new java.util.Date(l);
    }
  }

  public static final Double castToDouble(Object paramObject)
  {
    if (paramObject == null);
    String str;
    do
    {
      return null;
      if ((paramObject instanceof Number))
        return Double.valueOf(((Number)paramObject).doubleValue());
      if (!(paramObject instanceof String))
        break;
      str = paramObject.toString();
    }
    while (str.length() == 0);
    return Double.valueOf(Double.parseDouble(str));
    throw new JSONException("can not cast to double, value : " + paramObject);
  }

  public static final <T> T castToEnum(Object paramObject, Class<T> paramClass, ParserConfig paramParserConfig)
  {
    int i = 0;
    Enum localEnum;
    try
    {
      if ((paramObject instanceof String))
      {
        String str = (String)paramObject;
        if (str.length() == 0)
          return null;
        return Enum.valueOf(paramClass, str);
      }
      if ((paramObject instanceof Number))
      {
        int j = ((Number)paramObject).intValue();
        Object[] arrayOfObject = (Object[])paramClass.getMethod("values", new Class[0]).invoke(null, new Object[0]);
        int k = arrayOfObject.length;
        while (i < k)
        {
          localEnum = (Enum)arrayOfObject[i];
          int m = localEnum.ordinal();
          if (m == j)
            break label172;
          i++;
        }
      }
    }
    catch (Exception localException)
    {
      throw new JSONException("can not cast to : " + paramClass.getName(), localException);
    }
    throw new JSONException("can not cast to : " + paramClass.getName());
    label172: return localEnum;
  }

  public static final Float castToFloat(Object paramObject)
  {
    if (paramObject == null);
    String str;
    do
    {
      return null;
      if ((paramObject instanceof Number))
        return Float.valueOf(((Number)paramObject).floatValue());
      if (!(paramObject instanceof String))
        break;
      str = paramObject.toString();
    }
    while (str.length() == 0);
    return Float.valueOf(Float.parseFloat(str));
    throw new JSONException("can not cast to float, value : " + paramObject);
  }

  public static final Integer castToInt(Object paramObject)
  {
    if (paramObject == null)
      return null;
    if ((paramObject instanceof Integer))
      return (Integer)paramObject;
    if ((paramObject instanceof Number))
      return Integer.valueOf(((Number)paramObject).intValue());
    if ((paramObject instanceof String))
    {
      String str = (String)paramObject;
      if (str.length() == 0)
        return null;
      return Integer.valueOf(Integer.parseInt(str));
    }
    throw new JSONException("can not cast to int, value : " + paramObject);
  }

  public static final <T> T castToJavaBean(Object paramObject, Class<T> paramClass)
  {
    return cast(paramObject, paramClass, ParserConfig.getGlobalInstance());
  }

  public static final <T> T castToJavaBean(Map<String, Object> paramMap, Class<T> paramClass, ParserConfig paramParserConfig)
  {
    if (paramClass == StackTraceElement.class);
    try
    {
      String str1 = (String)paramMap.get("className");
      String str2 = (String)paramMap.get("methodName");
      String str3 = (String)paramMap.get("fileName");
      Number localNumber = (Number)paramMap.get("lineNumber");
      int i = 0;
      if (localNumber == null);
      while (true)
      {
        return new StackTraceElement(str1, str2, str3, i);
        i = localNumber.intValue();
      }
      Object localObject1 = paramMap.get("@type");
      if ((localObject1 instanceof String))
      {
        String str5 = (String)localObject1;
        paramClass = loadClass(str5);
        if (paramClass == null)
          throw new ClassNotFoundException(str5 + " not found");
      }
    }
    catch (Exception localException)
    {
      throw new JSONException(localException.getMessage(), localException);
    }
    if (paramClass.isInterface())
    {
      if ((paramMap instanceof JSONObject));
      for (JSONObject localJSONObject = (JSONObject)paramMap; ; localJSONObject = new JSONObject(paramMap))
        return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[] { paramClass }, localJSONObject);
    }
    Map localMap = paramParserConfig.getFieldDeserializers(paramClass);
    Object localObject2 = paramClass.newInstance();
    Iterator localIterator = localMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str4 = (String)localEntry.getKey();
      Method localMethod = ((FieldDeserializer)localEntry.getValue()).getMethod();
      if (paramMap.containsKey(str4))
        localMethod.invoke(localObject2, new Object[] { cast(paramMap.get(str4), localMethod.getGenericParameterTypes()[0], paramParserConfig) });
    }
    return localObject2;
  }

  public static final Long castToLong(Object paramObject)
  {
    if (paramObject == null);
    String str;
    do
    {
      return null;
      if ((paramObject instanceof Number))
        return Long.valueOf(((Number)paramObject).longValue());
      if (!(paramObject instanceof String))
        break;
      str = (String)paramObject;
    }
    while (str.length() == 0);
    return Long.valueOf(Long.parseLong(str));
    throw new JSONException("can not cast to long, value : " + paramObject);
  }

  public static final Short castToShort(Object paramObject)
  {
    if (paramObject == null);
    String str;
    do
    {
      return null;
      if ((paramObject instanceof Number))
        return Short.valueOf(((Number)paramObject).shortValue());
      if (!(paramObject instanceof String))
        break;
      str = (String)paramObject;
    }
    while (str.length() == 0);
    return Short.valueOf(Short.parseShort(str));
    throw new JSONException("can not cast to short, value : " + paramObject);
  }

  public static final java.sql.Date castToSqlDate(Object paramObject)
  {
    if (paramObject == null)
      return null;
    if ((paramObject instanceof Calendar))
      return new java.sql.Date(((Calendar)paramObject).getTimeInMillis());
    if ((paramObject instanceof java.sql.Date))
      return (java.sql.Date)paramObject;
    if ((paramObject instanceof java.util.Date))
      return new java.sql.Date(((java.util.Date)paramObject).getTime());
    if ((paramObject instanceof Number));
    for (long l = ((Number)paramObject).longValue(); ; l = 0L)
    {
      if ((paramObject instanceof String))
      {
        String str = (String)paramObject;
        if (str.length() == 0)
          return null;
        l = Long.parseLong(str);
      }
      if (l <= 0L)
        throw new JSONException("can not cast to Date, value : " + paramObject);
      return new java.sql.Date(l);
    }
  }

  public static final String castToString(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return paramObject.toString();
  }

  public static final Timestamp castToTimestamp(Object paramObject)
  {
    if (paramObject == null)
      return null;
    if ((paramObject instanceof Calendar))
      return new Timestamp(((Calendar)paramObject).getTimeInMillis());
    if ((paramObject instanceof Timestamp))
      return (Timestamp)paramObject;
    if ((paramObject instanceof java.util.Date))
      return new Timestamp(((java.util.Date)paramObject).getTime());
    if ((paramObject instanceof Number));
    for (long l = ((Number)paramObject).longValue(); ; l = 0L)
    {
      if ((paramObject instanceof String))
      {
        String str = (String)paramObject;
        if (str.length() == 0)
          return null;
        l = Long.parseLong(str);
      }
      if (l <= 0L)
        throw new JSONException("can not cast to Date, value : " + paramObject);
      return new Timestamp(l);
    }
  }

  public static void clearClassMapping()
  {
    mappings.clear();
    addBaseClassMappings();
  }

  public static List<FieldInfo> computeGetters(Class<?> paramClass, Map<String, String> paramMap)
  {
    return computeGetters(paramClass, paramMap, true);
  }

  public static List<FieldInfo> computeGetters(Class<?> paramClass, Map<String, String> paramMap, boolean paramBoolean)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Method[] arrayOfMethod = paramClass.getMethods();
    int i = arrayOfMethod.length;
    int j = 0;
    Method localMethod;
    String str1;
    label218: String str4;
    Field localField3;
    String str5;
    if (j < i)
    {
      localMethod = arrayOfMethod[j];
      str1 = localMethod.getName();
      if ((!Modifier.isStatic(localMethod.getModifiers())) && (!localMethod.getReturnType().equals(Void.TYPE)) && (localMethod.getParameterTypes().length == 0) && (localMethod.getReturnType() != ClassLoader.class) && ((!localMethod.getName().equals("getMetaClass")) || (!localMethod.getReturnType().getName().equals("groovy.lang.MetaClass"))))
      {
        JSONField localJSONField1 = (JSONField)localMethod.getAnnotation(JSONField.class);
        if (localJSONField1 == null)
          break label218;
        if (localJSONField1.serialize())
        {
          if (localJSONField1.name().length() == 0)
            break label218;
          String str6 = localJSONField1.name();
          if (paramMap != null)
          {
            str6 = (String)paramMap.get(str6);
            if (str6 == null);
          }
          else
          {
            localLinkedHashMap.put(str6, new FieldInfo(str6, localMethod, null));
          }
        }
      }
      do
      {
        do
        {
          do
          {
            j++;
            break;
            if (!str1.startsWith("get"))
              break label422;
          }
          while ((str1.length() < 4) || (str1.equals("getClass")) || (!Character.isUpperCase(str1.charAt(3))));
          str4 = Character.toLowerCase(str1.charAt(3)) + str1.substring(4);
        }
        while (isJSONTypeIgnore(paramClass, str4));
        localField3 = ParserConfig.getField(paramClass, str4);
        if (localField3 == null)
          break label930;
        JSONField localJSONField3 = (JSONField)localField3.getAnnotation(JSONField.class);
        if ((localJSONField3 == null) || (localJSONField3.name().length() == 0))
          break label930;
        str5 = localJSONField3.name();
        if (paramMap == null)
          break label378;
        str5 = (String)paramMap.get(str5);
      }
      while (str5 == null);
    }
    while (true)
    {
      label378: if (paramMap != null)
      {
        str5 = (String)paramMap.get(str5);
        if (str5 == null)
          break;
      }
      localLinkedHashMap.put(str5, new FieldInfo(str5, localMethod, localField3));
      label422: if ((!str1.startsWith("is")) || (str1.length() < 3) || (!Character.isUpperCase(str1.charAt(2))))
        break;
      String str2 = Character.toLowerCase(str1.charAt(2)) + str1.substring(3);
      Field localField2 = ParserConfig.getField(paramClass, str2);
      String str3;
      if (localField2 != null)
      {
        JSONField localJSONField2 = (JSONField)localField2.getAnnotation(JSONField.class);
        if ((localJSONField2 != null) && (localJSONField2.name().length() != 0))
        {
          str3 = localJSONField2.name();
          if (paramMap != null)
          {
            str3 = (String)paramMap.get(str3);
            if (str3 == null)
              break;
          }
        }
      }
      while (true)
      {
        if (paramMap != null)
        {
          str3 = (String)paramMap.get(str3);
          if (str3 == null)
            break;
        }
        localLinkedHashMap.put(str3, new FieldInfo(str3, localMethod, localField2));
        break;
        for (Field localField1 : paramClass.getFields())
          if ((!Modifier.isStatic(localField1.getModifiers())) && (Modifier.isPublic(localField1.getModifiers())) && (!localLinkedHashMap.containsKey(localField1.getName())))
            localLinkedHashMap.put(localField1.getName(), new FieldInfo(localField1.getName(), null, localField1));
        ArrayList localArrayList = new ArrayList();
        JSONType localJSONType = (JSONType)paramClass.getAnnotation(JSONType.class);
        String[] arrayOfString2;
        String[] arrayOfString1;
        int n;
        if (localJSONType != null)
        {
          arrayOfString2 = localJSONType.orders();
          if ((arrayOfString2 != null) && (arrayOfString2.length == localLinkedHashMap.size()))
          {
            int i3 = arrayOfString2.length;
            for (int i4 = 0; i4 < i3; i4++)
              if (!localLinkedHashMap.containsKey(arrayOfString2[i4]))
                break label848;
            arrayOfString1 = arrayOfString2;
            n = 1;
          }
        }
        while (true)
          if (n != 0)
          {
            int i1 = arrayOfString1.length;
            for (int i2 = 0; i2 < i1; i2++)
              localArrayList.add((FieldInfo)localLinkedHashMap.get(arrayOfString1[i2]));
            label848: arrayOfString1 = arrayOfString2;
            n = 0;
          }
          else
          {
            Iterator localIterator = localLinkedHashMap.values().iterator();
            while (localIterator.hasNext())
              localArrayList.add((FieldInfo)localIterator.next());
            if (paramBoolean)
              Collections.sort(localArrayList);
            return localArrayList;
            n = 0;
            arrayOfString1 = null;
          }
        str3 = str2;
      }
      label930: str5 = str4;
    }
  }

  public static Class<?> getClass(Type paramType)
  {
    for (Type localType = paramType; ; localType = ((ParameterizedType)localType).getRawType())
    {
      if (localType.getClass() == Class.class)
        return (Class)localType;
      if (!(localType instanceof ParameterizedType))
        break;
    }
    return Object.class;
  }

  private static boolean isJSONTypeIgnore(Class<?> paramClass, String paramString)
  {
    JSONType localJSONType = (JSONType)paramClass.getAnnotation(JSONType.class);
    if ((localJSONType != null) && (localJSONType.ignores() != null))
    {
      String[] arrayOfString = localJSONType.ignores();
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        if (paramString.equalsIgnoreCase(arrayOfString[j]))
          return true;
    }
    return (paramClass.getSuperclass() != Object.class) && (paramClass.getSuperclass() != null) && (isJSONTypeIgnore(paramClass.getSuperclass(), paramString));
  }

  public static Class<?> loadClass(String paramString)
  {
    Object localObject;
    while (true)
    {
      if ((paramString == null) || (paramString.length() == 0))
        localObject = null;
      do
      {
        return localObject;
        localObject = (Class)mappings.get(paramString);
      }
      while (localObject != null);
      if (paramString.charAt(0) == '[')
        return Array.newInstance(loadClass(paramString.substring(1)), 0).getClass();
      if ((!paramString.startsWith("L")) || (!paramString.endsWith(";")))
        break;
      paramString = paramString.substring(1, -1 + paramString.length());
    }
    try
    {
      localObject = Thread.currentThread().getContextClassLoader().loadClass(paramString);
      addClassMapping(paramString, (Class)localObject);
      return localObject;
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        localObject = Class.forName(paramString);
        addClassMapping(paramString, (Class)localObject);
        return localObject;
      }
      catch (Throwable localThrowable2)
      {
      }
    }
    return localObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.TypeUtils
 * JD-Core Version:    0.6.2
 */
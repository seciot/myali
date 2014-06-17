package com.alibaba.fastjson;

import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.AntiCollisionHashMap;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Serializable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class JSONObject extends JSON
  implements JSONAware, Serializable, Cloneable, InvocationHandler, Map<String, Object>
{
  private static final int DEFAULT_INITIAL_CAPACITY = 16;
  private static final long serialVersionUID = 1L;
  private final Map<String, Object> map;

  public JSONObject()
  {
    this(16, false);
  }

  public JSONObject(int paramInt)
  {
    this(paramInt, false);
  }

  public JSONObject(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.map = new LinkedHashMap(paramInt);
      return;
    }
    this.map = new AntiCollisionHashMap(paramInt);
  }

  public JSONObject(Map<String, Object> paramMap)
  {
    this.map = paramMap;
  }

  public JSONObject(boolean paramBoolean)
  {
    this(16, paramBoolean);
  }

  public void clear()
  {
    this.map.clear();
  }

  public Object clone()
  {
    return new JSONObject(new HashMap(this.map));
  }

  public boolean containsKey(Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }

  public boolean containsValue(Object paramObject)
  {
    return this.map.containsValue(paramObject);
  }

  public Set<Map.Entry<String, Object>> entrySet()
  {
    return this.map.entrySet();
  }

  public boolean equals(Object paramObject)
  {
    return this.map.equals(paramObject);
  }

  public Object get(Object paramObject)
  {
    return this.map.get(paramObject);
  }

  public BigDecimal getBigDecimal(String paramString)
  {
    return TypeUtils.castToBigDecimal(get(paramString));
  }

  public BigInteger getBigInteger(String paramString)
  {
    return TypeUtils.castToBigInteger(get(paramString));
  }

  public Boolean getBoolean(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return null;
    return TypeUtils.castToBoolean(localObject);
  }

  public boolean getBooleanValue(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return false;
    return TypeUtils.castToBoolean(localObject).booleanValue();
  }

  public Byte getByte(String paramString)
  {
    return TypeUtils.castToByte(get(paramString));
  }

  public byte getByteValue(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return 0;
    return TypeUtils.castToByte(localObject).byteValue();
  }

  public byte[] getBytes(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return null;
    return TypeUtils.castToBytes(localObject);
  }

  public java.util.Date getDate(String paramString)
  {
    return TypeUtils.castToDate(get(paramString));
  }

  public Double getDouble(String paramString)
  {
    return TypeUtils.castToDouble(get(paramString));
  }

  public double getDoubleValue(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return 0.0D;
    return TypeUtils.castToDouble(localObject).doubleValue();
  }

  public Float getFloat(String paramString)
  {
    return TypeUtils.castToFloat(get(paramString));
  }

  public float getFloatValue(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return 0.0F;
    return TypeUtils.castToFloat(localObject).floatValue();
  }

  public int getIntValue(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return 0;
    return TypeUtils.castToInt(localObject).intValue();
  }

  public Integer getInteger(String paramString)
  {
    return TypeUtils.castToInt(get(paramString));
  }

  public JSONArray getJSONArray(String paramString)
  {
    Object localObject = this.map.get(paramString);
    if ((localObject instanceof JSONArray))
      return (JSONArray)localObject;
    return (JSONArray)toJSON(localObject);
  }

  public JSONObject getJSONObject(String paramString)
  {
    Object localObject = this.map.get(paramString);
    if ((localObject instanceof JSONObject))
      return (JSONObject)localObject;
    return (JSONObject)toJSON(localObject);
  }

  public Long getLong(String paramString)
  {
    return TypeUtils.castToLong(get(paramString));
  }

  public long getLongValue(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return 0L;
    return TypeUtils.castToLong(localObject).longValue();
  }

  public <T> T getObject(String paramString, Class<T> paramClass)
  {
    return TypeUtils.castToJavaBean(this.map.get(paramString), paramClass);
  }

  public Short getShort(String paramString)
  {
    return TypeUtils.castToShort(get(paramString));
  }

  public short getShortValue(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return 0;
    return TypeUtils.castToShort(localObject).shortValue();
  }

  public java.sql.Date getSqlDate(String paramString)
  {
    return TypeUtils.castToSqlDate(get(paramString));
  }

  public String getString(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return null;
    return localObject.toString();
  }

  public Timestamp getTimestamp(String paramString)
  {
    return TypeUtils.castToTimestamp(get(paramString));
  }

  public int hashCode()
  {
    return this.map.hashCode();
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    JSONField localJSONField2;
    if (arrayOfClass.length == 1)
    {
      if (paramMethod.getReturnType() != Void.TYPE)
        throw new JSONException("illegal setter");
      localJSONField2 = (JSONField)paramMethod.getAnnotation(JSONField.class);
      if ((localJSONField2 == null) || (localJSONField2.name().length() == 0))
        break label456;
    }
    label450: label456: for (String str5 = localJSONField2.name(); ; str5 = null)
    {
      if (str5 == null)
      {
        String str6 = paramMethod.getName();
        if (!str6.startsWith("set"))
          throw new JSONException("illegal setter");
        String str7 = str6.substring(3);
        if (str7.length() == 0)
          throw new JSONException("illegal setter");
        str5 = Character.toLowerCase(str7.charAt(0)) + str7.substring(1);
      }
      this.map.put(str5, paramArrayOfObject[0]);
      return null;
      JSONField localJSONField1;
      if (arrayOfClass.length == 0)
      {
        if (paramMethod.getReturnType() == Void.TYPE)
          throw new JSONException("illegal getter");
        localJSONField1 = (JSONField)paramMethod.getAnnotation(JSONField.class);
        if ((localJSONField1 == null) || (localJSONField1.name().length() == 0))
          break label450;
      }
      for (String str1 = localJSONField1.name(); ; str1 = null)
      {
        String str2;
        String str4;
        if (str1 == null)
        {
          str2 = paramMethod.getName();
          if (!str2.startsWith("get"))
            break label353;
          str4 = str2.substring(3);
          if (str4.length() == 0)
            throw new JSONException("illegal getter");
        }
        label353: String str3;
        for (str1 = Character.toLowerCase(str4.charAt(0)) + str4.substring(1); ; str1 = Character.toLowerCase(str3.charAt(0)) + str3.substring(1))
        {
          return TypeUtils.cast(this.map.get(str1), paramMethod.getGenericReturnType(), ParserConfig.getGlobalInstance());
          if (!str2.startsWith("is"))
            break;
          str3 = str2.substring(2);
          if (str3.length() == 0)
            throw new JSONException("illegal getter");
        }
        throw new JSONException("illegal getter");
        throw new UnsupportedOperationException(paramMethod.toGenericString());
      }
    }
  }

  public boolean isEmpty()
  {
    return this.map.isEmpty();
  }

  public Set<String> keySet()
  {
    return this.map.keySet();
  }

  public Object put(String paramString, Object paramObject)
  {
    return this.map.put(paramString, paramObject);
  }

  public void putAll(Map<? extends String, ? extends Object> paramMap)
  {
    this.map.putAll(paramMap);
  }

  public Object remove(Object paramObject)
  {
    return this.map.remove(paramObject);
  }

  public int size()
  {
    return this.map.size();
  }

  public Collection<Object> values()
  {
    return this.map.values();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.JSONObject
 * JD-Core Version:    0.6.2
 */
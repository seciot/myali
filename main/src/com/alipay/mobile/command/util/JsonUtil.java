package com.alipay.mobile.command.util;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class JsonUtil
{
  public static void fill(JSONObject paramJSONObject, Object paramObject, ClassLoader paramClassLoader)
  {
    Object localObject1 = null;
    int j;
    Type localType;
    Object localObject2;
    try
    {
      Field[] arrayOfField = paramObject.getClass().getDeclaredFields();
      int i = arrayOfField.length;
      j = 0;
      if (j < i)
      {
        localObject1 = arrayOfField[j];
        if (!paramJSONObject.has(localObject1.getName()))
          break label354;
        localType = localObject1.getGenericType();
        localObject1.setAccessible(true);
        localObject2 = paramJSONObject.get(localObject1.getName());
        if (!(localObject2 instanceof JSONObject))
          break label192;
        if (localType.toString().contains("java.util.Map"))
        {
          JSONObject localJSONObject = (JSONObject)localObject2;
          localObject1.set(paramObject, CommandUtil.getField(JSONObject.class, "nameValuePairs").get(localJSONObject));
        }
        else
        {
          Object localObject4 = localObject1.getType().newInstance();
          localObject1.set(paramObject, localObject4);
          fill((JSONObject)localObject2, localObject4, paramClassLoader);
        }
      }
    }
    catch (Throwable localThrowable)
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = "JsonUtil 反序列化异常.";
      arrayOfObject1[1] = localObject1.toString();
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = "JsonUtil 反序列化异常.";
      arrayOfObject2[1] = localObject1.toString();
      CommandLogUtil.upErrorInfo(localThrowable, arrayOfObject2);
    }
    return;
    label192: JSONArray localJSONArray;
    ArrayList localArrayList;
    String str;
    if ((localObject2 instanceof JSONArray))
    {
      localJSONArray = (JSONArray)localObject2;
      if (localJSONArray.length() <= 0)
        break label354;
      localArrayList = new ArrayList();
      str = localType.toString().replaceAll("java.util.(List|Array)", "").replace("<", "").replace(">", "");
    }
    for (int k = 0; ; k++)
      if (k < localJSONArray.length())
      {
        Object localObject3 = paramClassLoader.loadClass(str).newInstance();
        if ((localObject3 instanceof String))
        {
          localArrayList.add(localJSONArray.get(k).toString());
        }
        else
        {
          localArrayList.add(localObject3);
          fill(new JSONObject(localJSONArray.get(k).toString()), localObject3, paramClassLoader);
        }
      }
      else
      {
        localObject1.set(paramObject, localArrayList);
        break label354;
        localObject1.set(paramObject, localObject2);
        label354: j++;
        break;
      }
  }

  public static String toJsonString(Object paramObject)
  {
    int i = 0;
    if (((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || ((paramObject instanceof Boolean)) || ((paramObject instanceof String)))
      return paramObject.toString();
    JSONObject localJSONObject = new JSONObject();
    if ((paramObject instanceof List))
    {
      List localList = (List)paramObject;
      JSONArray localJSONArray2 = new JSONArray();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        localJSONArray2.put(toJsonString(localIterator.next()));
      return localJSONArray2.toString();
    }
    if ((paramObject instanceof Object[]))
    {
      Object[] arrayOfObject = (Object[])paramObject;
      JSONArray localJSONArray1 = new JSONArray();
      int m = arrayOfObject.length;
      while (i < m)
      {
        localJSONArray1.put(toJsonString(arrayOfObject[i]));
        i++;
      }
      return localJSONArray1.toString();
    }
    Field[] arrayOfField = paramObject.getClass().getDeclaredFields();
    int j = arrayOfField.length;
    for (int k = 0; ; k++)
      if (k < j)
      {
        Field localField = arrayOfField[k];
        localField.setAccessible(true);
        if (!Modifier.toString(localField.getModifiers()).contains(" final"))
          try
          {
            Object localObject = localField.get(paramObject);
            if (localObject == null)
              continue;
            if ((localObject instanceof String))
              localJSONObject.put(localField.getName(), localObject);
            else
              localJSONObject.put(localField.getName(), toJsonString(localField.get(paramObject)));
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
      }
      else
      {
        return localJSONObject.toString().replace("\\", "");
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.JsonUtil
 * JD-Core Version:    0.6.2
 */
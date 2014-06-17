package com.alipay.mobile.common.utils;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonConvert
{
  public static String Array2Json(ArrayList paramArrayList)
  {
    if (paramArrayList == null)
      return null;
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject instanceof HashMap))
        localJSONArray.put(new JSONObject((HashMap)localObject));
      else if ((localObject instanceof ArrayList))
        localJSONArray.put(new JSONArray((ArrayList)localObject));
      else
        localJSONArray.put(localObject);
    }
    return localJSONArray.toString();
  }

  public static String ArrayString2Json(ArrayList paramArrayList)
  {
    return new JSONArray(paramArrayList).toString();
  }

  public static ArrayList Json2Array(JSONArray paramJSONArray)
  {
    int i = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    if (j < i)
    {
      Object localObject = paramJSONArray.opt(j);
      if ((localObject instanceof JSONObject))
        localArrayList.add(Json2Map((JSONObject)localObject));
      while (true)
      {
        j++;
        break;
        if ((localObject instanceof JSONArray))
          localArrayList.add(Json2Array((JSONArray)localObject));
        else
          localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }

  public static HashMap Json2Map(JSONObject paramJSONObject)
  {
    Iterator localIterator = paramJSONObject.keys();
    HashMap localHashMap = new HashMap();
    while (localIterator.hasNext())
    {
      String str = localIterator.next().toString();
      Object localObject = paramJSONObject.opt(str);
      if ((localObject instanceof JSONObject))
        localHashMap.put(str, Json2Map((JSONObject)localObject));
      else if ((localObject instanceof JSONArray))
        localHashMap.put(str, Json2Array((JSONArray)localObject));
      else
        localHashMap.put(str, localObject);
    }
    return localHashMap;
  }

  public static String Map2Json(HashMap paramHashMap)
  {
    if (paramHashMap == null)
      return "";
    Set localSet = paramHashMap.keySet();
    JSONObject localJSONObject = new JSONObject();
    while (true)
    {
      String str;
      Object localObject;
      try
      {
        Iterator localIterator = localSet.iterator();
        if (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          localObject = paramHashMap.get(str);
          if (!(localObject instanceof HashMap))
            break label94;
          localJSONObject.put(str, new JSONObject((HashMap)localObject));
          continue;
        }
      }
      catch (Exception localException)
      {
      }
      return localJSONObject.toString();
      label94: if ((localObject instanceof ArrayList))
        localJSONObject.put(str, new JSONArray((ArrayList)localObject));
      else
        localJSONObject.put(str, localObject);
    }
  }

  public static JSONArray converString2JsonArray(String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      JSONArray localJSONArray = new JSONArray(paramString);
      return localJSONArray;
    }
    catch (JSONException localJSONException)
    {
    }
    return null;
  }

  public static JSONObject convertString2Json(String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      localJSONObject = new JSONObject(paramString);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        JSONObject localJSONObject = null;
    }
  }

  public static List jArry2BeanList(JSONArray paramJSONArray, Object paramObject)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONArray == null)
      return localArrayList;
    int i = 0;
    while (true)
    {
      if (i < paramJSONArray.length());
      try
      {
        localArrayList.add(json2Bean(paramJSONArray.optJSONObject(i), paramObject.getClass().newInstance()));
        label46: i++;
        continue;
        return localArrayList;
      }
      catch (Exception localException)
      {
        break label46;
      }
    }
  }

  public static Object json2Bean(JSONObject paramJSONObject, Object paramObject)
  {
    Iterator localIterator = paramJSONObject.keys();
    while (true)
    {
      Object localObject;
      Class localClass;
      String str3;
      if (localIterator.hasNext())
      {
        String str1 = localIterator.next().toString();
        localObject = paramJSONObject.opt(str1);
        localClass = paramObject.getClass();
        String str2 = str1.substring(0, 1);
        str3 = str2.toUpperCase() + str1.substring(1);
      }
      try
      {
        String str4 = "set" + str3;
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = localObject.getClass();
        localClass.getMethod(str4, arrayOfClass).invoke(paramObject, new Object[] { localObject });
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        continue;
        return paramObject;
      }
      catch (Exception localException)
      {
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.JsonConvert
 * JD-Core Version:    0.6.2
 */
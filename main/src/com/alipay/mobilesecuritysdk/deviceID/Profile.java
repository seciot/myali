package com.alipay.mobilesecuritysdk.deviceID;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class Profile
{
  public static IdResponseInfo a(String paramString)
  {
    IdResponseInfo localIdResponseInfo;
    if (paramString == null)
      localIdResponseInfo = null;
    while (true)
    {
      return localIdResponseInfo;
      new StringBuilder("server response is").append(paramString).toString();
      localIdResponseInfo = new IdResponseInfo();
      try
      {
        JSONObject localJSONObject1 = new JSONObject(paramString);
        localIdResponseInfo.a(localJSONObject1.getBoolean("success"));
        if (localIdResponseInfo.c())
        {
          JSONObject localJSONObject2 = localJSONObject1.getJSONObject("data");
          if (localJSONObject2 != null)
          {
            localIdResponseInfo.d(localJSONObject2.getString("version"));
            localIdResponseInfo.e(localJSONObject2.getString("apdid"));
            localIdResponseInfo.f(localJSONObject2.getString("apdtk"));
            JSONObject localJSONObject3 = localJSONObject2.getJSONObject("rule");
            if (localJSONObject3 != null)
              localIdResponseInfo.a(localJSONObject3.getString("function"));
            localIdResponseInfo.g(localJSONObject3.toString());
            localIdResponseInfo.c(localJSONObject2.getString("time"));
            localIdResponseInfo.b(localJSONObject2.getString("checkcode"));
            return localIdResponseInfo;
          }
        }
      }
      catch (JSONException localJSONException)
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add("");
        localArrayList.add("");
        localArrayList.add("");
        localArrayList.add(LOG.a(localJSONException));
        LOG.a(localArrayList);
      }
    }
    return localIdResponseInfo;
  }

  static String a(SharedPreferences paramSharedPreferences, String paramString)
  {
    return paramSharedPreferences.getString(paramString, "");
  }

  public static String a(Map paramMap)
  {
    return c(paramMap);
  }

  static void a(SharedPreferences paramSharedPreferences, Map paramMap)
  {
    SharedPreferences.Editor localEditor;
    Iterator localIterator;
    if ((paramSharedPreferences != null) && (paramMap != null))
    {
      localEditor = paramSharedPreferences.edit();
      if (localEditor != null)
      {
        localEditor.clear();
        localIterator = paramMap.entrySet().iterator();
      }
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localEditor.commit();
        return;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = (String)localEntry.getKey();
      Object localObject = localEntry.getValue();
      if ((localObject instanceof String))
        localEditor.putString(str, (String)localObject);
      else if ((localObject instanceof Integer))
        localEditor.putInt(str, ((Integer)localObject).intValue());
      else if ((localObject instanceof Long))
        localEditor.putLong(str, ((Long)localObject).longValue());
      else if ((localObject instanceof Float))
        localEditor.putFloat(str, ((Float)localObject).floatValue());
      else if ((localObject instanceof Boolean))
        localEditor.putBoolean(str, ((Boolean)localObject).booleanValue());
    }
  }

  public static String b(Map paramMap)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    JSONObject localJSONObject3 = new JSONObject();
    if (paramMap != null);
    try
    {
      Iterator localIterator;
      if (paramMap.size() > 0)
        localIterator = paramMap.entrySet().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          localJSONObject2.put("os", "android");
          localJSONObject2.put("data", localJSONObject3);
          localJSONObject1.put("type", "deviceinfo");
          localJSONObject1.put("model", localJSONObject2);
          label94: return localJSONObject1.toString();
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str = (String)localEntry.getKey();
        if (str.equals("deviceInfo"))
          localJSONObject3.put(str, new JSONObject(c((Map)localEntry.getValue())));
        else
          localJSONObject3.put(str, (String)localEntry.getValue());
      }
    }
    catch (JSONException localJSONException)
    {
      break label94;
    }
  }

  public static Map b(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      Iterator localIterator = localJSONObject.keys();
      HashMap localHashMap = new HashMap();
      while (true)
      {
        if (!localIterator.hasNext())
          return localHashMap;
        String str = (String)localIterator.next();
        localHashMap.put(str, (String)localJSONObject.get(str));
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }

  private static String c(Map paramMap)
  {
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      JSONObject localJSONObject = new JSONObject();
      while (true)
      {
        if (!localIterator.hasNext())
          return localJSONObject.toString();
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str1 = (String)localEntry.getKey();
        String str2 = (String)localEntry.getValue();
        try
        {
          localJSONObject.put(str1, str2);
        }
        catch (JSONException localJSONException)
        {
        }
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.deviceID.Profile
 * JD-Core Version:    0.6.2
 */
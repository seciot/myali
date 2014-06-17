package com.amap.api.location.core;

import android.content.Context;
import android.util.Log;
import com.aps.j;
import org.json.JSONObject;

public class a
{
  public static int a = -1;
  public static String b = "";
  public static int c = 0;

  public static boolean a(Context paramContext)
  {
    boolean bool1 = true;
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("resType=json&encode=UTF-8");
      byte[] arrayOfByte = localStringBuffer.toString().getBytes();
      try
      {
        String str1 = c.c + "/log/init";
        String str2 = j.a().a(paramContext, str1, arrayOfByte);
        if (str2 != null)
        {
          boolean bool2 = a(str2);
          bool1 = bool2;
        }
        return bool1;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    finally
    {
    }
  }

  private static boolean a(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      int i;
      if (localJSONObject.has("status"))
      {
        i = localJSONObject.getInt("status");
        if (i != 1)
          break label78;
        a = 1;
      }
      while (true)
      {
        if (localJSONObject.has("info"))
          b = localJSONObject.getString("info");
        if (a == 0)
          Log.i("AuthFailure", b);
        if (a != 1)
          break;
        return true;
        label78: if (i == 0)
          a = 0;
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.a
 * JD-Core Version:    0.6.2
 */
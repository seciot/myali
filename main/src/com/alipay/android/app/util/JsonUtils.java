package com.alipay.android.app.util;

import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.encrypt.Rsa;
import com.alipay.android.app.encrypt.TriDes;
import com.alipay.android.app.sys.GlobalContext;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonUtils
{
  public static String a(String paramString1, String paramString2)
  {
    String str1 = Rsa.a(paramString1, GlobalContext.a().c().e());
    new StringBuilder("requestData before encrypt : ").append(paramString2).toString();
    LogUtils.g();
    String str2 = TriDes.a(paramString1, paramString2);
    Locale localLocale = Locale.getDefault();
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(str1.length());
    arrayOfObject[1] = str1;
    arrayOfObject[2] = Integer.valueOf(str2.length());
    arrayOfObject[3] = str2;
    return String.format(localLocale, "%08X%s%08X%s", arrayOfObject);
  }

  public static JSONObject a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    JSONObject localJSONObject1 = new JSONObject();
    while (true)
    {
      int j;
      try
      {
        JSONObject[] arrayOfJSONObject = { paramJSONObject1, paramJSONObject2 };
        int i = arrayOfJSONObject.length;
        j = 0;
        if (j < i)
        {
          JSONObject localJSONObject2 = arrayOfJSONObject[j];
          if (localJSONObject2 == null)
            break label101;
          Iterator localIterator = localJSONObject2.keys();
          if (!localIterator.hasNext())
            break label101;
          String str = (String)localIterator.next();
          localJSONObject1.put(str, localJSONObject2.get(str));
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        LogUtils.a(localJSONException);
      }
      return localJSONObject1;
      label101: j++;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.JsonUtils
 * JD-Core Version:    0.6.2
 */
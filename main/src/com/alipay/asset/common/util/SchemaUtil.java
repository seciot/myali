package com.alipay.asset.common.util;

import android.net.Uri;
import android.os.Bundle;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SchemaUtil
{
  private static String a(Uri paramUri, String paramString)
  {
    String str = paramUri.getQueryParameter(paramString);
    if ((str == null) || (str.length() == 0))
      str = null;
    return str;
  }

  private static Map<String, String> a(Uri paramUri)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1 = paramUri.getQuery().split("&");
    int i = arrayOfString1.length;
    for (int j = 0; j < i; j++)
    {
      String[] arrayOfString2 = arrayOfString1[j].split("=");
      localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
    }
    return localHashMap;
  }

  public static void analysisSchema(String paramString1, String paramString2)
  {
    Uri localUri = Uri.parse(paramString2);
    Bundle localBundle;
    if ((localUri != null) && ((localUri.getScheme().equals("alipays")) || (StringUtils.equalsIgnoreCase("alipay", localUri.getScheme()))) && (localUri.getHost().equals("platformapi")) && (localUri.getPath().substring(1).equalsIgnoreCase("function")))
    {
      String str = a(localUri, "functionName");
      if ((localUri != null) && (str.equals("goto")))
        try
        {
          localBundle = new Bundle();
          Iterator localIterator = a(localUri).entrySet().iterator();
          while (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            if ((!StringUtils.equalsIgnoreCase((String)localEntry.getKey(), "functionName")) && (!StringUtils.equalsIgnoreCase((String)localEntry.getKey(), "AppsId")))
              localBundle.putString((String)localEntry.getKey(), (String)localEntry.getValue());
          }
        }
        catch (AppLoadException localAppLoadException)
        {
          localAppLoadException.getLocalizedMessage();
        }
    }
    return;
    AlipayApplication.getInstance().getMicroApplicationContext().startApp("09999983", a(localUri, "AppsId"), localBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.util.SchemaUtil
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.common.utils;

import android.net.Uri;
import android.os.Bundle;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Set;

public class BundleUtil
{
  public static String deserialBundle(Bundle paramBundle)
  {
    if (paramBundle == null)
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (true)
    {
      String str1;
      Object localObject;
      if (localIterator.hasNext())
      {
        str1 = (String)localIterator.next();
        localObject = paramBundle.get(str1).toString();
        if ((localObject == null) || (Uri.parse((String)localObject).getScheme() == null));
      }
      try
      {
        String str2 = URLEncoder.encode((String)localObject, "utf-8");
        localObject = str2;
        label82: localStringBuilder.append(str1 + "=" + (String)localObject + "&");
        continue;
        if (localStringBuilder.length() > 0)
          return localStringBuilder.substring(0, -1 + localStringBuilder.length());
        return null;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        break label82;
      }
    }
  }

  public static Bundle serialBundle(String paramString)
  {
    Bundle localBundle = null;
    if (paramString != null)
    {
      int i = paramString.length();
      localBundle = null;
      if (i > 0)
      {
        localBundle = new Bundle();
        for (String str : paramString.split("&"))
        {
          int m = str.indexOf("=");
          if ((m > 0) && (m < -1 + str.length()))
            localBundle.putString(str.substring(0, m), str.substring(m + 1));
        }
      }
    }
    return localBundle;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.BundleUtil
 * JD-Core Version:    0.6.2
 */
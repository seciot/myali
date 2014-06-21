package com.alipay.mobile.quinox.utils;

import java.util.Iterator;
import java.util.Set;

public final class StringUtil
{
  public static String a(Set paramSet)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localStringBuilder.length() > 0)
        localStringBuilder.append(',');
      localStringBuilder.append(localObject.toString());
    }
    return localStringBuilder.toString();
  }

  public static boolean a(String paramString1, String paramString2)
  {
	  return false;
//    try
//    {
//      String[] arrayOfString1 = paramString1.split("\\.");
//      String[] arrayOfString2 = paramString2.split("\\.");
//      for (int i = 0; ; i++)
//      {
//        int j = arrayOfString1.length;
//        boolean bool1 = false;
//        long l1;
//        long l2;
//        if (i < j)
//        {
//          l1 = Long.parseLong(arrayOfString1[i]);
//          l2 = Long.parseLong(arrayOfString2[i]);
//          if (l1 <= l2)
//            break label65;
//          bool1 = true;
//        }
//        label65: boolean bool2;
//        do
//        {
//          return bool1;
//          bool2 = l1 < l2;
//          bool1 = false;
//        }
//        while (bool2);
//      }
//    }
//    catch (Exception localException)
//    {
//    }
//    return false;
  }
}

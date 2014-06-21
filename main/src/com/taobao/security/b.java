package com.taobao.security;

import java.util.ArrayList;
import java.util.List;

public final class b
{
  private static List a;

  static
  {
    ArrayList localArrayList = new ArrayList();
    a = localArrayList;
    localArrayList.add(new AppBundle.ExceptionHandler((byte)0));
    a.add(new MinPriorityThreadFactory.b((byte)0));
    a.add(new BundlesManagerImpl.c((byte)0));
  }

  public static void a()
  {
  }

  public static boolean a(c paramc, String paramString, e parame)
  {
    if ((paramc == null) || (paramString == null));
    g localg;
    label187: 
    while (true)
    {
      return false;
      if ((paramString == null) || ("".equals(paramString)));
      ArrayList localArrayList;
      for (String[] arrayOfString = null; ; arrayOfString = (String[])localArrayList.toArray(new String[localArrayList.size()]))
      {
        if (arrayOfString == null)
          break label187;
        localg = new g(arrayOfString);
        for (int i = 0; ; i++)
        {
          if (i >= a.size())
            break label189;
          if (!((Filter)a.get(i)).filter(paramc, localg))
            break;
        }
        localArrayList = new ArrayList();
        int k;
        for (int j = 0; ; j = k + 2)
        {
          k = paramString.indexOf('|', j);
          if ((k == -1) || (1 + localArrayList.size() >= 2147483647))
            break;
          localArrayList.add(paramString.substring(j, k));
        }
        if (j < paramString.length())
          localArrayList.add(paramString.substring(j));
      }
    }
    label189: parame.a = localg.toString();
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.b
 * JD-Core Version:    0.6.2
 */
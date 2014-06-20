package com.alipay.pushsdk.push.e;

import com.alipay.pushsdk.push.j;

public final class e
{
  public static d a(j paramj, String paramString)
  {
    Object localObject = null;
    if (paramString != null)
    {
      if ((!paramString.equalsIgnoreCase("0")) && (!paramString.equalsIgnoreCase("1")) && (!paramString.equalsIgnoreCase("2")))
        break label53;
      localObject = new f(paramj);
    }
    while (true)
    {
      if (localObject != null)
        ((d)localObject).a(paramString);
      return localObject;
      label53: if (paramString.equalsIgnoreCase("10"))
      {
        localObject = new c(paramj);
      }
      else if ((paramString.equalsIgnoreCase("11")) || (paramString.equalsIgnoreCase("12")) || (paramString.equalsIgnoreCase("13")) || (paramString.equalsIgnoreCase("15")))
      {
        localObject = new AppBundle(paramj);
      }
      else
      {
        boolean bool = paramString.equalsIgnoreCase("14");
        localObject = null;
        if (bool)
          localObject = new BundlesManager(paramj);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.e.e
 * JD-Core Version:    0.6.2
 */
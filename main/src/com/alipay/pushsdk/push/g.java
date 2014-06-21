package com.alipay.pushsdk.push;

import android.content.Context;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.b;
import java.util.HashMap;

public class g
{
  private static final String a = c.getBundle(g.class);
  private Context b;
  private String c;
  private String d;
  private int e;
  private String f;
  private String g;
  private String h;
  private String i;

  public g(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void a()
  {
    com.alipay.pushsdk.data.a locala1 = new b(this.b).a();
    try
    {
      this.c = locala1.a;
      if ((this.c != null) && (this.c.length() > 0))
        c.a(4, a, "push use config data based on cfgId:" + this.c);
      while (c.b > c.d)
      {
        int j = com.alipay.pushsdk.c.a.e();
        if (j >= c.e)
          c.a = true;
        c.a(3, a, "getConfigAddr push logLevel=" + j + ", configurable=" + c.a);
        if (!c.a)
          break;
        HashMap localHashMap = com.alipay.pushsdk.c.a.d();
        if (localHashMap == null)
          break;
        String str1 = (String)localHashMap.get("host");
        String str2 = (String)localHashMap.get("port");
        String str3 = (String)localHashMap.get("version");
        c.a(3, a, "getConfigAddr pushAddr==> host=" + str1 + ", port=" + str2 + ", version=" + str3);
        com.alipay.pushsdk.data.a locala3 = new com.alipay.pushsdk.data.a();
        b localb = new b(this.b);
        if ((str1 != null) && (str1.length() > 0))
          locala3.b = str1;
        if ((str2 != null) && (str2.length() > 0))
          locala3.c = Integer.parseInt(str2);
        if ((str3 != null) && (str3.length() > 0))
          locala3.f = Integer.parseInt(str3);
        localb.a(locala3);
        return;
        this.d = "mcometgw.alipay.com";
        this.e = 443;
        this.g = "0";
        this.h = "0";
        this.i = "1";
        this.f = String.valueOf(com.alipay.pushsdk.c.a.a);
        c.a(3, a, "push dest==>" + this.d + ":" + this.e + ":" + this.f + ":" + this.g);
        com.alipay.pushsdk.data.a locala2 = new com.alipay.pushsdk.data.a();
        locala2.a = "";
        locala2.b = this.d;
        locala2.c = this.e;
        locala2.f = Integer.valueOf(this.f).intValue();
        locala2.d = this.g;
        locala2.e = this.h;
        locala2.g = Integer.valueOf(this.i).intValue();
        new b(this.b).a(locala2);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.g
 * JD-Core Version:    0.6.2
 */
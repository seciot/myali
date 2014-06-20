package com.alipay.mobile.onsitepay.a.b.a;

import com.alipay.mobile.base.config.SwitchConfigUtils;
import com.alipay.mobile.onsitepay.a.b.a;
import com.alipay.mobile.onsitepay.a.b.c;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.HashMap;

public final class d
  implements BundlesManagerImpl
{
  HashMap<String, String> a = new HashMap();
  private boolean b = true;
  private boolean c = false;
  private int d = 0;
  private int e = 0;
  private int f = 10;
  private AppBundle g;

  public d(AppBundle parama)
  {
    this.g = parama;
    String str1 = SwitchConfigUtils.getConfigValue("ONSITE_ANDROID_PAYEE_POLLINGQUERY_TOTALCOUNT");
    if ((str1 != null) && (!"".equals(str1)));
    for (this.f = Integer.parseInt(str1); ; this.f = 10)
    {
      String str2 = SwitchConfigUtils.getConfigValue("ONSITE_ANDROID_PAYEE_POLLINGQUERY_TIMEOFFSET");
      if ((str2 == null) || ("".equals(str2)))
        break;
      this.e = Integer.parseInt(str2);
      return;
    }
    this.e = 3000;
  }

  public final void a()
  {
    this.c = true;
  }

  public final void a(String paramString)
  {
    this.a.remove(paramString);
  }

  public final void a(String paramString1, String paramString2)
  {
    this.c = false;
    this.d = this.f;
    this.a.put(paramString2, paramString1);
    if (this.b)
    {
      BackgroundExecutor.execute(new e(this));
      this.b = false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.a.b.a.d
 * JD-Core Version:    0.6.2
 */
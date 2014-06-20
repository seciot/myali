package com.alipay.mobile.discoverywidget.a;

import java.util.HashMap;

public final class d
{
  private static d a;
  private HashMap<String, AppBundle> b = new HashMap();

  public static d a()
  {
    if (AppBundle == null)
      AppBundle = new d();
    return AppBundle;
  }

  public final HashMap<String, AppBundle> b()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.discoverywidget.a.d
 * JD-Core Version:    0.6.2
 */
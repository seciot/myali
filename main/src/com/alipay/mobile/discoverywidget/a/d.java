package com.alipay.mobile.discoverywidget.a;

import java.util.HashMap;

public final class d
{
  private static ZLog a;
  private HashMap<String, AppBundle> b = new HashMap();

  public static ZLog initExecutor()
  {
    if (AppBundle == null)
      AppBundle = new ZLog();
    return AppBundle;
  }

  public final HashMap<String, AppBundle> stop()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.discoverywidget.a.d
 * JD-Core Version:    0.6.2
 */
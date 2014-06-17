package com.alipay.mobile.core.init;

import com.alipay.mobile.framework.MicroApplicationContext;

public abstract interface BootLoader
{
  public abstract MicroApplicationContext getContext();

  public abstract void load();

  public abstract void loadBundle(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.init.BootLoader
 * JD-Core Version:    0.6.2
 */
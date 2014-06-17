package com.alipay.test.ui.core;

import android.content.Context;

public abstract interface IWebServer
{
  public abstract void close();

  public abstract void setContext(Context paramContext);

  public abstract void setDaemon(boolean paramBoolean);

  public abstract void start();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.test.ui.core.IWebServer
 * JD-Core Version:    0.6.2
 */
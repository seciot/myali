package com.alipay.android.app.script;

import com.alipay.android.lib.plusin.script.IScriptEventable;

public abstract interface IDataScriptable extends IScriptEventable
{
  public abstract void delete();

  public abstract void delete(String paramString);

  public abstract void log(Object paramObject);

  public abstract void write(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.IDataScriptable
 * JD-Core Version:    0.6.2
 */
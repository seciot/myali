package com.alipay.android.lib.plusin.script;

import com.alipay.android.app.sys.IDispose;

public abstract interface IScriptExcutor extends IDispose
{
  public abstract void a(IScriptEventable paramIScriptEventable);

  public abstract void a(String paramString);

  public abstract void a(String paramString, Object[] paramArrayOfObject);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.script.IScriptExcutor
 * JD-Core Version:    0.6.2
 */
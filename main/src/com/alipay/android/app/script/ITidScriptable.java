package com.alipay.android.app.script;

import com.alipay.android.lib.plusin.script.IScriptEventable;

public abstract interface ITidScriptable extends IScriptEventable
{
  public abstract void reset();

  public abstract void save(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.ITidScriptable
 * JD-Core Version:    0.6.2
 */
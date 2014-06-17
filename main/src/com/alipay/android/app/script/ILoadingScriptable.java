package com.alipay.android.app.script;

import com.alipay.android.lib.plusin.script.IScriptEventable;

public abstract interface ILoadingScriptable extends IScriptEventable
{
  public abstract void dismiss();

  public abstract void setText(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.ILoadingScriptable
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.app.script;

import com.alipay.android.lib.plusin.script.IScriptEventable;

public abstract interface IDocumentScriptable extends IScriptEventable
{
  public abstract String attr(String paramString);

  public abstract void attr(String paramString1, String paramString2);

  public abstract String cache(String paramString);

  public abstract void cache(String paramString1, String paramString2);

  public abstract String checkInput();

  public abstract void event(String paramString1, String paramString2, String paramString3);

  public abstract IDocumentScriptable getById(String paramString);

  public abstract void putSubmitData(String paramString1, String paramString2);

  public abstract void style(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.IDocumentScriptable
 * JD-Core Version:    0.6.2
 */
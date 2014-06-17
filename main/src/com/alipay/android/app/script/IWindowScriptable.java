package com.alipay.android.app.script;

import com.alipay.android.lib.plusin.script.IScriptEventable;

public abstract interface IWindowScriptable extends IScriptEventable
{
  public abstract void alert(String paramString1, String paramString2);

  public abstract void alert(String paramString1, String paramString2, String paramString3);

  public abstract void allowback(String paramString1, String paramString2);

  public abstract void confirm(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7);

  public abstract void dismiss();

  public abstract void exit();

  public abstract ILoadingScriptable getLoadingScriptable();

  public abstract ILoadingScriptable loading(int paramInt);

  public abstract ILoadingScriptable loading(int paramInt, String paramString);

  public abstract ILoadingScriptable loading(int paramInt, String paramString1, String paramString2);

  public abstract void open(String paramString);

  public abstract void open(String[] paramArrayOfString);

  public abstract void openWithCallback(String paramString1, String paramString2);

  public abstract void openWithCallback(String paramString, String[] paramArrayOfString);

  public abstract void submit();

  public abstract void submit(String paramString);

  public abstract void toast(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.IWindowScriptable
 * JD-Core Version:    0.6.2
 */
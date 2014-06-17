package com.alipay.android.app.script;

import com.alipay.android.lib.plusin.script.IScriptEventable;

public abstract interface INetworkScriptable extends IScriptEventable
{
  public abstract void request(String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString);

  public abstract void send(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String[] paramArrayOfString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.INetworkScriptable
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.app.script;

import com.alipay.android.app.sys.IDispose;
import com.alipay.android.lib.plusin.script.IScriptEventable;

public abstract interface IPhoneScriptable extends IDispose, IScriptEventable
{
  public abstract void call(String paramString);

  public abstract void readsms(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, String[] paramArrayOfString);

  public abstract void sendMsg(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.IPhoneScriptable
 * JD-Core Version:    0.6.2
 */
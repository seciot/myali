package com.taobao.securityjni.intelface;

import android.content.ContextWrapper;

public abstract interface ISESecurity
{
  public abstract boolean SOCredibleCheck(ContextWrapper paramContextWrapper);

  public abstract void SOInitCheck();

  public abstract boolean SOValidateSha256(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.intelface.ISESecurity
 * JD-Core Version:    0.6.2
 */
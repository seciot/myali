package com.taobao.securityjni;

import android.content.ContextWrapper;

final class GlobalInit$b
  implements Runnable
{
  private ContextWrapper a;
  private boolean b = true;
  private boolean c = true;

  public GlobalInit$b(ContextWrapper paramContextWrapper, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramContextWrapper;
    this.b = paramBoolean1;
    this.c = paramBoolean2;
  }

  public final void run()
  {
    if (this.b)
      new StaticDataStore(this.a).getAppKey();
    if (this.c)
      GlobalInit.access$600(this.a, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.GlobalInit.b
 * JD-Core Version:    0.6.2
 */
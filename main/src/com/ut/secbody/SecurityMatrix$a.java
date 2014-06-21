package com.ut.secbody;

import android.content.ContextWrapper;

final class SecurityMatrix$a
  implements Runnable
{
  private ContextWrapper a;

  public SecurityMatrix$a(ContextWrapper paramContextWrapper)
  {
    this.a = paramContextWrapper;
  }

  public final void run()
  {
    SecurityMatrix.getBundle(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.secbody.SecurityMatrix.a
 * JD-Core Version:    0.6.2
 */
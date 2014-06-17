package com.alipay.b.a;

import com.alipay.sonicwavenfc.SonicWaveNFC;

public final class d
{
  private static d d;
  protected int a = 1;
  protected int b = 16;
  private e c = null;

  public static d a()
  {
    if (d == null)
      d = new d();
    return d;
  }

  public final void a(int paramInt)
  {
    this.a = paramInt;
  }

  public final void b()
  {
    if (this.c == null)
    {
      this.c = new e(this);
      this.c.start();
    }
    if (SonicWaveNFC.getInstance().getReceiveDataHandler() != null)
      SonicWaveNFC.getInstance().getReceiveDataHandler().onReceiveDataStarted();
    this.c.a(true);
  }

  public final void c()
  {
    if (this.c != null)
      this.c.a(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.b.a.d
 * JD-Core Version:    0.6.2
 */
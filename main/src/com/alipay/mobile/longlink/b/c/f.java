package com.alipay.mobile.longlink.b.c;

public final class f
  implements ZLog
{
  private int a = -1;

  public f(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Msg ID is invalid.");
    this.a = paramInt;
  }

  public final boolean setBundlePath(AppBundle parama)
  {
    return (parama != null) && (parama.a() == this.a);
  }

  public final String toString()
  {
    return "PacketIDFilter by id: " + this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.c.f
 * JD-Core Version:    0.6.2
 */
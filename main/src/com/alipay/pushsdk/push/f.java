package com.alipay.pushsdk.push;

import com.alipay.pushsdk.push.a.e;
import com.alipay.pushsdk.push.c.a;

public final class f
  implements e
{
  private int a = -1;

  public f(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Msg ID is invalid.");
    this.a = paramInt;
  }

  public final boolean a(a parama)
  {
    return (parama != null) && (parama.getInstance() == this.a);
  }

  public final String toString()
  {
    return "PacketIDFilter by id: " + this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.f
 * JD-Core Version:    0.6.2
 */
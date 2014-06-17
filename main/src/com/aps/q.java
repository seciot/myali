package com.aps;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

final class q
  implements Serializable
{
  protected short a = 0;
  protected int b = 0;
  protected byte c = 0;
  protected byte d = 0;
  protected ArrayList e = new ArrayList();
  private byte f = 2;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    Boolean localBoolean1 = Boolean.valueOf(false);
    try
    {
      paramDataOutputStream.writeByte(this.f);
      paramDataOutputStream.writeShort(this.a);
      paramDataOutputStream.writeInt(this.b);
      paramDataOutputStream.writeByte(this.c);
      paramDataOutputStream.writeByte(this.d);
      for (int i = 0; i < this.d; i++)
      {
        paramDataOutputStream.writeShort(((ab)this.e.get(i)).a);
        paramDataOutputStream.writeInt(((ab)this.e.get(i)).b);
        paramDataOutputStream.writeByte(((ab)this.e.get(i)).c);
      }
      Boolean localBoolean2 = Boolean.valueOf(true);
      return localBoolean2;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return localBoolean1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.q
 * JD-Core Version:    0.6.2
 */
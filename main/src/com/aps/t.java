package com.aps;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

final class t
  implements Serializable
{
  protected int a = 0;
  protected int b = 0;
  protected int c = 0;
  protected int d = 0;
  protected int e = 0;
  protected short f = 0;
  protected byte g = 0;
  protected int h = 0;
  protected short i = 0;
  protected byte j = 0;
  protected ArrayList k = new ArrayList();
  private byte l = 1;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    Boolean localBoolean1 = Boolean.valueOf(false);
    if (paramDataOutputStream == null)
      return localBoolean1;
    try
    {
      paramDataOutputStream.writeByte(this.l);
      paramDataOutputStream.writeInt(this.a);
      paramDataOutputStream.writeInt(this.b);
      paramDataOutputStream.writeInt(this.c);
      paramDataOutputStream.writeInt(this.d);
      paramDataOutputStream.writeInt(this.e);
      paramDataOutputStream.writeShort(this.f);
      paramDataOutputStream.writeByte(this.g);
      paramDataOutputStream.writeInt(this.h);
      paramDataOutputStream.writeShort(this.i);
      paramDataOutputStream.writeByte(this.j);
      for (int m = 0; m < this.j; m++)
        ((ay)this.k.get(m)).a(paramDataOutputStream);
      Boolean localBoolean3 = Boolean.valueOf(true);
      localBoolean2 = localBoolean3;
      return localBoolean2;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        Boolean localBoolean2 = localBoolean1;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.t
 * JD-Core Version:    0.6.2
 */
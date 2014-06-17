package com.aps;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;

final class aa
  implements Serializable
{
  protected int a = 0;
  protected int b = 0;
  protected short c = 0;
  protected short d = 0;
  protected int e = 0;
  protected byte f = 0;
  private byte g = 4;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    Boolean localBoolean1 = Boolean.valueOf(false);
    try
    {
      paramDataOutputStream.writeByte(this.g);
      paramDataOutputStream.writeInt(this.a);
      paramDataOutputStream.writeInt(this.b);
      paramDataOutputStream.writeShort(this.c);
      paramDataOutputStream.writeShort(this.d);
      paramDataOutputStream.writeInt(this.e);
      paramDataOutputStream.writeByte(this.f);
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
 * Qualified Name:     com.aps.aa
 * JD-Core Version:    0.6.2
 */
package com.aps;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

final class u
  implements Serializable
{
  protected short a = 0;
  protected byte[] b = new byte[16];
  protected byte[] c = new byte[16];
  protected byte[] d = new byte[16];
  protected short e = 0;
  protected short f = 0;
  protected byte g = 0;
  protected byte[] h = new byte[16];
  protected byte[] i = new byte[32];
  protected short j = 0;
  protected ArrayList k = new ArrayList();
  private byte l = 3;

  private Boolean a(DataOutputStream paramDataOutputStream)
  {
    Boolean.valueOf(true);
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream1 = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream1 = new DataOutputStream(localByteArrayOutputStream1);
      localDataOutputStream1.flush();
      localDataOutputStream1.write(this.b);
      localDataOutputStream1.write(this.c);
      localDataOutputStream1.write(this.d);
      localDataOutputStream1.writeShort(this.e);
      localDataOutputStream1.writeShort(this.f);
      localDataOutputStream1.writeByte(this.g);
      this.h[15] = 0;
      localDataOutputStream1.write(z.a(this.h, this.h.length));
      this.i[31] = 0;
      localDataOutputStream1.write(z.a(this.i, this.i.length));
      localDataOutputStream1.writeShort(this.j);
      for (int m = 0; m < this.j; m = (short)(m + 1))
      {
        ByteArrayOutputStream localByteArrayOutputStream2 = new ByteArrayOutputStream();
        DataOutputStream localDataOutputStream2 = new DataOutputStream(localByteArrayOutputStream2);
        localDataOutputStream2.flush();
        r localr = (r)this.k.get(m);
        if ((localr.c != null) && (!localr.c.a(localDataOutputStream2).booleanValue()))
          Boolean.valueOf(false);
        if ((localr.d != null) && (!localr.d.a(localDataOutputStream2).booleanValue()))
          Boolean.valueOf(false);
        if ((localr.e != null) && (!localr.e.a(localDataOutputStream2).booleanValue()))
          Boolean.valueOf(false);
        if ((localr.f != null) && (!localr.f.a(localDataOutputStream2).booleanValue()))
          Boolean.valueOf(false);
        localr.a = new Integer(4 + localByteArrayOutputStream2.size()).shortValue();
        localDataOutputStream1.writeShort(localr.a);
        localDataOutputStream1.writeInt(localr.b);
        localDataOutputStream1.write(localByteArrayOutputStream2.toByteArray());
      }
      this.a = new Integer(localByteArrayOutputStream1.size()).shortValue();
      paramDataOutputStream.writeByte(this.l);
      paramDataOutputStream.writeShort(this.a);
      paramDataOutputStream.write(localByteArrayOutputStream1.toByteArray());
      Boolean localBoolean = Boolean.valueOf(true);
      return localBoolean;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return Boolean.valueOf(false);
  }

  protected final byte[] a()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(new DataOutputStream(localByteArrayOutputStream)).booleanValue();
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.u
 * JD-Core Version:    0.6.2
 */
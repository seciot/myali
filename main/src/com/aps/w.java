package com.aps;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

final class w
  implements Serializable
{
  protected byte a = 0;
  protected ArrayList b = new ArrayList();
  private byte c = 8;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    Boolean localBoolean1 = Boolean.valueOf(false);
    try
    {
      paramDataOutputStream.writeByte(this.c);
      paramDataOutputStream.writeByte(this.a);
      for (int i = 0; i < this.a; i++)
      {
        x localx = (x)this.b.get(i);
        paramDataOutputStream.write(localx.a);
        paramDataOutputStream.writeShort(localx.b);
        paramDataOutputStream.write(z.a(localx.c, localx.c.length));
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
 * Qualified Name:     com.aps.w
 * JD-Core Version:    0.6.2
 */
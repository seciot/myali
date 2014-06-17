package com.aps;

import java.io.DataOutputStream;
import java.io.Serializable;

final class ay
  implements Serializable
{
  protected byte a = 0;
  protected short b = 0;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    try
    {
      paramDataOutputStream.writeByte(this.a);
      paramDataOutputStream.writeShort(this.b);
      return Boolean.valueOf(true);
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return Boolean.valueOf(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ay
 * JD-Core Version:    0.6.2
 */
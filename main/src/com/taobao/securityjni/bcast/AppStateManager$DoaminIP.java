package com.taobao.securityjni.bcast;

public class AppStateManager$DoaminIP
{
  public byte[][] ip;
  public String name;

  private String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.ip != null)
    {
      for (int i = 0; i < this.ip.length; i++)
      {
        byte[] arrayOfByte = this.ip[i];
        localStringBuilder.append("ip[").append(i).append("]=");
        if (arrayOfByte != null)
          for (int j = 0; j < arrayOfByte.length; j++)
          {
            localStringBuilder.append(0xFF & arrayOfByte[j]);
            if (j != -1 + arrayOfByte.length)
              localStringBuilder.append(':');
          }
        localStringBuilder.append("null");
        localStringBuilder.append("  ");
      }
      return localStringBuilder.toString();
    }
    return "null";
  }

  public String toString()
  {
    return "DoaminIP [name=" + this.name + ", ip=" + a() + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.bcast.AppStateManager.DoaminIP
 * JD-Core Version:    0.6.2
 */
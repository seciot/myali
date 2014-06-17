package com.taobao.security;

public final class g
{
  private String[] a = null;

  public g(String[] paramArrayOfString)
  {
    this.a = paramArrayOfString;
  }

  public final String a(int paramInt)
  {
    if ((this.a != null) && (37 > paramInt) && (this.a.length >= 37))
      return this.a[paramInt];
    return null;
  }

  public final void a(String[] paramArrayOfString)
  {
    this.a = paramArrayOfString;
  }

  public final String toString()
  {
    if (this.a == null)
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < this.a.length; i++)
    {
      if (this.a[i] != null)
        localStringBuilder.append(this.a[i]);
      localStringBuilder.append("|");
    }
    return localStringBuilder.substring(0, -1 + localStringBuilder.length());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.g
 * JD-Core Version:    0.6.2
 */
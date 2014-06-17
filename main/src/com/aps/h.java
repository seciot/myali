package com.aps;

public class h
{
  public double a = 0.0D;
  public double b = 0.0D;
  public float c = 0.0F;
  private long d = -1L;

  public long a()
  {
    return this.d;
  }

  public void a(long paramLong)
  {
    if (paramLong >= 0L)
    {
      this.d = (paramLong + n.a());
      return;
    }
    this.d = paramLong;
  }

  public String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a).append("#").append(this.b).append("#").append(this.c);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.h
 * JD-Core Version:    0.6.2
 */
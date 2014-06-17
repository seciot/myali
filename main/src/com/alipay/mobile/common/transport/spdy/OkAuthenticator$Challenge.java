package com.alipay.mobile.common.transport.spdy;

public final class OkAuthenticator$Challenge
{
  private final String a;
  private final String b;

  public OkAuthenticator$Challenge(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof Challenge)) && (((Challenge)paramObject).a.equals(this.a)) && (((Challenge)paramObject).b.equals(this.b));
  }

  public final String getRealm()
  {
    return this.b;
  }

  public final String getScheme()
  {
    return this.a;
  }

  public final int hashCode()
  {
    return this.a.hashCode() + 31 * this.b.hashCode();
  }

  public final String toString()
  {
    return this.a + " realm=\"" + this.b + "\"";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.OkAuthenticator.Challenge
 * JD-Core Version:    0.6.2
 */
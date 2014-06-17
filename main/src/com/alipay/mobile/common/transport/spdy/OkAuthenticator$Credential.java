package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Base64;
import java.io.UnsupportedEncodingException;

public final class OkAuthenticator$Credential
{
  private final String a;

  private OkAuthenticator$Credential(String paramString)
  {
    this.a = paramString;
  }

  public static Credential basic(String paramString1, String paramString2)
  {
    try
    {
      String str = Base64.encode((paramString1 + ":" + paramString2).getBytes("ISO-8859-1"));
      Credential localCredential = new Credential("Basic " + str);
      return localCredential;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError();
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof Credential)) && (((Credential)paramObject).a.equals(this.a));
  }

  public final String getHeaderValue()
  {
    return this.a;
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }

  public final String toString()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.OkAuthenticator.Credential
 * JD-Core Version:    0.6.2
 */
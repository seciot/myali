package com.alipay.mobile.common.transport.spdy;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class MediaType
{
  private static final Pattern a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
  private static final Pattern b = Pattern.compile(";\\s*([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\")");
  private final String c;
  private final String d;
  private final String e;
  private final String f;

  private MediaType(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramString4;
  }

  public static MediaType parse(String paramString)
  {
    Matcher localMatcher1 = a.matcher(paramString);
    if (!localMatcher1.lookingAt());
    String str1;
    String str2;
    Matcher localMatcher2;
    int i;
    do
    {
      return null;
      str1 = localMatcher1.group(1).toLowerCase(Locale.US);
      str2 = localMatcher1.group(2).toLowerCase(Locale.US);
      localMatcher2 = b.matcher(paramString);
      i = localMatcher1.end();
      str3 = null;
      if (i >= paramString.length())
        break;
      localMatcher2.region(i, paramString.length());
    }
    while (!localMatcher2.lookingAt());
    String str4 = localMatcher2.group(1);
    if ((str4 != null) && (str4.equalsIgnoreCase("charset")))
    {
      if (str3 != null)
        throw new IllegalArgumentException("Multiple charsets: " + paramString);
      if (localMatcher2.group(2) == null)
        break label167;
    }
    label167: for (String str3 = localMatcher2.group(2); ; str3 = localMatcher2.group(3))
    {
      i = localMatcher2.end();
      break;
    }
    return new MediaType(paramString, str1, str2, str3);
  }

  public final Charset charset()
  {
    if (this.f != null)
      return Charset.forName(this.f);
    return null;
  }

  public final Charset charset(Charset paramCharset)
  {
    if (this.f != null)
      paramCharset = Charset.forName(this.f);
    return paramCharset;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof MediaType)) && (((MediaType)paramObject).c.equals(this.c));
  }

  public final int hashCode()
  {
    return this.c.hashCode();
  }

  public final String subtype()
  {
    return this.e;
  }

  public final String toString()
  {
    return this.c;
  }

  public final String type()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.MediaType
 * JD-Core Version:    0.6.2
 */
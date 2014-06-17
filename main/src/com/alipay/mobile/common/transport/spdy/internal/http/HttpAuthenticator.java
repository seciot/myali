package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.OkAuthenticator;
import com.alipay.mobile.common.transport.spdy.OkAuthenticator.Challenge;
import com.alipay.mobile.common.transport.spdy.OkAuthenticator.Credential;
import java.net.Proxy;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public final class HttpAuthenticator
{
  public static final OkAuthenticator SYSTEM_DEFAULT = new HttpAuthenticator.1();

  private static List a(RawHeaders paramRawHeaders, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramRawHeaders.length(); i++)
      if (paramString.equalsIgnoreCase(paramRawHeaders.getFieldName(i)))
      {
        String str1 = paramRawHeaders.getValue(i);
        int j = 0;
        while (j < str1.length())
        {
          int k = HeaderParser.skipUntil(str1, j, " ");
          String str2 = str1.substring(j, k).trim();
          int m = HeaderParser.skipWhitespace(str1, k);
          if (!str1.regionMatches(true, m, "realm=\"", 0, 7))
            break;
          int n = m + 7;
          int i1 = HeaderParser.skipUntil(str1, n, "\"");
          String str3 = str1.substring(n, i1);
          j = HeaderParser.skipWhitespace(str1, 1 + HeaderParser.skipUntil(str1, i1 + 1, ","));
          localArrayList.add(new OkAuthenticator.Challenge(str2, str3));
        }
      }
    return localArrayList;
  }

  public static boolean processAuthHeader(OkAuthenticator paramOkAuthenticator, int paramInt, RawHeaders paramRawHeaders1, RawHeaders paramRawHeaders2, Proxy paramProxy, URL paramURL)
  {
    String str1;
    if (paramInt == 401)
      str1 = "WWW-Authenticate";
    List localList;
    for (String str2 = "Authorization"; ; str2 = "Proxy-Authorization")
    {
      localList = a(paramRawHeaders1, str1);
      if (!localList.isEmpty())
        break label61;
      return false;
      if (paramInt != 407)
        break;
      str1 = "Proxy-Authenticate";
    }
    throw new IllegalArgumentException();
    label61: if (paramRawHeaders1.getResponseCode() == 407);
    for (OkAuthenticator.Credential localCredential = paramOkAuthenticator.authenticateProxy(paramProxy, paramURL, localList); localCredential == null; localCredential = paramOkAuthenticator.authenticate(paramProxy, paramURL, localList))
      return false;
    paramRawHeaders2.set(str2, localCredential.getHeaderValue());
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpAuthenticator
 * JD-Core Version:    0.6.2
 */
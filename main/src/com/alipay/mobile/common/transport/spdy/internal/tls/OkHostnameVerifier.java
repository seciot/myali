package com.alipay.mobile.common.transport.spdy.internal.tls;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

public final class OkHostnameVerifier
  implements HostnameVerifier
{
  public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();
  private static final Pattern a = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

  private static List a(X509Certificate paramX509Certificate, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Collection localCollection = paramX509Certificate.getSubjectAlternativeNames();
      if (localCollection == null)
        return Collections.emptyList();
      Iterator localIterator = localCollection.iterator();
      while (localIterator.hasNext())
      {
        List localList = (List)localIterator.next();
        if ((localList != null) && (localList.size() >= 2))
        {
          Integer localInteger = (Integer)localList.get(0);
          if ((localInteger != null) && (localInteger.intValue() == paramInt))
          {
            String str = (String)localList.get(1);
            if (str != null)
              localArrayList.add(str);
          }
        }
      }
    }
    catch (CertificateParsingException localCertificateParsingException)
    {
      return Collections.emptyList();
    }
    return localArrayList;
  }

  static boolean verifyAsIpAddress(String paramString)
  {
    return a.matcher(paramString).matches();
  }

  public final boolean verify(String paramString, X509Certificate paramX509Certificate)
  {
    if (verifyAsIpAddress(paramString))
    {
      Iterator localIterator2 = a(paramX509Certificate, 7).iterator();
      while (localIterator2.hasNext())
        if (paramString.equalsIgnoreCase((String)localIterator2.next()))
          return true;
      return false;
    }
    String str1 = paramString.toLowerCase(Locale.US);
    Iterator localIterator1 = a(paramX509Certificate, 2).iterator();
    for (int i = 0; ; i = 1)
    {
      if (!localIterator1.hasNext())
        break label108;
      if (verifyHostName(str1, (String)localIterator1.next()))
        break;
    }
    label108: if (i == 0)
    {
      String str2 = new DistinguishedNameParser(paramX509Certificate.getSubjectX500Principal()).findMostSpecific("cn");
      if (str2 != null)
        return verifyHostName(str1, str2);
    }
    return false;
  }

  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    try
    {
      boolean bool = verify(paramString, (X509Certificate)paramSSLSession.getPeerCertificates()[0]);
      return bool;
    }
    catch (SSLException localSSLException)
    {
    }
    return false;
  }

  public final boolean verifyHostName(String paramString1, String paramString2)
  {
    boolean bool = true;
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString2 == null) || (paramString2.length() == 0))
      bool = false;
    String str;
    int i;
    int j;
    int k;
    do
    {
      do
      {
        return bool;
        str = paramString2.toLowerCase(Locale.US);
        if (!str.contains("*"))
          return paramString1.equals(str);
      }
      while ((str.startsWith("*.")) && (paramString1.regionMatches(0, str, 2, -2 + str.length())));
      i = str.indexOf('*');
      if (i > str.indexOf('.'))
        return false;
      if (!paramString1.regionMatches(0, str, 0, i))
        return false;
      j = str.length() - (i + 1);
      k = paramString1.length() - j;
      if ((paramString1.indexOf('.', i) < k) && (!paramString1.endsWith(".clients.google.com")))
        return false;
    }
    while (paramString1.regionMatches(k, str, i + 1, j));
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.tls.OkHostnameVerifier
 * JD-Core Version:    0.6.2
 */
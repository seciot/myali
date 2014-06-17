package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.InputStream;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public final class RawHeaders
{
  private static final Comparator a = new RawHeaders.1();
  private final List b = new ArrayList(20);
  private String c;
  private String d;
  private int e = 1;
  private int f = -1;
  private String g;

  public RawHeaders()
  {
  }

  public RawHeaders(RawHeaders paramRawHeaders)
  {
    this.b.addAll(paramRawHeaders.b);
    this.c = paramRawHeaders.c;
    this.d = paramRawHeaders.d;
    this.e = paramRawHeaders.e;
    this.f = paramRawHeaders.f;
    this.g = paramRawHeaders.g;
  }

  private void a(String paramString1, String paramString2)
  {
    this.b.add(paramString1);
    this.b.add(paramString2.trim());
  }

  public static RawHeaders fromBytes(InputStream paramInputStream)
  {
    RawHeaders localRawHeaders;
    do
    {
      localRawHeaders = new RawHeaders();
      localRawHeaders.setStatusLine(Util.readAsciiLine(paramInputStream));
      readHeaders(paramInputStream, localRawHeaders);
    }
    while (localRawHeaders.getResponseCode() == 100);
    return localRawHeaders;
  }

  public static RawHeaders fromMultimap(Map paramMap, boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new UnsupportedOperationException();
    RawHeaders localRawHeaders = new RawHeaders();
    Iterator localIterator1 = paramMap.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      String str = (String)localEntry.getKey();
      List localList = (List)localEntry.getValue();
      if (str != null)
      {
        Iterator localIterator2 = localList.iterator();
        while (localIterator2.hasNext())
          localRawHeaders.a(str, (String)localIterator2.next());
      }
      else if (!localList.isEmpty())
      {
        localRawHeaders.setStatusLine((String)localList.get(-1 + localList.size()));
      }
    }
    return localRawHeaders;
  }

  public static RawHeaders fromNameValueBlock(List paramList)
  {
    Object localObject1 = null;
    if (paramList.size() % 2 != 0)
      throw new IllegalArgumentException("Unexpected name value block: " + paramList);
    RawHeaders localRawHeaders = new RawHeaders();
    int i = 0;
    Object localObject2 = null;
    while (i < paramList.size())
    {
      String str1 = (String)paramList.get(i);
      String str2 = (String)paramList.get(i + 1);
      int j = 0;
      if (j < str2.length())
      {
        int k = str2.indexOf(0, j);
        if (k == -1)
          k = str2.length();
        Object localObject3 = str2.substring(j, k);
        if (":status".equals(str1));
        while (true)
        {
          int m = k + 1;
          localObject2 = localObject3;
          j = m;
          break;
          if (":version".equals(str1))
          {
            localObject1 = localObject3;
            localObject3 = localObject2;
          }
          else
          {
            localRawHeaders.b.add(str1);
            localRawHeaders.b.add(localObject3);
            localObject3 = localObject2;
          }
        }
      }
      i += 2;
    }
    if (localObject2 == null)
      throw new ProtocolException("Expected ':status' header not present");
    if (localObject1 == null)
      throw new ProtocolException("Expected ':version' header not present");
    localRawHeaders.setStatusLine(localObject1 + " " + localObject2);
    return localRawHeaders;
  }

  public static void readHeaders(InputStream paramInputStream, RawHeaders paramRawHeaders)
  {
    while (true)
    {
      String str = Util.readAsciiLine(paramInputStream);
      if (str.length() == 0)
        break;
      paramRawHeaders.addLine(str);
    }
  }

  public final void add(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("fieldname == null");
    if (paramString2 == null)
      throw new IllegalArgumentException("value == null");
    if ((paramString1.length() == 0) || (paramString1.indexOf(0) != -1) || (paramString2.indexOf(0) != -1))
      throw new IllegalArgumentException("Unexpected header: " + paramString1 + ": " + paramString2);
    a(paramString1, paramString2);
  }

  public final void addAll(String paramString, List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      add(paramString, (String)localIterator.next());
  }

  public final void addLine(String paramString)
  {
    int i = paramString.indexOf(":", 1);
    if (i != -1)
    {
      a(paramString.substring(0, i), paramString.substring(i + 1));
      return;
    }
    if (paramString.startsWith(":"))
    {
      a("", paramString.substring(1));
      return;
    }
    a("", paramString);
  }

  public final void addSpdyRequestHeaders(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    add(":method", paramString1);
    add(":scheme", paramString5);
    add(":path", paramString2);
    add(":version", paramString3);
    add(":host", paramString4);
  }

  public final String get(String paramString)
  {
    for (int i = -2 + this.b.size(); i >= 0; i -= 2)
      if (paramString.equalsIgnoreCase((String)this.b.get(i)))
        return (String)this.b.get(i + 1);
    return null;
  }

  public final RawHeaders getAll(Set paramSet)
  {
    RawHeaders localRawHeaders = new RawHeaders();
    for (int i = 0; i < this.b.size(); i += 2)
    {
      String str = (String)this.b.get(i);
      if (paramSet.contains(str))
        localRawHeaders.add(str, (String)this.b.get(i + 1));
    }
    return localRawHeaders;
  }

  public final String getFieldName(int paramInt)
  {
    int i = paramInt * 2;
    if ((i < 0) || (i >= this.b.size()))
      return null;
    return (String)this.b.get(i);
  }

  public final int getHttpMinorVersion()
  {
    if (this.e != -1)
      return this.e;
    return 1;
  }

  public final int getResponseCode()
  {
    return this.f;
  }

  public final String getResponseMessage()
  {
    return this.g;
  }

  public final String getStatusLine()
  {
    return this.d;
  }

  public final String getValue(int paramInt)
  {
    int i = 1 + paramInt * 2;
    if ((i < 0) || (i >= this.b.size()))
      return null;
    return (String)this.b.get(i);
  }

  public final int length()
  {
    return this.b.size() / 2;
  }

  public final Set names()
  {
    TreeSet localTreeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
    for (int i = 0; i < length(); i++)
      localTreeSet.add(getFieldName(i));
    return Collections.unmodifiableSet(localTreeSet);
  }

  public final void removeAll(String paramString)
  {
    for (int i = 0; i < this.b.size(); i += 2)
      if (paramString.equalsIgnoreCase((String)this.b.get(i)))
      {
        this.b.remove(i);
        this.b.remove(i);
      }
  }

  public final void set(String paramString1, String paramString2)
  {
    removeAll(paramString1);
    add(paramString1, paramString2);
  }

  public final void setRequestLine(String paramString)
  {
    this.c = paramString.trim();
  }

  public final void setStatusLine(String paramString)
  {
    if (this.g != null)
      throw new IllegalStateException("statusLine is already set");
    if (paramString.length() > 13);
    for (int i = 1; (!paramString.startsWith("HTTP/1.")) || (paramString.length() < 12) || (paramString.charAt(8) != ' ') || ((i != 0) && (paramString.charAt(12) != ' ')); i = 0)
      throw new ProtocolException("Unexpected status line: " + paramString);
    int j = '\0*0' + paramString.charAt(7);
    if ((j < 0) || (j > 9))
      throw new ProtocolException("Unexpected status line: " + paramString);
    while (true)
    {
      try
      {
        int k = Integer.parseInt(paramString.substring(9, 12));
        if (i != 0)
        {
          str = paramString.substring(13);
          this.g = str;
          this.f = k;
          this.d = paramString;
          this.e = j;
          return;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
      String str = "";
    }
  }

  public final byte[] toBytes()
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append(this.c).append("\r\n");
    for (int i = 0; i < this.b.size(); i += 2)
      localStringBuilder.append((String)this.b.get(i)).append(": ").append((String)this.b.get(i + 1)).append("\r\n");
    localStringBuilder.append("\r\n");
    return localStringBuilder.toString().getBytes("ISO-8859-1");
  }

  public final Map toMultimap(boolean paramBoolean)
  {
    TreeMap localTreeMap = new TreeMap(a);
    for (int i = 0; i < this.b.size(); i += 2)
    {
      String str1 = (String)this.b.get(i);
      String str2 = (String)this.b.get(i + 1);
      ArrayList localArrayList = new ArrayList();
      List localList = (List)localTreeMap.get(str1);
      if (localList != null)
        localArrayList.addAll(localList);
      localArrayList.add(str2);
      localTreeMap.put(str1, Collections.unmodifiableList(localArrayList));
    }
    if ((paramBoolean) && (this.d != null))
      localTreeMap.put(null, Collections.unmodifiableList(Collections.singletonList(this.d)));
    while (true)
    {
      return Collections.unmodifiableMap(localTreeMap);
      if (this.c != null)
        localTreeMap.put(null, Collections.unmodifiableList(Collections.singletonList(this.c)));
    }
  }

  public final List toNameValueBlock()
  {
    HashSet localHashSet = new HashSet();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < this.b.size())
    {
      String str1 = ((String)this.b.get(i)).toLowerCase(Locale.US);
      String str2 = (String)this.b.get(i + 1);
      if ((!str1.equals("connection")) && (!str1.equals("host")) && (!str1.equals("keep-alive")) && (!str1.equals("proxy-connection")) && (!str1.equals("transfer-encoding")))
      {
        if (!localHashSet.add(str1))
          break label159;
        localArrayList.add(str1);
        localArrayList.add(str2);
      }
      label159: label244: 
      while (true)
      {
        i += 2;
        break;
        for (int j = 0; ; j += 2)
        {
          if (j >= localArrayList.size())
            break label244;
          if (str1.equals(localArrayList.get(j)))
          {
            localArrayList.set(j + 1, (String)localArrayList.get(j + 1) + "" + str2);
            break;
          }
        }
      }
    }
    return localArrayList;
  }

  public final List values(String paramString)
  {
    ArrayList localArrayList = null;
    for (int i = 0; i < length(); i++)
      if (paramString.equalsIgnoreCase(getFieldName(i)))
      {
        if (localArrayList == null)
          localArrayList = new ArrayList(2);
        localArrayList.add(getValue(i));
      }
    if (localArrayList != null)
      return Collections.unmodifiableList(localArrayList);
    return Collections.emptyList();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders
 * JD-Core Version:    0.6.2
 */
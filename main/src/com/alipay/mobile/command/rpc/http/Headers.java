package com.alipay.mobile.command.rpc.http;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

public final class Headers
{
  public static final String ACCEPT_RANGES = "accept-ranges";
  public static final String CACHE_CONTROL = "cache-control";
  public static final int CONN_CLOSE = 1;
  public static final String CONN_DIRECTIVE = "connection";
  public static final int CONN_KEEP_ALIVE = 2;
  public static final String CONTENT_DISPOSITION = "content-disposition";
  public static final String CONTENT_ENCODING = "content-encoding";
  public static final String CONTENT_LEN = "content-length";
  public static final String CONTENT_TYPE = "content-type";
  public static final String ETAG = "etag";
  public static final String EXPIRES = "expires";
  public static final String LAST_MODIFIED = "last-modified";
  public static final String LOCATION = "location";
  public static final int NO_CONN_TYPE = 0;
  public static final long NO_CONTENT_LENGTH = -1L;
  public static final long NO_TRANSFER_ENCODING = 0L;
  public static final String PRAGMA = "pragma";
  public static final String PROXY_AUTHENTICATE = "proxy-authenticate";
  public static final String PROXY_CONNECTION = "proxy-connection";
  public static final String REFRESH = "refresh";
  public static final String SET_COOKIE = "set-cookie";
  public static final String TRANSFER_ENCODING = "transfer-encoding";
  public static final String WWW_AUTHENTICATE = "www-authenticate";
  public static final String X_PERMITTED_CROSS_DOMAIN_POLICIES = "x-permitted-cross-domain-policies";
  private static final String[] f = { "transfer-encoding", "content-length", "content-type", "content-encoding", "connection", "location", "proxy-connection", "www-authenticate", "proxy-authenticate", "content-disposition", "accept-ranges", "expires", "cache-control", "last-modified", "etag", "set-cookie", "pragma", "refresh", "x-permitted-cross-domain-policies" };
  private long a = 0L;
  private long b = -1L;
  private int c = 0;
  private ArrayList<String> d = new ArrayList(2);
  private String[] e = new String[19];
  private ArrayList<String> g = new ArrayList(4);
  private ArrayList<String> h = new ArrayList(4);

  private void a(CharArrayBuffer paramCharArrayBuffer, int paramInt)
  {
    if (CharArrayBuffers.a(paramCharArrayBuffer, paramInt, "Close"))
      this.c = 1;
    while (!CharArrayBuffers.a(paramCharArrayBuffer, paramInt, "Keep-Alive"))
      return;
    this.c = 2;
  }

  public final String getAcceptRanges()
  {
    return this.e[10];
  }

  public final String getCacheControl()
  {
    return this.e[12];
  }

  public final int getConnectionType()
  {
    return this.c;
  }

  public final String getContentDisposition()
  {
    return this.e[9];
  }

  public final String getContentEncoding()
  {
    return this.e[3];
  }

  public final long getContentLength()
  {
    return this.b;
  }

  public final String getContentType()
  {
    return this.e[2];
  }

  public final String getEtag()
  {
    return this.e[14];
  }

  public final String getExpires()
  {
    return this.e[11];
  }

  public final void getHeaders(Headers.HeaderCallback paramHeaderCallback)
  {
    for (int i = 0; i < 19; i++)
    {
      String str = this.e[i];
      if (str != null)
        paramHeaderCallback.header(f[i], str);
    }
    int j = this.g.size();
    for (int k = 0; k < j; k++)
      paramHeaderCallback.header((String)this.g.get(k), (String)this.h.get(k));
  }

  public final String getLastModified()
  {
    return this.e[13];
  }

  public final String getLocation()
  {
    return this.e[5];
  }

  public final String getPragma()
  {
    return this.e[16];
  }

  public final String getProxyAuthenticate()
  {
    return this.e[8];
  }

  public final String getRefresh()
  {
    return this.e[17];
  }

  public final ArrayList<String> getSetCookie()
  {
    return this.d;
  }

  public final long getTransferEncoding()
  {
    return this.a;
  }

  public final String getWwwAuthenticate()
  {
    return this.e[7];
  }

  public final String getXPermittedCrossDomainPolicies()
  {
    return this.e[18];
  }

  public final void parseHeader(CharArrayBuffer paramCharArrayBuffer)
  {
    int i = CharArrayBuffers.a(paramCharArrayBuffer);
    if (i == -1);
    String str1;
    String str2;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            int j;
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    do
                                    {
                                      do
                                      {
                                        do
                                        {
                                          do
                                          {
                                            return;
                                            str1 = paramCharArrayBuffer.substringTrimmed(0, i);
                                          }
                                          while (str1.length() == 0);
                                          j = i + 1;
                                          str2 = paramCharArrayBuffer.substringTrimmed(j, paramCharArrayBuffer.length());
                                          switch (str1.hashCode())
                                          {
                                          default:
                                            this.g.add(str1);
                                            this.h.add(str2);
                                            return;
                                          case 1274458357:
                                          case -1132779846:
                                          case 785670158:
                                          case 2095084583:
                                          case -775651618:
                                          case 1901043637:
                                          case 285929373:
                                          case -243037365:
                                          case -301767724:
                                          case -1267267485:
                                          case 1397189435:
                                          case -1309235404:
                                          case -208775662:
                                          case 150043680:
                                          case 3123477:
                                          case 1237214767:
                                          case -980228804:
                                          case 1085444827:
                                          case -1345594014:
                                          }
                                        }
                                        while (!str1.equals("transfer-encoding"));
                                        this.e[0] = str2;
                                        HeaderElement[] arrayOfHeaderElement = BasicHeaderValueParser.DEFAULT.parseElements(paramCharArrayBuffer, new ParserCursor(j, paramCharArrayBuffer.length()));
                                        int k = arrayOfHeaderElement.length;
                                        if ((!"identity".equalsIgnoreCase(str2)) && (k > 0) && ("chunked".equalsIgnoreCase(arrayOfHeaderElement[(k - 1)].getName())))
                                        {
                                          this.a = -2L;
                                          return;
                                        }
                                        this.a = -1L;
                                        return;
                                      }
                                      while (!str1.equals("content-length"));
                                      this.e[1] = str2;
                                      try
                                      {
                                        this.b = Long.parseLong(str2);
                                        return;
                                      }
                                      catch (NumberFormatException localNumberFormatException)
                                      {
                                        return;
                                      }
                                    }
                                    while (!str1.equals("content-type"));
                                    this.e[2] = str2;
                                    return;
                                  }
                                  while (!str1.equals("content-encoding"));
                                  this.e[3] = str2;
                                  return;
                                }
                                while (!str1.equals("connection"));
                                this.e[4] = str2;
                                a(paramCharArrayBuffer, j);
                                return;
                              }
                              while (!str1.equals("location"));
                              this.e[5] = str2;
                              return;
                            }
                            while (!str1.equals("proxy-connection"));
                            this.e[6] = str2;
                            a(paramCharArrayBuffer, j);
                            return;
                          }
                          while (!str1.equals("www-authenticate"));
                          this.e[7] = str2;
                          return;
                        }
                        while (!str1.equals("proxy-authenticate"));
                        this.e[8] = str2;
                        return;
                      }
                      while (!str1.equals("content-disposition"));
                      this.e[9] = str2;
                      return;
                    }
                    while (!str1.equals("accept-ranges"));
                    this.e[10] = str2;
                    return;
                  }
                  while (!str1.equals("expires"));
                  this.e[11] = str2;
                  return;
                }
                while (!str1.equals("cache-control"));
                if ((this.e[12] != null) && (this.e[12].length() > 0))
                {
                  StringBuilder localStringBuilder = new StringBuilder();
                  String[] arrayOfString = this.e;
                  arrayOfString[12] = (arrayOfString[12] + ',' + str2);
                  return;
                }
                this.e[12] = str2;
                return;
              }
              while (!str1.equals("last-modified"));
              this.e[13] = str2;
              return;
            }
            while (!str1.equals("etag"));
            this.e[14] = str2;
            return;
          }
          while (!str1.equals("set-cookie"));
          this.e[15] = str2;
          this.d.add(str2);
          return;
        }
        while (!str1.equals("pragma"));
        this.e[16] = str2;
        return;
      }
      while (!str1.equals("refresh"));
      this.e[17] = str2;
      return;
    }
    while (!str1.equals("x-permitted-cross-domain-policies"));
    this.e[18] = str2;
  }

  public final void setAcceptRanges(String paramString)
  {
    this.e[10] = paramString;
  }

  public final void setCacheControl(String paramString)
  {
    this.e[12] = paramString;
  }

  public final void setContentDisposition(String paramString)
  {
    this.e[9] = paramString;
  }

  public final void setContentEncoding(String paramString)
  {
    this.e[3] = paramString;
  }

  public final void setContentLength(long paramLong)
  {
    this.b = paramLong;
  }

  public final void setContentType(String paramString)
  {
    this.e[2] = paramString;
  }

  public final void setEtag(String paramString)
  {
    this.e[14] = paramString;
  }

  public final void setExpires(String paramString)
  {
    this.e[11] = paramString;
  }

  public final void setLastModified(String paramString)
  {
    this.e[13] = paramString;
  }

  public final void setLocation(String paramString)
  {
    this.e[5] = paramString;
  }

  public final void setProxyAuthenticate(String paramString)
  {
    this.e[8] = paramString;
  }

  public final void setWwwAuthenticate(String paramString)
  {
    this.e[7] = paramString;
  }

  public final void setXPermittedCrossDomainPolicies(String paramString)
  {
    this.e[18] = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.Headers
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;
import java.net.MalformedURLException;
import java.net.URL;

public class Request$Builder
{
  private URL a;
  private String b = "GET";
  private final RawHeaders c = new RawHeaders();
  private Request.Body d;
  private Object e;

  public Request$Builder(String paramString)
  {
    url(paramString);
  }

  public Request$Builder(URL paramURL)
  {
    url(paramURL);
  }

  public Builder addHeader(String paramString1, String paramString2)
  {
    this.c.add(paramString1, paramString2);
    return this;
  }

  public Request build()
  {
    return new Request(this, null);
  }

  public Builder get()
  {
    return method("GET", null);
  }

  public Builder head()
  {
    return method("HEAD", null);
  }

  public Builder header(String paramString1, String paramString2)
  {
    this.c.set(paramString1, paramString2);
    return this;
  }

  public Builder method(String paramString, Request.Body paramBody)
  {
    if ((paramString == null) || (paramString.length() == 0))
      throw new IllegalArgumentException("method == null || method.length() == 0");
    this.b = paramString;
    this.d = paramBody;
    return this;
  }

  public Builder post(Request.Body paramBody)
  {
    return method("POST", paramBody);
  }

  public Builder put(Request.Body paramBody)
  {
    return method("PUT", paramBody);
  }

  public Builder tag(Object paramObject)
  {
    this.e = paramObject;
    return this;
  }

  public Builder url(String paramString)
  {
    try
    {
      this.a = new URL(paramString);
      return this;
    }
    catch (MalformedURLException localMalformedURLException)
    {
    }
    throw new IllegalArgumentException("Malformed URL: " + paramString);
  }

  public Builder url(URL paramURL)
  {
    if (paramURL == null)
      throw new IllegalStateException("url == null");
    this.a = paramURL;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Request.Builder
 * JD-Core Version:    0.6.2
 */
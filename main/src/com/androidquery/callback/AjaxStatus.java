package com.androidquery.callback;

import com.androidquery.util.AQUtility;
import java.io.Closeable;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

public class AjaxStatus
{
  public static final int AUTH_ERROR = -102;
  public static final int DATASTORE = 2;
  public static final int DEVICE = 5;
  public static final int FILE = 3;
  public static final int MEMORY = 4;
  public static final int NETWORK = 1;
  public static final int NETWORK_ERROR = -101;
  public static final int TRANSFORM_ERROR = -103;
  private int a = 200;
  private String b = "OK";
  private String c;
  private byte[] d;
  private File e;
  private Date f = new Date();
  private boolean g;
  private DefaultHttpClient h;
  private long i;
  private int j = 1;
  private long k = System.currentTimeMillis();
  private boolean l;
  private boolean m;
  private boolean n;
  private String o;
  private HttpContext p;
  private Header[] q;
  private Closeable r;

  public AjaxStatus()
  {
  }

  public AjaxStatus(int paramInt, String paramString)
  {
    this.a = paramInt;
    this.b = paramString;
  }

  protected AjaxStatus client(DefaultHttpClient paramDefaultHttpClient)
  {
    this.h = paramDefaultHttpClient;
    return this;
  }

  public void close()
  {
    AQUtility.close(this.r);
    this.r = null;
  }

  protected void closeLater(Closeable paramCloseable)
  {
    this.r = paramCloseable;
  }

  public AjaxStatus code(int paramInt)
  {
    this.a = paramInt;
    return this;
  }

  protected AjaxStatus context(HttpContext paramHttpContext)
  {
    this.p = paramHttpContext;
    return this;
  }

  protected AjaxStatus data(byte[] paramArrayOfByte)
  {
    this.d = paramArrayOfByte;
    return this;
  }

  public AjaxStatus done()
  {
    this.i = (System.currentTimeMillis() - this.k);
    this.l = true;
    this.n = false;
    return this;
  }

  protected AjaxStatus error(String paramString)
  {
    this.o = paramString;
    return this;
  }

  public boolean expired(long paramLong)
  {
    long l1 = this.f.getTime();
    return (System.currentTimeMillis() - l1 > paramLong) && (getSource() != 1);
  }

  protected AjaxStatus file(File paramFile)
  {
    this.e = paramFile;
    return this;
  }

  public DefaultHttpClient getClient()
  {
    return this.h;
  }

  public int getCode()
  {
    return this.a;
  }

  public List<Cookie> getCookies()
  {
    if (this.p == null)
      return Collections.emptyList();
    CookieStore localCookieStore = (CookieStore)this.p.getAttribute("http.cookie-store");
    if (localCookieStore == null)
      return Collections.emptyList();
    return localCookieStore.getCookies();
  }

  protected byte[] getData()
  {
    return this.d;
  }

  protected boolean getDone()
  {
    return this.l;
  }

  public long getDuration()
  {
    return this.i;
  }

  public String getError()
  {
    return this.o;
  }

  protected File getFile()
  {
    return this.e;
  }

  public String getHeader(String paramString)
  {
    if (this.q == null)
      return null;
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= this.q.length)
        return null;
      if (paramString.equalsIgnoreCase(this.q[i1].getName()))
        return this.q[i1].getValue();
    }
  }

  public List<Header> getHeaders()
  {
    if (this.q == null)
      return Collections.emptyList();
    return Arrays.asList(this.q);
  }

  protected boolean getInvalid()
  {
    return this.m;
  }

  public String getMessage()
  {
    return this.b;
  }

  protected boolean getReauth()
  {
    return this.n;
  }

  public String getRedirect()
  {
    return this.c;
  }

  public boolean getRefresh()
  {
    return this.g;
  }

  public int getSource()
  {
    return this.j;
  }

  public Date getTime()
  {
    return this.f;
  }

  protected AjaxStatus headers(Header[] paramArrayOfHeader)
  {
    this.q = paramArrayOfHeader;
    return this;
  }

  public AjaxStatus invalidate()
  {
    this.m = true;
    return this;
  }

  public AjaxStatus message(String paramString)
  {
    this.b = paramString;
    return this;
  }

  protected AjaxStatus reauth(boolean paramBoolean)
  {
    this.n = paramBoolean;
    return this;
  }

  protected AjaxStatus redirect(String paramString)
  {
    this.c = paramString;
    return this;
  }

  protected AjaxStatus refresh(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }

  protected AjaxStatus reset()
  {
    this.i = (System.currentTimeMillis() - this.k);
    this.l = false;
    close();
    return this;
  }

  protected AjaxStatus source(int paramInt)
  {
    this.j = paramInt;
    return this;
  }

  protected AjaxStatus time(Date paramDate)
  {
    this.f = paramDate;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.callback.AjaxStatus
 * JD-Core Version:    0.6.2
 */
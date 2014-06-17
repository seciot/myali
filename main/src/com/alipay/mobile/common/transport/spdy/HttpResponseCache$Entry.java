package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Base64;
import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Editor;
import com.alipay.mobile.common.transport.spdy.internal.StrictLineReader;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpEngine;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpURLConnectionImpl;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpsEngine;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpsURLConnectionImpl;
import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;
import com.alipay.mobile.common.transport.spdy.internal.http.ResponseHeaders;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URI;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

final class HttpResponseCache$Entry
{
  private final String a;
  private final RawHeaders b;
  private final String c;
  private final RawHeaders d;
  private final String e;
  private final Certificate[] f;
  private final Certificate[] g;

  public HttpResponseCache$Entry(InputStream paramInputStream)
  {
    StrictLineReader localStrictLineReader;
    try
    {
      localStrictLineReader = new StrictLineReader(paramInputStream, Util.US_ASCII);
      this.a = localStrictLineReader.readLine();
      this.c = localStrictLineReader.readLine();
      this.b = new RawHeaders();
      int j = localStrictLineReader.readInt();
      for (int k = 0; k < j; k++)
        this.b.addLine(localStrictLineReader.readLine());
      this.d = new RawHeaders();
      this.d.setStatusLine(localStrictLineReader.readLine());
      int m = localStrictLineReader.readInt();
      while (i < m)
      {
        this.d.addLine(localStrictLineReader.readLine());
        i++;
      }
      if (!a())
        break label218;
      String str = localStrictLineReader.readLine();
      if (str.length() > 0)
        throw new IOException("expected \"\" but was \"" + str + "\"");
    }
    finally
    {
      paramInputStream.close();
    }
    this.e = localStrictLineReader.readLine();
    this.f = a(localStrictLineReader);
    for (this.g = a(localStrictLineReader); ; this.g = null)
    {
      paramInputStream.close();
      return;
      label218: this.e = null;
      this.f = null;
    }
  }

  public HttpResponseCache$Entry(URI paramURI, RawHeaders paramRawHeaders, HttpURLConnection paramHttpURLConnection)
  {
    this.a = paramURI.toString();
    this.b = paramRawHeaders;
    this.c = paramHttpURLConnection.getRequestMethod();
    this.d = RawHeaders.fromMultimap(paramHttpURLConnection.getHeaderFields(), true);
    HttpEngine localHttpEngine;
    if ((paramHttpURLConnection instanceof HttpsURLConnectionImpl))
      localHttpEngine = ((HttpsURLConnectionImpl)paramHttpURLConnection).getHttpEngine();
    while (true)
    {
      SSLSocket localSSLSocket;
      if ((localHttpEngine instanceof HttpsEngine))
      {
        localSSLSocket = ((HttpsEngine)localHttpEngine).getSslSocket();
        if (localSSLSocket != null)
          this.e = localSSLSocket.getSession().getCipherSuite();
      }
      else
      {
        try
        {
          Certificate[] arrayOfCertificate2 = localSSLSocket.getSession().getPeerCertificates();
          arrayOfCertificate1 = arrayOfCertificate2;
          this.f = arrayOfCertificate1;
          this.g = localSSLSocket.getSession().getLocalCertificates();
          return;
          localHttpEngine = ((HttpURLConnectionImpl)paramHttpURLConnection).getHttpEngine();
          continue;
          localSSLSocket = null;
        }
        catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
        {
          while (true)
            Certificate[] arrayOfCertificate1 = null;
        }
      }
    }
    this.e = null;
    this.f = null;
    this.g = null;
  }

  private static void a(Writer paramWriter, Certificate[] paramArrayOfCertificate)
  {
    if (paramArrayOfCertificate == null)
      paramWriter.write("-1\n");
    while (true)
    {
      return;
      try
      {
        paramWriter.write(Integer.toString(paramArrayOfCertificate.length) + '\n');
        int i = paramArrayOfCertificate.length;
        for (int j = 0; j < i; j++)
        {
          String str = Base64.encode(paramArrayOfCertificate[j].getEncoded());
          paramWriter.write(str + '\n');
        }
      }
      catch (CertificateEncodingException localCertificateEncodingException)
      {
        throw new IOException(localCertificateEncodingException.getMessage());
      }
    }
  }

  private boolean a()
  {
    return this.a.startsWith("https://");
  }

  private static Certificate[] a(StrictLineReader paramStrictLineReader)
  {
    int i = paramStrictLineReader.readInt();
    Certificate[] arrayOfCertificate;
    if (i == -1)
      arrayOfCertificate = null;
    while (true)
    {
      return arrayOfCertificate;
      try
      {
        CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
        arrayOfCertificate = new Certificate[i];
        for (int j = 0; j < arrayOfCertificate.length; j++)
          arrayOfCertificate[j] = localCertificateFactory.generateCertificate(new ByteArrayInputStream(Base64.decode(paramStrictLineReader.readLine().getBytes("US-ASCII"))));
      }
      catch (CertificateException localCertificateException)
      {
        throw new IOException(localCertificateException.getMessage());
      }
    }
  }

  public final boolean matches(URI paramURI, String paramString, Map paramMap)
  {
    boolean bool1 = this.a.equals(paramURI.toString());
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = this.c.equals(paramString);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = new ResponseHeaders(paramURI, this.d).varyMatches(this.b.toMultimap(false), paramMap);
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
    return bool2;
  }

  public final void writeTo(DiskLruCache.Editor paramEditor)
  {
    int i = 0;
    BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(paramEditor.newOutputStream(0), Util.UTF_8));
    localBufferedWriter.write(this.a + '\n');
    localBufferedWriter.write(this.c + '\n');
    localBufferedWriter.write(Integer.toString(this.b.length()) + '\n');
    for (int j = 0; j < this.b.length(); j++)
      localBufferedWriter.write(this.b.getFieldName(j) + ": " + this.b.getValue(j) + '\n');
    localBufferedWriter.write(this.d.getStatusLine() + '\n');
    localBufferedWriter.write(Integer.toString(this.d.length()) + '\n');
    while (i < this.d.length())
    {
      localBufferedWriter.write(this.d.getFieldName(i) + ": " + this.d.getValue(i) + '\n');
      i++;
    }
    if (a())
    {
      localBufferedWriter.write(10);
      localBufferedWriter.write(this.e + '\n');
      a(localBufferedWriter, this.f);
      a(localBufferedWriter, this.g);
    }
    localBufferedWriter.close();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.HttpResponseCache.Entry
 * JD-Core Version:    0.6.2
 */
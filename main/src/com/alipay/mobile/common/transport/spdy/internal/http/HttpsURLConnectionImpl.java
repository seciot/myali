package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SecureCacheResponse;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class HttpsURLConnectionImpl extends HttpsURLConnection
{
  private final HttpsURLConnectionImpl.HttpUrlConnectionDelegate a;

  public HttpsURLConnectionImpl(URL paramURL, OkHttpClient paramOkHttpClient)
  {
    super(paramURL);
    this.a = new HttpsURLConnectionImpl.HttpUrlConnectionDelegate(this, paramURL, paramOkHttpClient, null);
  }

  private SSLSocket a()
  {
    if ((this.a.httpEngine == null) || (!this.a.httpEngine.connected))
      throw new IllegalStateException("Connection has not yet been established");
    if ((this.a.httpEngine instanceof HttpsEngine))
      return ((HttpsEngine)this.a.httpEngine).getSslSocket();
    return null;
  }

  public final void addRequestProperty(String paramString1, String paramString2)
  {
    this.a.addRequestProperty(paramString1, paramString2);
  }

  public final void connect()
  {
    this.connected = true;
    this.a.connect();
  }

  public final void disconnect()
  {
    this.a.disconnect();
  }

  public final boolean getAllowUserInteraction()
  {
    return this.a.getAllowUserInteraction();
  }

  public final String getCipherSuite()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.getSecureCacheResponse();
    if (localSecureCacheResponse != null)
      return localSecureCacheResponse.getCipherSuite();
    SSLSocket localSSLSocket = a();
    if (localSSLSocket != null)
      return localSSLSocket.getSession().getCipherSuite();
    return null;
  }

  public final int getConnectTimeout()
  {
    return this.a.getConnectTimeout();
  }

  public final Object getContent()
  {
    return this.a.getContent();
  }

  public final Object getContent(Class[] paramArrayOfClass)
  {
    return this.a.getContent(paramArrayOfClass);
  }

  public final String getContentEncoding()
  {
    return this.a.getContentEncoding();
  }

  public final int getContentLength()
  {
    return this.a.getContentLength();
  }

  public final String getContentType()
  {
    return this.a.getContentType();
  }

  public final long getDate()
  {
    return this.a.getDate();
  }

  public final boolean getDefaultUseCaches()
  {
    return this.a.getDefaultUseCaches();
  }

  public final boolean getDoInput()
  {
    return this.a.getDoInput();
  }

  public final boolean getDoOutput()
  {
    return this.a.getDoOutput();
  }

  public final InputStream getErrorStream()
  {
    return this.a.getErrorStream();
  }

  public final long getExpiration()
  {
    return this.a.getExpiration();
  }

  public final String getHeaderField(int paramInt)
  {
    return this.a.getHeaderField(paramInt);
  }

  public final String getHeaderField(String paramString)
  {
    return this.a.getHeaderField(paramString);
  }

  public final long getHeaderFieldDate(String paramString, long paramLong)
  {
    return this.a.getHeaderFieldDate(paramString, paramLong);
  }

  public final int getHeaderFieldInt(String paramString, int paramInt)
  {
    return this.a.getHeaderFieldInt(paramString, paramInt);
  }

  public final String getHeaderFieldKey(int paramInt)
  {
    return this.a.getHeaderFieldKey(paramInt);
  }

  public final Map getHeaderFields()
  {
    return this.a.getHeaderFields();
  }

  public final HostnameVerifier getHostnameVerifier()
  {
    return this.a.client.getHostnameVerifier();
  }

  public final HttpEngine getHttpEngine()
  {
    return this.a.getHttpEngine();
  }

  public final long getIfModifiedSince()
  {
    return this.a.getIfModifiedSince();
  }

  public final InputStream getInputStream()
  {
    return this.a.getInputStream();
  }

  public final boolean getInstanceFollowRedirects()
  {
    return this.a.getInstanceFollowRedirects();
  }

  public final long getLastModified()
  {
    return this.a.getLastModified();
  }

  public final Certificate[] getLocalCertificates()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.getSecureCacheResponse();
    Certificate[] arrayOfCertificate;
    if (localSecureCacheResponse != null)
    {
      List localList = localSecureCacheResponse.getLocalCertificateChain();
      arrayOfCertificate = null;
      if (localList != null)
        arrayOfCertificate = (Certificate[])localList.toArray(new Certificate[localList.size()]);
    }
    SSLSocket localSSLSocket;
    do
    {
      return arrayOfCertificate;
      localSSLSocket = a();
      arrayOfCertificate = null;
    }
    while (localSSLSocket == null);
    return localSSLSocket.getSession().getLocalCertificates();
  }

  public final Principal getLocalPrincipal()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.getSecureCacheResponse();
    if (localSecureCacheResponse != null)
      return localSecureCacheResponse.getLocalPrincipal();
    SSLSocket localSSLSocket = a();
    if (localSSLSocket != null)
      return localSSLSocket.getSession().getLocalPrincipal();
    return null;
  }

  public final OutputStream getOutputStream()
  {
    return this.a.getOutputStream();
  }

  public final Principal getPeerPrincipal()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.getSecureCacheResponse();
    if (localSecureCacheResponse != null)
      return localSecureCacheResponse.getPeerPrincipal();
    SSLSocket localSSLSocket = a();
    if (localSSLSocket != null)
      return localSSLSocket.getSession().getPeerPrincipal();
    return null;
  }

  public final Permission getPermission()
  {
    return this.a.getPermission();
  }

  public final int getReadTimeout()
  {
    return this.a.getReadTimeout();
  }

  public final String getRequestMethod()
  {
    return this.a.getRequestMethod();
  }

  public final Map getRequestProperties()
  {
    return this.a.getRequestProperties();
  }

  public final String getRequestProperty(String paramString)
  {
    return this.a.getRequestProperty(paramString);
  }

  public final int getResponseCode()
  {
    return this.a.getResponseCode();
  }

  public final String getResponseMessage()
  {
    return this.a.getResponseMessage();
  }

  public final SSLSocketFactory getSSLSocketFactory()
  {
    return this.a.client.getSslSocketFactory();
  }

  public final Certificate[] getServerCertificates()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.getSecureCacheResponse();
    Certificate[] arrayOfCertificate;
    if (localSecureCacheResponse != null)
    {
      List localList = localSecureCacheResponse.getServerCertificateChain();
      arrayOfCertificate = null;
      if (localList != null)
        arrayOfCertificate = (Certificate[])localList.toArray(new Certificate[localList.size()]);
    }
    SSLSocket localSSLSocket;
    do
    {
      return arrayOfCertificate;
      localSSLSocket = a();
      arrayOfCertificate = null;
    }
    while (localSSLSocket == null);
    return localSSLSocket.getSession().getPeerCertificates();
  }

  public final URL getURL()
  {
    return this.a.getURL();
  }

  public final boolean getUseCaches()
  {
    return this.a.getUseCaches();
  }

  public final void setAllowUserInteraction(boolean paramBoolean)
  {
    this.a.setAllowUserInteraction(paramBoolean);
  }

  public final void setChunkedStreamingMode(int paramInt)
  {
    this.a.setChunkedStreamingMode(paramInt);
  }

  public final void setConnectTimeout(int paramInt)
  {
    this.a.setConnectTimeout(paramInt);
  }

  public final void setDefaultUseCaches(boolean paramBoolean)
  {
    this.a.setDefaultUseCaches(paramBoolean);
  }

  public final void setDoInput(boolean paramBoolean)
  {
    this.a.setDoInput(paramBoolean);
  }

  public final void setDoOutput(boolean paramBoolean)
  {
    this.a.setDoOutput(paramBoolean);
  }

  public final void setFixedLengthStreamingMode(int paramInt)
  {
    this.a.setFixedLengthStreamingMode(paramInt);
  }

  public final void setHostnameVerifier(HostnameVerifier paramHostnameVerifier)
  {
    this.a.client.setHostnameVerifier(paramHostnameVerifier);
  }

  public final void setIfModifiedSince(long paramLong)
  {
    this.a.setIfModifiedSince(paramLong);
  }

  public final void setInstanceFollowRedirects(boolean paramBoolean)
  {
    this.a.setInstanceFollowRedirects(paramBoolean);
  }

  public final void setReadTimeout(int paramInt)
  {
    this.a.setReadTimeout(paramInt);
  }

  public final void setRequestMethod(String paramString)
  {
    this.a.setRequestMethod(paramString);
  }

  public final void setRequestProperty(String paramString1, String paramString2)
  {
    this.a.setRequestProperty(paramString1, paramString2);
  }

  public final void setSSLSocketFactory(SSLSocketFactory paramSSLSocketFactory)
  {
    this.a.client.setSslSocketFactory(paramSSLSocketFactory);
  }

  public final void setUseCaches(boolean paramBoolean)
  {
    this.a.setUseCaches(paramBoolean);
  }

  public final String toString()
  {
    return this.a.toString();
  }

  public final boolean usingProxy()
  {
    return this.a.usingProxy();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpsURLConnectionImpl
 * JD-Core Version:    0.6.2
 */
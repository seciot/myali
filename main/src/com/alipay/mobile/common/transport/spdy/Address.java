package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.net.Proxy;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class Address
{
  final OkAuthenticator authenticator;
  final HostnameVerifier hostnameVerifier;
  final Proxy proxy;
  final SSLSocketFactory sslSocketFactory;
  final List transports;
  final String uriHost;
  final int uriPort;

  public Address(String paramString, int paramInt, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, OkAuthenticator paramOkAuthenticator, Proxy paramProxy, List paramList)
  {
    if (paramString == null)
      throw new NullPointerException("uriHost == null");
    if (paramInt <= 0)
      throw new IllegalArgumentException("uriPort <= 0: " + paramInt);
    if (paramOkAuthenticator == null)
      throw new IllegalArgumentException("authenticator == null");
    if (paramList == null)
      throw new IllegalArgumentException("transports == null");
    this.proxy = paramProxy;
    this.uriHost = paramString;
    this.uriPort = paramInt;
    this.sslSocketFactory = paramSSLSocketFactory;
    this.hostnameVerifier = paramHostnameVerifier;
    this.authenticator = paramOkAuthenticator;
    this.transports = Util.immutableList(paramList);
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Address;
    boolean bool2 = false;
    if (bool1)
    {
      Address localAddress = (Address)paramObject;
      boolean bool3 = Util.equal(this.proxy, localAddress.proxy);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.uriHost.equals(localAddress.uriHost);
        bool2 = false;
        if (bool4)
        {
          int i = this.uriPort;
          int j = localAddress.uriPort;
          bool2 = false;
          if (i == j)
          {
            boolean bool5 = Util.equal(this.sslSocketFactory, localAddress.sslSocketFactory);
            bool2 = false;
            if (bool5)
            {
              boolean bool6 = Util.equal(this.hostnameVerifier, localAddress.hostnameVerifier);
              bool2 = false;
              if (bool6)
              {
                boolean bool7 = Util.equal(this.authenticator, localAddress.authenticator);
                bool2 = false;
                if (bool7)
                {
                  boolean bool8 = Util.equal(this.transports, localAddress.transports);
                  bool2 = false;
                  if (bool8)
                    bool2 = true;
                }
              }
            }
          }
        }
      }
    }
    return bool2;
  }

  public final OkAuthenticator getAuthenticator()
  {
    return this.authenticator;
  }

  public final HostnameVerifier getHostnameVerifier()
  {
    return this.hostnameVerifier;
  }

  public final Proxy getProxy()
  {
    return this.proxy;
  }

  public final SSLSocketFactory getSslSocketFactory()
  {
    return this.sslSocketFactory;
  }

  public final List getTransports()
  {
    return this.transports;
  }

  public final String getUriHost()
  {
    return this.uriHost;
  }

  public final int getUriPort()
  {
    return this.uriPort;
  }

  public final int hashCode()
  {
    int i = 31 * (31 * (527 + this.uriHost.hashCode()) + this.uriPort);
    int j;
    int m;
    label61: int n;
    if (this.sslSocketFactory != null)
    {
      j = this.sslSocketFactory.hashCode();
      int k = 31 * (j + i);
      if (this.hostnameVerifier == null)
        break label141;
      m = this.hostnameVerifier.hashCode();
      n = 31 * (m + k);
      if (this.authenticator == null)
        break label147;
    }
    label141: label147: for (int i1 = this.authenticator.hashCode(); ; i1 = 0)
    {
      int i2 = 31 * (i1 + n);
      Proxy localProxy = this.proxy;
      int i3 = 0;
      if (localProxy != null)
        i3 = this.proxy.hashCode();
      return 31 * (i2 + i3) + this.transports.hashCode();
      j = 0;
      break;
      m = 0;
      break label61;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Address
 * JD-Core Version:    0.6.2
 */
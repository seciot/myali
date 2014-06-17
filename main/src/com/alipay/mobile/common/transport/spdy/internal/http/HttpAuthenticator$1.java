package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.OkAuthenticator;
import com.alipay.mobile.common.transport.spdy.OkAuthenticator.Challenge;
import com.alipay.mobile.common.transport.spdy.OkAuthenticator.Credential;
import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

final class HttpAuthenticator$1
  implements OkAuthenticator
{
  private static InetAddress a(Proxy paramProxy, URL paramURL)
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT))
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    return InetAddress.getByName(paramURL.getHost());
  }

  public final OkAuthenticator.Credential authenticate(Proxy paramProxy, URL paramURL, List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      OkAuthenticator.Challenge localChallenge = (OkAuthenticator.Challenge)localIterator.next();
      if ("Basic".equalsIgnoreCase(localChallenge.getScheme()))
      {
        PasswordAuthentication localPasswordAuthentication = Authenticator.requestPasswordAuthentication(paramURL.getHost(), a(paramProxy, paramURL), paramURL.getPort(), paramURL.getProtocol(), localChallenge.getRealm(), localChallenge.getScheme(), paramURL, Authenticator.RequestorType.SERVER);
        if (localPasswordAuthentication != null)
          return OkAuthenticator.Credential.basic(localPasswordAuthentication.getUserName(), new String(localPasswordAuthentication.getPassword()));
      }
    }
    return null;
  }

  public final OkAuthenticator.Credential authenticateProxy(Proxy paramProxy, URL paramURL, List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      OkAuthenticator.Challenge localChallenge = (OkAuthenticator.Challenge)localIterator.next();
      if ("Basic".equalsIgnoreCase(localChallenge.getScheme()))
      {
        InetSocketAddress localInetSocketAddress = (InetSocketAddress)paramProxy.address();
        PasswordAuthentication localPasswordAuthentication = Authenticator.requestPasswordAuthentication(localInetSocketAddress.getHostName(), a(paramProxy, paramURL), localInetSocketAddress.getPort(), paramURL.getProtocol(), localChallenge.getRealm(), localChallenge.getScheme(), paramURL, Authenticator.RequestorType.PROXY);
        if (localPasswordAuthentication != null)
          return OkAuthenticator.Credential.basic(localPasswordAuthentication.getUserName(), new String(localPasswordAuthentication.getPassword()));
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpAuthenticator.1
 * JD-Core Version:    0.6.2
 */
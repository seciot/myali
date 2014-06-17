package com.androidquery.net.http;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class EasySSLSocketFactory extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");

  public EasySSLSocketFactory(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    EasyX509TrustManager localEasyX509TrustManager = new EasyX509TrustManager();
    this.sslContext.init(null, new TrustManager[] { localEasyX509TrustManager }, null);
  }

  public Socket createSocket()
  {
    return this.sslContext.getSocketFactory().createSocket();
  }

  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.net.http.EasySSLSocketFactory
 * JD-Core Version:    0.6.2
 */
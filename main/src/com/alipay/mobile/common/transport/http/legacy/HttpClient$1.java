package com.alipay.mobile.common.transport.http.legacy;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

class HttpClient$1
  implements HostnameVerifier
{
  HttpClient$1(HttpClient paramHttpClient)
  {
  }

  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.legacy.HttpClient.1
 * JD-Core Version:    0.6.2
 */
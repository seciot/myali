package com.alipay.mobile.common.transport.http;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

class HttpManager$2
  implements HostnameVerifier
{
  HttpManager$2(HttpManager paramHttpManager)
  {
  }

  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpManager.2
 * JD-Core Version:    0.6.2
 */
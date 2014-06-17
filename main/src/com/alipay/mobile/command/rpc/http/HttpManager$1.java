package com.alipay.mobile.command.rpc.http;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

class HttpManager$1
  implements HostnameVerifier
{
  HttpManager$1(HttpManager paramHttpManager)
  {
  }

  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.HttpManager.1
 * JD-Core Version:    0.6.2
 */
package com.androidquery.net.http;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

public class EasyX509TrustManager
  implements X509TrustManager
{
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
  }

  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
  }

  public X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.net.http.EasyX509TrustManager
 * JD-Core Version:    0.6.2
 */
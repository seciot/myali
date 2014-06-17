package com.alipay.android.app.down;

import com.alipay.android.app.exception.NetErrorException;
import javax.net.ssl.SSLException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class HttpClientUtil
{
  public static HttpEntity a(String paramString)
  {
    try
    {
      HttpGet localHttpGet = new HttpGet(paramString);
      HttpResponse localHttpResponse = new DefaultHttpClient().execute(localHttpGet);
      int i = localHttpResponse.getStatusLine().getStatusCode();
      if (i == 200)
        return localHttpResponse.getEntity();
      NetErrorException localNetErrorException3 = new NetErrorException("ErrorCode:" + i);
      localNetErrorException3.a(1);
      throw localNetErrorException3;
    }
    catch (SSLException localSSLException)
    {
      NetErrorException localNetErrorException2 = new NetErrorException(localSSLException.getClass().getName(), localSSLException);
      localNetErrorException2.a(2);
      throw localNetErrorException2;
    }
    catch (Exception localException)
    {
      NetErrorException localNetErrorException1 = new NetErrorException(localException.getClass().getName(), localException);
      localNetErrorException1.a(1);
      throw localNetErrorException1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.down.HttpClientUtil
 * JD-Core Version:    0.6.2
 */
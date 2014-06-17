package com.alipay.mobile.common.transport.http;

import com.alipay.mobile.common.logging.LogCatLog;
import java.io.IOException;
import java.net.SocketException;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;

public class ZHttpRequestRetryHandler
  implements HttpRequestRetryHandler
{
  static final String TAG = ZHttpRequestRetryHandler.class.getSimpleName();

  public boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    if (paramInt >= 3);
    do
    {
      return false;
      if ((paramIOException instanceof NoHttpResponseException))
      {
        LogCatLog.v(TAG, "exception instanceof NoHttpResponseException");
        return true;
      }
    }
    while (((!(paramIOException instanceof SocketException)) && (!(paramIOException instanceof SSLException))) || (paramIOException.getMessage() == null) || (!paramIOException.getMessage().contains("Broken pipe")));
    LogCatLog.v(TAG, "exception instanceof SocketException:Broken pipe");
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.ZHttpRequestRetryHandler
 * JD-Core Version:    0.6.2
 */
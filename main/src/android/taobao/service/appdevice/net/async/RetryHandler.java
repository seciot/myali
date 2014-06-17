package android.taobao.service.appdevice.net.async;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

public class RetryHandler
  implements HttpRequestRetryHandler
{
  private static HashSet<Class<?>> a = new HashSet();
  private static HashSet<Class<?>> b = new HashSet();
  private final int c;

  static
  {
    a.add(NoHttpResponseException.class);
    a.add(UnknownHostException.class);
    a.add(SocketException.class);
    b.add(InterruptedIOException.class);
    b.add(SSLHandshakeException.class);
  }

  public RetryHandler(int paramInt)
  {
    this.c = paramInt;
  }

  public boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    boolean bool1 = true;
    Boolean localBoolean = (Boolean)paramHttpContext.getAttribute("http.request_sent");
    boolean bool2;
    if ((localBoolean != null) && (localBoolean.booleanValue()))
    {
      bool2 = bool1;
      if ((paramInt > this.c) || (b.contains(paramIOException.getClass())))
        break label116;
      if (!a.contains(paramIOException.getClass()))
        break label87;
    }
    while (true)
    {
      if (!bool1)
        break label122;
      SystemClock.sleep(3000L);
      return bool1;
      bool2 = false;
      break;
      label87: if ((bool2) && (((HttpUriRequest)paramHttpContext.getAttribute("http.request")).getMethod().equals("POST")))
        label116: bool1 = false;
    }
    label122: paramIOException.printStackTrace();
    return bool1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.RetryHandler
 * JD-Core Version:    0.6.2
 */
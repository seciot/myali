package android.taobao.service.appdevice.net.async;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.net.ConnectException;
import java.net.URI;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

public class AsyncHttpRequest
  implements Runnable
{
  private final AbstractHttpClient a;
  private final HttpContext b;
  private final HttpUriRequest c;
  private final AsyncHttpResponseHandler d;
  private boolean e;
  private int f;
  private Context g;

  public AsyncHttpRequest(Context paramContext, AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    this.a = paramAbstractHttpClient;
    this.b = paramHttpContext;
    this.g = paramContext;
    this.c = paramHttpUriRequest;
    this.d = paramAsyncHttpResponseHandler;
    if ((paramAsyncHttpResponseHandler instanceof BinaryHttpResponseHandler))
      this.e = true;
  }

  private void a()
  {
    boolean bool = true;
    Object localObject1 = null;
    HttpRequestRetryHandler localHttpRequestRetryHandler = this.a.getHttpRequestRetryHandler();
    Object localObject2;
    while (bool)
      try
      {
        if (!Thread.currentThread().isInterrupted())
        {
          HttpResponse localHttpResponse = this.a.execute(this.c, this.b);
          Log.i("AsyncHttpRequest", "makeRequest request:[" + this.c.getURI().toString() + "]===response[:" + localHttpResponse.getStatusLine().getStatusCode() + "]");
          if (this.d != null)
            this.d.sendResponseMessage(localHttpResponse);
        }
        return;
      }
      catch (IOException localIOException1)
      {
        Log.e("AsyncHttpRequest", "", localIOException1);
        int j = 1 + this.f;
        this.f = j;
        bool = localHttpRequestRetryHandler.retryRequest(localIOException1, j, this.b);
      }
      catch (NullPointerException localNullPointerException)
      {
        Log.e("AsyncHttpRequest", "", localNullPointerException);
        IOException localIOException2 = new IOException("NPE in HttpClient" + localNullPointerException.getMessage());
        int i = 1 + this.f;
        this.f = i;
        bool = localHttpRequestRetryHandler.retryRequest(localIOException2, i, this.b);
        localObject2 = localIOException2;
      }
    ConnectException localConnectException = new ConnectException();
    localConnectException.initCause(localObject2);
    throw localConnectException;
  }

  public void run()
  {
    try
    {
      if (this.d != null)
        this.d.sendStartMessage();
      if (!NetworkHelper.checkNetWork(this.g))
        this.d.sendFailureMessage(new RuntimeException("network connection error[" + this.c.getURI().toString() + "]"), null);
      while (this.d != null)
      {
        this.d.sendFinishMessage();
        return;
        a();
      }
    }
    catch (IOException localIOException)
    {
      Log.e("AsyncHttpRequest", "[run]", localIOException);
      if (this.d != null)
      {
        this.d.sendFinishMessage();
        if (this.e)
        {
          this.d.sendFailureMessage(localIOException, null);
          return;
        }
        this.d.sendFailureMessage(localIOException, localIOException.getMessage());
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.AsyncHttpRequest
 * JD-Core Version:    0.6.2
 */
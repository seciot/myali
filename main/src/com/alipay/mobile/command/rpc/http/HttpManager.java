package com.alipay.mobile.command.rpc.http;

import com.alipay.mobile.command.model.Request;
import com.alipay.mobile.command.model.Response;
import com.alipay.mobile.command.util.ThreadPools;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadPoolExecutor;
import javax.net.ssl.HttpsURLConnection;

public class HttpManager
{
  private static HttpManager g = new HttpManager();
  private ThreadPoolExecutor a = ThreadPools.applyDefaultThreadPool("httpManager");
  private AndroidHttpClientExt b = AndroidHttpClientExt.newInstance("android");
  private long c;
  private long d;
  private long e;
  private int f;

  private HttpManager()
  {
    HttpsURLConnection.setDefaultHostnameVerifier(new HttpManager.1(this));
  }

  public static HttpManager getInstance()
  {
    return g;
  }

  public void addConnectTime(long paramLong)
  {
    this.d = (paramLong + this.d);
    this.f = (1 + this.f);
  }

  public void addDataSize(long paramLong)
  {
    this.c = (paramLong + this.c);
  }

  public void addSocketTime(long paramLong)
  {
    this.e = (paramLong + this.e);
  }

  public void close()
  {
    if (this.a != null)
    {
      this.a.shutdown();
      this.a = null;
    }
    if (this.b != null)
      this.b.close();
    this.b = null;
  }

  public Future<Response> execute(Request paramRequest, TransportCallback paramTransportCallback)
  {
    Object[] arrayOfObject1 = new Object[1];
    Object[] arrayOfObject2 = new Object[9];
    arrayOfObject2[0] = Integer.valueOf(this.a.getActiveCount());
    arrayOfObject2[1] = Long.valueOf(this.a.getCompletedTaskCount());
    arrayOfObject2[2] = Long.valueOf(this.a.getTaskCount());
    arrayOfObject2[3] = Long.valueOf(getAverageSpeed());
    arrayOfObject2[4] = Long.valueOf(getAverageConnectTime());
    arrayOfObject2[5] = Long.valueOf(this.c);
    arrayOfObject2[6] = Long.valueOf(this.d);
    arrayOfObject2[7] = Long.valueOf(this.e);
    arrayOfObject2[8] = Integer.valueOf(this.f);
    arrayOfObject1[0] = String.format("HttpManager: Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All connect time = %d ms, All socket time = %d ms, All request times = %d times", arrayOfObject2);
    FutureTask localFutureTask = RpcTaskFactory.buildTask(paramRequest, paramTransportCallback);
    this.a.execute(localFutureTask);
    return localFutureTask;
  }

  public long getAverageConnectTime()
  {
    if (this.f == 0)
      return 0L;
    return this.d / this.f;
  }

  public long getAverageSpeed()
  {
    if (this.e == 0L)
      return 0L;
    return 1000L * this.c / this.e >> 10;
  }

  public AndroidHttpClientExt getHttpClient()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.HttpManager
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.common.transport.http;

import android.content.Context;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.logging.PerformanceLog;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.utils.SerialExecutor;
import java.security.Security;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.CallerRunsPolicy;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;

public class HttpManager
{
  public static final String TAG = "HttpManager";
  private static final ThreadFactory i = new HttpManager.3();
  private ThreadPoolExecutor a;
  private SerialExecutor b;
  private AndroidHttpClient c;
  private AndroidSpdyHttpClient d;
  private long e;
  private long f;
  private long g;
  private int h;
  Context mContext;

  public HttpManager(Context paramContext)
  {
    this.mContext = paramContext;
    Security.setProperty("networkaddress.cache.ttl", String.valueOf(-1));
    this.c = AndroidHttpClient.newInstance("android");
    this.d = AndroidSpdyHttpClient.newInstance(this.mContext, "android", this.c);
    HttpsURLConnection.setDefaultHostnameVerifier(new HttpManager.2(this));
    this.b = new SerialExecutor("Http");
    this.a = new ThreadPoolExecutor(5, 10, 10L, TimeUnit.SECONDS, new ArrayBlockingQueue(128), i, new ThreadPoolExecutor.CallerRunsPolicy());
  }

  public void addConnectTime(long paramLong)
  {
    this.f = (paramLong + this.f);
    this.h = (1 + this.h);
  }

  public void addDataSize(long paramLong)
  {
    this.e = (paramLong + this.e);
  }

  public void addSocketTime(long paramLong)
  {
    this.g = (paramLong + this.g);
  }

  public void close()
  {
    if (this.b != null)
    {
      this.b.stop();
      this.b = null;
    }
    if (this.a != null)
    {
      this.a.shutdown();
      this.a = null;
    }
    if (this.c != null)
      this.c.close();
    this.c = null;
  }

  public String dumpPerf()
  {
    String str = "HttpManager" + hashCode() + ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All connect time = %d ms, All socket time = %d ms, All request times = %d times";
    Object[] arrayOfObject = new Object[9];
    arrayOfObject[0] = Integer.valueOf(this.a.getActiveCount());
    arrayOfObject[1] = Long.valueOf(this.a.getCompletedTaskCount());
    arrayOfObject[2] = Long.valueOf(this.a.getTaskCount());
    arrayOfObject[3] = Long.valueOf(getAverageSpeed());
    arrayOfObject[4] = Long.valueOf(getAverageConnectTime());
    arrayOfObject[5] = Long.valueOf(this.e);
    arrayOfObject[6] = Long.valueOf(this.f);
    arrayOfObject[7] = Long.valueOf(this.g);
    arrayOfObject[8] = Integer.valueOf(this.h);
    return String.format(str, arrayOfObject);
  }

  public Future execute(Request paramRequest)
  {
    if (!(paramRequest instanceof HttpUrlRequest))
      throw new RuntimeException("request send error.");
    if (AppInfo.getInstance().isDebuggable())
      dumpPerf();
    HttpUrlRequest localHttpUrlRequest = (HttpUrlRequest)paramRequest;
    PerformanceLog.getInstance().log("HttpManager schedule request: " + localHttpUrlRequest.getUrl());
    HttpWorker localHttpWorker = generateWorker(localHttpUrlRequest);
    HttpManager.1 local1 = new HttpManager.1(this, localHttpWorker, localHttpWorker);
    this.a.execute(local1);
    return local1;
  }

  protected HttpWorker generateWorker(HttpUrlRequest paramHttpUrlRequest)
  {
    return new HttpWorker(this, paramHttpUrlRequest);
  }

  public long getAverageConnectTime()
  {
    if (this.h == 0)
      return 0L;
    return this.f / this.h;
  }

  public long getAverageSpeed()
  {
    if (this.g == 0L)
      return 0L;
    return 1000L * this.e / this.g >> 10;
  }

  public AndroidHttpClient getHttpClient()
  {
    return this.c;
  }

  public AndroidSpdyHttpClient getsHttpClient()
  {
    return this.d;
  }

  public void setsHttpClient(AndroidSpdyHttpClient paramAndroidSpdyHttpClient)
  {
    this.d = paramAndroidSpdyHttpClient;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpManager
 * JD-Core Version:    0.6.2
 */
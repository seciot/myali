package com.alipay.pushsdk.b;

import android.content.Context;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;

public final class e
{
  private Context a;
  private ThreadPoolExecutor b;

  public e(Context paramContext)
  {
    this.a = paramContext;
    HttpsURLConnection.setDefaultHostnameVerifier(new f(this));
    this.b = new ThreadPoolExecutor(3, 4, 5L, TimeUnit.SECONDS, new ArrayBlockingQueue(128));
  }

  public final void a(BundlesManager paramb)
  {
    this.b.execute(new g(this, paramb));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.e
 * JD-Core Version:    0.6.2
 */
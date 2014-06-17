package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.cache.disk.CacheException;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;
import java.util.concurrent.Future;

public class CachedHttpTransportServiceImpl extends HttpTransportSevice
{
  private HttpTransportSevice a;
  private CacheManagerService b;
  private AlipayApplication c;

  public CachedHttpTransportServiceImpl(HttpTransportSevice paramHttpTransportSevice)
  {
    this.a = paramHttpTransportSevice;
    this.c = AlipayApplication.getInstance();
    this.b = ((CacheManagerService)this.c.getMicroApplicationContext().findServiceByInterface(CacheManagerService.class.getName()));
    this.b.open();
  }

  public Future<Response> execute(Request paramRequest)
  {
    TransportCallback localTransportCallback = paramRequest.getCallback();
    if (localTransportCallback == null)
      throw new RuntimeException("must specify a handler for reponse to callback.");
    HttpUrlRequest localHttpUrlRequest = (HttpUrlRequest)paramRequest;
    try
    {
      String str = localHttpUrlRequest.getKey();
      Object localObject = this.b.getValue(null, str);
      if (localObject != null)
      {
        Response localResponse = (Response)localObject;
        if (localResponse != null)
        {
          localTransportCallback.onPostExecute(localHttpUrlRequest, localResponse);
          return null;
        }
      }
    }
    catch (CacheException localCacheException)
    {
      new StringBuilder().append(localCacheException).toString();
    }
    return this.a.execute(paramRequest);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.CachedHttpTransportServiceImpl
 * JD-Core Version:    0.6.2
 */
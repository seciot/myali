package android.taobao.service.appdevice.net.async;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import org.apache.http.Header;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

public class AsyncHttpClient extends AbsHttpClient
{
  private ThreadPoolExecutor a = (ThreadPoolExecutor)Executors.newCachedThreadPool();
  private final Map<Context, List<WeakReference<Future<?>>>> b = new WeakHashMap();

  public void cancelRequests(Context paramContext, boolean paramBoolean)
  {
    List localList = (List)this.b.get(paramContext);
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        Future localFuture = (Future)((WeakReference)localIterator.next()).get();
        if (localFuture != null)
          localFuture.cancel(paramBoolean);
      }
    }
    this.b.remove(paramContext);
  }

  public void get(Context paramContext, String paramString, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    get(paramContext, paramString, null, paramAsyncHttpResponseHandler);
  }

  public void get(Context paramContext, String paramString, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    get(paramContext, paramString, null, paramRequestParams, paramAsyncHttpResponseHandler);
  }

  public void get(Context paramContext, String paramString, Header[] paramArrayOfHeader, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    HttpGet localHttpGet = new HttpGet(getUrlWithQueryString(paramString, paramRequestParams));
    if (paramArrayOfHeader != null)
      localHttpGet.setHeaders(paramArrayOfHeader);
    DefaultHttpClient localDefaultHttpClient = getHttpClient();
    HttpContext localHttpContext = getHttpContext();
    Future localFuture = this.a.submit(new AsyncHttpRequest(paramContext, localDefaultHttpClient, localHttpContext, localHttpGet, paramAsyncHttpResponseHandler));
    if (paramContext != null)
    {
      Object localObject = (List)this.b.get(paramContext);
      if (localObject == null)
      {
        localObject = new LinkedList();
        this.b.put(paramContext, localObject);
      }
      ((List)localObject).add(new WeakReference(localFuture));
    }
  }

  public void setThreadPool(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    this.a = paramThreadPoolExecutor;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.AsyncHttpClient
 * JD-Core Version:    0.6.2
 */
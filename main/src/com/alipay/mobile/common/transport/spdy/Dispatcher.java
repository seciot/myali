package com.alipay.mobile.common.transport.spdy;

import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class Dispatcher
{
  private final ThreadPoolExecutor a = new ThreadPoolExecutor(8, 8, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final Map b = new LinkedHashMap();

  public final void cancel(Object paramObject)
  {
    try
    {
      List localList = (List)this.b.remove(paramObject);
      if (localList == null);
      while (true)
      {
        return;
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          Job localJob = (Job)localIterator.next();
          this.a.remove(localJob);
        }
      }
    }
    finally
    {
    }
  }

  public final void enqueue(HttpURLConnection paramHttpURLConnection, Request paramRequest, Response.Receiver paramReceiver)
  {
    try
    {
      Job localJob = new Job(this, paramHttpURLConnection, paramRequest, paramReceiver);
      Object localObject2 = (List)this.b.get(paramRequest.tag());
      if (localObject2 == null)
      {
        localObject2 = new ArrayList(2);
        this.b.put(paramRequest.tag(), localObject2);
      }
      ((List)localObject2).add(localJob);
      this.a.execute(localJob);
      return;
    }
    finally
    {
    }
  }

  final void finished(Job paramJob)
  {
    try
    {
      List localList = (List)this.b.get(paramJob.request.tag());
      if (localList != null)
        localList.remove(paramJob);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Dispatcher
 * JD-Core Version:    0.6.2
 */
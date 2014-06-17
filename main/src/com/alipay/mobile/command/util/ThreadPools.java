package com.alipay.mobile.command.util;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.AbortPolicy;
import java.util.concurrent.TimeUnit;

public final class ThreadPools
{
  private static final RejectedExecutionHandler a = new ThreadPoolExecutor.AbortPolicy();
  private static final Map<String, ThreadPoolExecutor> b = new ConcurrentHashMap();
  private static final Map<String, ScheduledThreadPoolExecutor> c = new ConcurrentHashMap();

  public static ThreadPoolExecutor applyDefaultThreadPool(String paramString)
  {
    return applyThreadPool(paramString, 5, 5, 2000, a);
  }

  public static ThreadPoolExecutor applyThreadPool(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return applyThreadPool(paramString, paramInt1, paramInt2, paramInt3, a);
  }

  public static ThreadPoolExecutor applyThreadPool(String paramString, int paramInt1, int paramInt2, int paramInt3, RejectedExecutionHandler paramRejectedExecutionHandler)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("线程池名称不允许为空");
    purge();
    String str = paramString.trim();
    if ((ThreadPoolExecutor)b.get(str) == null)
    {
      if (paramInt3 != 0)
        break label122;
      b.put(str, new ThreadPoolExecutor(paramInt1, paramInt2, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new NamedThreadFactory(str + "-pool"), paramRejectedExecutionHandler));
    }
    while (true)
    {
      return (ThreadPoolExecutor)b.get(str);
      label122: b.put(str, new ThreadPoolExecutor(paramInt1, paramInt2, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(paramInt3), new NamedThreadFactory(str + "-pool"), paramRejectedExecutionHandler));
    }
  }

  public static void purge()
  {
    synchronized (b)
    {
      Iterator localIterator1 = b.keySet().iterator();
      while (localIterator1.hasNext())
      {
        String str2 = (String)localIterator1.next();
        if (((ThreadPoolExecutor)b.get(str2)).isShutdown())
          b.remove(str2);
      }
    }
    synchronized (c)
    {
      Iterator localIterator2 = c.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str1 = (String)localIterator2.next();
        if (((ThreadPoolExecutor)c.get(str1)).isShutdown())
          c.remove(str1);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.ThreadPools
 * JD-Core Version:    0.6.2
 */
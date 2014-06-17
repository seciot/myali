package com.alipay.mobile.command.manager;

import com.alipay.mobile.command.listener.NotifyListener;
import com.alipay.mobile.command.util.ThreadPools;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;

public class ListenerManager
{
  private static Map<String, NotifyListener> a = new ConcurrentHashMap();
  private static List<NotifyListener> b = new ArrayList();
  private static ExecutorService c = Executors.newSingleThreadExecutor();
  private static BlockingQueue<c> d = new LinkedBlockingQueue();

  public static void loop()
  {
    while (true)
      try
      {
        c localc = (c)d.take();
        Iterator localIterator = b.iterator();
        if (localIterator.hasNext())
        {
          NotifyListener localNotifyListener = (NotifyListener)localIterator.next();
          ThreadPools.applyDefaultThreadPool("listener_triger").execute(new a(localNotifyListener, localc));
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        new Object[] { "exe message interrupt." };
      }
  }

  public static <T> void postMessage(String paramString, T paramT)
  {
    c localc = new c(paramString, paramT);
    d.add(localc);
  }

  public static void registerListener(NotifyListener paramNotifyListener)
  {
    if (paramNotifyListener != null);
    try
    {
      if (a.put(paramNotifyListener.getClass().getName(), paramNotifyListener) == null)
      {
        b = new ArrayList(a.values());
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = "success Register Listener :";
        arrayOfObject[1] = paramNotifyListener.desrc();
        Collections.sort(b);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void unRegisterListener(NotifyListener paramNotifyListener)
  {
    if (paramNotifyListener != null);
    try
    {
      if (a.containsKey(paramNotifyListener.getClass().getName()))
      {
        a.remove(paramNotifyListener.getClass().getName());
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = "success unRegister Listener :";
        arrayOfObject[1] = paramNotifyListener.desrc();
        ArrayList localArrayList = new ArrayList(a.values());
        b = localArrayList;
        Collections.sort(localArrayList);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.manager.ListenerManager
 * JD-Core Version:    0.6.2
 */
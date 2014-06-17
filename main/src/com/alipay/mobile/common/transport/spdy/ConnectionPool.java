package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Platform;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ConnectionPool
{
  private static final ConnectionPool a = new ConnectionPool(5, l);
  private final int b;
  private final long c;
  private final LinkedList d = new LinkedList();
  private final ExecutorService e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.daemonThreadFactory("OkHttp ConnectionPool"));
  private final Callable f = new ConnectionPool.1(this);

  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    if (str2 != null);
    for (long l = Long.parseLong(str2); (str1 != null) && (!Boolean.parseBoolean(str1)); l = 300000L)
    {
      a = new ConnectionPool(0, l);
      return;
    }
    if (str3 != null)
    {
      a = new ConnectionPool(Integer.parseInt(str3), l);
      return;
    }
  }

  public ConnectionPool(int paramInt, long paramLong)
  {
    this.b = paramInt;
    this.c = (1000L * (paramLong * 1000L));
  }

  public static ConnectionPool getDefault()
  {
    return a;
  }

  public void evictAll()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(this.d);
      this.d.clear();
      Iterator localIterator = localArrayList.iterator();
      if (localIterator.hasNext())
        Util.closeQuietly((Connection)localIterator.next());
    }
    finally
    {
    }
  }

  public Connection get(Address paramAddress)
  {
    while (true)
    {
      try
      {
        ListIterator localListIterator = this.d.listIterator(this.d.size());
        if (localListIterator.hasPrevious())
        {
          localConnection = (Connection)localListIterator.previous();
          if ((!localConnection.getRoute().getAddress().equals(paramAddress)) || (!localConnection.isAlive()) || (System.nanoTime() - localConnection.getIdleStartTimeNs() >= this.c))
            continue;
          localListIterator.remove();
          boolean bool = localConnection.isSpdy();
          if (!bool);
          try
          {
            Platform.get().tagSocket(localConnection.getSocket());
            if ((localConnection != null) && (localConnection.isSpdy()))
              this.d.addFirst(localConnection);
            this.e.submit(this.f);
            return localConnection;
          }
          catch (SocketException localSocketException)
          {
            Util.closeQuietly(localConnection);
            Platform.get().logW("Unable to tagSocket(): " + localSocketException);
          }
          continue;
        }
      }
      finally
      {
      }
      Connection localConnection = null;
    }
  }

  public int getConnectionCount()
  {
    try
    {
      int i = this.d.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  List getConnections()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 89	com/alipay/mobile/common/transport/spdy/ConnectionPool:e	Ljava/util/concurrent/ExecutorService;
    //   4: new 241	com/alipay/mobile/common/transport/spdy/ConnectionPool$2
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 242	com/alipay/mobile/common/transport/spdy/ConnectionPool$2:<init>	(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)V
    //   12: invokeinterface 245 2 0
    //   17: invokeinterface 249 1 0
    //   22: pop
    //   23: aload_0
    //   24: monitorenter
    //   25: new 113	java/util/ArrayList
    //   28: dup
    //   29: aload_0
    //   30: getfield 63	com/alipay/mobile/common/transport/spdy/ConnectionPool:d	Ljava/util/LinkedList;
    //   33: invokespecial 116	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   36: astore_3
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_3
    //   40: areturn
    //   41: astore_1
    //   42: new 251	java/lang/AssertionError
    //   45: dup
    //   46: invokespecial 252	java/lang/AssertionError:<init>	()V
    //   49: athrow
    //   50: astore 4
    //   52: aload_0
    //   53: monitorexit
    //   54: aload 4
    //   56: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	23	41	java/lang/Exception
    //   25	39	50	finally
  }

  public int getHttpConnectionCount()
  {
    int i = 0;
    while (true)
    {
      try
      {
        Iterator localIterator = this.d.iterator();
        if (localIterator.hasNext())
        {
          boolean bool = ((Connection)localIterator.next()).isSpdy();
          if (bool)
            break label60;
          j = i + 1;
          i = j;
          continue;
        }
        return i;
      }
      finally
      {
      }
      label60: int j = i;
    }
  }

  public int getSpdyConnectionCount()
  {
    int i = 0;
    while (true)
    {
      try
      {
        Iterator localIterator = this.d.iterator();
        if (localIterator.hasNext())
        {
          boolean bool = ((Connection)localIterator.next()).isSpdy();
          if (!bool)
            break label60;
          j = i + 1;
          i = j;
          continue;
        }
        return i;
      }
      finally
      {
      }
      label60: int j = i;
    }
  }

  public void maybeShare(Connection paramConnection)
  {
    this.e.submit(this.f);
    if (!paramConnection.isSpdy());
    while (!paramConnection.isAlive())
      return;
    try
    {
      this.d.addFirst(paramConnection);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public void recycle(Connection paramConnection)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 193	com/alipay/mobile/common/transport/spdy/Connection:isSpdy	()Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_1
    //   9: invokevirtual 180	com/alipay/mobile/common/transport/spdy/Connection:isAlive	()Z
    //   12: ifne +8 -> 20
    //   15: aload_1
    //   16: invokestatic 141	com/alipay/mobile/common/transport/spdy/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   19: return
    //   20: invokestatic 198	com/alipay/mobile/common/transport/spdy/internal/Platform:get	()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;
    //   23: aload_1
    //   24: invokevirtual 202	com/alipay/mobile/common/transport/spdy/Connection:getSocket	()Ljava/net/Socket;
    //   27: invokevirtual 261	com/alipay/mobile/common/transport/spdy/internal/Platform:untagSocket	(Ljava/net/Socket;)V
    //   30: aload_0
    //   31: monitorenter
    //   32: aload_0
    //   33: getfield 63	com/alipay/mobile/common/transport/spdy/ConnectionPool:d	Ljava/util/LinkedList;
    //   36: aload_1
    //   37: invokevirtual 210	java/util/LinkedList:addFirst	(Ljava/lang/Object;)V
    //   40: aload_1
    //   41: invokevirtual 264	com/alipay/mobile/common/transport/spdy/Connection:resetIdleStartTime	()V
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_0
    //   47: getfield 89	com/alipay/mobile/common/transport/spdy/ConnectionPool:e	Ljava/util/concurrent/ExecutorService;
    //   50: aload_0
    //   51: getfield 96	com/alipay/mobile/common/transport/spdy/ConnectionPool:f	Ljava/util/concurrent/Callable;
    //   54: invokeinterface 216 2 0
    //   59: pop
    //   60: return
    //   61: astore_2
    //   62: invokestatic 198	com/alipay/mobile/common/transport/spdy/internal/Platform:get	()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;
    //   65: new 218	java/lang/StringBuilder
    //   68: dup
    //   69: ldc_w 266
    //   72: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload_2
    //   76: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 231	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: invokevirtual 234	com/alipay/mobile/common/transport/spdy/internal/Platform:logW	(Ljava/lang/String;)V
    //   85: aload_1
    //   86: invokestatic 141	com/alipay/mobile/common/transport/spdy/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   89: return
    //   90: astore_3
    //   91: aload_0
    //   92: monitorexit
    //   93: aload_3
    //   94: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   20	30	61	java/net/SocketException
    //   32	46	90	finally
  }

  public void stopAllPingTimer()
  {
    if ((this.d == null) || (this.d.isEmpty()))
      return;
    try
    {
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        Connection localConnection = (Connection)localIterator.next();
        if (localConnection.getSpdyConnection() != null)
          localConnection.getSpdyConnection().closePingTask();
      }
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.ConnectionPool
 * JD-Core Version:    0.6.2
 */
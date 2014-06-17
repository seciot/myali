package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import com.alipay.mobile.common.transport.spdy.mwallet.SpdyStrategy;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class SpdyConnection
  implements Closeable
{
  private static final ExecutorService a;
  private final IncomingStreamHandler b;
  private final FrameReader c;
  final boolean client;
  private final FrameWriter d;
  private final Map e = new HashMap();
  private final String f;
  private int g;
  private int h;
  private boolean i;
  private long j = System.nanoTime();
  private Map k;
  private int l;
  private Timer m = new Timer();
  private int n = 0;
  private boolean o = false;
  private long p = System.currentTimeMillis();
  Settings settings;
  final Variant variant;

  static
  {
    if (!SpdyConnection.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      a = new ThreadPoolExecutor(0, 2147483647, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.daemonThreadFactory("OkHttp SpdyConnection"));
      return;
    }
  }

  private SpdyConnection(SpdyConnection.Builder paramBuilder)
  {
    this.variant = SpdyConnection.Builder.access$000(paramBuilder);
    this.client = SpdyConnection.Builder.access$100(paramBuilder);
    this.b = SpdyConnection.Builder.access$200(paramBuilder);
    this.c = this.variant.newReader(SpdyConnection.Builder.access$300(paramBuilder), this.client);
    this.d = this.variant.newWriter(SpdyConnection.Builder.access$400(paramBuilder), this.client);
    int i2;
    if (SpdyConnection.Builder.access$100(paramBuilder))
    {
      i2 = i1;
      this.h = i2;
      if (!SpdyConnection.Builder.access$100(paramBuilder))
        break label200;
    }
    while (true)
    {
      this.l = i1;
      this.f = SpdyConnection.Builder.access$500(paramBuilder);
      a();
      new Thread(new SpdyConnection.Reader(this, null), "Spdy Reader " + this.f).start();
      return;
      i2 = 2;
      break;
      label200: i1 = 2;
    }
  }

  private SpdyStream a(int paramInt)
  {
    try
    {
      SpdyStream localSpdyStream = (SpdyStream)this.e.get(Integer.valueOf(paramInt));
      return localSpdyStream;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a()
  {
    while (true)
    {
      try
      {
        if (this.o != true)
        {
          int i1 = SpdyStrategy.DEFAULT_IDLE_PING_MAX_TIMES;
          if (i1 > 0);
        }
        else
        {
          return;
        }
        this.o = true;
        if (SpdyStrategy.DEFAULT_PING_INTERVAL <= 0L)
        {
          l1 = 7000L;
          Long localLong = Long.valueOf(l1);
          this.m.schedule(new SpdyConnection.PingTimerTask(this), 3L * localLong.longValue(), localLong.longValue());
          continue;
        }
      }
      finally
      {
      }
      long l1 = SpdyStrategy.DEFAULT_PING_INTERVAL;
    }
  }

  // ERROR //
  private void a(ErrorCode paramErrorCode1, ErrorCode paramErrorCode2)
  {
    // Byte code:
    //   0: getstatic 48	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:$assertionsDisabled	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 242	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 244	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 245	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 249	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:shutdown	(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    //   26: aconst_null
    //   27: astore 4
    //   29: aload_0
    //   30: monitorenter
    //   31: aload_0
    //   32: getfield 84	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:e	Ljava/util/Map;
    //   35: invokeinterface 252 1 0
    //   40: ifne +270 -> 310
    //   43: aload_0
    //   44: getfield 84	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:e	Ljava/util/Map;
    //   47: invokeinterface 256 1 0
    //   52: aload_0
    //   53: getfield 84	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:e	Ljava/util/Map;
    //   56: invokeinterface 260 1 0
    //   61: anewarray 206	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream
    //   64: invokeinterface 266 2 0
    //   69: checkcast 268	[Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    //   72: astore 18
    //   74: aload_0
    //   75: getfield 84	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:e	Ljava/util/Map;
    //   78: invokeinterface 271 1 0
    //   83: aload_0
    //   84: iconst_0
    //   85: invokespecial 274	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:a	(Z)V
    //   88: aload 18
    //   90: astore 6
    //   92: aload_0
    //   93: getfield 276	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:k	Ljava/util/Map;
    //   96: ifnull +208 -> 304
    //   99: aload_0
    //   100: getfield 276	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:k	Ljava/util/Map;
    //   103: invokeinterface 256 1 0
    //   108: aload_0
    //   109: getfield 276	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:k	Ljava/util/Map;
    //   112: invokeinterface 260 1 0
    //   117: anewarray 278	com/alipay/mobile/common/transport/spdy/internal/spdy/Ping
    //   120: invokeinterface 266 2 0
    //   125: checkcast 280	[Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;
    //   128: astore 17
    //   130: aload_0
    //   131: aconst_null
    //   132: putfield 276	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:k	Ljava/util/Map;
    //   135: aload 17
    //   137: astore 7
    //   139: aload_0
    //   140: monitorexit
    //   141: aload 6
    //   143: ifnull +73 -> 216
    //   146: aload 6
    //   148: arraylength
    //   149: istore 12
    //   151: iconst_0
    //   152: istore 13
    //   154: aload 4
    //   156: astore 14
    //   158: iload 13
    //   160: iload 12
    //   162: if_icmpge +50 -> 212
    //   165: aload 6
    //   167: iload 13
    //   169: aaload
    //   170: astore 15
    //   172: aload 15
    //   174: aload_2
    //   175: invokevirtual 283	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream:close	(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    //   178: iinc 13 1
    //   181: goto -23 -> 158
    //   184: astore_3
    //   185: aload_3
    //   186: astore 4
    //   188: goto -159 -> 29
    //   191: astore 5
    //   193: aload_0
    //   194: monitorexit
    //   195: aload 5
    //   197: athrow
    //   198: astore 16
    //   200: aload 14
    //   202: ifnull -24 -> 178
    //   205: aload 16
    //   207: astore 14
    //   209: goto -31 -> 178
    //   212: aload 14
    //   214: astore 4
    //   216: aload 7
    //   218: ifnull +32 -> 250
    //   221: aload 7
    //   223: arraylength
    //   224: istore 10
    //   226: iconst_0
    //   227: istore 11
    //   229: iload 11
    //   231: iload 10
    //   233: if_icmpge +17 -> 250
    //   236: aload 7
    //   238: iload 11
    //   240: aaload
    //   241: invokevirtual 286	com/alipay/mobile/common/transport/spdy/internal/spdy/Ping:cancel	()V
    //   244: iinc 11 1
    //   247: goto -18 -> 229
    //   250: aload_0
    //   251: getfield 138	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:c	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;
    //   254: invokeinterface 290 1 0
    //   259: aload_0
    //   260: getfield 148	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:d	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;
    //   263: invokeinterface 293 1 0
    //   268: aload 4
    //   270: astore 9
    //   272: aload 9
    //   274: ifnull +29 -> 303
    //   277: aload 9
    //   279: athrow
    //   280: astore 8
    //   282: aload 8
    //   284: astore 4
    //   286: goto -27 -> 259
    //   289: astore 9
    //   291: aload 4
    //   293: ifnull -21 -> 272
    //   296: aload 4
    //   298: astore 9
    //   300: goto -28 -> 272
    //   303: return
    //   304: aconst_null
    //   305: astore 7
    //   307: goto -168 -> 139
    //   310: aconst_null
    //   311: astore 6
    //   313: goto -221 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   21	26	184	java/io/IOException
    //   31	88	191	finally
    //   92	135	191	finally
    //   139	141	191	finally
    //   172	178	198	java/io/IOException
    //   250	259	280	java/io/IOException
    //   259	268	289	java/io/IOException
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      for (long l1 = System.nanoTime(); ; l1 = 9223372036854775807L)
      {
        this.j = l1;
        return;
      }
    }
    finally
    {
    }
  }

  private void a(boolean paramBoolean, int paramInt1, int paramInt2, Ping paramPing)
  {
    FrameWriter localFrameWriter = this.d;
    if (paramPing != null);
    try
    {
      paramPing.send();
      this.d.ping(paramBoolean, paramInt1, paramInt2);
      return;
    }
    finally
    {
    }
  }

  private Ping b(int paramInt)
  {
    try
    {
      if (this.k != null)
      {
        localPing = (Ping)this.k.remove(Integer.valueOf(paramInt));
        return localPing;
      }
      Ping localPing = null;
    }
    finally
    {
    }
  }

  private void b()
  {
    try
    {
      this.m.cancel();
      this.m = null;
      this.o = false;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void close()
  {
    a(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
  }

  public final void closePingTask()
  {
    try
    {
      if (this.o)
      {
        Timer localTimer = this.m;
        if (localTimer != null)
          break label21;
      }
      while (true)
      {
        return;
        label21: b();
      }
    }
    finally
    {
    }
  }

  public final void flush()
  {
    this.d.flush();
  }

  public final long getIdleStartTimeNs()
  {
    try
    {
      long l1 = this.j;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean isIdle()
  {
    try
    {
      long l1 = this.j;
      if (l1 != 9223372036854775807L)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final SpdyStream newStream(List paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool1 = true;
    boolean bool2;
    if (!paramBoolean1)
    {
      bool2 = bool1;
      if (paramBoolean2)
        break label65;
    }
    while (true)
    {
      synchronized (this.d)
      {
        try
        {
          if (!this.i)
            break label71;
          throw new IOException("shutdown");
        }
        finally
        {
        }
      }
      bool2 = false;
      break;
      label65: bool1 = false;
    }
    label71: int i1 = this.h;
    this.h = (2 + this.h);
    SpdyStream localSpdyStream = new SpdyStream(i1, this, bool2, bool1, 0, paramList, this.settings);
    if (localSpdyStream.isOpen())
    {
      this.e.put(Integer.valueOf(i1), localSpdyStream);
      a(false);
      setLastStreamTime();
      resetPingTimes();
    }
    this.d.synStream(bool2, bool1, i1, 0, 0, 0, paramList);
    return localSpdyStream;
  }

  public final void noop()
  {
    this.d.noop();
  }

  public final int openStreamCount()
  {
    try
    {
      int i1 = this.e.size();
      return i1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Ping ping()
  {
    Ping localPing = new Ping();
    try
    {
      if (this.i)
        throw new IOException("shutdown");
    }
    finally
    {
    }
    int i1 = this.l;
    this.l = (2 + this.l);
    if (this.k == null)
      this.k = new HashMap();
    this.k.put(Integer.valueOf(i1), localPing);
    a(false, i1, 1330343787, localPing);
    return localPing;
  }

  public final void readConnectionHeader()
  {
    this.c.readConnectionHeader();
  }

  final SpdyStream removeStream(int paramInt)
  {
    try
    {
      SpdyStream localSpdyStream = (SpdyStream)this.e.remove(Integer.valueOf(paramInt));
      if ((localSpdyStream != null) && (this.e.isEmpty()))
        a(true);
      return localSpdyStream;
    }
    finally
    {
    }
  }

  public final void resetPingTimes()
  {
    this.n = 0;
    if ((this.o == true) || (this.m != null) || (SpdyStrategy.DEFAULT_IDLE_PING_MAX_TIMES <= 0))
      return;
    this.m = new Timer();
    this.o = true;
    if (SpdyStrategy.DEFAULT_PING_INTERVAL <= 0L);
    for (long l1 = 7000L; ; l1 = SpdyStrategy.DEFAULT_PING_INTERVAL)
    {
      Long localLong = Long.valueOf(l1);
      this.m.schedule(new SpdyConnection.PingTimerTask(this), localLong.longValue(), localLong.longValue());
      return;
    }
  }

  public final void sendConnectionHeader()
  {
    this.d.connectionHeader();
    this.d.settings(new Settings());
  }

  public final void setLastStreamTime()
  {
    this.p = System.currentTimeMillis();
  }

  public final void shutdown(ErrorCode paramErrorCode)
  {
    synchronized (this.d)
    {
    }
    try
    {
      if (this.i)
        return;
      this.i = true;
      int i1 = this.g;
      this.d.goAway(i1, paramErrorCode);
      return;
      localObject1 = finally;
      throw localObject1;
    }
    finally
    {
    }
  }

  public final void writeData(int paramInt1, boolean paramBoolean, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    this.d.data(paramBoolean, paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }

  final void writeSynReply(int paramInt, boolean paramBoolean, List paramList)
  {
    this.d.synReply(paramBoolean, paramInt, paramList);
  }

  final void writeSynReset(int paramInt, ErrorCode paramErrorCode)
  {
    this.d.rstStream(paramInt, paramErrorCode);
  }

  final void writeSynResetLater(int paramInt, ErrorCode paramErrorCode)
  {
    ExecutorService localExecutorService = a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.f;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    localExecutorService.submit(new SpdyConnection.1(this, "OkHttp SPDY Writer %s stream %d", arrayOfObject, paramInt, paramErrorCode));
  }

  final void writeWindowUpdate(int paramInt1, int paramInt2)
  {
    this.d.windowUpdate(paramInt1, paramInt2);
  }

  final void writeWindowUpdateLater(int paramInt1, int paramInt2)
  {
    ExecutorService localExecutorService = a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.f;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    localExecutorService.submit(new SpdyConnection.2(this, "OkHttp SPDY Writer %s stream %d", arrayOfObject, paramInt1, paramInt2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection
 * JD-Core Version:    0.6.2
 */
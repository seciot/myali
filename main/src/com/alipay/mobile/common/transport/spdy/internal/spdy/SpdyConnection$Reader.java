package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;

class SpdyConnection$Reader
  implements FrameReader.Handler, Runnable
{
  private SpdyConnection$Reader(SpdyConnection paramSpdyConnection)
  {
  }

  public void data(boolean paramBoolean, int paramInt1, InputStream paramInputStream, int paramInt2)
  {
    SpdyStream localSpdyStream = SpdyConnection.access$1400(this.this$0, paramInt1);
    if (localSpdyStream == null)
    {
      this.this$0.writeSynResetLater(paramInt1, ErrorCode.INVALID_STREAM);
      Util.skipByReading(paramInputStream, paramInt2);
    }
    do
    {
      return;
      localSpdyStream.receiveData(paramInputStream, paramInt2);
    }
    while (!paramBoolean);
    localSpdyStream.receiveFin();
  }

  public void goAway(int paramInt, ErrorCode paramErrorCode)
  {
    synchronized (this.this$0)
    {
      SpdyConnection.access$1502(this.this$0, true);
      Iterator localIterator = SpdyConnection.access$1800(this.this$0).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((((Integer)localEntry.getKey()).intValue() > paramInt) && (((SpdyStream)localEntry.getValue()).isLocallyInitiated()))
        {
          ((SpdyStream)localEntry.getValue()).receiveRstStream(ErrorCode.REFUSED_STREAM);
          localIterator.remove();
        }
      }
    }
  }

  public void headers(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, int paramInt3, List paramList, HeadersMode paramHeadersMode)
  {
    SpdyStream localSpdyStream1;
    synchronized (this.this$0)
    {
      if (SpdyConnection.access$1500(this.this$0))
        return;
      localSpdyStream1 = SpdyConnection.access$1400(this.this$0, paramInt1);
      if (localSpdyStream1 != null)
        break label214;
      if (paramHeadersMode.failIfStreamAbsent())
      {
        this.this$0.writeSynResetLater(paramInt1, ErrorCode.INVALID_STREAM);
        return;
      }
    }
    if (paramInt1 <= SpdyConnection.access$1600(this.this$0))
      return;
    if (paramInt1 % 2 == SpdyConnection.access$1700(this.this$0) % 2)
      return;
    SpdyStream localSpdyStream2 = new SpdyStream(paramInt1, this.this$0, paramBoolean1, paramBoolean2, paramInt3, paramList, this.this$0.settings);
    SpdyConnection.access$1602(this.this$0, paramInt1);
    SpdyConnection.access$1800(this.this$0).put(Integer.valueOf(paramInt1), localSpdyStream2);
    ExecutorService localExecutorService = SpdyConnection.access$2100();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = SpdyConnection.access$1900(this.this$0);
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    localExecutorService.submit(new SpdyConnection.Reader.1(this, "OkHttp Callback %s stream %d", arrayOfObject, localSpdyStream2));
    return;
    label214: if (paramHeadersMode.failIfStreamPresent())
    {
      localSpdyStream1.closeLater(ErrorCode.PROTOCOL_ERROR);
      this.this$0.removeStream(paramInt1);
      return;
    }
    localSpdyStream1.receiveHeaders(paramList, paramHeadersMode);
    if (paramBoolean2)
      localSpdyStream1.receiveFin();
  }

  public void noop()
  {
  }

  public void ping(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
    {
      Ping localPing = SpdyConnection.access$2200(this.this$0, paramInt1);
      if (localPing != null)
        localPing.receive();
      return;
    }
    SpdyConnection.access$2300(this.this$0, true, paramInt1, paramInt2, null);
  }

  public void priority(int paramInt1, int paramInt2)
  {
  }

  public void rstStream(int paramInt, ErrorCode paramErrorCode)
  {
    SpdyStream localSpdyStream = this.this$0.removeStream(paramInt);
    if (localSpdyStream != null)
      localSpdyStream.receiveRstStream(paramErrorCode);
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: getstatic 211	com/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode:INTERNAL_ERROR	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    //   3: astore_1
    //   4: getstatic 211	com/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode:INTERNAL_ERROR	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 14	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader:this$0	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
    //   12: invokestatic 215	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:access$1200	(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;
    //   15: aload_0
    //   16: invokeinterface 221 2 0
    //   21: ifne -13 -> 8
    //   24: getstatic 224	com/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode:NO_ERROR	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    //   27: astore_1
    //   28: getstatic 227	com/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode:CANCEL	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    //   31: astore 10
    //   33: aload_0
    //   34: getfield 14	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader:this$0	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
    //   37: aload_1
    //   38: aload 10
    //   40: invokestatic 231	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:access$1300	(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    //   43: return
    //   44: astore 7
    //   46: getstatic 175	com/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode:PROTOCOL_ERROR	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    //   49: astore 4
    //   51: getstatic 175	com/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode:PROTOCOL_ERROR	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    //   54: astore 8
    //   56: aload_0
    //   57: getfield 14	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader:this$0	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
    //   60: aload 4
    //   62: aload 8
    //   64: invokestatic 231	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:access$1300	(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    //   67: return
    //   68: astore 9
    //   70: return
    //   71: astore_3
    //   72: aload_1
    //   73: astore 4
    //   75: aload_3
    //   76: astore 5
    //   78: aload_0
    //   79: getfield 14	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader:this$0	Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
    //   82: aload 4
    //   84: aload_2
    //   85: invokestatic 231	com/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection:access$1300	(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    //   88: aload 5
    //   90: athrow
    //   91: astore 6
    //   93: goto -5 -> 88
    //   96: astore 5
    //   98: goto -20 -> 78
    //   101: astore 11
    //   103: return
    //
    // Exception table:
    //   from	to	target	type
    //   8	33	44	java/io/IOException
    //   56	67	68	java/io/IOException
    //   8	33	71	finally
    //   46	51	71	finally
    //   78	88	91	java/io/IOException
    //   51	56	96	finally
    //   33	43	101	java/io/IOException
  }

  public void settings(boolean paramBoolean, Settings paramSettings)
  {
    while (true)
    {
      int j;
      synchronized (this.this$0)
      {
        if ((this.this$0.settings == null) || (paramBoolean))
        {
          this.this$0.settings = paramSettings;
          if (SpdyConnection.access$1800(this.this$0).isEmpty())
            break label184;
          arrayOfSpdyStream = (SpdyStream[])SpdyConnection.access$1800(this.this$0).values().toArray(new SpdyStream[SpdyConnection.access$1800(this.this$0).size()]);
          if (arrayOfSpdyStream == null)
            break label183;
          int i = arrayOfSpdyStream.length;
          j = 0;
          if (j >= i)
            break label183;
        }
      }
      synchronized (arrayOfSpdyStream[j])
      {
        synchronized (this.this$0)
        {
          ???.receiveSettings(this.this$0.settings);
          j++;
          continue;
          this.this$0.settings.merge(paramSettings);
          continue;
          localObject1 = finally;
          throw localObject1;
        }
      }
      label183: return;
      label184: SpdyStream[] arrayOfSpdyStream = null;
    }
  }

  public void windowUpdate(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramInt1 == 0);
    SpdyStream localSpdyStream;
    do
    {
      return;
      localSpdyStream = SpdyConnection.access$1400(this.this$0, paramInt1);
    }
    while (localSpdyStream == null);
    localSpdyStream.receiveWindowUpdate(paramInt2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection.Reader
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public final class SpdyStream
{
  public static final int WINDOW_UPDATE_THRESHOLD = 32768;
  private final int a;
  private final SpdyConnection b;
  private final int c;
  private long d = 0L;
  private int e;
  private final List f;
  private List g;
  private final SpdyStream.SpdyDataInputStream h = new SpdyStream.SpdyDataInputStream(this, null);
  private final SpdyStream.SpdyDataOutputStream i = new SpdyStream.SpdyDataOutputStream(this, null);
  private ErrorCode j = null;

  static
  {
    if (!SpdyStream.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  SpdyStream(int paramInt1, SpdyConnection paramSpdyConnection, boolean paramBoolean1, boolean paramBoolean2, int paramInt2, List paramList, Settings paramSettings)
  {
    if (paramSpdyConnection == null)
      throw new NullPointerException("connection == null");
    if (paramList == null)
      throw new NullPointerException("requestHeaders == null");
    this.a = paramInt1;
    this.b = paramSpdyConnection;
    SpdyStream.SpdyDataInputStream.access$202(this.h, paramBoolean2);
    SpdyStream.SpdyDataOutputStream.access$302(this.i, paramBoolean1);
    this.c = paramInt2;
    this.f = paramList;
    a(paramSettings);
  }

  private void a(Settings paramSettings)
  {
    int k = 65536;
    assert (Thread.holdsLock(this.b));
    if (paramSettings != null)
      k = paramSettings.getInitialWindowSize(k);
    this.e = k;
  }

  private boolean a(ErrorCode paramErrorCode)
  {
    assert (!Thread.holdsLock(this));
    try
    {
      if (this.j != null)
        return false;
      if ((SpdyStream.SpdyDataInputStream.access$200(this.h)) && (SpdyStream.SpdyDataOutputStream.access$300(this.i)))
        return false;
    }
    finally
    {
    }
    this.j = paramErrorCode;
    notifyAll();
    this.b.removeStream(this.a);
    return true;
  }

  public final void close(ErrorCode paramErrorCode)
  {
    if (!a(paramErrorCode))
      return;
    this.b.writeSynReset(this.a, paramErrorCode);
  }

  public final void closeLater(ErrorCode paramErrorCode)
  {
    if (!a(paramErrorCode))
      return;
    this.b.writeSynResetLater(this.a, paramErrorCode);
  }

  public final SpdyConnection getConnection()
  {
    return this.b;
  }

  public final ErrorCode getErrorCode()
  {
    try
    {
      ErrorCode localErrorCode = this.j;
      return localErrorCode;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final InputStream getInputStream()
  {
    return this.h;
  }

  public final OutputStream getOutputStream()
  {
    try
    {
      if ((this.g == null) && (!isLocallyInitiated()))
        throw new IllegalStateException("reply before requesting the output stream");
    }
    finally
    {
    }
    return this.i;
  }

  final int getPriority()
  {
    return this.c;
  }

  public final long getReadTimeoutMillis()
  {
    return this.d;
  }

  public final List getRequestHeaders()
  {
    return this.f;
  }

  public final List getResponseHeaders()
  {
    try
    {
      while ((this.g == null) && (this.j == null))
        wait();
    }
    catch (InterruptedException localInterruptedException)
    {
      InterruptedIOException localInterruptedIOException = new InterruptedIOException();
      localInterruptedIOException.initCause(localInterruptedException);
      throw localInterruptedIOException;
    }
    finally
    {
    }
    if (this.g != null)
    {
      List localList = this.g;
      return localList;
    }
    throw new IOException("stream was reset: " + this.j);
  }

  public final boolean isLocallyInitiated()
  {
    if (this.a % 2 == 1);
    for (int k = 1; this.b.client == k; k = 0)
      return true;
    return false;
  }

  public final boolean isOpen()
  {
    try
    {
      ErrorCode localErrorCode = this.j;
      boolean bool = false;
      if (localErrorCode != null);
      while (true)
      {
        return bool;
        if (((SpdyStream.SpdyDataInputStream.access$200(this.h)) || (SpdyStream.SpdyDataInputStream.access$400(this.h))) && ((SpdyStream.SpdyDataOutputStream.access$300(this.i)) || (SpdyStream.SpdyDataOutputStream.access$500(this.i))))
        {
          List localList = this.g;
          bool = false;
          if (localList != null);
        }
        else
        {
          bool = true;
        }
      }
    }
    finally
    {
    }
  }

  final void receiveData(InputStream paramInputStream, int paramInt)
  {
    assert (!Thread.holdsLock(this));
    this.h.receive(paramInputStream, paramInt);
  }

  final void receiveFin()
  {
    assert (!Thread.holdsLock(this));
    try
    {
      SpdyStream.SpdyDataInputStream.access$202(this.h, true);
      boolean bool = isOpen();
      notifyAll();
      if (!bool)
        this.b.removeStream(this.a);
      return;
    }
    finally
    {
    }
  }

  final void receiveHeaders(List paramList, HeadersMode paramHeadersMode)
  {
    assert (!Thread.holdsLock(this));
    boolean bool = true;
    do
      while (true)
      {
        ErrorCode localErrorCode;
        try
        {
          if (this.g == null)
          {
            if (paramHeadersMode.failIfHeadersAbsent())
            {
              localErrorCode = ErrorCode.PROTOCOL_ERROR;
              if (localErrorCode == null)
                break;
              closeLater(localErrorCode);
              return;
            }
            this.g = paramList;
            bool = isOpen();
            notifyAll();
            localErrorCode = null;
            continue;
          }
        }
        finally
        {
        }
        if (paramHeadersMode.failIfHeadersPresent())
        {
          localErrorCode = ErrorCode.STREAM_IN_USE;
        }
        else
        {
          ArrayList localArrayList = new ArrayList();
          localArrayList.addAll(this.g);
          localArrayList.addAll(paramList);
          this.g = localArrayList;
          localErrorCode = null;
        }
      }
    while (bool);
    this.b.removeStream(this.a);
  }

  final void receiveRstStream(ErrorCode paramErrorCode)
  {
    try
    {
      if (this.j == null)
      {
        this.j = paramErrorCode;
        notifyAll();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void receiveSettings(Settings paramSettings)
  {
    assert (Thread.holdsLock(this));
    a(paramSettings);
    notifyAll();
  }

  final void receiveWindowUpdate(int paramInt)
  {
    try
    {
      SpdyStream.SpdyDataOutputStream.access$620(this.i, paramInt);
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void reply(List paramList, boolean paramBoolean)
  {
    boolean bool = true;
    assert (!Thread.holdsLock(this));
    if (paramList == null)
      try
      {
        throw new NullPointerException("responseHeaders == null");
      }
      finally
      {
      }
    if (isLocallyInitiated())
      throw new IllegalStateException("cannot reply to a locally initiated stream");
    if (this.g != null)
      throw new IllegalStateException("reply already sent");
    this.g = paramList;
    if (!paramBoolean)
      SpdyStream.SpdyDataOutputStream.access$302(this.i, true);
    while (true)
    {
      this.b.writeSynReply(this.a, bool, paramList);
      return;
      bool = false;
    }
  }

  public final void setReadTimeout(long paramLong)
  {
    this.d = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyStream
 * JD-Core Version:    0.6.2
 */
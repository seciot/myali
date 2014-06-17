package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.OutputStream;
import java.util.List;

final class Http20Draft06$Writer
  implements FrameWriter
{
  private final DataOutputStream a;
  private final boolean b;
  private final ByteArrayOutputStream c;
  private final Hpack.Writer d;

  Http20Draft06$Writer(OutputStream paramOutputStream, boolean paramBoolean)
  {
    this.a = new DataOutputStream(paramOutputStream);
    this.b = paramBoolean;
    this.c = new ByteArrayOutputStream();
    this.d = new Hpack.Writer(this.c);
  }

  private void a(boolean paramBoolean, int paramInt1, int paramInt2, List paramList)
  {
    this.c.reset();
    this.d.writeHeaders(paramList);
    int i = this.c.size();
    int j = 4;
    if (paramBoolean)
      j = 5;
    if (paramInt2 != -1)
      j |= 8;
    this.a.writeInt(0x100 | (i & 0xFFFF) << 16 | j & 0xFF);
    this.a.writeInt(paramInt1 & 0x7FFFFFFF);
    if (paramInt2 != -1)
      this.a.writeInt(paramInt2 & 0x7FFFFFFF);
    this.c.writeTo(this.a);
  }

  public final void close()
  {
    this.a.close();
  }

  public final void connectionHeader()
  {
    try
    {
      boolean bool = this.b;
      if (!bool);
      while (true)
      {
        return;
        this.a.write(Http20Draft06.access$000());
      }
    }
    finally
    {
    }
  }

  public final void data(boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    data(paramBoolean, paramInt, paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public final void data(boolean paramBoolean, int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i = 0;
    if (paramBoolean)
      i = 1;
    try
    {
      this.a.writeInt(0x0 | (0xFFFF & paramInt3) << 16 | i & 0xFF);
      this.a.writeInt(0x7FFFFFFF & paramInt1);
      this.a.write(paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void flush()
  {
    try
    {
      this.a.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void goAway(int paramInt, ErrorCode paramErrorCode)
  {
  }

  public final void headers(int paramInt, List paramList)
  {
    try
    {
      a(false, paramInt, -1, paramList);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void noop()
  {
    try
    {
      throw new UnsupportedOperationException();
    }
    finally
    {
    }
  }

  public final void ping(boolean paramBoolean, int paramInt1, int paramInt2)
  {
  }

  public final void rstStream(int paramInt, ErrorCode paramErrorCode)
  {
    try
    {
      throw new UnsupportedOperationException("TODO");
    }
    finally
    {
    }
  }

  public final void settings(Settings paramSettings)
  {
    int i = 0;
    try
    {
      int j = 8 * paramSettings.size();
      this.a.writeInt(0x0 | (0x400 | (j & 0xFFFF) << 16));
      this.a.writeInt(0);
      while (i < 10)
      {
        if (paramSettings.isSet(i))
        {
          this.a.writeInt(0xFFFFFF & i);
          this.a.writeInt(paramSettings.get(i));
        }
        i++;
      }
      return;
    }
    finally
    {
    }
  }

  public final void synReply(boolean paramBoolean, int paramInt, List paramList)
  {
    try
    {
      a(paramBoolean, paramInt, -1, paramList);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, List paramList)
  {
    if (paramBoolean2)
      try
      {
        throw new UnsupportedOperationException();
      }
      finally
      {
      }
    a(paramBoolean1, paramInt1, paramInt3, paramList);
  }

  public final void windowUpdate(int paramInt1, int paramInt2)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Http20Draft06.Writer
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Platform;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.Deflater;

final class Spdy3$Writer
  implements FrameWriter
{
  private final DataOutputStream a;
  private final ByteArrayOutputStream b;
  private final DataOutputStream c;
  private final boolean d;

  Spdy3$Writer(OutputStream paramOutputStream, boolean paramBoolean)
  {
    this.a = new DataOutputStream(paramOutputStream);
    this.d = paramBoolean;
    Deflater localDeflater = new Deflater();
    localDeflater.setDictionary(Spdy3.DICTIONARY);
    this.b = new ByteArrayOutputStream();
    this.c = new DataOutputStream(Platform.get().newDeflaterOutputStream(this.b, localDeflater, true));
  }

  private void a(List paramList)
  {
    this.b.reset();
    int i = paramList.size() / 2;
    this.c.writeInt(i);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      this.c.writeInt(str.length());
      this.c.write(str.getBytes("UTF-8"));
    }
    this.c.flush();
  }

  public final void close()
  {
    Util.closeAll(this.a, this.c);
  }

  public final void connectionHeader()
  {
  }

  public final void data(boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    try
    {
      data(paramBoolean, paramInt, paramArrayOfByte, 0, paramArrayOfByte.length);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void data(boolean paramBoolean, int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i;
    if (paramBoolean)
      i = 1;
    try
    {
      this.a.writeInt(0x7FFFFFFF & paramInt1);
      this.a.writeInt((i & 0xFF) << 24 | 0xFFFFFF & paramInt3);
      this.a.write(paramArrayOfByte, paramInt2, paramInt3);
      return;
      i = 0;
    }
    finally
    {
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
    try
    {
      if (paramErrorCode.spdyGoAwayCode == -1)
        throw new IllegalArgumentException();
    }
    finally
    {
    }
    this.a.writeInt(-2147287033);
    this.a.writeInt(8);
    this.a.writeInt(paramInt);
    this.a.writeInt(paramErrorCode.spdyGoAwayCode);
    this.a.flush();
  }

  public final void headers(int paramInt, List paramList)
  {
    try
    {
      a(paramList);
      int i = 4 + this.b.size();
      this.a.writeInt(-2147287032);
      this.a.writeInt(0x0 | i & 0xFFFFFF);
      this.a.writeInt(0x7FFFFFFF & paramInt);
      this.b.writeTo(this.a);
      this.a.flush();
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
      this.a.writeInt(-2147287035);
      this.a.writeInt(0);
      this.a.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void ping(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    while (true)
    {
      boolean bool2;
      try
      {
        bool2 = this.d;
        if (paramInt1 % 2 == bool1)
        {
          bool3 = bool1;
          break label96;
          if (paramBoolean == bool1)
            break label61;
          throw new IllegalArgumentException("payload != reply");
        }
      }
      finally
      {
      }
      boolean bool3 = false;
      label61: label96: 
      while (bool2 == bool3)
      {
        bool1 = false;
        break;
        this.a.writeInt(-2147287034);
        this.a.writeInt(4);
        this.a.writeInt(paramInt1);
        this.a.flush();
        return;
      }
    }
  }

  public final void rstStream(int paramInt, ErrorCode paramErrorCode)
  {
    try
    {
      if (paramErrorCode.spdyRstCode == -1)
        throw new IllegalArgumentException();
    }
    finally
    {
    }
    this.a.writeInt(-2147287037);
    this.a.writeInt(8);
    this.a.writeInt(0x7FFFFFFF & paramInt);
    this.a.writeInt(paramErrorCode.spdyRstCode);
    this.a.flush();
  }

  public final void settings(Settings paramSettings)
  {
    while (true)
    {
      int k;
      try
      {
        int i = paramSettings.size();
        int j = 4 + i * 8;
        this.a.writeInt(-2147287036);
        this.a.writeInt(0x0 | j & 0xFFFFFF);
        this.a.writeInt(i);
        k = 0;
        if (k <= 10)
        {
          if (paramSettings.isSet(k))
          {
            int m = paramSettings.flags(k);
            this.a.writeInt((m & 0xFF) << 24 | k & 0xFFFFFF);
            this.a.writeInt(paramSettings.get(k));
          }
        }
        else
        {
          this.a.flush();
          return;
        }
      }
      finally
      {
      }
      k++;
    }
  }

  public final void synReply(boolean paramBoolean, int paramInt, List paramList)
  {
    try
    {
      a(paramList);
      if (paramBoolean);
      for (int i = 1; ; i = 0)
      {
        int j = 4 + this.b.size();
        this.a.writeInt(-2147287038);
        this.a.writeInt((i & 0xFF) << 24 | j & 0xFFFFFF);
        this.a.writeInt(0x7FFFFFFF & paramInt);
        this.b.writeTo(this.a);
        this.a.flush();
        return;
      }
    }
    finally
    {
    }
  }

  public final void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, List paramList)
  {
    while (true)
    {
      try
      {
        a(paramList);
        int i = 10 + this.b.size();
        int j;
        if (paramBoolean1)
        {
          j = 1;
          break label149;
          int m = k | j;
          this.a.writeInt(-2147287039);
          this.a.writeInt((m & 0xFF) << 24 | i & 0xFFFFFF);
          this.a.writeInt(paramInt1 & 0x7FFFFFFF);
          this.a.writeInt(paramInt2 & 0x7FFFFFFF);
          this.a.writeShort(0x0 | (paramInt3 & 0x7) << 13 | paramInt4 & 0xFF);
          this.b.writeTo(this.a);
          this.a.flush();
        }
        else
        {
          j = 0;
        }
      }
      finally
      {
      }
      label149: int k = 0;
      if (paramBoolean2)
        k = 2;
    }
  }

  public final void windowUpdate(int paramInt1, int paramInt2)
  {
    try
    {
      this.a.writeInt(-2147287031);
      this.a.writeInt(8);
      this.a.writeInt(paramInt1);
      this.a.writeInt(paramInt2);
      this.a.flush();
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
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Spdy3.Writer
 * JD-Core Version:    0.6.2
 */
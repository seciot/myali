package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.ProtocolException;
import java.util.List;

final class Spdy3$Reader
  implements FrameReader
{
  private final DataInputStream a;
  private final boolean b;
  private final NameValueBlockReader c;

  Spdy3$Reader(InputStream paramInputStream, boolean paramBoolean)
  {
    this.a = new DataInputStream(paramInputStream);
    this.c = new NameValueBlockReader(paramInputStream);
    this.b = paramBoolean;
  }

  private static IOException a(String paramString, Object[] paramArrayOfObject)
  {
    throw new IOException(String.format(paramString, paramArrayOfObject));
  }

  private void a(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    int i = this.a.readInt();
    if (paramInt2 != 4 + i * 8)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      arrayOfObject[bool] = Integer.valueOf(i);
      throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", arrayOfObject);
    }
    Settings localSettings = new Settings();
    for (int j = 0; j < i; j++)
    {
      int k = this.a.readInt();
      int m = this.a.readInt();
      int n = (0xFF000000 & k) >>> 24;
      localSettings.set(k & 0xFFFFFF, n, m);
    }
    if ((paramInt1 & 0x1) != 0);
    while (true)
    {
      paramHandler.settings(bool, localSettings);
      return;
      bool = false;
    }
  }

  public final void close()
  {
    Util.closeAll(this.a, this.c);
  }

  public final boolean nextFrame(FrameReader.Handler paramHandler)
  {
    int i;
    int m;
    int n;
    int i4;
    while (true)
    {
      try
      {
        i = this.a.readInt();
        int j = this.a.readInt();
        if ((0x80000000 & i) != 0)
        {
          k = 1;
          m = (0xFF000000 & j) >>> 24;
          n = j & 0xFFFFFF;
          if (k == 0)
            break label833;
          int i3 = (0x7FFF0000 & i) >>> 16;
          i4 = i & 0xFFFF;
          if (i3 == 3)
            break;
          throw new ProtocolException("version != 3: " + i3);
        }
      }
      catch (IOException localIOException)
      {
        return false;
      }
      int k = 0;
    }
    switch (i4)
    {
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    default:
      throw new IOException("Unexpected frame");
    case 1:
      int i13 = this.a.readInt();
      int i14 = this.a.readInt();
      int i15 = this.a.readShort();
      int i16 = i13 & 0x7FFFFFFF;
      int i17 = i14 & 0x7FFFFFFF;
      int i18 = (0xE000 & i15) >>> 13;
      List localList2 = this.c.readNameValueBlock(n - 10);
      if ((m & 0x1) != 0);
      for (boolean bool6 = true; ; bool6 = false)
      {
        int i19 = m & 0x2;
        boolean bool7 = false;
        if (i19 != 0)
          bool7 = true;
        paramHandler.headers(bool7, bool6, i16, i17, i18, localList2, HeadersMode.SPDY_SYN_STREAM);
        return true;
      }
    case 2:
      int i12 = 0x7FFFFFFF & this.a.readInt();
      List localList1 = this.c.readNameValueBlock(n - 4);
      if ((m & 0x1) != 0);
      for (boolean bool5 = true; ; bool5 = false)
      {
        paramHandler.headers(false, bool5, i12, -1, -1, localList1, HeadersMode.SPDY_REPLY);
        return true;
      }
    case 3:
      if (n != 8)
      {
        Object[] arrayOfObject7 = new Object[1];
        arrayOfObject7[0] = Integer.valueOf(n);
        throw a("TYPE_RST_STREAM length: %d != 8", arrayOfObject7);
      }
      int i10 = 0x7FFFFFFF & this.a.readInt();
      int i11 = this.a.readInt();
      ErrorCode localErrorCode2 = ErrorCode.fromSpdy3Rst(i11);
      if (localErrorCode2 == null)
      {
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = Integer.valueOf(i11);
        throw a("TYPE_RST_STREAM unexpected error code: %d", arrayOfObject6);
      }
      paramHandler.rstStream(i10, localErrorCode2);
      return true;
    case 4:
      a(paramHandler, m, n);
      return true;
    case 5:
      if (n != 0)
      {
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Integer.valueOf(n);
        throw a("TYPE_NOOP length: %d != 0", arrayOfObject5);
      }
      paramHandler.noop();
      return true;
    case 6:
      if (n != 4)
      {
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Integer.valueOf(n);
        throw a("TYPE_PING length: %d != 4", arrayOfObject4);
      }
      int i9 = this.a.readInt();
      boolean bool2 = this.b;
      boolean bool3;
      if (i9 % 2 == 1)
      {
        bool3 = true;
        if (bool2 != bool3)
          break label605;
      }
      for (boolean bool4 = true; ; bool4 = false)
      {
        paramHandler.ping(bool4, i9, 0);
        return true;
        bool3 = false;
        break;
      }
    case 7:
      if (n != 8)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(n);
        throw a("TYPE_GOAWAY length: %d != 8", arrayOfObject3);
      }
      int i7 = 0x7FFFFFFF & this.a.readInt();
      int i8 = this.a.readInt();
      ErrorCode localErrorCode1 = ErrorCode.fromSpdyGoAway(i8);
      if (localErrorCode1 == null)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(i8);
        throw a("TYPE_GOAWAY unexpected error code: %d", arrayOfObject2);
      }
      paramHandler.goAway(i7, localErrorCode1);
      return true;
    case 8:
      paramHandler.headers(false, false, 0x7FFFFFFF & this.a.readInt(), -1, -1, this.c.readNameValueBlock(n - 4), HeadersMode.SPDY_HEADERS);
      return true;
    case 9:
      label605: if (n != 8)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(n);
        throw a("TYPE_WINDOW_UPDATE length: %d != 8", arrayOfObject1);
      }
      int i5 = this.a.readInt();
      int i6 = this.a.readInt();
      paramHandler.windowUpdate(i5 & 0x7FFFFFFF, i6 & 0x7FFFFFFF, false);
      return true;
    case 16:
    }
    Util.skipByReading(this.a, n);
    throw new UnsupportedOperationException("TODO");
    label833: int i1 = i & 0x7FFFFFFF;
    int i2 = m & 0x1;
    boolean bool1 = false;
    if (i2 != 0)
      bool1 = true;
    paramHandler.data(bool1, i1, this.a, n);
    return true;
  }

  public final void readConnectionHeader()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Spdy3.Reader
 * JD-Core Version:    0.6.2
 */
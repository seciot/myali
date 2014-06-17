package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

final class Http20Draft06$Reader
  implements FrameReader
{
  private final DataInputStream a;
  private final boolean b;
  private final Hpack.Reader c;

  Http20Draft06$Reader(InputStream paramInputStream, boolean paramBoolean)
  {
    this.a = new DataInputStream(paramInputStream);
    this.b = paramBoolean;
    this.c = new Hpack.Reader(this.a, paramBoolean);
  }

  private static IOException a(String paramString, Object[] paramArrayOfObject)
  {
    throw new IOException(String.format(paramString, paramArrayOfObject));
  }

  public final void close()
  {
    this.a.close();
  }

  public final boolean nextFrame(FrameReader.Handler paramHandler)
  {
    boolean bool1 = true;
    int k;
    int n;
    int i1;
    try
    {
      int i = this.a.readInt();
      int j = this.a.readInt();
      k = (i & 0xFFFF0000) >> 16;
      int m = (0xFF00 & i) >> 8;
      n = i & 0xFF;
      i1 = j & 0x7FFFFFFF;
      switch (m)
      {
      case 8:
      default:
        throw new UnsupportedOperationException("TODO");
      case 5:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 7:
      case 9:
      }
    }
    catch (IOException localIOException)
    {
      bool1 = false;
      return bool1;
    }
    int i19 = n & 0x1;
    boolean bool7 = false;
    if (i19 != 0)
      bool7 = bool1;
    paramHandler.data(bool7, i1, this.a, k);
    return bool1;
    if (i1 == 0)
      throw a("TYPE_HEADERS streamId == 0", new Object[0]);
    boolean bool4;
    int i14;
    boolean bool6;
    if ((n & 0x1) != 0)
    {
      bool4 = bool1;
      boolean bool5 = bool4;
      i14 = k;
      bool6 = bool5;
    }
    int i18;
    do
    {
      this.c.readHeaders(i14);
      if ((n & 0x4) != 0)
      {
        this.c.emitReferenceSet();
        paramHandler.headers(false, bool6, i1, -1, -1, this.c.getAndReset(), HeadersMode.HTTP_20_HEADERS);
        return bool1;
        bool4 = false;
        break;
      }
      int i15 = this.a.readInt();
      int i16 = this.a.readInt();
      i14 = (i15 & 0xFFFF0000) >> 16;
      int i17 = (0xFF00 & i15) >> 8;
      n = i15 & 0xFF;
      if ((n & 0x1) != 0);
      for (bool6 = bool1; ; bool6 = false)
      {
        i18 = i16 & 0x7FFFFFFF;
        if (i17 == 10)
          break;
        throw a("TYPE_CONTINUATION didn't have FLAG_END_HEADERS", new Object[0]);
      }
    }
    while (i18 == i1);
    throw a("TYPE_CONTINUATION streamId changed", new Object[0]);
    if (k != 4)
    {
      Object[] arrayOfObject7 = new Object[bool1];
      arrayOfObject7[0] = Integer.valueOf(k);
      throw a("TYPE_PRIORITY length: %d != 4", arrayOfObject7);
    }
    if (i1 == 0)
      throw a("TYPE_PRIORITY streamId == 0", new Object[0]);
    paramHandler.priority(i1, 0x7FFFFFFF & this.a.readInt());
    return bool1;
    if (k != 4)
    {
      Object[] arrayOfObject6 = new Object[bool1];
      arrayOfObject6[0] = Integer.valueOf(k);
      throw a("TYPE_RST_STREAM length: %d != 4", arrayOfObject6);
    }
    if (i1 == 0)
      throw a("TYPE_RST_STREAM streamId == 0", new Object[0]);
    int i13 = this.a.readInt();
    ErrorCode localErrorCode2 = ErrorCode.fromHttp2(i13);
    if (localErrorCode2 == null)
    {
      Object[] arrayOfObject5 = new Object[bool1];
      arrayOfObject5[0] = Integer.valueOf(i13);
      throw a("TYPE_RST_STREAM unexpected error code: %d", arrayOfObject5);
    }
    paramHandler.rstStream(i1, localErrorCode2);
    return bool1;
    if (k % 8 != 0)
    {
      Object[] arrayOfObject4 = new Object[bool1];
      arrayOfObject4[0] = Integer.valueOf(k);
      throw a("TYPE_SETTINGS length %% 8 != 0: %s", arrayOfObject4);
    }
    if (i1 != 0)
      throw a("TYPE_SETTINGS streamId != 0", new Object[0]);
    Settings localSettings = new Settings();
    for (int i10 = 0; i10 < k; i10 += 8)
    {
      int i11 = this.a.readInt();
      int i12 = this.a.readInt();
      localSettings.set(i11 & 0xFFFFFF, 0, i12);
    }
    paramHandler.settings(false, localSettings);
    return bool1;
    if (k != 8)
    {
      Object[] arrayOfObject3 = new Object[bool1];
      arrayOfObject3[0] = Integer.valueOf(k);
      throw a("TYPE_PING length != 8: %s", arrayOfObject3);
    }
    if (i1 != 0)
      throw a("TYPE_PING streamId != 0", new Object[0]);
    int i7 = this.a.readInt();
    int i8 = this.a.readInt();
    int i9 = n & 0x1;
    boolean bool3 = false;
    if (i9 != 0)
      bool3 = bool1;
    paramHandler.ping(bool3, i7, i8);
    return bool1;
    if (k < 8)
    {
      Object[] arrayOfObject2 = new Object[bool1];
      arrayOfObject2[0] = Integer.valueOf(k);
      throw a("TYPE_GOAWAY length < 8: %s", arrayOfObject2);
    }
    int i4 = this.a.readInt();
    int i5 = this.a.readInt();
    int i6 = k - 8;
    ErrorCode localErrorCode1 = ErrorCode.fromHttp2(i5);
    if (localErrorCode1 == null)
    {
      Object[] arrayOfObject1 = new Object[bool1];
      arrayOfObject1[0] = Integer.valueOf(i5);
      throw a("TYPE_RST_STREAM unexpected error code: %d", arrayOfObject1);
    }
    if (Util.skipByReading(this.a, i6) != i6)
      throw new IOException("TYPE_GOAWAY opaque data was truncated");
    paramHandler.goAway(i4, localErrorCode1);
    return bool1;
    int i2 = 0x7FFFFFFF & this.a.readInt();
    int i3 = n & 0x1;
    boolean bool2 = false;
    if (i3 != 0)
      bool2 = bool1;
    paramHandler.windowUpdate(i1, i2, bool2);
    return bool1;
  }

  public final void readConnectionHeader()
  {
    if (this.b);
    byte[] arrayOfByte;
    do
    {
      return;
      arrayOfByte = new byte[Http20Draft06.access$000().length];
      this.a.readFully(arrayOfByte);
    }
    while (Arrays.equals(arrayOfByte, Http20Draft06.access$000()));
    throw a("Expected a connection header but was " + Arrays.toString(arrayOfByte), new Object[0]);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Http20Draft06.Reader
 * JD-Core Version:    0.6.2
 */
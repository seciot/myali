package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.DataInputStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

class Hpack$Reader
{
  private final long a = 4096L;
  private final DataInputStream b;
  private final BitSet c = new BitSet();
  private final List d;
  private final List e = new ArrayList();
  private long f = 0L;
  private long g = 0L;

  Hpack$Reader(DataInputStream paramDataInputStream, boolean paramBoolean)
  {
    this.b = paramDataInputStream;
    if (paramBoolean)
    {
      this.d = new ArrayList(Hpack.INITIAL_SERVER_TO_CLIENT_HEADER_TABLE);
      this.f = 1304L;
      return;
    }
    this.d = new ArrayList(Hpack.INITIAL_CLIENT_TO_SERVER_HEADER_TABLE);
    this.f = 1262L;
  }

  private int a()
  {
    this.g -= 1L;
    return 0xFF & this.b.readByte();
  }

  private String a(int paramInt)
  {
    return Hpack.HeaderEntry.access$000((Hpack.HeaderEntry)this.d.get(paramInt));
  }

  private void put(int paramInt, Hpack.HeaderEntry paramHeaderEntry)
  {
    int i = paramHeaderEntry.length();
    if (paramInt != this.d.size())
      i -= ((Hpack.HeaderEntry)this.d.get(paramInt)).length();
    if (i > 4096L)
    {
      this.d.clear();
      this.f = 0L;
      this.e.add(Hpack.HeaderEntry.access$000(paramHeaderEntry));
      this.e.add(Hpack.HeaderEntry.access$100(paramHeaderEntry));
      return;
    }
    while (this.f + i > 4096L)
    {
      this.f -= ((Hpack.HeaderEntry)this.d.remove(0)).length();
      paramInt--;
    }
    if (paramInt < 0)
    {
      this.d.add(0, paramHeaderEntry);
      paramInt = 0;
    }
    while (true)
    {
      this.f += i;
      this.c.set(paramInt);
      return;
      if (paramInt == this.d.size())
        this.d.add(paramInt, paramHeaderEntry);
      else
        this.d.set(paramInt, paramHeaderEntry);
    }
  }

  public void emitReferenceSet()
  {
    for (int i = this.c.nextSetBit(0); i != -1; i = this.c.nextSetBit(i + 1))
    {
      this.e.add(a(i));
      this.e.add(Hpack.HeaderEntry.access$100((Hpack.HeaderEntry)this.d.get(i)));
    }
  }

  public List getAndReset()
  {
    ArrayList localArrayList = new ArrayList(this.e);
    this.e.clear();
    return localArrayList;
  }

  public void readHeaders(int paramInt)
  {
    this.g += paramInt;
    while (this.g > 0L)
    {
      int i = a();
      if ((i & 0x80) != 0)
      {
        int k = readInt(i, 127);
        if (this.c.get(k))
          this.c.clear(k);
        else
          this.c.set(k);
      }
      else if (i == 96)
      {
        String str8 = readString();
        String str9 = readString();
        this.e.add(str8);
        this.e.add(str9);
      }
      else if ((i & 0xE0) == 96)
      {
        String str6 = a(-1 + readInt(i, 31));
        String str7 = readString();
        this.e.add(str6);
        this.e.add(str7);
      }
      else if (i == 64)
      {
        String str4 = readString();
        String str5 = readString();
        v(this.d.size(), new Hpack.HeaderEntry(str4, str5));
      }
      else if ((i & 0xE0) == 64)
      {
        String str2 = a(-1 + readInt(i, 31));
        String str3 = readString();
        v(this.d.size(), new Hpack.HeaderEntry(str2, str3));
      }
      else if (i == 0)
      {
        String str1 = readString();
        v(readInt(a(), 255), new Hpack.HeaderEntry(str1, readString()));
      }
      else if ((i & 0xC0) == 0)
      {
        int j = -1 + readInt(i, 63);
        v(readInt(a(), 255), new Hpack.HeaderEntry(a(j), readString()));
      }
      else
      {
        throw new AssertionError();
      }
    }
  }

  int readInt(int paramInt1, int paramInt2)
  {
    int i = paramInt1 & paramInt2;
    if (i < paramInt2)
      return i;
    int k;
    for (int j = 0; ; j += 7)
    {
      k = a();
      if ((k & 0x80) == 0)
        break;
      paramInt2 += ((k & 0x7F) << j);
    }
    return paramInt2 + (k << j);
  }

  public String readString()
  {
    int i = readInt(a(), 255);
    byte[] arrayOfByte = new byte[i];
    this.g -= i;
    this.b.readFully(arrayOfByte);
    return new String(arrayOfByte, "UTF-8");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Hpack.Reader
 * JD-Core Version:    0.6.2
 */
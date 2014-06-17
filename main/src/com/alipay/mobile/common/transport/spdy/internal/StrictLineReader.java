package com.alipay.mobile.common.transport.spdy.internal;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

public class StrictLineReader
  implements Closeable
{
  private final InputStream a;
  private final Charset b;
  private byte[] c;
  private int d;
  private int e;

  public StrictLineReader(InputStream paramInputStream, int paramInt, Charset paramCharset)
  {
    if ((paramInputStream == null) || (paramCharset == null))
      throw new NullPointerException();
    if (paramInt < 0)
      throw new IllegalArgumentException("capacity <= 0");
    if (!paramCharset.equals(Util.US_ASCII))
      throw new IllegalArgumentException("Unsupported encoding");
    this.a = paramInputStream;
    this.b = paramCharset;
    this.c = new byte[paramInt];
  }

  public StrictLineReader(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, 8192, paramCharset);
  }

  private void a()
  {
    int i = this.a.read(this.c, 0, this.c.length);
    if (i == -1)
      throw new EOFException();
    this.d = 0;
    this.e = i;
  }

  public void close()
  {
    synchronized (this.a)
    {
      if (this.c != null)
      {
        this.c = null;
        this.a.close();
      }
      return;
    }
  }

  public int readInt()
  {
    String str = readLine();
    try
    {
      int i = Integer.parseInt(str);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    throw new IOException("expected an int but was \"" + str + "\"");
  }

  public String readLine()
  {
    synchronized (this.a)
    {
      if (this.c == null)
        throw new IOException("LineReader is closed");
    }
    if (this.d >= this.e)
      a();
    for (int i = this.d; ; i++)
    {
      if (i != this.e)
      {
        if (this.c[i] != 10)
          continue;
        if ((i == this.d) || (this.c[(i - 1)] != 13))
          break label272;
      }
      label272: for (int k = i - 1; ; k = i)
      {
        String str2 = new String(this.c, this.d, k - this.d, this.b.name());
        this.d = (i + 1);
        return str2;
        StrictLineReader.1 local1 = new StrictLineReader.1(this, 80 + (this.e - this.d));
        while (true)
        {
          local1.write(this.c, this.d, this.e - this.d);
          this.e = -1;
          a();
          for (int j = this.d; j != this.e; j++)
            if (this.c[j] == 10)
            {
              if (j != this.d)
                local1.write(this.c, this.d, j - this.d);
              this.d = (j + 1);
              String str1 = local1.toString();
              return str1;
            }
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.StrictLineReader
 * JD-Core Version:    0.6.2
 */
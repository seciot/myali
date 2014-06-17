package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;

class NameValueBlockReader
  implements Closeable
{
  private final DataInputStream a = new DataInputStream(this.b);
  private final NameValueBlockReader.FillableInflaterInputStream b = new NameValueBlockReader.FillableInflaterInputStream(new NameValueBlockReader.1(this, paramInputStream), new NameValueBlockReader.2(this));
  private int c;

  NameValueBlockReader(InputStream paramInputStream)
  {
  }

  private String a()
  {
    int i = this.a.readInt();
    byte[] arrayOfByte = new byte[i];
    Util.readFully(this.a, arrayOfByte);
    return new String(arrayOfByte, 0, i, "UTF-8");
  }

  public void close()
  {
    this.a.close();
  }

  public List readNameValueBlock(int paramInt)
  {
    this.c = (paramInt + this.c);
    int i;
    try
    {
      i = this.a.readInt();
      if (i < 0)
        throw new IOException("numberOfPairs < 0: " + i);
    }
    catch (DataFormatException localDataFormatException)
    {
      throw new IOException(localDataFormatException.getMessage());
    }
    if (i > 1024)
      throw new IOException("numberOfPairs > 1024: " + i);
    ArrayList localArrayList = new ArrayList(i * 2);
    for (int j = 0; j < i; j++)
    {
      String str1 = a();
      String str2 = a();
      if (str1.length() == 0)
        throw new IOException("name.length == 0");
      localArrayList.add(str1);
      localArrayList.add(str2);
    }
    if (this.c != 0)
    {
      this.b.fill();
      if (this.c != 0)
        throw new IOException("compressedLimit > 0: " + this.c);
    }
    return localArrayList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.NameValueBlockReader
 * JD-Core Version:    0.6.2
 */
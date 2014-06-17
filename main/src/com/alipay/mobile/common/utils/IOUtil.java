package com.alipay.mobile.common.utils;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public class IOUtil
{
  public static byte[] InputStreamToByte(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    while (true)
    {
      int i = paramInputStream.read();
      if (i == -1)
        break;
      localByteArrayOutputStream.write(i);
    }
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return arrayOfByte;
  }

  public static void closeStream(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  // ERROR //
  public static java.lang.String convertStreamToString(InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 41	java/io/BufferedReader
    //   3: dup
    //   4: new 43	java/io/InputStreamReader
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 46	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   12: invokespecial 49	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   15: astore_1
    //   16: new 51	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   23: astore_2
    //   24: aload_1
    //   25: invokevirtual 56	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   28: astore 7
    //   30: aload 7
    //   32: ifnull +24 -> 56
    //   35: aload_2
    //   36: aload 7
    //   38: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: goto -18 -> 24
    //   45: astore 5
    //   47: aload_0
    //   48: invokevirtual 61	java/io/InputStream:close	()V
    //   51: aload_2
    //   52: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: areturn
    //   56: aload_0
    //   57: invokevirtual 61	java/io/InputStream:close	()V
    //   60: goto -9 -> 51
    //   63: astore 9
    //   65: goto -14 -> 51
    //   68: astore_3
    //   69: aload_0
    //   70: invokevirtual 61	java/io/InputStream:close	()V
    //   73: aload_3
    //   74: athrow
    //   75: astore 6
    //   77: goto -26 -> 51
    //   80: astore 4
    //   82: goto -9 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   24	30	45	java/io/IOException
    //   35	42	45	java/io/IOException
    //   56	60	63	java/io/IOException
    //   24	30	68	finally
    //   35	42	68	finally
    //   47	51	75	java/io/IOException
    //   69	73	80	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.IOUtil
 * JD-Core Version:    0.6.2
 */
package com.aps;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.BitSet;

public final class aw
{
  private RandomAccessFile a;
  private z b;
  private File c = null;

  protected aw(z paramz)
  {
    this.b = paramz;
  }

  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    for (int i = paramInt1 + 1500 * (paramInt3 - 1); i >= paramInt2; i -= 1500);
    return i;
  }

  private int a(BitSet paramBitSet)
  {
    for (int i = 0; ; i++)
    {
      int j = paramBitSet.length();
      int k = 0;
      if (i < j)
      {
        if (paramBitSet.get(i))
          k = 4 + i * 1500 + this.b.a();
      }
      else
        return k;
    }
  }

  private ArrayList a(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    while (true)
    {
      if (paramInt1 <= paramInt2);
      try
      {
        this.a.seek(paramInt1);
        int i = this.a.readInt();
        this.a.readLong();
        if (i <= 0)
          i = 2147483647;
        byte[] arrayOfByte = new byte[i];
        this.a.read(arrayOfByte);
        localArrayList.add(arrayOfByte);
        label71: paramInt1 += 1500;
        continue;
        return localArrayList;
      }
      catch (IOException localIOException)
      {
        break label71;
      }
    }
  }

  private BitSet a()
  {
    byte[] arrayOfByte = new byte[this.b.a()];
    try
    {
      this.a.read(arrayOfByte);
      BitSet localBitSet = z.b(arrayOfByte);
      return localBitSet;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  protected final y a(int paramInt)
  {
    Object localObject1 = null;
    while (true)
    {
      try
      {
        try
        {
          if (!s.a)
            return localObject1;
          this.c = this.b.b();
          if (this.c == null)
          {
            localObject1 = null;
            continue;
          }
        }
        finally
        {
        }
      }
      finally
      {
      }
      try
      {
        this.a = new RandomAccessFile(this.c, "rw");
        BitSet localBitSet = a();
        if (localBitSet == null)
        {
          this.c.delete();
          RandomAccessFile localRandomAccessFile4 = this.a;
          if (localRandomAccessFile4 != null);
          try
          {
            this.a.close();
            localObject1 = null;
          }
          catch (IOException localIOException4)
          {
            while (true)
              localIOException4.printStackTrace();
          }
        }
        else
        {
          int i = a(localBitSet);
          int j = a(i, (int)this.c.length(), paramInt);
          ArrayList localArrayList = a(i, j);
          int[] arrayOfInt = new int[2];
          arrayOfInt[0] = ((-4 + (i - this.b.a())) / 1500);
          arrayOfInt[1] = ((-4 + (j - this.b.a())) / 1500);
          y localy = new y(this.c, localArrayList, arrayOfInt);
          RandomAccessFile localRandomAccessFile5 = this.a;
          if (localRandomAccessFile5 != null);
          while (true)
          {
            try
            {
              this.a.close();
              localObject1 = localy;
            }
            catch (IOException localIOException5)
            {
              localIOException5.printStackTrace();
            }
            localObject1 = localy;
          }
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        while (true)
        {
          localFileNotFoundException.printStackTrace();
          RandomAccessFile localRandomAccessFile3 = this.a;
          localObject1 = null;
          if (localRandomAccessFile3 != null)
            try
            {
              this.a.close();
              localObject1 = null;
            }
            catch (IOException localIOException3)
            {
              localIOException3.printStackTrace();
              localObject1 = null;
            }
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        while (true)
        {
          localOutOfMemoryError.printStackTrace();
          RandomAccessFile localRandomAccessFile2 = this.a;
          if (localRandomAccessFile2 != null);
          try
          {
            this.a.close();
            this.c.delete();
            this.c = null;
            localObject1 = null;
          }
          catch (IOException localIOException2)
          {
            while (true)
              localIOException2.printStackTrace();
          }
        }
      }
      finally
      {
        RandomAccessFile localRandomAccessFile1 = this.a;
        if (localRandomAccessFile1 == null);
      }
    }
    try
    {
      this.a.close();
      throw localObject4;
    }
    catch (IOException localIOException1)
    {
      while (true)
        localIOException1.printStackTrace();
    }
  }

  // ERROR //
  protected final void a(y paramy)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: aload_1
    //   8: getfield 119	com/aps/y:a	Ljava/io/File;
    //   11: putfield 17	com/aps/aw:c	Ljava/io/File;
    //   14: aload_0
    //   15: getfield 17	com/aps/aw:c	Ljava/io/File;
    //   18: ifnonnull +8 -> 26
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: new 45	java/io/RandomAccessFile
    //   30: dup
    //   31: aload_0
    //   32: getfield 17	com/aps/aw:c	Ljava/io/File;
    //   35: ldc 87
    //   37: invokespecial 90	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   40: putfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   43: aload_0
    //   44: getfield 19	com/aps/aw:b	Lcom/aps/z;
    //   47: invokevirtual 35	com/aps/z:a	()I
    //   50: newarray byte
    //   52: astore 15
    //   54: aload_0
    //   55: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   58: aload 15
    //   60: invokevirtual 61	java/io/RandomAccessFile:read	([B)I
    //   63: pop
    //   64: aload 15
    //   66: invokestatic 69	com/aps/z:b	([B)Ljava/util/BitSet;
    //   69: astore_2
    //   70: aload_1
    //   71: invokevirtual 121	com/aps/y:b	()Z
    //   74: ifeq +54 -> 128
    //   77: aload_1
    //   78: getfield 124	com/aps/y:b	[I
    //   81: iconst_0
    //   82: iaload
    //   83: istore 19
    //   85: iload 19
    //   87: aload_1
    //   88: getfield 124	com/aps/y:b	[I
    //   91: iconst_1
    //   92: iaload
    //   93: if_icmpgt +16 -> 109
    //   96: aload_2
    //   97: iload 19
    //   99: iconst_0
    //   100: invokevirtual 128	java/util/BitSet:set	(IZ)V
    //   103: iinc 19 1
    //   106: goto -21 -> 85
    //   109: aload_0
    //   110: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   113: lconst_0
    //   114: invokevirtual 49	java/io/RandomAccessFile:seek	(J)V
    //   117: aload_0
    //   118: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   121: aload_2
    //   122: invokestatic 131	com/aps/z:a	(Ljava/util/BitSet;)[B
    //   125: invokevirtual 135	java/io/RandomAccessFile:write	([B)V
    //   128: aload_0
    //   129: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   132: astore 17
    //   134: aload 17
    //   136: ifnull +10 -> 146
    //   139: aload_0
    //   140: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   143: invokevirtual 101	java/io/RandomAccessFile:close	()V
    //   146: aload_2
    //   147: invokevirtual 138	java/util/BitSet:isEmpty	()Z
    //   150: ifeq +11 -> 161
    //   153: aload_0
    //   154: getfield 17	com/aps/aw:c	Ljava/io/File;
    //   157: invokevirtual 98	java/io/File:delete	()Z
    //   160: pop
    //   161: aload_0
    //   162: aconst_null
    //   163: putfield 17	com/aps/aw:c	Ljava/io/File;
    //   166: aload_0
    //   167: monitorexit
    //   168: goto -145 -> 23
    //   171: astore 4
    //   173: aload_0
    //   174: monitorexit
    //   175: aload 4
    //   177: athrow
    //   178: astore_3
    //   179: aload_0
    //   180: monitorexit
    //   181: aload_3
    //   182: athrow
    //   183: astore 18
    //   185: aload 18
    //   187: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   190: goto -44 -> 146
    //   193: astore 12
    //   195: aload 12
    //   197: invokevirtual 115	java/io/FileNotFoundException:printStackTrace	()V
    //   200: aload_0
    //   201: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   204: astore 13
    //   206: aload 13
    //   208: ifnull -62 -> 146
    //   211: aload_0
    //   212: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   215: invokevirtual 101	java/io/RandomAccessFile:close	()V
    //   218: goto -72 -> 146
    //   221: astore 14
    //   223: aload 14
    //   225: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   228: goto -82 -> 146
    //   231: astore 8
    //   233: aload 8
    //   235: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   238: aload_0
    //   239: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   242: astore 9
    //   244: aload 9
    //   246: ifnull -100 -> 146
    //   249: aload_0
    //   250: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   253: invokevirtual 101	java/io/RandomAccessFile:close	()V
    //   256: goto -110 -> 146
    //   259: astore 10
    //   261: aload 10
    //   263: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   266: goto -120 -> 146
    //   269: astore 5
    //   271: aload_0
    //   272: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   275: astore 6
    //   277: aload 6
    //   279: ifnull +10 -> 289
    //   282: aload_0
    //   283: getfield 43	com/aps/aw:a	Ljava/io/RandomAccessFile;
    //   286: invokevirtual 101	java/io/RandomAccessFile:close	()V
    //   289: aload 5
    //   291: athrow
    //   292: astore 7
    //   294: aload 7
    //   296: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   299: goto -10 -> 289
    //
    // Exception table:
    //   from	to	target	type
    //   6	23	171	finally
    //   128	134	171	finally
    //   139	146	171	finally
    //   146	161	171	finally
    //   161	168	171	finally
    //   185	190	171	finally
    //   200	206	171	finally
    //   211	218	171	finally
    //   223	228	171	finally
    //   238	244	171	finally
    //   249	256	171	finally
    //   261	266	171	finally
    //   271	277	171	finally
    //   282	289	171	finally
    //   289	292	171	finally
    //   294	299	171	finally
    //   4	6	178	finally
    //   173	178	178	finally
    //   139	146	183	java/io/IOException
    //   26	85	193	java/io/FileNotFoundException
    //   85	103	193	java/io/FileNotFoundException
    //   109	128	193	java/io/FileNotFoundException
    //   211	218	221	java/io/IOException
    //   26	85	231	java/io/IOException
    //   85	103	231	java/io/IOException
    //   109	128	231	java/io/IOException
    //   249	256	259	java/io/IOException
    //   26	85	269	finally
    //   85	103	269	finally
    //   109	128	269	finally
    //   195	200	269	finally
    //   233	238	269	finally
    //   282	289	292	java/io/IOException
  }

  protected final void a(String paramString)
  {
    if ((this.c != null) && (this.c.getAbsolutePath().contains(paramString)));
    try
    {
      this.a.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.aw
 * JD-Core Version:    0.6.2
 */
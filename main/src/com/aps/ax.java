package com.aps;

import java.io.File;
import java.io.RandomAccessFile;

public final class ax
{
  private RandomAccessFile a;
  private z b;
  private String c = "";
  private File d = null;

  protected ax(z paramz)
  {
    this.b = paramz;
  }

  // ERROR //
  protected final void a(long paramLong, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 25	com/aps/ax:b	Lcom/aps/z;
    //   7: lload_1
    //   8: invokevirtual 35	com/aps/z:a	(J)Ljava/io/File;
    //   11: putfield 23	com/aps/ax:d	Ljava/io/File;
    //   14: aload_0
    //   15: getfield 23	com/aps/ax:d	Ljava/io/File;
    //   18: astore 5
    //   20: aload 5
    //   22: ifnonnull +6 -> 28
    //   25: aload_0
    //   26: monitorexit
    //   27: return
    //   28: aload_0
    //   29: new 37	java/io/RandomAccessFile
    //   32: dup
    //   33: aload_0
    //   34: getfield 23	com/aps/ax:d	Ljava/io/File;
    //   37: ldc 39
    //   39: invokespecial 42	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   42: putfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   45: aload_0
    //   46: getfield 25	com/aps/ax:b	Lcom/aps/z;
    //   49: invokevirtual 47	com/aps/z:a	()I
    //   52: newarray byte
    //   54: astore 15
    //   56: aload_0
    //   57: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   60: aload 15
    //   62: invokevirtual 51	java/io/RandomAccessFile:read	([B)I
    //   65: istore 16
    //   67: aload_0
    //   68: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   71: invokevirtual 55	java/io/RandomAccessFile:getFilePointer	()J
    //   74: pop2
    //   75: iload 16
    //   77: iconst_m1
    //   78: if_icmpne +223 -> 301
    //   81: iconst_0
    //   82: istore 20
    //   84: aload 15
    //   86: invokestatic 58	com/aps/z:b	([B)Ljava/util/BitSet;
    //   89: astore 21
    //   91: iconst_4
    //   92: aload_0
    //   93: getfield 25	com/aps/ax:b	Lcom/aps/z;
    //   96: invokevirtual 47	com/aps/z:a	()I
    //   99: iadd
    //   100: iload 20
    //   102: sipush 1500
    //   105: imul
    //   106: iadd
    //   107: istore 22
    //   109: aload_0
    //   110: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   113: iload 22
    //   115: i2l
    //   116: invokevirtual 62	java/io/RandomAccessFile:seek	(J)V
    //   119: aload_3
    //   120: invokestatic 65	com/aps/z:a	([B)[B
    //   123: astore 23
    //   125: aload_0
    //   126: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   129: aload 23
    //   131: arraylength
    //   132: invokevirtual 69	java/io/RandomAccessFile:writeInt	(I)V
    //   135: aload_0
    //   136: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   139: lload_1
    //   140: invokevirtual 72	java/io/RandomAccessFile:writeLong	(J)V
    //   143: aload_0
    //   144: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   147: aload 23
    //   149: invokevirtual 76	java/io/RandomAccessFile:write	([B)V
    //   152: aload 21
    //   154: iload 20
    //   156: iconst_1
    //   157: invokevirtual 82	java/util/BitSet:set	(IZ)V
    //   160: aload_0
    //   161: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   164: lconst_0
    //   165: invokevirtual 62	java/io/RandomAccessFile:seek	(J)V
    //   168: aload_0
    //   169: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   172: aload 21
    //   174: invokestatic 85	com/aps/z:a	(Ljava/util/BitSet;)[B
    //   177: invokevirtual 76	java/io/RandomAccessFile:write	([B)V
    //   180: aload_0
    //   181: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   184: invokevirtual 55	java/io/RandomAccessFile:getFilePointer	()J
    //   187: pop2
    //   188: iload 20
    //   190: iconst_1
    //   191: iadd
    //   192: istore 26
    //   194: aload_0
    //   195: getfield 25	com/aps/ax:b	Lcom/aps/z;
    //   198: invokevirtual 47	com/aps/z:a	()I
    //   201: iconst_3
    //   202: ishl
    //   203: istore 27
    //   205: iconst_0
    //   206: istore 28
    //   208: iload 26
    //   210: iload 27
    //   212: if_icmpne +224 -> 436
    //   215: aload_0
    //   216: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   219: iload 28
    //   221: invokevirtual 69	java/io/RandomAccessFile:writeInt	(I)V
    //   224: aload_0
    //   225: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   228: invokevirtual 55	java/io/RandomAccessFile:getFilePointer	()J
    //   231: pop2
    //   232: aload_0
    //   233: getfield 21	com/aps/ax:c	Ljava/lang/String;
    //   236: aload_0
    //   237: getfield 23	com/aps/ax:d	Ljava/io/File;
    //   240: invokevirtual 91	java/io/File:getName	()Ljava/lang/String;
    //   243: invokevirtual 97	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   246: ifne +14 -> 260
    //   249: aload_0
    //   250: aload_0
    //   251: getfield 23	com/aps/ax:d	Ljava/io/File;
    //   254: invokevirtual 91	java/io/File:getName	()Ljava/lang/String;
    //   257: putfield 21	com/aps/ax:c	Ljava/lang/String;
    //   260: aload_0
    //   261: getfield 23	com/aps/ax:d	Ljava/io/File;
    //   264: invokevirtual 100	java/io/File:length	()J
    //   267: pop2
    //   268: aload_0
    //   269: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   272: astore 33
    //   274: aload 33
    //   276: ifnull +10 -> 286
    //   279: aload_0
    //   280: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   283: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   286: aload_0
    //   287: aconst_null
    //   288: putfield 23	com/aps/ax:d	Ljava/io/File;
    //   291: goto -266 -> 25
    //   294: astore 4
    //   296: aload_0
    //   297: monitorexit
    //   298: aload 4
    //   300: athrow
    //   301: aload_0
    //   302: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   305: invokevirtual 106	java/io/RandomAccessFile:readInt	()I
    //   308: istore 19
    //   310: iload 19
    //   312: istore 20
    //   314: goto -230 -> 84
    //   317: astore 34
    //   319: aload 34
    //   321: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   324: goto -38 -> 286
    //   327: astore 12
    //   329: aload 12
    //   331: invokevirtual 110	java/io/FileNotFoundException:printStackTrace	()V
    //   334: aload_0
    //   335: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   338: astore 13
    //   340: aload 13
    //   342: ifnull -56 -> 286
    //   345: aload_0
    //   346: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   349: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   352: goto -66 -> 286
    //   355: astore 14
    //   357: aload 14
    //   359: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   362: goto -76 -> 286
    //   365: astore 9
    //   367: aload 9
    //   369: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   372: aload_0
    //   373: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   376: astore 10
    //   378: aload 10
    //   380: ifnull -94 -> 286
    //   383: aload_0
    //   384: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   387: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   390: goto -104 -> 286
    //   393: astore 11
    //   395: aload 11
    //   397: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   400: goto -114 -> 286
    //   403: astore 6
    //   405: aload_0
    //   406: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   409: astore 7
    //   411: aload 7
    //   413: ifnull +10 -> 423
    //   416: aload_0
    //   417: getfield 44	com/aps/ax:a	Ljava/io/RandomAccessFile;
    //   420: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   423: aload 6
    //   425: athrow
    //   426: astore 8
    //   428: aload 8
    //   430: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   433: goto -10 -> 423
    //   436: iload 26
    //   438: istore 28
    //   440: goto -225 -> 215
    //
    // Exception table:
    //   from	to	target	type
    //   2	20	294	finally
    //   268	274	294	finally
    //   279	286	294	finally
    //   286	291	294	finally
    //   319	324	294	finally
    //   334	340	294	finally
    //   345	352	294	finally
    //   357	362	294	finally
    //   372	378	294	finally
    //   383	390	294	finally
    //   395	400	294	finally
    //   405	411	294	finally
    //   416	423	294	finally
    //   423	426	294	finally
    //   428	433	294	finally
    //   279	286	317	java/io/IOException
    //   28	75	327	java/io/FileNotFoundException
    //   84	188	327	java/io/FileNotFoundException
    //   194	205	327	java/io/FileNotFoundException
    //   215	260	327	java/io/FileNotFoundException
    //   260	268	327	java/io/FileNotFoundException
    //   301	310	327	java/io/FileNotFoundException
    //   345	352	355	java/io/IOException
    //   28	75	365	java/io/IOException
    //   84	188	365	java/io/IOException
    //   194	205	365	java/io/IOException
    //   215	260	365	java/io/IOException
    //   260	268	365	java/io/IOException
    //   301	310	365	java/io/IOException
    //   383	390	393	java/io/IOException
    //   28	75	403	finally
    //   84	188	403	finally
    //   194	205	403	finally
    //   215	260	403	finally
    //   260	268	403	finally
    //   301	310	403	finally
    //   329	334	403	finally
    //   367	372	403	finally
    //   416	423	426	java/io/IOException
  }

  protected final void a(String paramString)
  {
    if ((this.d != null) && (this.d.getAbsolutePath().contains(paramString)));
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
 * Qualified Name:     com.aps.ax
 * JD-Core Version:    0.6.2
 */
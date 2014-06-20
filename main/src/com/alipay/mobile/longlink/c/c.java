package com.alipay.mobile.longlink.c;

public class c
{
  private static final String a = AppBundle.a(c.class);

  // ERROR //
  public static byte[] a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +8 -> 9
    //   4: aload_0
    //   5: arraylength
    //   6: ifgt +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 23	java/io/ByteArrayOutputStream
    //   14: dup
    //   15: invokespecial 24	java/io/ByteArrayOutputStream:<init>	()V
    //   18: astore_1
    //   19: new 26	java/util/zip/GZIPOutputStream
    //   22: dup
    //   23: aload_1
    //   24: invokespecial 29	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   27: astore_2
    //   28: aload_2
    //   29: aload_0
    //   30: iconst_0
    //   31: aload_0
    //   32: arraylength
    //   33: invokevirtual 33	java/util/zip/GZIPOutputStream:write	([BII)V
    //   36: aload_2
    //   37: invokevirtual 36	java/util/zip/GZIPOutputStream:finish	()V
    //   40: aload_1
    //   41: invokevirtual 40	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   44: astore 9
    //   46: aload_2
    //   47: invokevirtual 43	java/util/zip/GZIPOutputStream:close	()V
    //   50: aload_1
    //   51: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   54: aload 9
    //   56: areturn
    //   57: astore 11
    //   59: aload 11
    //   61: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   64: aload 9
    //   66: areturn
    //   67: astore 10
    //   69: aload 10
    //   71: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   74: goto -24 -> 50
    //   77: astore_3
    //   78: aconst_null
    //   79: astore_2
    //   80: aload_3
    //   81: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   84: aload_2
    //   85: ifnull +7 -> 92
    //   88: aload_2
    //   89: invokevirtual 43	java/util/zip/GZIPOutputStream:close	()V
    //   92: aload_1
    //   93: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   96: aconst_null
    //   97: areturn
    //   98: astore 7
    //   100: aload 7
    //   102: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   105: aconst_null
    //   106: areturn
    //   107: astore 8
    //   109: aload 8
    //   111: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   114: goto -22 -> 92
    //   117: astore 12
    //   119: aconst_null
    //   120: astore_2
    //   121: aload 12
    //   123: astore 4
    //   125: aload_2
    //   126: ifnull +7 -> 133
    //   129: aload_2
    //   130: invokevirtual 43	java/util/zip/GZIPOutputStream:close	()V
    //   133: aload_1
    //   134: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   137: aload 4
    //   139: athrow
    //   140: astore 6
    //   142: aload 6
    //   144: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   147: goto -14 -> 133
    //   150: astore 5
    //   152: aload 5
    //   154: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   157: goto -20 -> 137
    //   160: astore 4
    //   162: goto -37 -> 125
    //   165: astore_3
    //   166: goto -86 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   50	54	57	java/io/IOException
    //   46	50	67	java/io/IOException
    //   19	28	77	java/io/IOException
    //   92	96	98	java/io/IOException
    //   88	92	107	java/io/IOException
    //   19	28	117	finally
    //   129	133	140	java/io/IOException
    //   133	137	150	java/io/IOException
    //   28	46	160	finally
    //   80	84	160	finally
    //   28	46	165	java/io/IOException
  }

  // ERROR //
  public static byte[] b(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +8 -> 9
    //   4: aload_0
    //   5: arraylength
    //   6: ifgt +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 23	java/io/ByteArrayOutputStream
    //   14: dup
    //   15: invokespecial 24	java/io/ByteArrayOutputStream:<init>	()V
    //   18: astore_1
    //   19: new 50	java/io/ByteArrayInputStream
    //   22: dup
    //   23: aload_0
    //   24: invokespecial 53	java/io/ByteArrayInputStream:<init>	([B)V
    //   27: astore_2
    //   28: new 55	java/util/zip/GZIPInputStream
    //   31: dup
    //   32: aload_2
    //   33: invokespecial 58	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   36: astore_3
    //   37: sipush 512
    //   40: newarray byte
    //   42: astore 10
    //   44: aload_3
    //   45: aload 10
    //   47: invokevirtual 62	java/util/zip/GZIPInputStream:read	([B)I
    //   50: istore 11
    //   52: iload 11
    //   54: iflt +45 -> 99
    //   57: aload_1
    //   58: aload 10
    //   60: iconst_0
    //   61: iload 11
    //   63: invokevirtual 63	java/io/ByteArrayOutputStream:write	([BII)V
    //   66: goto -22 -> 44
    //   69: astore 7
    //   71: aload 7
    //   73: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   76: aload_3
    //   77: ifnull +7 -> 84
    //   80: aload_3
    //   81: invokevirtual 64	java/util/zip/GZIPInputStream:close	()V
    //   84: aload_1
    //   85: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   88: aconst_null
    //   89: areturn
    //   90: astore 8
    //   92: aload 8
    //   94: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   97: aconst_null
    //   98: areturn
    //   99: aload_1
    //   100: invokevirtual 67	java/io/ByteArrayOutputStream:flush	()V
    //   103: aload_1
    //   104: invokevirtual 40	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   107: astore 12
    //   109: aload_3
    //   110: invokevirtual 64	java/util/zip/GZIPInputStream:close	()V
    //   113: aload_1
    //   114: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   117: aload 12
    //   119: areturn
    //   120: astore 14
    //   122: aload 14
    //   124: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   127: aload 12
    //   129: areturn
    //   130: astore 13
    //   132: aload 13
    //   134: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   137: goto -24 -> 113
    //   140: astore 9
    //   142: aload 9
    //   144: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   147: goto -63 -> 84
    //   150: astore 15
    //   152: aconst_null
    //   153: astore_3
    //   154: aload 15
    //   156: astore 4
    //   158: aload_3
    //   159: ifnull +7 -> 166
    //   162: aload_3
    //   163: invokevirtual 64	java/util/zip/GZIPInputStream:close	()V
    //   166: aload_1
    //   167: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   170: aload 4
    //   172: athrow
    //   173: astore 6
    //   175: aload 6
    //   177: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   180: goto -14 -> 166
    //   183: astore 5
    //   185: aload 5
    //   187: invokevirtual 47	java/io/IOException:printStackTrace	()V
    //   190: goto -20 -> 170
    //   193: astore 4
    //   195: goto -37 -> 158
    //   198: astore 7
    //   200: aconst_null
    //   201: astore_3
    //   202: goto -131 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   37	44	69	java/io/IOException
    //   44	52	69	java/io/IOException
    //   57	66	69	java/io/IOException
    //   99	109	69	java/io/IOException
    //   84	88	90	java/io/IOException
    //   113	117	120	java/io/IOException
    //   109	113	130	java/io/IOException
    //   80	84	140	java/io/IOException
    //   28	37	150	finally
    //   162	166	173	java/io/IOException
    //   166	170	183	java/io/IOException
    //   37	44	193	finally
    //   44	52	193	finally
    //   57	66	193	finally
    //   71	76	193	finally
    //   99	109	193	finally
    //   28	37	198	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.c.c
 * JD-Core Version:    0.6.2
 */
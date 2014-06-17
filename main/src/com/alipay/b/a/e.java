package com.alipay.b.a;

public final class e extends Thread
{
  private short[] a = new short[16384];
  private boolean b = true;

  public e(d paramd)
  {
  }

  private boolean a()
  {
    try
    {
      boolean bool = this.b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.b = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: iconst_3
    //   1: istore_1
    //   2: iconst_2
    //   3: istore_2
    //   4: ldc 27
    //   6: bipush 16
    //   8: iconst_2
    //   9: invokestatic 33	android/media/AudioRecord:getMinBufferSize	(III)I
    //   12: istore 24
    //   14: iload 24
    //   16: istore 4
    //   18: iload 4
    //   20: ifge +399 -> 419
    //   23: ldc 27
    //   25: bipush 16
    //   27: iconst_3
    //   28: invokestatic 33	android/media/AudioRecord:getMinBufferSize	(III)I
    //   31: istore 27
    //   33: iload 27
    //   35: istore 4
    //   37: iload_1
    //   38: istore 25
    //   40: iload 4
    //   42: ifge +6 -> 48
    //   45: iload_2
    //   46: istore 25
    //   48: iload 25
    //   50: iload_1
    //   51: if_icmpne +5 -> 56
    //   54: iconst_1
    //   55: istore_2
    //   56: iload 4
    //   58: iload_2
    //   59: irem
    //   60: ifeq +352 -> 412
    //   63: iload 4
    //   65: iconst_1
    //   66: iadd
    //   67: istore 5
    //   69: iload 5
    //   71: sipush 4096
    //   74: if_icmpge +331 -> 405
    //   77: sipush 4096
    //   80: istore 5
    //   82: iload 25
    //   84: istore 6
    //   86: ldc2_w 34
    //   89: invokestatic 39	java/lang/Thread:sleep	(J)V
    //   92: aload_0
    //   93: invokespecial 41	com/alipay/b/a/e:a	()Z
    //   96: ifeq -10 -> 86
    //   99: ldc 43
    //   101: new 45	java/lang/StringBuilder
    //   104: dup
    //   105: ldc 47
    //   107: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   110: iload 6
    //   112: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   115: ldc 56
    //   117: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: iload 5
    //   122: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   125: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 69	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   131: pop
    //   132: new 29	android/media/AudioRecord
    //   135: dup
    //   136: aload_0
    //   137: getfield 14	com/alipay/b/a/e:c	Lcom/alipay/b/a/d;
    //   140: getfield 74	com/alipay/b/a/d:a	I
    //   143: ldc 27
    //   145: aload_0
    //   146: getfield 14	com/alipay/b/a/e:c	Lcom/alipay/b/a/d;
    //   149: getfield 76	com/alipay/b/a/d:b	I
    //   152: iload 6
    //   154: iload 5
    //   156: invokespecial 79	android/media/AudioRecord:<init>	(IIIII)V
    //   159: astore 9
    //   161: aload 9
    //   163: invokevirtual 82	android/media/AudioRecord:startRecording	()V
    //   166: sipush 7350
    //   169: istore 17
    //   171: aload_0
    //   172: invokespecial 41	com/alipay/b/a/e:a	()Z
    //   175: ifeq +250 -> 425
    //   178: iload 17
    //   180: ifgt +74 -> 254
    //   183: goto +242 -> 425
    //   186: aload_0
    //   187: invokespecial 41	com/alipay/b/a/e:a	()Z
    //   190: istore 19
    //   192: iload 19
    //   194: ifeq +10 -> 204
    //   197: iload 18
    //   199: ldc 83
    //   201: if_icmplt +83 -> 284
    //   204: aload 9
    //   206: ifnull +8 -> 214
    //   209: aload 9
    //   211: invokevirtual 86	android/media/AudioRecord:stop	()V
    //   214: aload 9
    //   216: ifnull +8 -> 224
    //   219: aload 9
    //   221: invokevirtual 89	android/media/AudioRecord:release	()V
    //   224: ldc2_w 34
    //   227: invokestatic 39	java/lang/Thread:sleep	(J)V
    //   230: goto -144 -> 86
    //   233: astore 14
    //   235: goto -149 -> 86
    //   238: astore_3
    //   239: iconst_0
    //   240: istore 4
    //   242: iload_2
    //   243: istore_1
    //   244: iload 4
    //   246: istore 5
    //   248: iload_1
    //   249: istore 6
    //   251: goto -165 -> 86
    //   254: aload 9
    //   256: aload_0
    //   257: getfield 19	com/alipay/b/a/e:a	[S
    //   260: iconst_0
    //   261: sipush 16384
    //   264: invokevirtual 93	android/media/AudioRecord:read	([SII)I
    //   267: istore 23
    //   269: iload 23
    //   271: iflt +154 -> 425
    //   274: iload 17
    //   276: iload 23
    //   278: isub
    //   279: istore 17
    //   281: goto -110 -> 171
    //   284: aload 9
    //   286: aload_0
    //   287: getfield 19	com/alipay/b/a/e:a	[S
    //   290: iconst_0
    //   291: sipush 16384
    //   294: invokevirtual 93	android/media/AudioRecord:read	([SII)I
    //   297: istore 20
    //   299: iload 20
    //   301: ifle -97 -> 204
    //   304: iload 18
    //   306: iload 20
    //   308: iadd
    //   309: istore 18
    //   311: invokestatic 98	com/alipay/b/a/b:a	()Lcom/alipay/b/a/b;
    //   314: aload_0
    //   315: getfield 19	com/alipay/b/a/e:a	[S
    //   318: iload 20
    //   320: invokevirtual 101	com/alipay/b/a/b:a	([SI)Z
    //   323: istore 21
    //   325: iload 21
    //   327: ifne -141 -> 186
    //   330: ldc2_w 34
    //   333: invokestatic 39	java/lang/Thread:sleep	(J)V
    //   336: goto -150 -> 186
    //   339: astore 22
    //   341: goto -155 -> 186
    //   344: astore 12
    //   346: aconst_null
    //   347: astore 11
    //   349: aload 12
    //   351: invokevirtual 104	java/lang/Exception:printStackTrace	()V
    //   354: ldc 43
    //   356: aload 12
    //   358: invokevirtual 105	java/lang/Exception:toString	()Ljava/lang/String;
    //   361: invokestatic 69	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   364: pop
    //   365: aload 11
    //   367: astore 9
    //   369: goto -165 -> 204
    //   372: astore 7
    //   374: goto -282 -> 92
    //   377: astore 16
    //   379: goto -165 -> 214
    //   382: astore 15
    //   384: goto -160 -> 224
    //   387: astore 10
    //   389: aload 9
    //   391: astore 11
    //   393: aload 10
    //   395: astore 12
    //   397: goto -48 -> 349
    //   400: astore 26
    //   402: goto -158 -> 244
    //   405: iload 25
    //   407: istore 6
    //   409: goto -323 -> 86
    //   412: iload 4
    //   414: istore 5
    //   416: goto -347 -> 69
    //   419: iload_2
    //   420: istore 25
    //   422: goto -382 -> 40
    //   425: iconst_0
    //   426: istore 18
    //   428: goto -242 -> 186
    //
    // Exception table:
    //   from	to	target	type
    //   224	230	233	java/lang/Exception
    //   4	14	238	java/lang/Exception
    //   330	336	339	java/lang/Exception
    //   132	161	344	java/lang/Exception
    //   86	92	372	java/lang/Exception
    //   209	214	377	java/lang/Exception
    //   219	224	382	java/lang/Exception
    //   161	166	387	java/lang/Exception
    //   171	178	387	java/lang/Exception
    //   186	192	387	java/lang/Exception
    //   254	269	387	java/lang/Exception
    //   284	299	387	java/lang/Exception
    //   311	325	387	java/lang/Exception
    //   23	33	400	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.b.a.e
 * JD-Core Version:    0.6.2
 */
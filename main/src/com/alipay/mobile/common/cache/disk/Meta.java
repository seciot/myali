package com.alipay.mobile.common.cache.disk;

import java.io.File;

public class Meta
{
  private DiskCache a;
  private String b;

  public Meta(DiskCache paramDiskCache)
  {
    this.a = paramDiskCache;
    this.b = (this.a.getDirectory() + File.separator + "_meta");
  }

  // ERROR //
  void init()
  {
    // Byte code:
    //   0: new 30	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 40	com/alipay/mobile/common/cache/disk/Meta:b	Ljava/lang/String;
    //   8: invokespecial 48	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_1
    //   12: aload_1
    //   13: invokevirtual 52	java/io/File:exists	()Z
    //   16: ifne +4 -> 20
    //   19: return
    //   20: new 54	java/io/BufferedReader
    //   23: dup
    //   24: new 56	java/io/FileReader
    //   27: dup
    //   28: aload_1
    //   29: invokespecial 59	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   32: invokespecial 62	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   35: astore_2
    //   36: aload_2
    //   37: invokevirtual 65	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   40: astore 10
    //   42: aload_2
    //   43: invokevirtual 65	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   46: invokestatic 71	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   49: istore 11
    //   51: aload_2
    //   52: invokevirtual 65	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   55: invokestatic 77	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   58: lstore 12
    //   60: aload_2
    //   61: invokevirtual 65	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   64: astore 14
    //   66: aload 10
    //   68: ldc 79
    //   70: invokevirtual 85	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   73: ifeq +11 -> 84
    //   76: aload 14
    //   78: invokevirtual 89	java/lang/String:length	()I
    //   81: ifne +109 -> 190
    //   84: new 45	java/io/IOException
    //   87: dup
    //   88: new 17	java/lang/StringBuilder
    //   91: dup
    //   92: ldc 91
    //   94: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   97: aload 10
    //   99: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: ldc 94
    //   104: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: iload 11
    //   109: invokevirtual 97	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   112: ldc 94
    //   114: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: lload 12
    //   119: invokevirtual 100	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   122: ldc 94
    //   124: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: aload 14
    //   129: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc 102
    //   134: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokespecial 103	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   143: athrow
    //   144: astore 5
    //   146: aload_2
    //   147: astore 6
    //   149: aload_1
    //   150: invokevirtual 106	java/io/File:delete	()Z
    //   153: pop
    //   154: aload_0
    //   155: getfield 15	com/alipay/mobile/common/cache/disk/Meta:a	Lcom/alipay/mobile/common/cache/disk/DiskCache;
    //   158: invokevirtual 109	com/alipay/mobile/common/cache/disk/DiskCache:clear	()V
    //   161: aload 5
    //   163: invokevirtual 112	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   166: pop
    //   167: aload 6
    //   169: ifnull -150 -> 19
    //   172: aload 6
    //   174: invokevirtual 115	java/io/BufferedReader:close	()V
    //   177: return
    //   178: astore 9
    //   180: new 117	java/lang/RuntimeException
    //   183: dup
    //   184: aload 9
    //   186: invokespecial 120	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   189: athrow
    //   190: iload 11
    //   192: iconst_1
    //   193: if_icmple +108 -> 301
    //   196: new 45	java/io/IOException
    //   199: dup
    //   200: new 17	java/lang/StringBuilder
    //   203: dup
    //   204: ldc 122
    //   206: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   209: iload 11
    //   211: invokevirtual 97	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   214: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: invokespecial 103	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   220: athrow
    //   221: astore_3
    //   222: aload_2
    //   223: ifnull +7 -> 230
    //   226: aload_2
    //   227: invokevirtual 115	java/io/BufferedReader:close	()V
    //   230: aload_3
    //   231: athrow
    //   232: new 124	com/alipay/mobile/common/cache/disk/Entity
    //   235: dup
    //   236: aload 16
    //   238: iconst_0
    //   239: aaload
    //   240: aload 16
    //   242: iconst_1
    //   243: aaload
    //   244: aload 16
    //   246: iconst_2
    //   247: aaload
    //   248: aload 16
    //   250: iconst_3
    //   251: aaload
    //   252: invokestatic 71	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   255: aload 16
    //   257: iconst_4
    //   258: aaload
    //   259: invokestatic 77	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   262: aload 16
    //   264: iconst_5
    //   265: aaload
    //   266: aload 16
    //   268: bipush 6
    //   270: aaload
    //   271: invokestatic 77	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   274: aload 16
    //   276: bipush 7
    //   278: aaload
    //   279: invokestatic 77	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   282: aload 16
    //   284: bipush 8
    //   286: aaload
    //   287: invokespecial 127	com/alipay/mobile/common/cache/disk/Entity:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJLjava/lang/String;)V
    //   290: astore 17
    //   292: aload_0
    //   293: getfield 15	com/alipay/mobile/common/cache/disk/Meta:a	Lcom/alipay/mobile/common/cache/disk/DiskCache;
    //   296: aload 17
    //   298: invokevirtual 131	com/alipay/mobile/common/cache/disk/DiskCache:addEntity	(Lcom/alipay/mobile/common/cache/disk/Entity;)V
    //   301: aload_2
    //   302: invokevirtual 65	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   305: astore 15
    //   307: aload 15
    //   309: ifnull +45 -> 354
    //   312: aload 15
    //   314: ldc 133
    //   316: invokevirtual 137	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   319: astore 16
    //   321: aload 16
    //   323: arraylength
    //   324: bipush 9
    //   326: if_icmpge -94 -> 232
    //   329: new 45	java/io/IOException
    //   332: dup
    //   333: new 17	java/lang/StringBuilder
    //   336: dup
    //   337: ldc 139
    //   339: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   342: aload 15
    //   344: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: invokespecial 103	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   353: athrow
    //   354: aload_2
    //   355: invokevirtual 115	java/io/BufferedReader:close	()V
    //   358: return
    //   359: astore 18
    //   361: new 117	java/lang/RuntimeException
    //   364: dup
    //   365: aload 18
    //   367: invokespecial 120	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   370: athrow
    //   371: astore 4
    //   373: new 117	java/lang/RuntimeException
    //   376: dup
    //   377: aload 4
    //   379: invokespecial 120	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   382: athrow
    //   383: astore_3
    //   384: aconst_null
    //   385: astore_2
    //   386: goto -164 -> 222
    //   389: astore_3
    //   390: aload 6
    //   392: astore_2
    //   393: goto -171 -> 222
    //   396: astore 5
    //   398: aconst_null
    //   399: astore 6
    //   401: goto -252 -> 149
    //
    // Exception table:
    //   from	to	target	type
    //   36	84	144	java/lang/Exception
    //   84	144	144	java/lang/Exception
    //   196	221	144	java/lang/Exception
    //   232	301	144	java/lang/Exception
    //   301	307	144	java/lang/Exception
    //   312	354	144	java/lang/Exception
    //   172	177	178	java/io/IOException
    //   36	84	221	finally
    //   84	144	221	finally
    //   196	221	221	finally
    //   232	301	221	finally
    //   301	307	221	finally
    //   312	354	221	finally
    //   354	358	359	java/io/IOException
    //   226	230	371	java/io/IOException
    //   20	36	383	finally
    //   149	167	389	finally
    //   20	36	396	java/lang/Exception
  }

  // ERROR //
  void writeMeta(java.util.HashMap paramHashMap)
  {
    // Byte code:
    //   0: new 30	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 40	com/alipay/mobile/common/cache/disk/Meta:b	Ljava/lang/String;
    //   8: invokespecial 48	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: new 143	java/io/BufferedWriter
    //   15: dup
    //   16: new 145	java/io/FileWriter
    //   19: dup
    //   20: aload_2
    //   21: invokespecial 146	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   24: invokespecial 149	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   27: astore_3
    //   28: aload_3
    //   29: ldc 79
    //   31: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   34: aload_3
    //   35: bipush 10
    //   37: invokevirtual 155	java/io/BufferedWriter:write	(I)V
    //   40: aload_3
    //   41: iconst_1
    //   42: invokestatic 159	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   45: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   48: aload_3
    //   49: bipush 10
    //   51: invokevirtual 155	java/io/BufferedWriter:write	(I)V
    //   54: aload_3
    //   55: aload_0
    //   56: getfield 15	com/alipay/mobile/common/cache/disk/Meta:a	Lcom/alipay/mobile/common/cache/disk/DiskCache;
    //   59: invokevirtual 163	com/alipay/mobile/common/cache/disk/DiskCache:getMaxsize	()J
    //   62: invokestatic 166	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   65: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   68: aload_3
    //   69: bipush 10
    //   71: invokevirtual 155	java/io/BufferedWriter:write	(I)V
    //   74: aload_3
    //   75: bipush 32
    //   77: invokevirtual 155	java/io/BufferedWriter:write	(I)V
    //   80: aload_3
    //   81: bipush 10
    //   83: invokevirtual 155	java/io/BufferedWriter:write	(I)V
    //   86: aload_1
    //   87: invokevirtual 172	java/util/HashMap:values	()Ljava/util/Collection;
    //   90: invokeinterface 178 1 0
    //   95: astore 11
    //   97: aload 11
    //   99: invokeinterface 183 1 0
    //   104: ifeq +209 -> 313
    //   107: aload 11
    //   109: invokeinterface 187 1 0
    //   114: checkcast 124	com/alipay/mobile/common/cache/disk/Entity
    //   117: astore 14
    //   119: aload_3
    //   120: aload 14
    //   122: invokevirtual 190	com/alipay/mobile/common/cache/disk/Entity:getOwner	()Ljava/lang/String;
    //   125: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   128: aload_3
    //   129: ldc 133
    //   131: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   134: aload_3
    //   135: aload 14
    //   137: invokevirtual 193	com/alipay/mobile/common/cache/disk/Entity:getGroup	()Ljava/lang/String;
    //   140: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   143: aload_3
    //   144: ldc 133
    //   146: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   149: aload_3
    //   150: aload 14
    //   152: invokevirtual 196	com/alipay/mobile/common/cache/disk/Entity:getUrl	()Ljava/lang/String;
    //   155: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   158: aload_3
    //   159: ldc 133
    //   161: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   164: aload_3
    //   165: aload 14
    //   167: invokevirtual 199	com/alipay/mobile/common/cache/disk/Entity:getUsedTime	()I
    //   170: invokestatic 159	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   173: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   176: aload_3
    //   177: ldc 133
    //   179: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   182: aload_3
    //   183: aload 14
    //   185: invokevirtual 202	com/alipay/mobile/common/cache/disk/Entity:getSize	()J
    //   188: invokestatic 166	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   191: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   194: aload_3
    //   195: ldc 133
    //   197: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   200: aload_3
    //   201: aload 14
    //   203: invokevirtual 205	com/alipay/mobile/common/cache/disk/Entity:getPath	()Ljava/lang/String;
    //   206: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   209: aload_3
    //   210: ldc 133
    //   212: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   215: aload_3
    //   216: aload 14
    //   218: invokevirtual 208	com/alipay/mobile/common/cache/disk/Entity:getCreateTime	()J
    //   221: invokestatic 166	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   224: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   227: aload_3
    //   228: ldc 133
    //   230: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   233: aload_3
    //   234: aload 14
    //   236: invokevirtual 211	com/alipay/mobile/common/cache/disk/Entity:getPeriod	()J
    //   239: invokestatic 166	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   242: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   245: aload_3
    //   246: ldc 133
    //   248: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   251: aload_3
    //   252: aload 14
    //   254: invokevirtual 214	com/alipay/mobile/common/cache/disk/Entity:getContentType	()Ljava/lang/String;
    //   257: invokevirtual 152	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   260: aload_3
    //   261: bipush 10
    //   263: invokevirtual 155	java/io/BufferedWriter:write	(I)V
    //   266: goto -169 -> 97
    //   269: astore 7
    //   271: new 17	java/lang/StringBuilder
    //   274: dup
    //   275: ldc 216
    //   277: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   280: aload 7
    //   282: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   285: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: ifnull +9 -> 297
    //   291: aload 7
    //   293: invokevirtual 220	java/io/IOException:getMessage	()Ljava/lang/String;
    //   296: pop
    //   297: aload_0
    //   298: getfield 15	com/alipay/mobile/common/cache/disk/Meta:a	Lcom/alipay/mobile/common/cache/disk/DiskCache;
    //   301: invokevirtual 109	com/alipay/mobile/common/cache/disk/DiskCache:clear	()V
    //   304: aload_3
    //   305: ifnull +7 -> 312
    //   308: aload_3
    //   309: invokevirtual 221	java/io/BufferedWriter:close	()V
    //   312: return
    //   313: aload_3
    //   314: invokevirtual 224	java/io/BufferedWriter:flush	()V
    //   317: aload_3
    //   318: invokevirtual 221	java/io/BufferedWriter:close	()V
    //   321: return
    //   322: astore 12
    //   324: new 17	java/lang/StringBuilder
    //   327: dup
    //   328: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   331: aload 12
    //   333: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   336: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   339: pop
    //   340: return
    //   341: astore 8
    //   343: new 17	java/lang/StringBuilder
    //   346: dup
    //   347: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   350: aload 8
    //   352: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   355: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   358: pop
    //   359: return
    //   360: astore 4
    //   362: aconst_null
    //   363: astore_3
    //   364: aload_3
    //   365: ifnull +7 -> 372
    //   368: aload_3
    //   369: invokevirtual 221	java/io/BufferedWriter:close	()V
    //   372: aload 4
    //   374: athrow
    //   375: astore 5
    //   377: new 17	java/lang/StringBuilder
    //   380: dup
    //   381: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   384: aload 5
    //   386: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   389: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   392: pop
    //   393: goto -21 -> 372
    //   396: astore 4
    //   398: goto -34 -> 364
    //   401: astore 7
    //   403: aconst_null
    //   404: astore_3
    //   405: goto -134 -> 271
    //
    // Exception table:
    //   from	to	target	type
    //   28	97	269	java/io/IOException
    //   97	266	269	java/io/IOException
    //   313	317	269	java/io/IOException
    //   317	321	322	java/io/IOException
    //   308	312	341	java/io/IOException
    //   12	28	360	finally
    //   368	372	375	java/io/IOException
    //   28	97	396	finally
    //   97	266	396	finally
    //   271	297	396	finally
    //   297	304	396	finally
    //   313	317	396	finally
    //   12	28	401	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.Meta
 * JD-Core Version:    0.6.2
 */
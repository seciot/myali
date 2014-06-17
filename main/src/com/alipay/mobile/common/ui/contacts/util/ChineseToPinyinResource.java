package com.alipay.mobile.common.ui.contacts.util;

class ChineseToPinyinResource
{
  private String[] a = new String[20902];

  private ChineseToPinyinResource()
  {
    a();
  }

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc 24
    //   4: invokestatic 30	com/alipay/mobile/common/ui/contacts/util/ResourceHelper:getResourceInputStream	(Ljava/lang/String;)Ljava/io/BufferedInputStream;
    //   7: astore 12
    //   9: aload 12
    //   11: astore 6
    //   13: aload 6
    //   15: ifnonnull +36 -> 51
    //   18: new 32	java/lang/NullPointerException
    //   21: dup
    //   22: invokespecial 33	java/lang/NullPointerException:<init>	()V
    //   25: athrow
    //   26: astore_2
    //   27: aconst_null
    //   28: astore_3
    //   29: aload 6
    //   31: astore 4
    //   33: aload_2
    //   34: invokevirtual 36	java/io/FileNotFoundException:printStackTrace	()V
    //   37: aload_1
    //   38: invokevirtual 41	java/io/BufferedReader:close	()V
    //   41: aload_3
    //   42: invokevirtual 44	java/io/InputStreamReader:close	()V
    //   45: aload 4
    //   47: invokevirtual 47	java/io/BufferedInputStream:close	()V
    //   50: return
    //   51: new 43	java/io/InputStreamReader
    //   54: dup
    //   55: aload 6
    //   57: ldc 49
    //   59: invokespecial 52	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   62: astore 7
    //   64: new 38	java/io/BufferedReader
    //   67: dup
    //   68: aload 7
    //   70: invokespecial 55	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   73: astore 13
    //   75: iconst_0
    //   76: istore 14
    //   78: aload 13
    //   80: invokevirtual 59	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   83: astore 15
    //   85: aload 15
    //   87: ifnull +18 -> 105
    //   90: aload_0
    //   91: getfield 14	com/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource:a	[Ljava/lang/String;
    //   94: iload 14
    //   96: aload 15
    //   98: aastore
    //   99: iinc 14 1
    //   102: goto -24 -> 78
    //   105: aload 13
    //   107: invokevirtual 41	java/io/BufferedReader:close	()V
    //   110: aload 7
    //   112: invokevirtual 44	java/io/InputStreamReader:close	()V
    //   115: aload 6
    //   117: invokevirtual 47	java/io/BufferedInputStream:close	()V
    //   120: return
    //   121: astore 16
    //   123: return
    //   124: astore 10
    //   126: aconst_null
    //   127: astore 7
    //   129: aconst_null
    //   130: astore 6
    //   132: aload 10
    //   134: invokevirtual 60	java/io/IOException:printStackTrace	()V
    //   137: aload_1
    //   138: invokevirtual 41	java/io/BufferedReader:close	()V
    //   141: aload 7
    //   143: invokevirtual 44	java/io/InputStreamReader:close	()V
    //   146: aload 6
    //   148: invokevirtual 47	java/io/BufferedInputStream:close	()V
    //   151: return
    //   152: astore 11
    //   154: return
    //   155: astore 5
    //   157: aconst_null
    //   158: astore 7
    //   160: aconst_null
    //   161: astore 6
    //   163: aload_1
    //   164: invokevirtual 41	java/io/BufferedReader:close	()V
    //   167: aload 7
    //   169: invokevirtual 44	java/io/InputStreamReader:close	()V
    //   172: aload 6
    //   174: invokevirtual 47	java/io/BufferedInputStream:close	()V
    //   177: aload 5
    //   179: athrow
    //   180: astore 8
    //   182: goto -5 -> 177
    //   185: astore 5
    //   187: aconst_null
    //   188: astore_1
    //   189: aconst_null
    //   190: astore 7
    //   192: goto -29 -> 163
    //   195: astore 5
    //   197: goto -34 -> 163
    //   200: astore 5
    //   202: aload 13
    //   204: astore_1
    //   205: goto -42 -> 163
    //   208: astore 5
    //   210: aload 4
    //   212: astore 6
    //   214: aload_3
    //   215: astore 7
    //   217: goto -54 -> 163
    //   220: astore 10
    //   222: aconst_null
    //   223: astore_1
    //   224: aconst_null
    //   225: astore 7
    //   227: goto -95 -> 132
    //   230: astore 10
    //   232: aconst_null
    //   233: astore_1
    //   234: goto -102 -> 132
    //   237: astore 10
    //   239: aload 13
    //   241: astore_1
    //   242: goto -110 -> 132
    //   245: astore 9
    //   247: return
    //   248: astore_2
    //   249: aconst_null
    //   250: astore_1
    //   251: aconst_null
    //   252: astore_3
    //   253: aconst_null
    //   254: astore 4
    //   256: goto -223 -> 33
    //   259: astore_2
    //   260: aload 7
    //   262: astore_3
    //   263: aload 6
    //   265: astore 4
    //   267: aconst_null
    //   268: astore_1
    //   269: goto -236 -> 33
    //   272: astore_2
    //   273: aload 13
    //   275: astore_1
    //   276: aload 7
    //   278: astore_3
    //   279: aload 6
    //   281: astore 4
    //   283: goto -250 -> 33
    //
    // Exception table:
    //   from	to	target	type
    //   18	26	26	java/io/FileNotFoundException
    //   51	64	26	java/io/FileNotFoundException
    //   105	120	121	java/io/IOException
    //   2	9	124	java/io/IOException
    //   137	151	152	java/io/IOException
    //   2	9	155	finally
    //   163	177	180	java/io/IOException
    //   18	26	185	finally
    //   51	64	185	finally
    //   64	75	195	finally
    //   132	137	195	finally
    //   78	85	200	finally
    //   90	99	200	finally
    //   33	37	208	finally
    //   18	26	220	java/io/IOException
    //   51	64	220	java/io/IOException
    //   64	75	230	java/io/IOException
    //   78	85	237	java/io/IOException
    //   90	99	237	java/io/IOException
    //   37	50	245	java/io/IOException
    //   2	9	248	java/io/FileNotFoundException
    //   64	75	259	java/io/FileNotFoundException
    //   78	85	272	java/io/FileNotFoundException
    //   90	99	272	java/io/FileNotFoundException
  }

  static ChineseToPinyinResource getInstance()
  {
    return ChineseToPinyinResource.ChineseToPinyinResourceHolder.theInstance;
  }

  String[] getHanyuPinyinStringArray(char paramChar)
  {
    String str;
    int m;
    if ((paramChar >= '一') && (paramChar <= 40891))
    {
      int k = paramChar - Integer.valueOf("4E00", 16).intValue();
      str = this.a[k];
      if ((str != null) && (!str.equals("(none0)")) && (str.startsWith("(")) && (str.endsWith(")")))
      {
        m = 1;
        if (m == 0)
          break label120;
      }
    }
    while (true)
    {
      String[] arrayOfString = null;
      if (str != null)
      {
        int i = str.indexOf("(");
        int j = str.lastIndexOf(")");
        arrayOfString = str.substring(i + 1, j).split(",");
      }
      return arrayOfString;
      m = 0;
      break;
      label120: str = null;
      continue;
      str = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.ChineseToPinyinResource
 * JD-Core Version:    0.6.2
 */
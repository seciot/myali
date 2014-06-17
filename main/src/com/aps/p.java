package com.aps;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;

public final class p
{
  private static String a = "";
  private static String b = "log.txt";
  private static String c = "";

  // ERROR //
  protected static void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokestatic 29	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   5: pop
    //   6: invokestatic 32	com/aps/p:a	()Z
    //   9: ifeq +574 -> 583
    //   12: invokestatic 34	com/aps/p:b	()Z
    //   15: ifeq +568 -> 583
    //   18: new 36	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   25: ldc 12
    //   27: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc 45
    //   32: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: astore_3
    //   39: new 36	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   46: aload_3
    //   47: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: astore 4
    //   52: invokestatic 55	java/lang/System:currentTimeMillis	()J
    //   55: lstore 5
    //   57: invokestatic 61	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   60: astore 7
    //   62: aload 7
    //   64: lload 5
    //   66: invokevirtual 65	java/util/Calendar:setTimeInMillis	(J)V
    //   69: new 36	java/lang/StringBuilder
    //   72: dup
    //   73: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   76: ldc 12
    //   78: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: astore 8
    //   83: iconst_1
    //   84: anewarray 4	java/lang/Object
    //   87: astore 9
    //   89: aload 9
    //   91: iconst_0
    //   92: iconst_1
    //   93: aload 7
    //   95: iconst_2
    //   96: invokevirtual 69	java/util/Calendar:get	(I)I
    //   99: iadd
    //   100: invokestatic 75	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   103: aastore
    //   104: aload 8
    //   106: ldc 77
    //   108: aload 9
    //   110: invokestatic 83	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   113: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: ldc 85
    //   118: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: astore 10
    //   126: new 36	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   133: aload 10
    //   135: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: astore 11
    //   140: iconst_1
    //   141: anewarray 4	java/lang/Object
    //   144: astore 12
    //   146: aload 12
    //   148: iconst_0
    //   149: aload 7
    //   151: iconst_5
    //   152: invokevirtual 69	java/util/Calendar:get	(I)I
    //   155: invokestatic 75	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   158: aastore
    //   159: aload 11
    //   161: ldc 77
    //   163: aload 12
    //   165: invokestatic 83	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   168: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: ldc 87
    //   173: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: astore 13
    //   181: new 36	java/lang/StringBuilder
    //   184: dup
    //   185: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   188: aload 13
    //   190: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: astore 14
    //   195: iconst_1
    //   196: anewarray 4	java/lang/Object
    //   199: astore 15
    //   201: aload 15
    //   203: iconst_0
    //   204: aload 7
    //   206: bipush 11
    //   208: invokevirtual 69	java/util/Calendar:get	(I)I
    //   211: invokestatic 75	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   214: aastore
    //   215: aload 14
    //   217: ldc 77
    //   219: aload 15
    //   221: invokestatic 83	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   224: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: ldc 89
    //   229: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   235: astore 16
    //   237: new 36	java/lang/StringBuilder
    //   240: dup
    //   241: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   244: aload 16
    //   246: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: astore 17
    //   251: iconst_1
    //   252: anewarray 4	java/lang/Object
    //   255: astore 18
    //   257: aload 18
    //   259: iconst_0
    //   260: aload 7
    //   262: bipush 12
    //   264: invokevirtual 69	java/util/Calendar:get	(I)I
    //   267: invokestatic 75	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   270: aastore
    //   271: aload 17
    //   273: ldc 77
    //   275: aload 18
    //   277: invokestatic 83	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   280: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: ldc 89
    //   285: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   291: astore 19
    //   293: new 36	java/lang/StringBuilder
    //   296: dup
    //   297: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   300: aload 19
    //   302: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: astore 20
    //   307: iconst_1
    //   308: anewarray 4	java/lang/Object
    //   311: astore 21
    //   313: aload 21
    //   315: iconst_0
    //   316: aload 7
    //   318: bipush 13
    //   320: invokevirtual 69	java/util/Calendar:get	(I)I
    //   323: invokestatic 75	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   326: aastore
    //   327: aload 20
    //   329: ldc 77
    //   331: aload 21
    //   333: invokestatic 83	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   336: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: ldc 91
    //   341: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   347: astore 22
    //   349: new 36	java/lang/StringBuilder
    //   352: dup
    //   353: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   356: aload 22
    //   358: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: astore 23
    //   363: iconst_1
    //   364: anewarray 4	java/lang/Object
    //   367: astore 24
    //   369: aload 24
    //   371: iconst_0
    //   372: aload 7
    //   374: bipush 14
    //   376: invokevirtual 69	java/util/Calendar:get	(I)I
    //   379: invokestatic 75	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   382: aastore
    //   383: aload 4
    //   385: aload 23
    //   387: ldc 93
    //   389: aload 24
    //   391: invokestatic 83	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   394: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   400: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   406: astore 25
    //   408: new 36	java/lang/StringBuilder
    //   411: dup
    //   412: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   415: aload 25
    //   417: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: ldc 95
    //   422: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   425: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: astore 26
    //   430: new 36	java/lang/StringBuilder
    //   433: dup
    //   434: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   437: aload 26
    //   439: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   442: ldc 45
    //   444: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   447: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   450: astore 27
    //   452: new 36	java/lang/StringBuilder
    //   455: dup
    //   456: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   459: aload 27
    //   461: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: aload_0
    //   465: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   468: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   471: astore 28
    //   473: new 36	java/lang/StringBuilder
    //   476: dup
    //   477: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   480: aload 28
    //   482: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   485: ldc 95
    //   487: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: astore 29
    //   495: new 36	java/lang/StringBuilder
    //   498: dup
    //   499: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   502: aload 29
    //   504: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   507: ldc 87
    //   509: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   515: astore 30
    //   517: new 36	java/lang/StringBuilder
    //   520: dup
    //   521: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   524: aload 30
    //   526: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   529: aload_1
    //   530: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   533: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   536: astore 31
    //   538: new 97	java/io/File
    //   541: dup
    //   542: getstatic 14	com/aps/p:a	Ljava/lang/String;
    //   545: invokespecial 100	java/io/File:<init>	(Ljava/lang/String;)V
    //   548: astore 32
    //   550: aload 32
    //   552: invokevirtual 103	java/io/File:exists	()Z
    //   555: ifne +29 -> 584
    //   558: aload 32
    //   560: invokevirtual 106	java/io/File:mkdirs	()Z
    //   563: ifne +21 -> 584
    //   566: aload 32
    //   568: invokevirtual 109	java/io/File:isDirectory	()Z
    //   571: ifne +13 -> 584
    //   574: getstatic 20	com/aps/p:c	Ljava/lang/String;
    //   577: ldc 111
    //   579: invokestatic 114	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   582: pop
    //   583: return
    //   584: new 97	java/io/File
    //   587: dup
    //   588: new 36	java/lang/StringBuilder
    //   591: dup
    //   592: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   595: getstatic 14	com/aps/p:a	Ljava/lang/String;
    //   598: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: getstatic 18	com/aps/p:b	Ljava/lang/String;
    //   604: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   607: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   610: invokespecial 100	java/io/File:<init>	(Ljava/lang/String;)V
    //   613: astore 33
    //   615: aconst_null
    //   616: astore 34
    //   618: new 116	java/io/BufferedWriter
    //   621: dup
    //   622: new 118	java/io/OutputStreamWriter
    //   625: dup
    //   626: new 120	java/io/FileOutputStream
    //   629: dup
    //   630: aload 33
    //   632: iconst_1
    //   633: invokespecial 123	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   636: invokespecial 126	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   639: sipush 1500
    //   642: invokespecial 129	java/io/BufferedWriter:<init>	(Ljava/io/Writer;I)V
    //   645: astore 35
    //   647: aload 35
    //   649: aload 31
    //   651: invokevirtual 132	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   654: aload 35
    //   656: invokevirtual 135	java/io/BufferedWriter:newLine	()V
    //   659: aload 35
    //   661: invokevirtual 138	java/io/BufferedWriter:close	()V
    //   664: return
    //   665: astore 40
    //   667: aload 40
    //   669: invokevirtual 141	java/lang/Exception:printStackTrace	()V
    //   672: return
    //   673: astore 36
    //   675: aconst_null
    //   676: astore 35
    //   678: aload 36
    //   680: invokevirtual 141	java/lang/Exception:printStackTrace	()V
    //   683: aload 35
    //   685: invokevirtual 138	java/io/BufferedWriter:close	()V
    //   688: return
    //   689: astore 39
    //   691: aload 39
    //   693: invokevirtual 141	java/lang/Exception:printStackTrace	()V
    //   696: return
    //   697: astore 37
    //   699: aload 34
    //   701: invokevirtual 138	java/io/BufferedWriter:close	()V
    //   704: aload 37
    //   706: athrow
    //   707: astore 38
    //   709: aload 38
    //   711: invokevirtual 141	java/lang/Exception:printStackTrace	()V
    //   714: goto -10 -> 704
    //   717: astore 37
    //   719: aload 35
    //   721: astore 34
    //   723: goto -24 -> 699
    //   726: astore 36
    //   728: goto -50 -> 678
    //
    // Exception table:
    //   from	to	target	type
    //   659	664	665	java/lang/Exception
    //   618	647	673	java/lang/Exception
    //   683	688	689	java/lang/Exception
    //   618	647	697	finally
    //   699	704	707	java/lang/Exception
    //   647	659	717	finally
    //   678	683	717	finally
    //   647	659	726	java/lang/Exception
  }

  private static boolean a()
  {
    try
    {
      boolean bool1 = Environment.getExternalStorageState().equals("mounted");
      boolean bool2 = false;
      if (bool1)
        bool2 = true;
      return bool2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  protected static boolean a(Context paramContext)
  {
    if (paramContext != null)
    {
      c = paramContext.getPackageName();
      return true;
    }
    Log.d(c, "Error: No SD Card!");
    return false;
  }

  private static boolean b()
  {
    try
    {
      if (a == "")
      {
        if (c == "")
          return false;
        a = Environment.getExternalStorageDirectory().getPath() + "/Android/data/" + c + "/files/";
      }
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.p
 * JD-Core Version:    0.6.2
 */
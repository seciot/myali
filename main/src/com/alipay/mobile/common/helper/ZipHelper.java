package com.alipay.mobile.common.helper;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class ZipHelper
{
  // ERROR //
  public static boolean unZip(java.io.InputStream paramInputStream, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_1
    //   3: istore_3
    //   4: sipush 8192
    //   7: newarray byte
    //   9: astore 4
    //   11: new 16	java/util/zip/ZipInputStream
    //   14: dup
    //   15: new 18	java/io/BufferedInputStream
    //   18: dup
    //   19: aload_0
    //   20: invokespecial 21	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   23: invokespecial 22	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   26: astore 5
    //   28: aload 5
    //   30: invokevirtual 26	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   33: astore 10
    //   35: aload 10
    //   37: ifnull +158 -> 195
    //   40: new 28	java/io/File
    //   43: dup
    //   44: new 30	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   51: aload_1
    //   52: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: aload 10
    //   57: invokevirtual 41	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   60: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokespecial 47	java/io/File:<init>	(Ljava/lang/String;)V
    //   69: astore 11
    //   71: aload 10
    //   73: invokevirtual 51	java/util/zip/ZipEntry:isDirectory	()Z
    //   76: ifeq +46 -> 122
    //   79: aload 11
    //   81: invokevirtual 54	java/io/File:mkdirs	()Z
    //   84: pop
    //   85: goto -57 -> 28
    //   88: astore 8
    //   90: aload 8
    //   92: invokevirtual 57	java/lang/Exception:printStackTrace	()V
    //   95: aload 5
    //   97: ifnull +13 -> 110
    //   100: aload 5
    //   102: invokevirtual 60	java/util/zip/ZipInputStream:closeEntry	()V
    //   105: aload 5
    //   107: invokevirtual 63	java/util/zip/ZipInputStream:close	()V
    //   110: aload_2
    //   111: ifnull +7 -> 118
    //   114: aload_2
    //   115: invokevirtual 66	java/io/FileOutputStream:close	()V
    //   118: iconst_0
    //   119: istore_3
    //   120: iload_3
    //   121: ireturn
    //   122: aload 11
    //   124: invokevirtual 70	java/io/File:getParentFile	()Ljava/io/File;
    //   127: astore 12
    //   129: aload 12
    //   131: invokevirtual 73	java/io/File:exists	()Z
    //   134: ifne +9 -> 143
    //   137: aload 12
    //   139: invokevirtual 54	java/io/File:mkdirs	()Z
    //   142: pop
    //   143: new 65	java/io/FileOutputStream
    //   146: dup
    //   147: aload 11
    //   149: invokespecial 76	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   152: astore 13
    //   154: aload 5
    //   156: aload 4
    //   158: invokevirtual 80	java/util/zip/ZipInputStream:read	([B)I
    //   161: istore 14
    //   163: iload 14
    //   165: ifle +24 -> 189
    //   168: aload 13
    //   170: aload 4
    //   172: iconst_0
    //   173: iload 14
    //   175: invokevirtual 84	java/io/FileOutputStream:write	([BII)V
    //   178: goto -24 -> 154
    //   181: astore 8
    //   183: aload 13
    //   185: astore_2
    //   186: goto -96 -> 90
    //   189: aload 13
    //   191: astore_2
    //   192: goto -164 -> 28
    //   195: aload 5
    //   197: invokevirtual 60	java/util/zip/ZipInputStream:closeEntry	()V
    //   200: aload 5
    //   202: invokevirtual 63	java/util/zip/ZipInputStream:close	()V
    //   205: aload_2
    //   206: ifnull -86 -> 120
    //   209: aload_2
    //   210: invokevirtual 66	java/io/FileOutputStream:close	()V
    //   213: iload_3
    //   214: ireturn
    //   215: astore 17
    //   217: aload 17
    //   219: invokevirtual 85	java/io/IOException:printStackTrace	()V
    //   222: iload_3
    //   223: ireturn
    //   224: astore 9
    //   226: aload 9
    //   228: invokevirtual 85	java/io/IOException:printStackTrace	()V
    //   231: iconst_0
    //   232: ireturn
    //   233: astore 6
    //   235: aconst_null
    //   236: astore 5
    //   238: aload 5
    //   240: ifnull +13 -> 253
    //   243: aload 5
    //   245: invokevirtual 60	java/util/zip/ZipInputStream:closeEntry	()V
    //   248: aload 5
    //   250: invokevirtual 63	java/util/zip/ZipInputStream:close	()V
    //   253: aload_2
    //   254: ifnull +7 -> 261
    //   257: aload_2
    //   258: invokevirtual 66	java/io/FileOutputStream:close	()V
    //   261: aload 6
    //   263: athrow
    //   264: astore 7
    //   266: aload 7
    //   268: invokevirtual 85	java/io/IOException:printStackTrace	()V
    //   271: goto -10 -> 261
    //   274: astore 6
    //   276: aload 13
    //   278: astore_2
    //   279: goto -41 -> 238
    //   282: astore 6
    //   284: goto -46 -> 238
    //   287: astore 8
    //   289: aconst_null
    //   290: astore 5
    //   292: aconst_null
    //   293: astore_2
    //   294: goto -204 -> 90
    //
    // Exception table:
    //   from	to	target	type
    //   28	35	88	java/lang/Exception
    //   40	85	88	java/lang/Exception
    //   122	143	88	java/lang/Exception
    //   143	154	88	java/lang/Exception
    //   154	163	181	java/lang/Exception
    //   168	178	181	java/lang/Exception
    //   195	205	215	java/io/IOException
    //   209	213	215	java/io/IOException
    //   100	110	224	java/io/IOException
    //   114	118	224	java/io/IOException
    //   11	28	233	finally
    //   243	253	264	java/io/IOException
    //   257	261	264	java/io/IOException
    //   154	163	274	finally
    //   168	178	274	finally
    //   28	35	282	finally
    //   40	85	282	finally
    //   90	95	282	finally
    //   122	143	282	finally
    //   143	154	282	finally
    //   11	28	287	java/lang/Exception
  }

  public static boolean unZip(String paramString1, String paramString2)
  {
    try
    {
      boolean bool = unZip(new FileInputStream(paramString1), paramString2);
      return bool;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.helper.ZipHelper
 * JD-Core Version:    0.6.2
 */
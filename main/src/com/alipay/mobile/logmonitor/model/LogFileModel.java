package com.alipay.mobile.logmonitor.model;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSecurityEncryptor;
import java.io.BufferedWriter;
import java.io.File;

public class LogFileModel
{
  private long a = 1048576L;
  private long b = 0L;
  private File c = null;

  public LogFileModel(File paramFile)
  {
    if (-1L > 0L)
      this.a = -1L;
    this.c = paramFile;
    if (!a())
      throw new RuntimeException("op file error." + paramFile.getAbsolutePath());
  }

  // ERROR //
  public final boolean a()
  {
    // Byte code:
    //   0: new 54	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 55	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 22	com/alipay/mobile/logmonitor/model/LogFileModel:c	Ljava/io/File;
    //   12: invokevirtual 58	java/io/File:exists	()Z
    //   15: ifeq +265 -> 280
    //   18: aload_0
    //   19: getfield 22	com/alipay/mobile/logmonitor/model/LogFileModel:c	Ljava/io/File;
    //   22: invokevirtual 62	java/io/File:length	()J
    //   25: aload_0
    //   26: getfield 18	com/alipay/mobile/logmonitor/model/LogFileModel:a	J
    //   29: lcmp
    //   30: ifle +250 -> 280
    //   33: aload_0
    //   34: getfield 22	com/alipay/mobile/logmonitor/model/LogFileModel:c	Ljava/io/File;
    //   37: invokestatic 68	com/alipay/mobile/logmonitor/util/LogMonitorUtil:readFileToString	(Ljava/io/File;)Ljava/util/List;
    //   40: astore_2
    //   41: aload_2
    //   42: ifnull +78 -> 120
    //   45: aload_2
    //   46: invokeinterface 74 1 0
    //   51: ifle +69 -> 120
    //   54: aload_2
    //   55: invokeinterface 78 1 0
    //   60: astore_3
    //   61: lconst_0
    //   62: lstore 4
    //   64: aload_3
    //   65: invokeinterface 83 1 0
    //   70: ifeq +52 -> 122
    //   73: aload_3
    //   74: invokeinterface 87 1 0
    //   79: checkcast 89	java/lang/String
    //   82: astore 17
    //   84: aload 17
    //   86: invokestatic 95	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   89: ifne +221 -> 310
    //   92: aload_1
    //   93: aload 17
    //   95: invokeinterface 99 2 0
    //   100: pop
    //   101: lload 4
    //   103: aload 17
    //   105: invokevirtual 103	java/lang/String:getBytes	()[B
    //   108: arraylength
    //   109: i2l
    //   110: ladd
    //   111: lstore 18
    //   113: lload 18
    //   115: lstore 4
    //   117: goto -53 -> 64
    //   120: iconst_0
    //   121: ireturn
    //   122: lload 4
    //   124: ldc2_w 104
    //   127: aload_0
    //   128: getfield 18	com/alipay/mobile/logmonitor/model/LogFileModel:a	J
    //   131: lmul
    //   132: ldc2_w 106
    //   135: ldiv
    //   136: lcmp
    //   137: ifle +25 -> 162
    //   140: lload 4
    //   142: aload_1
    //   143: iconst_0
    //   144: invokeinterface 111 2 0
    //   149: checkcast 89	java/lang/String
    //   152: invokevirtual 113	java/lang/String:length	()I
    //   155: i2l
    //   156: lsub
    //   157: lstore 4
    //   159: goto -37 -> 122
    //   162: new 115	java/io/BufferedWriter
    //   165: dup
    //   166: new 117	java/io/FileWriter
    //   169: dup
    //   170: aload_0
    //   171: getfield 22	com/alipay/mobile/logmonitor/model/LogFileModel:c	Ljava/io/File;
    //   174: iconst_0
    //   175: invokespecial 120	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   178: invokespecial 123	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   181: astore 6
    //   183: aload_1
    //   184: invokeinterface 78 1 0
    //   189: astore 12
    //   191: aload 12
    //   193: invokeinterface 83 1 0
    //   198: ifeq +53 -> 251
    //   201: aload 12
    //   203: invokeinterface 87 1 0
    //   208: checkcast 89	java/lang/String
    //   211: astore 14
    //   213: aload 14
    //   215: ifnull -24 -> 191
    //   218: aload 6
    //   220: aload 14
    //   222: invokevirtual 126	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   225: aload 6
    //   227: invokevirtual 129	java/io/BufferedWriter:newLine	()V
    //   230: goto -39 -> 191
    //   233: astore 9
    //   235: aload 6
    //   237: astore 10
    //   239: aload 10
    //   241: ifnull +8 -> 249
    //   244: aload 10
    //   246: invokevirtual 132	java/io/BufferedWriter:close	()V
    //   249: iconst_0
    //   250: ireturn
    //   251: aload 6
    //   253: invokevirtual 132	java/io/BufferedWriter:close	()V
    //   256: iconst_1
    //   257: ireturn
    //   258: astore 16
    //   260: aconst_null
    //   261: astore 6
    //   263: aload 16
    //   265: astore 7
    //   267: aload 6
    //   269: ifnull +8 -> 277
    //   272: aload 6
    //   274: invokevirtual 132	java/io/BufferedWriter:close	()V
    //   277: aload 7
    //   279: athrow
    //   280: iconst_1
    //   281: ireturn
    //   282: astore 13
    //   284: goto -28 -> 256
    //   287: astore 11
    //   289: goto -40 -> 249
    //   292: astore 8
    //   294: goto -17 -> 277
    //   297: astore 7
    //   299: goto -32 -> 267
    //   302: astore 15
    //   304: aconst_null
    //   305: astore 10
    //   307: goto -68 -> 239
    //   310: lload 4
    //   312: lstore 18
    //   314: goto -201 -> 113
    //
    // Exception table:
    //   from	to	target	type
    //   183	191	233	java/io/IOException
    //   191	213	233	java/io/IOException
    //   218	230	233	java/io/IOException
    //   162	183	258	finally
    //   251	256	282	java/io/IOException
    //   244	249	287	java/io/IOException
    //   272	277	292	java/io/IOException
    //   183	191	297	finally
    //   191	213	297	finally
    //   218	230	297	finally
    //   162	183	302	java/io/IOException
  }

  public final boolean a(String paramString, BufferedWriter paramBufferedWriter)
  {
    this.b = (1L + this.b);
    try
    {
      String str = TaobaoSecurityEncryptor.encrypt(AlipayApplication.getInstance(), paramString);
      if (str != null)
      {
        paramBufferedWriter.write(str);
        paramBufferedWriter.newLine();
      }
      label34: return this.c.exists();
    }
    catch (Throwable localThrowable)
    {
      break label34;
    }
  }

  public final boolean b()
  {
    long l = this.b % 10L;
    this.b = l;
    return l == 0L;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.logmonitor.model.LogFileModel
 * JD-Core Version:    0.6.2
 */
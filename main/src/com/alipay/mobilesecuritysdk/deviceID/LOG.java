package com.alipay.mobilesecuritysdk.deviceID;

import HttpUtils.HttpFetcher;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.alipay.mobilesecuritysdk.util.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class LOG
{
  public static boolean a = true;
  private static File b = null;
  private static File c = null;
  private static String d = null;
  private static String e = null;
  private static String f = "logger";
  private static Context g = null;

  // ERROR //
  private static String a(String paramString)
  {
    // Byte code:
    //   0: new 42	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 45	org/json/JSONObject:<init>	()V
    //   7: astore_1
    //   8: new 47	java/io/File
    //   11: dup
    //   12: getstatic 19	com/alipay/mobilesecuritysdk/deviceID/LOG:b	Ljava/io/File;
    //   15: aload_0
    //   16: invokespecial 50	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   19: astore_2
    //   20: aload_2
    //   21: invokevirtual 54	java/io/File:exists	()Z
    //   24: ifeq +12 -> 36
    //   27: aload_2
    //   28: invokevirtual 58	java/io/File:length	()J
    //   31: lconst_0
    //   32: lcmp
    //   33: ifne +5 -> 38
    //   36: aconst_null
    //   37: areturn
    //   38: aload_2
    //   39: invokevirtual 58	java/io/File:length	()J
    //   42: l2i
    //   43: newarray char
    //   45: astore_3
    //   46: new 60	java/io/FileReader
    //   49: dup
    //   50: aload_2
    //   51: invokespecial 63	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   54: astore 4
    //   56: aload 4
    //   58: aload_3
    //   59: invokevirtual 67	java/io/FileReader:read	([C)I
    //   62: pop
    //   63: aload 4
    //   65: invokevirtual 70	java/io/FileReader:close	()V
    //   68: aload_1
    //   69: ldc 72
    //   71: ldc 74
    //   73: invokevirtual 78	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   76: pop
    //   77: aload_1
    //   78: ldc 80
    //   80: aload_3
    //   81: invokestatic 86	java/lang/String:valueOf	([C)Ljava/lang/String;
    //   84: invokevirtual 78	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   87: pop
    //   88: aload_1
    //   89: invokevirtual 90	org/json/JSONObject:toString	()Ljava/lang/String;
    //   92: areturn
    //   93: astore 5
    //   95: aconst_null
    //   96: astore 4
    //   98: aload 5
    //   100: invokevirtual 93	java/io/FileNotFoundException:printStackTrace	()V
    //   103: aload 4
    //   105: ifnull -69 -> 36
    //   108: aload 4
    //   110: invokevirtual 70	java/io/FileReader:close	()V
    //   113: aconst_null
    //   114: areturn
    //   115: astore 8
    //   117: aload 8
    //   119: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   122: aconst_null
    //   123: areturn
    //   124: astore 9
    //   126: aconst_null
    //   127: astore 4
    //   129: aload 9
    //   131: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   134: aload 4
    //   136: ifnull -100 -> 36
    //   139: aload 4
    //   141: invokevirtual 70	java/io/FileReader:close	()V
    //   144: aconst_null
    //   145: areturn
    //   146: astore 10
    //   148: aload 10
    //   150: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   153: aconst_null
    //   154: areturn
    //   155: astore 18
    //   157: aconst_null
    //   158: astore 4
    //   160: aload 18
    //   162: astore 6
    //   164: aload 4
    //   166: ifnull +8 -> 174
    //   169: aload 4
    //   171: invokevirtual 70	java/io/FileReader:close	()V
    //   174: aload 6
    //   176: athrow
    //   177: astore 7
    //   179: aload 7
    //   181: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   184: goto -10 -> 174
    //   187: astore 12
    //   189: aload 12
    //   191: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   194: goto -126 -> 68
    //   197: astore 13
    //   199: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:f	Ljava/lang/String;
    //   202: pop
    //   203: aload 13
    //   205: invokevirtual 97	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   208: pop
    //   209: aconst_null
    //   210: areturn
    //   211: astore 6
    //   213: goto -49 -> 164
    //   216: astore 9
    //   218: goto -89 -> 129
    //   221: astore 5
    //   223: goto -125 -> 98
    //
    // Exception table:
    //   from	to	target	type
    //   46	56	93	java/io/FileNotFoundException
    //   108	113	115	java/io/IOException
    //   46	56	124	java/io/IOException
    //   139	144	146	java/io/IOException
    //   46	56	155	finally
    //   169	174	177	java/io/IOException
    //   63	68	187	java/io/IOException
    //   68	88	197	org/json/JSONException
    //   56	63	211	finally
    //   98	103	211	finally
    //   129	134	211	finally
    //   56	63	216	java/io/IOException
    //   56	63	221	java/io/FileNotFoundException
  }

  public static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }

  public static void a()
  {
    int i = 1;
    try
    {
      if (b == null)
        throw new IllegalStateException("logFileDir can not be null! call 'LOG.init' first!");
    }
    finally
    {
    }
    if ((!b.exists()) || (!b.isDirectory()) || (b.list().length == 0))
      if (!a);
    label386: label402: 
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      String[] arrayOfString = b.list();
      int j = arrayOfString.length;
      String str1;
      int m;
      for (int k = 0; ; k++)
      {
        if (k >= j)
        {
          Collections.sort(localArrayList);
          str1 = (String)localArrayList.get(-1 + localArrayList.size());
          m = localArrayList.size();
          if (!str1.equals(c()))
            break label375;
          if (localArrayList.size() >= 2)
            break label183;
          if (!a)
            break;
          break;
        }
        localArrayList.add(arrayOfString[k]);
      }
      label183: String str5 = (String)localArrayList.get(-2 + localArrayList.size());
      int i3 = m - 1;
      String str2 = str5;
      int n = i3;
      String str3 = a(str2);
      if (str3 == null)
        break label386;
      while (true)
      {
        label236: if (i2 >= i1)
          break label402;
        String str4 = (String)localArrayList.get(i2);
        new File(b, str4).delete();
        i2++;
        continue;
        if ((!a) || ((g != null) && (CommonUtils.a(g))))
        {
          new HttpFetcher();
          HttpResponse localHttpResponse = HttpFetcher.a("https://seccliprod.alipay.com/api/do.htm", "bugTrack", str3, "1", true);
          if ((localHttpResponse == null) || (localHttpResponse.getStatusLine().getStatusCode() != 200));
        }
        label375: 
        while (i != 0)
        {
          if (a);
          i1 = n;
          i2 = 0;
          break label236;
          str2 = str1;
          n = m;
          break;
          i = 0;
        }
        int i1 = n - 1;
        int i2 = 0;
      }
    }
  }

  public static void a(Context paramContext)
  {
    try
    {
      g = paramContext;
      if (b == null)
      {
        b = new File(paramContext.getFilesDir().getAbsolutePath() + "/log/ap");
        d = Build.MODEL;
        e = paramContext.getApplicationContext().getApplicationInfo().packageName;
        if (a)
          new StringBuilder(String.valueOf(e)).append(",").append(d).toString();
      }
      if (b.exists())
      {
        if (b.isDirectory())
          break label164;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = b.getAbsoluteFile();
        throw new IllegalStateException(String.format("<%s> exists but not a Directory!", arrayOfObject));
      }
    }
    finally
    {
    }
    b.mkdirs();
    label164:
  }

  // ERROR //
  public static void a(List paramList)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 19	com/alipay/mobilesecuritysdk/deviceID/LOG:b	Ljava/io/File;
    //   6: ifnonnull +19 -> 25
    //   9: new 114	java/lang/IllegalStateException
    //   12: dup
    //   13: ldc 116
    //   15: invokespecial 119	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_1
    //   20: ldc 2
    //   22: monitorexit
    //   23: aload_1
    //   24: athrow
    //   25: new 247	java/lang/StringBuffer
    //   28: dup
    //   29: new 249	java/text/SimpleDateFormat
    //   32: dup
    //   33: ldc 251
    //   35: invokespecial 252	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   38: invokestatic 258	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   41: invokevirtual 262	java/util/Calendar:getTime	()Ljava/util/Date;
    //   44: invokevirtual 265	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   47: invokespecial 266	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   50: astore_2
    //   51: aload_2
    //   52: new 190	java/lang/StringBuilder
    //   55: dup
    //   56: ldc 231
    //   58: invokespecial 203	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   61: getstatic 23	com/alipay/mobilesecuritysdk/deviceID/LOG:d	Ljava/lang/String;
    //   64: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokevirtual 269	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   73: pop
    //   74: aload_2
    //   75: new 190	java/lang/StringBuilder
    //   78: dup
    //   79: ldc 231
    //   81: invokespecial 203	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: getstatic 25	com/alipay/mobilesecuritysdk/deviceID/LOG:e	Ljava/lang/String;
    //   87: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokevirtual 269	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   96: pop
    //   97: aload_0
    //   98: invokeinterface 273 1 0
    //   103: astore 5
    //   105: aload 5
    //   107: invokeinterface 278 1 0
    //   112: istore 6
    //   114: iload 6
    //   116: ifne +139 -> 255
    //   119: aconst_null
    //   120: astore 9
    //   122: invokestatic 280	com/alipay/mobilesecuritysdk/deviceID/LOG:b	()J
    //   125: lstore 16
    //   127: getstatic 27	com/alipay/mobilesecuritysdk/deviceID/LOG:a	Z
    //   130: istore 18
    //   132: aconst_null
    //   133: astore 9
    //   135: iload 18
    //   137: ifeq +26 -> 163
    //   140: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:f	Ljava/lang/String;
    //   143: pop
    //   144: new 190	java/lang/StringBuilder
    //   147: dup
    //   148: ldc_w 282
    //   151: invokespecial 203	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   154: lload 16
    //   156: invokevirtual 285	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   159: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: pop
    //   163: lload 16
    //   165: aload_2
    //   166: invokevirtual 287	java/lang/StringBuffer:length	()I
    //   169: i2l
    //   170: ladd
    //   171: ldc2_w 288
    //   174: lcmp
    //   175: istore 21
    //   177: aconst_null
    //   178: astore 9
    //   180: iload 21
    //   182: ifgt +110 -> 292
    //   185: new 291	java/io/FileWriter
    //   188: dup
    //   189: getstatic 21	com/alipay/mobilesecuritysdk/deviceID/LOG:c	Ljava/io/File;
    //   192: iconst_1
    //   193: invokespecial 294	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   196: astore 9
    //   198: aload_2
    //   199: ldc_w 296
    //   202: invokevirtual 269	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   205: pop
    //   206: getstatic 27	com/alipay/mobilesecuritysdk/deviceID/LOG:a	Z
    //   209: ifeq +28 -> 237
    //   212: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:f	Ljava/lang/String;
    //   215: pop
    //   216: new 190	java/lang/StringBuilder
    //   219: dup
    //   220: ldc_w 298
    //   223: invokespecial 203	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   226: aload_2
    //   227: invokevirtual 299	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   230: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   236: pop
    //   237: aload 9
    //   239: aload_2
    //   240: invokevirtual 299	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   243: invokevirtual 302	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   246: aload 9
    //   248: invokevirtual 303	java/io/FileWriter:close	()V
    //   251: ldc 2
    //   253: monitorexit
    //   254: return
    //   255: aload 5
    //   257: invokeinterface 307 1 0
    //   262: checkcast 82	java/lang/String
    //   265: astore 7
    //   267: aload_2
    //   268: new 190	java/lang/StringBuilder
    //   271: dup
    //   272: ldc 231
    //   274: invokespecial 203	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   277: aload 7
    //   279: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokevirtual 269	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   288: pop
    //   289: goto -184 -> 105
    //   292: new 291	java/io/FileWriter
    //   295: dup
    //   296: getstatic 21	com/alipay/mobilesecuritysdk/deviceID/LOG:c	Ljava/io/File;
    //   299: invokespecial 308	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   302: astore 27
    //   304: aload 27
    //   306: astore 9
    //   308: goto -110 -> 198
    //   311: astore 13
    //   313: aload 13
    //   315: invokevirtual 309	java/lang/Exception:printStackTrace	()V
    //   318: aload 9
    //   320: ifnull -69 -> 251
    //   323: aload 9
    //   325: invokevirtual 303	java/io/FileWriter:close	()V
    //   328: goto -77 -> 251
    //   331: astore 14
    //   333: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:f	Ljava/lang/String;
    //   336: pop
    //   337: aload 14
    //   339: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   342: goto -91 -> 251
    //   345: astore 10
    //   347: aload 9
    //   349: ifnull +8 -> 357
    //   352: aload 9
    //   354: invokevirtual 303	java/io/FileWriter:close	()V
    //   357: aload 10
    //   359: athrow
    //   360: astore 11
    //   362: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:f	Ljava/lang/String;
    //   365: pop
    //   366: aload 11
    //   368: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   371: goto -14 -> 357
    //   374: astore 23
    //   376: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:f	Ljava/lang/String;
    //   379: pop
    //   380: aload 23
    //   382: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   385: goto -134 -> 251
    //
    // Exception table:
    //   from	to	target	type
    //   3	19	19	finally
    //   25	105	19	finally
    //   105	114	19	finally
    //   246	251	19	finally
    //   255	289	19	finally
    //   323	328	19	finally
    //   333	342	19	finally
    //   352	357	19	finally
    //   357	360	19	finally
    //   362	371	19	finally
    //   376	385	19	finally
    //   122	132	311	java/lang/Exception
    //   140	163	311	java/lang/Exception
    //   163	177	311	java/lang/Exception
    //   185	198	311	java/lang/Exception
    //   198	237	311	java/lang/Exception
    //   237	246	311	java/lang/Exception
    //   292	304	311	java/lang/Exception
    //   323	328	331	java/io/IOException
    //   122	132	345	finally
    //   140	163	345	finally
    //   163	177	345	finally
    //   185	198	345	finally
    //   198	237	345	finally
    //   237	246	345	finally
    //   292	304	345	finally
    //   313	318	345	finally
    //   352	357	360	java/io/IOException
    //   246	251	374	java/io/IOException
  }

  private static long b()
  {
    while (true)
    {
      try
      {
        c = new File(b, c());
        if (a)
          new StringBuilder("current logfile is:").append(c.getAbsolutePath()).toString();
        boolean bool = c.exists();
        if (!bool)
          try
          {
            c.createNewFile();
            l2 = 0L;
            return l2;
          }
          catch (IOException localIOException)
          {
            localIOException.printStackTrace();
            continue;
          }
      }
      finally
      {
      }
      long l1 = c.length();
      long l2 = l1;
    }
  }

  private static String c()
  {
    Date localDate = Calendar.getInstance().getTime();
    return new SimpleDateFormat("yyyyMMdd").format(localDate) + ".log";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.deviceID.LOG
 * JD-Core Version:    0.6.2
 */
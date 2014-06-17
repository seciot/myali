package com.alipay.mobile.common.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Utilz
{
  static int sFrequency = -1;

  // ERROR //
  private static int a(String paramString)
  {
    // Byte code:
    //   0: new 19	java/io/FileInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 22	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   8: astore_1
    //   9: new 24	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 25	java/lang/StringBuilder:<init>	()V
    //   16: astore_2
    //   17: new 27	java/util/Scanner
    //   20: dup
    //   21: aload_1
    //   22: invokespecial 30	java/util/Scanner:<init>	(Ljava/io/InputStream;)V
    //   25: astore_3
    //   26: aload_3
    //   27: invokevirtual 34	java/util/Scanner:hasNextLine	()Z
    //   30: ifeq +28 -> 58
    //   33: aload_2
    //   34: aload_3
    //   35: invokevirtual 38	java/util/Scanner:nextLine	()Ljava/lang/String;
    //   38: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: goto -16 -> 26
    //   45: astore 6
    //   47: aload 6
    //   49: invokevirtual 45	java/lang/Exception:printStackTrace	()V
    //   52: aload_1
    //   53: invokevirtual 48	java/io/FileInputStream:close	()V
    //   56: iconst_m1
    //   57: ireturn
    //   58: aload_2
    //   59: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokestatic 56	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   65: istore 8
    //   67: aload_1
    //   68: invokevirtual 48	java/io/FileInputStream:close	()V
    //   71: iload 8
    //   73: ireturn
    //   74: astore 9
    //   76: aload 9
    //   78: invokevirtual 45	java/lang/Exception:printStackTrace	()V
    //   81: iload 8
    //   83: ireturn
    //   84: astore 7
    //   86: aload 7
    //   88: invokevirtual 45	java/lang/Exception:printStackTrace	()V
    //   91: goto -35 -> 56
    //   94: astore 4
    //   96: aconst_null
    //   97: astore_1
    //   98: aload_1
    //   99: invokevirtual 48	java/io/FileInputStream:close	()V
    //   102: aload 4
    //   104: athrow
    //   105: astore 5
    //   107: aload 5
    //   109: invokevirtual 45	java/lang/Exception:printStackTrace	()V
    //   112: goto -10 -> 102
    //   115: astore 4
    //   117: goto -19 -> 98
    //   120: astore 6
    //   122: aconst_null
    //   123: astore_1
    //   124: goto -77 -> 47
    //
    // Exception table:
    //   from	to	target	type
    //   9	26	45	java/lang/Exception
    //   26	42	45	java/lang/Exception
    //   58	67	45	java/lang/Exception
    //   67	71	74	java/lang/Exception
    //   52	56	84	java/lang/Exception
    //   0	9	94	finally
    //   98	102	105	java/lang/Exception
    //   9	26	115	finally
    //   26	42	115	finally
    //   47	52	115	finally
    //   58	67	115	finally
    //   0	9	120	java/lang/Exception
  }

  public static int getCPUFrequencyMax()
  {
    try
    {
      if (sFrequency == -1)
      {
        sFrequency = a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
        if (-1 != sFrequency)
          sFrequency /= 1000;
      }
      int i = sFrequency;
      return i;
    }
    finally
    {
    }
  }

  public static String getCurrentFomatTime(String paramString)
  {
    long l = Calendar.getInstance().getTimeInMillis();
    return new SimpleDateFormat(paramString).format(Long.valueOf(l));
  }

  public static long getTotalMemory()
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      String str1 = localBufferedReader.readLine();
      String str2 = Pattern.compile("[^0-9]").matcher(str1).replaceAll("").trim();
      localBufferedReader.close();
      long l = Long.parseLong(str2);
      return l;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0L;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.Utilz
 * JD-Core Version:    0.6.2
 */
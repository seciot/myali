package com.alipay.android.app.sys;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.util.BaseHelper;
import com.ut.device.UTDevice;
import java.io.File;

public class GlobalContext
{
  private static GlobalContext a;
  private static String e;
  private Context b;
  private IAppConfig c;
  private int d;

  public static GlobalContext a()
  {
    if (a == null)
      a = new GlobalContext();
    return a;
  }

  // ERROR //
  private static String a(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 27	java/lang/ProcessBuilder
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 30	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   8: astore_1
    //   9: aload_1
    //   10: iconst_0
    //   11: invokevirtual 34	java/lang/ProcessBuilder:redirectErrorStream	(Z)Ljava/lang/ProcessBuilder;
    //   14: pop
    //   15: aload_1
    //   16: invokevirtual 38	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   19: astore 10
    //   21: aload 10
    //   23: astore_3
    //   24: new 40	java/io/DataOutputStream
    //   27: dup
    //   28: aload_3
    //   29: invokevirtual 46	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   32: invokespecial 49	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   35: astore 11
    //   37: new 51	java/io/DataInputStream
    //   40: dup
    //   41: aload_3
    //   42: invokevirtual 55	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   45: invokespecial 58	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   48: invokevirtual 62	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   51: astore 13
    //   53: aload 13
    //   55: astore 7
    //   57: aload 11
    //   59: ldc 64
    //   61: invokevirtual 68	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   64: aload 11
    //   66: invokevirtual 71	java/io/DataOutputStream:flush	()V
    //   69: aload_3
    //   70: invokevirtual 75	java/lang/Process:waitFor	()I
    //   73: pop
    //   74: aload_3
    //   75: invokevirtual 78	java/lang/Process:destroy	()V
    //   78: aload 7
    //   80: areturn
    //   81: astore 6
    //   83: aconst_null
    //   84: astore_3
    //   85: ldc 80
    //   87: astore 7
    //   89: aload_3
    //   90: invokevirtual 78	java/lang/Process:destroy	()V
    //   93: aload 7
    //   95: areturn
    //   96: astore 8
    //   98: aload 7
    //   100: areturn
    //   101: astore_2
    //   102: aconst_null
    //   103: astore_3
    //   104: aload_2
    //   105: astore 4
    //   107: aload_3
    //   108: invokevirtual 78	java/lang/Process:destroy	()V
    //   111: aload 4
    //   113: athrow
    //   114: astore 16
    //   116: aload 7
    //   118: areturn
    //   119: astore 5
    //   121: goto -10 -> 111
    //   124: astore 4
    //   126: goto -19 -> 107
    //   129: astore 12
    //   131: ldc 80
    //   133: astore 7
    //   135: goto -46 -> 89
    //   138: astore 14
    //   140: goto -51 -> 89
    //
    // Exception table:
    //   from	to	target	type
    //   0	21	81	java/lang/Exception
    //   89	93	96	java/lang/Exception
    //   0	21	101	finally
    //   74	78	114	java/lang/Exception
    //   107	111	119	java/lang/Exception
    //   24	53	124	finally
    //   57	74	124	finally
    //   24	53	129	java/lang/Exception
    //   57	74	138	java/lang/Exception
  }

  public static boolean f()
  {
    boolean bool = true;
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "/system/xbin/";
    arrayOfString[bool] = "/system/bin/";
    arrayOfString[2] = "/system/sbin/";
    arrayOfString[3] = "/sbin/";
    arrayOfString[4] = "/vendor/bin/";
    int i = 0;
    try
    {
      while (i < arrayOfString.length)
      {
        String str1 = arrayOfString[i] + "su";
        if (new File(str1).exists())
        {
          String str2 = a(new String[] { "ls", "-l", str1 });
          if (!TextUtils.isEmpty(str2))
          {
            int j = str2.indexOf("root");
            int k = str2.lastIndexOf("root");
            if (j != k);
          }
          else
          {
            bool = false;
          }
          return bool;
        }
        i++;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static String g()
  {
    String str = BaseHelper.c();
    e = str;
    return str;
  }

  public static String h()
  {
    return e;
  }

  public final void a(int paramInt)
  {
    this.d = paramInt;
  }

  public final void a(Context paramContext, IAppConfig paramIAppConfig)
  {
    this.b = paramContext.getApplicationContext();
    this.c = paramIAppConfig;
    try
    {
      UserLocation.a(this.b);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final Context b()
  {
    return this.b;
  }

  public final String b(int paramInt)
  {
    return this.b.getString(paramInt);
  }

  public final IAppConfig c()
  {
    return this.c;
  }

  public final boolean d()
  {
    IAppConfig localIAppConfig = this.c;
    boolean bool = false;
    if (localIAppConfig != null)
      bool = this.c.c();
    return bool;
  }

  public final int e()
  {
    return this.d;
  }

  public final String i()
  {
    String str = UTDevice.getUtdid(this.b);
    if (!TextUtils.isEmpty(str))
    {
      char[] arrayOfChar1 = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 92, 61 };
      char[] arrayOfChar2 = str.toCharArray();
      int i = arrayOfChar2.length;
      int j = 0;
      int k = 0;
      while (j < i)
      {
        int m = arrayOfChar2[j];
        int n = arrayOfChar1.length;
        int i1 = 0;
        k = 0;
        while (i1 < n)
        {
          if (m == arrayOfChar1[i1])
            k = 1;
          i1++;
        }
        if (k == 0)
          break;
        j++;
      }
      if (k != 0)
        return str;
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.sys.GlobalContext
 * JD-Core Version:    0.6.2
 */
package com.taobao.securityjni.tools;

import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.os.Environment;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.soversion.SoVersion;
import com.taobao.securityjni.usertrack.TBSecurityUsertrackProxy;
import java.io.File;

public final class e
{
  public static String a = null;
  private static String b = Environment.getDataDirectory().getAbsolutePath();
  private static String c = Environment.getRootDirectory().getAbsolutePath();
  private static String d = "/lib/";
  private static String e = Environment.getRootDirectory().getAbsolutePath() + d;
  private static final String[] f = { "FileNotFindError", "IOError", "SecurityError", "ExceptionError" };
  private static String g = "SOSha256Check";
  private static final String[] h = SoVersion.a;
  private static String i = "libSSECeg-mini-1.2.9.4.so";
  private static byte[] j = new byte[0];
  private static boolean k = false;
  private static boolean l = false;

  public static boolean a(ContextWrapper paramContextWrapper)
  {
    String str1 = null;
    if (paramContextWrapper == null)
      return false;
    if (!l);
    while (true)
    {
      String[] arrayOfString;
      ApplicationInfo localApplicationInfo;
      String str5;
      int n;
      boolean bool;
      synchronized (j)
      {
        String str2;
        if (!l)
        {
          arrayOfString = new String[6];
          arrayOfString[2] = null;
          str2 = paramContextWrapper.getPackageCodePath();
          if (str2 == null)
          {
            str4 = null;
            if (GlobalInit.GetSecurityDebugMode())
              new StringBuilder("getExternalPackagePath:").append(str4).toString();
            if ((str4 == null) || (str4.equals(b)) || (str4.equals(c)))
              continue;
            arrayOfString[1] = (str4 + d);
            localApplicationInfo = paramContextWrapper.getApplicationInfo();
            if (!str4.equals(c))
              break label461;
            arrayOfString[0] = e;
            if (GlobalInit.GetSecurityDebugMode())
            {
              new StringBuilder("getExternalPackagePath:path[0]=").append(arrayOfString[0]).toString();
              if (arrayOfString[1] != null)
                new StringBuilder("getExternalPackagePath:path[1]=").append(arrayOfString[1]).toString();
            }
            if (arrayOfString[1] == null)
              break label492;
            arrayOfString[2] = (localApplicationInfo.dataDir + "/files/");
            arrayOfString[3] = "cust/preinstalled/public/lib/";
            arrayOfString[4] = "system/vender/lib/";
            arrayOfString[5] = a;
            str5 = null;
            n = 0;
            if (n >= 6)
              break label522;
            if (arrayOfString[n] == null)
              break label664;
            str1 = arrayOfString[n] + i;
            str5 = b(str1);
            if (!a(str5, f))
              break label664;
            str6 = str5;
            break label653;
            if (i1 >= h.length)
              break label558;
            if (!str6.equals(h[i1]))
              break label670;
            bool = true;
            k = bool;
            l = true;
          }
        }
        else
        {
          return k;
        }
        String str3 = System.getProperty("file.separator", "/");
        if (str2.startsWith(b))
        {
          str4 = b;
          continue;
        }
        if (str2.startsWith(c))
        {
          str4 = c;
          continue;
        }
        int m = str2.lastIndexOf(str3);
        String str4 = "SD";
        if (m == -1)
          continue;
        str4 = str2.substring(0, m);
        continue;
        arrayOfString[1] = null;
      }
      label461: arrayOfString[0] = (localApplicationInfo.dataDir + d);
      continue;
      label492: arrayOfString[1] = (localApplicationInfo.dataDir + "/files/");
      continue;
      label522: TBSecurityUsertrackProxy.UserTrackUpload(g, str5 + "##Error", str1, "1.2.9.4");
      String str6 = "Error";
      label558: 
      while (str6 == null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(h[0]).append("::").append(h[1]).append("::").append(h[2]).append("::").append(h[3]);
        TBSecurityUsertrackProxy.UserTrackUpload(g, str6, "##" + localStringBuilder.toString(), "1.2.9.4");
        bool = false;
        break;
      }
      label653: int i1 = 0;
      continue;
      label664: n++;
      continue;
      label670: i1++;
    }
  }

  public static boolean a(String paramString)
  {
    String str = b(paramString);
    boolean bool = false;
    if (str != null);
    for (int m = 0; ; m++)
    {
      int n = h.length;
      bool = false;
      if (m < n)
      {
        if (str.equals(h[m]))
          bool = true;
      }
      else
        return bool;
    }
  }

  private static boolean a(String paramString, String[] paramArrayOfString)
  {
    if (paramString != null);
    for (int m = 0; m < paramArrayOfString.length; m++)
      if (paramString.equals(paramArrayOfString[m]))
        return false;
    return true;
  }

  // ERROR //
  private static String b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 189	java/io/FileInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 190	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: aload_2
    //   12: invokestatic 195	com/taobao/securityjni/tools/a:b	(Ljava/io/InputStream;)Ljava/lang/String;
    //   15: astore 14
    //   17: aload 14
    //   19: astore 6
    //   21: aload_2
    //   22: invokevirtual 198	java/io/FileInputStream:close	()V
    //   25: aload 6
    //   27: areturn
    //   28: astore_3
    //   29: aconst_null
    //   30: astore_2
    //   31: aload_3
    //   32: invokevirtual 201	java/io/FileNotFoundException:printStackTrace	()V
    //   35: ldc 65
    //   37: astore 6
    //   39: aload_2
    //   40: ifnull -15 -> 25
    //   43: aload_2
    //   44: invokevirtual 198	java/io/FileInputStream:close	()V
    //   47: aload 6
    //   49: areturn
    //   50: astore 7
    //   52: aload 6
    //   54: areturn
    //   55: astore 8
    //   57: aload 8
    //   59: invokevirtual 202	java/io/IOException:printStackTrace	()V
    //   62: ldc 67
    //   64: astore 6
    //   66: aload_1
    //   67: ifnull -42 -> 25
    //   70: aload_1
    //   71: invokevirtual 198	java/io/FileInputStream:close	()V
    //   74: aload 6
    //   76: areturn
    //   77: astore 9
    //   79: aload 6
    //   81: areturn
    //   82: astore 10
    //   84: aload 10
    //   86: invokevirtual 203	java/lang/SecurityException:printStackTrace	()V
    //   89: ldc 69
    //   91: astore 6
    //   93: aload_1
    //   94: ifnull -69 -> 25
    //   97: aload_1
    //   98: invokevirtual 198	java/io/FileInputStream:close	()V
    //   101: aload 6
    //   103: areturn
    //   104: astore 11
    //   106: aload 6
    //   108: areturn
    //   109: astore 12
    //   111: aload 12
    //   113: invokevirtual 204	java/lang/Exception:printStackTrace	()V
    //   116: ldc 71
    //   118: astore 6
    //   120: aload_1
    //   121: ifnull -96 -> 25
    //   124: aload_1
    //   125: invokevirtual 198	java/io/FileInputStream:close	()V
    //   128: aload 6
    //   130: areturn
    //   131: astore 13
    //   133: aload 6
    //   135: areturn
    //   136: astore 4
    //   138: aload_1
    //   139: ifnull +7 -> 146
    //   142: aload_1
    //   143: invokevirtual 198	java/io/FileInputStream:close	()V
    //   146: aload 4
    //   148: athrow
    //   149: astore 15
    //   151: aload 6
    //   153: areturn
    //   154: astore 5
    //   156: goto -10 -> 146
    //   159: astore 4
    //   161: aload_2
    //   162: astore_1
    //   163: goto -25 -> 138
    //   166: astore 12
    //   168: aload_2
    //   169: astore_1
    //   170: goto -59 -> 111
    //   173: astore 10
    //   175: aload_2
    //   176: astore_1
    //   177: goto -93 -> 84
    //   180: astore 8
    //   182: aload_2
    //   183: astore_1
    //   184: goto -127 -> 57
    //   187: astore_3
    //   188: goto -157 -> 31
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	28	java/io/FileNotFoundException
    //   43	47	50	java/io/IOException
    //   2	11	55	java/io/IOException
    //   70	74	77	java/io/IOException
    //   2	11	82	java/lang/SecurityException
    //   97	101	104	java/io/IOException
    //   2	11	109	java/lang/Exception
    //   124	128	131	java/io/IOException
    //   2	11	136	finally
    //   57	62	136	finally
    //   84	89	136	finally
    //   111	116	136	finally
    //   21	25	149	java/io/IOException
    //   142	146	154	java/io/IOException
    //   11	17	159	finally
    //   31	35	159	finally
    //   11	17	166	java/lang/Exception
    //   11	17	173	java/lang/SecurityException
    //   11	17	180	java/io/IOException
    //   11	17	187	java/io/FileNotFoundException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.tools.e
 * JD-Core Version:    0.6.2
 */
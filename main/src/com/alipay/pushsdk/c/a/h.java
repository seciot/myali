package com.alipay.pushsdk.c.a;

import android.content.Context;
import android.os.Environment;
import com.alipay.pushsdk.push.a.o;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class h extends a
{
  private static final String c = c.a(h.class);
  private static h d;
  private Context e;
  private String f;
  private SimpleDateFormat g = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());

  private h(Context paramContext)
  {
    this.e = paramContext;
  }

  // ERROR //
  public static h a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 49	com/alipay/pushsdk/c/a/h:d	Lcom/alipay/pushsdk/c/a/h;
    //   6: ifnonnull +45 -> 51
    //   9: new 2	com/alipay/pushsdk/c/a/h
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 51	com/alipay/pushsdk/c/a/h:<init>	(Landroid/content/Context;)V
    //   17: astore_2
    //   18: aload_2
    //   19: putstatic 49	com/alipay/pushsdk/c/a/h:d	Lcom/alipay/pushsdk/c/a/h;
    //   22: aload_2
    //   23: aload_2
    //   24: invokespecial 54	com/alipay/pushsdk/c/a/h:f	()Ljava/lang/String;
    //   27: putfield 56	com/alipay/pushsdk/c/a/h:f	Ljava/lang/String;
    //   30: aload_2
    //   31: getfield 56	com/alipay/pushsdk/c/a/h:f	Ljava/lang/String;
    //   34: ifnonnull +28 -> 62
    //   37: iconst_2
    //   38: getstatic 23	com/alipay/pushsdk/c/a/h:c	Ljava/lang/String;
    //   41: ldc 58
    //   43: invokestatic 61	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   46: aload_2
    //   47: aconst_null
    //   48: putfield 64	com/alipay/pushsdk/c/a/h:a	Ljava/io/PrintWriter;
    //   51: getstatic 49	com/alipay/pushsdk/c/a/h:d	Lcom/alipay/pushsdk/c/a/h;
    //   54: astore 6
    //   56: ldc 2
    //   58: monitorexit
    //   59: aload 6
    //   61: areturn
    //   62: new 66	java/io/File
    //   65: dup
    //   66: aload_2
    //   67: getfield 56	com/alipay/pushsdk/c/a/h:f	Ljava/lang/String;
    //   70: invokespecial 69	java/io/File:<init>	(Ljava/lang/String;)V
    //   73: astore_3
    //   74: aload_3
    //   75: invokevirtual 73	java/io/File:exists	()Z
    //   78: istore 4
    //   80: aload_2
    //   81: new 75	java/io/PrintWriter
    //   84: dup
    //   85: new 77	java/io/FileWriter
    //   88: dup
    //   89: aload_3
    //   90: iconst_1
    //   91: invokespecial 80	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   94: invokespecial 83	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   97: putfield 64	com/alipay/pushsdk/c/a/h:a	Ljava/io/PrintWriter;
    //   100: iload 4
    //   102: ifne +12 -> 114
    //   105: iconst_3
    //   106: getstatic 23	com/alipay/pushsdk/c/a/h:c	Ljava/lang/String;
    //   109: ldc 85
    //   111: invokestatic 61	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   114: aload_2
    //   115: ldc 87
    //   117: putfield 90	com/alipay/pushsdk/c/a/h:b	Ljava/lang/String;
    //   120: invokestatic 96	java/lang/System:currentTimeMillis	()J
    //   123: putstatic 102	com/alipay/pushsdk/c/a/f:j	J
    //   126: goto -75 -> 51
    //   129: astore_1
    //   130: ldc 2
    //   132: monitorexit
    //   133: aload_1
    //   134: athrow
    //   135: astore 5
    //   137: iconst_2
    //   138: getstatic 23	com/alipay/pushsdk/c/a/h:c	Ljava/lang/String;
    //   141: new 104	java/lang/StringBuilder
    //   144: dup
    //   145: invokespecial 105	java/lang/StringBuilder:<init>	()V
    //   148: aload 5
    //   150: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   153: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   156: invokestatic 61	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   159: aload_2
    //   160: aconst_null
    //   161: putfield 64	com/alipay/pushsdk/c/a/h:a	Ljava/io/PrintWriter;
    //   164: goto -113 -> 51
    //
    // Exception table:
    //   from	to	target	type
    //   3	51	129	finally
    //   51	56	129	finally
    //   62	80	129	finally
    //   80	100	129	finally
    //   105	114	129	finally
    //   114	126	129	finally
    //   137	164	129	finally
    //   80	100	135	java/io/IOException
  }

  public static h b()
  {
    try
    {
      if (d == null)
        throw new IllegalStateException("ServiceTraceLog must be create by call createInstance(Context context)");
    }
    finally
    {
    }
    h localh = d;
    return localh;
  }

  private String f()
  {
    while (true)
    {
      try
      {
        if ("mounted".equals(Environment.getExternalStorageState()))
        {
          str2 = Environment.getExternalStorageDirectory().getPath() + File.separatorChar + "alipay";
          File localFile2 = new File(str2);
          if ((!localFile2.exists()) && (!localFile2.mkdir()))
          {
            c.a(2, c, "fail to creat " + "push_log" + " dir:" + str2);
            if (str2 != null)
              return str2 + File.separatorChar + "serv_trace.txt";
          }
          else
          {
            if (!localFile2.isDirectory())
            {
              c.a(2, c, "push_log" + " dir exist,but not directory:" + str2);
              break label508;
            }
            str2 = str2 + File.separatorChar + "push_log";
            localFile3 = new File(str2);
            if ((localFile3.exists()) || (localFile3.mkdir()))
              continue;
            c.a(2, c, "fail to creat " + "push_log" + " dir:" + str2);
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        File localFile3;
        localException.printStackTrace();
        String str1 = this.e.getFilesDir().getPath() + File.separatorChar + "push_log";
        File localFile1 = new File(str1);
        if ((!localFile1.exists()) && (!localFile1.mkdir()))
        {
          c.a(2, c, "fail to creat log dir:" + str1);
          return str1 + File.separatorChar + "serv_trace.txt";
          if (localFile3.isDirectory())
            continue;
          c.a(2, c, "push_log" + " dir exist,but not directory:" + str2);
          break label508;
        }
        if (!localFile1.isDirectory())
        {
          c.a(2, c, "log dir exist,but not directory:" + str1);
          return str1 + File.separatorChar + "serv_trace.txt";
        }
        return str1 + File.separatorChar + "serv_trace.txt";
      }
      label508: String str2 = null;
    }
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    if ((!o.i()) || (this.a == null))
      return;
    String str = this.g.format(Long.valueOf(System.currentTimeMillis()));
    synchronized (f.k)
    {
      a(new Object[] { str, paramString1, paramString2, paramString3 });
      c.a(4, c, "doLog ...");
      i.a(this.e);
      return;
    }
  }

  public final String c()
  {
    String str;
    synchronized (f.k)
    {
      FileInputStream localFileInputStream;
      try
      {
        localFileInputStream = new FileInputStream(f());
        str = "";
        byte[] arrayOfByte = new byte[10240];
        while (true)
        {
          int i = localFileInputStream.read(arrayOfByte);
          if (i == -1)
            break;
          str = str + new String(arrayOfByte, 0, i);
          c.a(4, c, "readFile() str:" + str);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      localFileInputStream.close();
      int j = str.length();
      if (j == 0)
        return null;
    }
    return str;
  }

  public final void d()
  {
    synchronized (f.k)
    {
      try
      {
        new FileOutputStream(f()).close();
        c.a(3, c, "fileClean() done.");
        f.i = 0;
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  public final void e()
  {
    synchronized (f.k)
    {
      try
      {
        String str1 = f();
        String str2 = c();
        int i = str2.length();
        c.a(4, c, "readFile len=" + i + ", item_cnt=" + f.i);
        String str3 = str2.substring(i / 2);
        String str4 = "";
        int j = str3.indexOf("##");
        c.a(4, c, "fileHalfClean index=" + j);
        if (j != -1)
          str4 = str3.substring(j + 2);
        c.a(5, c, "fileHalfClean() back=" + str4);
        FileOutputStream localFileOutputStream = new FileOutputStream(str1);
        byte[] arrayOfByte = str4.getBytes("UTF-8");
        localFileOutputStream.write(arrayOfByte);
        localFileOutputStream.flush();
        localFileOutputStream.close();
        f.i /= 2;
        c.a(4, c, "halfData len=" + arrayOfByte.length + ", item_len=" + f.i);
        c.a(3, c, "fileHalfClean() done.");
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.h
 * JD-Core Version:    0.6.2
 */
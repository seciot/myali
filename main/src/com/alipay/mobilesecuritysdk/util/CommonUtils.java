package com.alipay.mobilesecuritysdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.util.Base64;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.zip.GZIPOutputStream;

public class CommonUtils
{
  // ERROR //
  public static void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 10	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 14	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: new 16	java/io/FileWriter
    //   12: dup
    //   13: aload_2
    //   14: iconst_0
    //   15: invokespecial 19	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   18: astore_3
    //   19: aload_3
    //   20: aload_1
    //   21: invokevirtual 22	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   24: aload_3
    //   25: invokevirtual 26	java/io/FileWriter:close	()V
    //   28: return
    //   29: astore 4
    //   31: aconst_null
    //   32: astore_3
    //   33: aload 4
    //   35: invokevirtual 30	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   38: pop
    //   39: aload_3
    //   40: invokevirtual 26	java/io/FileWriter:close	()V
    //   43: return
    //   44: astore 5
    //   46: aconst_null
    //   47: astore_3
    //   48: aload_3
    //   49: invokevirtual 26	java/io/FileWriter:close	()V
    //   52: aload 5
    //   54: athrow
    //   55: astore 5
    //   57: goto -9 -> 48
    //   60: astore 4
    //   62: goto -29 -> 33
    //
    // Exception table:
    //   from	to	target	type
    //   9	19	29	java/lang/Exception
    //   9	19	44	finally
    //   19	24	55	finally
    //   33	39	55	finally
    //   19	24	60	java/lang/Exception
  }

  public static boolean a()
  {
    String str = Environment.getExternalStorageState();
    if ((str != null) && (str.length() > 0));
    for (int i = 0; (i == 0) && ((str.equals("mounted")) || (str.equals("mounted_ro"))) && (Environment.getExternalStorageDirectory() != null); i = 1)
      return true;
    return false;
  }

  public static boolean a(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (localNetworkInfo.getType() == 1);
  }

  public static boolean a(String paramString)
  {
    int i;
    boolean bool1;
    if (paramString != null)
    {
      i = paramString.length();
      if (i != 0);
    }
    else
    {
      bool1 = true;
      return bool1;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return true;
      boolean bool2 = Character.isWhitespace(paramString.charAt(j));
      bool1 = false;
      if (!bool2)
        break;
    }
  }

  public static String b(String paramString)
  {
    int i = 0;
    try
    {
      if (a(paramString))
        return null;
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      byte[] arrayOfByte = localMessageDigest.digest();
      StringBuilder localStringBuilder = new StringBuilder();
      while (true)
      {
        if (i >= 16)
          return localStringBuilder.toString();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Byte.valueOf(arrayOfByte[i]);
        localStringBuilder.append(String.format("%02x", arrayOfObject));
        i++;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String c(String paramString)
  {
    if (!new File(paramString).exists())
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(paramString), "UTF-8"));
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
        {
          localBufferedReader.close();
          return localStringBuilder.toString();
        }
        localStringBuilder.append(str);
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public static String d(String paramString)
  {
    try
    {
      byte[] arrayOfByte1 = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(paramString.length()).array();
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramString.length());
      GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
      localGZIPOutputStream.write(paramString.getBytes("UTF-8"));
      localGZIPOutputStream.close();
      localByteArrayOutputStream.close();
      byte[] arrayOfByte2 = new byte[4 + localByteArrayOutputStream.toByteArray().length];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, 4);
      System.arraycopy(localByteArrayOutputStream.toByteArray(), 0, arrayOfByte2, 4, localByteArrayOutputStream.toByteArray().length);
      String str = Base64.encodeToString(arrayOfByte2, 8);
      return str;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.util.CommonUtils
 * JD-Core Version:    0.6.2
 */
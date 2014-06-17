package com.alipay.mobile.common.logagent;

import android.content.Context;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LogBaseHelper
{
  public static void fileClean(Context paramContext, String paramString)
  {
    try
    {
      synchronized (Constants.lock)
      {
        new FileOutputStream(paramContext.getFilesDir().getAbsolutePath() + paramString).close();
        label40: return;
      }
    }
    catch (Exception localException)
    {
      break label40;
    }
  }

  public static String getNowTime()
  {
    Date localDate = new Date();
    return new SimpleDateFormat("yyyy-MM-dd kk:mm:ss:SSS").format(localDate);
  }

  public static String readFile(Context paramContext, String paramString)
  {
    synchronized (Constants.lock)
    {
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(paramContext.getFilesDir().getAbsolutePath() + paramString);
        String str = "";
        byte[] arrayOfByte = new byte[1024];
        while (true)
        {
          int i = localFileInputStream.read(arrayOfByte);
          if (i == -1)
            break;
          str = str + new String(arrayOfByte, 0, i);
        }
        localFileInputStream.close();
        int j = str.length();
        if (j == 0)
          return null;
        return str;
      }
      catch (Exception localException)
      {
        return null;
      }
    }
  }

  public static void writeToFile(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    int i = 0;
    try
    {
      synchronized (Constants.lock)
      {
        String str1 = paramContext.getFilesDir().getAbsolutePath() + paramString1;
        File localFile = new File(str1);
        if (!localFile.exists())
          localFile.mkdir();
        label121: String str2;
        int j;
        do
        {
          do
          {
            FileOutputStream localFileOutputStream2 = new FileOutputStream(str1 + paramString2, true);
            BufferedOutputStream localBufferedOutputStream2 = new BufferedOutputStream(localFileOutputStream2);
            localBufferedOutputStream2.write(paramString3.getBytes());
            localBufferedOutputStream2.close();
            localFileOutputStream2.close();
            return;
            str2 = readFile(paramContext, paramString1 + paramString2);
          }
          while (str2 == null);
          j = 0;
          String str3 = str2;
          while (i != -1)
          {
            i = str3.indexOf("$$");
            if (i != -1)
            {
              j++;
              str3 = str3.substring(i + 2);
            }
          }
        }
        while (j < 50);
        FileOutputStream localFileOutputStream1 = new FileOutputStream(str1 + paramString2, false);
        BufferedOutputStream localBufferedOutputStream1 = new BufferedOutputStream(localFileOutputStream1);
        localBufferedOutputStream1.write((str2.substring(2 + str2.indexOf("$$")) + paramString3).getBytes());
        localBufferedOutputStream1.close();
        localFileOutputStream1.close();
        return;
      }
    }
    catch (Exception localException)
    {
      break label121;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.LogBaseHelper
 * JD-Core Version:    0.6.2
 */
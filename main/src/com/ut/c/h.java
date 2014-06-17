package com.ut.c;

import android.os.Build.VERSION;
import android.util.Log;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;

public class h
{
  public static int A()
  {
    try
    {
      int j = Build.VERSION.class.getField("SDK_INT").getInt(null);
      return j;
    }
    catch (Exception localException1)
    {
      try
      {
        int i = Integer.parseInt((String)Build.VERSION.class.getField("SDK").get(null));
        return i;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
    return 2;
  }

  public static String z()
  {
    String str = null;
    try
    {
      FileReader localFileReader = new FileReader("/proc/cpuinfo");
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(localFileReader, 1024);
        str = localBufferedReader.readLine();
        localBufferedReader.close();
        localFileReader.close();
        if (str != null)
          return str.substring(1 + str.indexOf(':')).trim();
      }
      catch (IOException localIOException)
      {
        while (true)
          Log.e("Could not read from file /proc/cpuinfo", localIOException.toString());
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
        Log.e("BaseParameter-Could not open file /proc/cpuinfo", localFileNotFoundException.toString());
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.c.h
 * JD-Core Version:    0.6.2
 */
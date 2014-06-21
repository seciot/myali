package com.alipay.pushsdk.c;

import android.os.Environment;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.push.c.b;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Properties;

public class a
{
  public static final int a = b.c;
  private static final String b = c.getBundle(a.class);

  public static final String a()
  {
    return f() + "/cns.htm";
  }

  public static final String b()
  {
    return f() + "/getMsgAndCfg.htm";
  }

  public static final String c()
  {
    return f() + "/msgRead.htm";
  }

  public static HashMap d()
  {
    HashMap localHashMap = new HashMap();
    Properties localProperties;
    if (g())
      localProperties = new Properties();
    try
    {
      localProperties.load(new FileInputStream(Environment.getExternalStorageDirectory() + "/push_config.txt"));
      String str1 = localProperties.getProperty("push", "");
      String str2 = localProperties.getProperty("port", "");
      String str3 = localProperties.getProperty("version", "");
      localHashMap.put("host", str1);
      localHashMap.put("port", str2);
      localHashMap.put("version", str3);
      return localHashMap;
    }
    catch (Exception localException)
    {
      c.e(3, b, "getPushHost Exception:" + localException);
    }
    return localHashMap;
  }

  public static int e()
  {
    int i = c.c;
    Properties localProperties;
    if (g())
      localProperties = new Properties();
    try
    {
      localProperties.load(new FileInputStream(Environment.getExternalStorageDirectory() + "/push_config.txt"));
      String str = localProperties.getProperty("log", "1");
      c.e(3, b, "getLogLevel=" + str);
      int j = Integer.parseInt(str);
      i = j;
      if (i > c.g)
        i = c.g;
      if (i < c.c)
        i = c.c;
      if (i > c.BundlesManager)
        c.BundlesManager = i;
      return i;
    }
    catch (Exception localException)
    {
      while (true)
        c.e(3, b, "getLogLevel Exception:" + localException);
    }
  }

  private static String f()
  {
    Object localObject = "http://mobilecns.alipay.com";
    Properties localProperties;
    if (c.a)
    {
      if (!g())
        break label118;
      localProperties = new Properties();
    }
    while (true)
    {
      try
      {
        localProperties.load(new FileInputStream(Environment.getExternalStorageDirectory() + "/push_config.txt"));
        String str = localProperties.getProperty("config", "");
        localObject = str;
        c.e(2, b, "getCnsServer:" + (String)localObject);
        return localObject;
      }
      catch (Exception localException)
      {
        c.e(3, b, "Could not find the file:push_config.txt. error:" + localException);
        continue;
      }
      label118: localObject = "http://mobilecns.alipay.com";
    }
  }

  private static boolean g()
  {
    if (new File(Environment.getExternalStorageDirectory() + "/push_config.txt").exists())
      return true;
    c.e(3, b, "Could not find the file:push_config.txt");
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a
 * JD-Core Version:    0.6.2
 */
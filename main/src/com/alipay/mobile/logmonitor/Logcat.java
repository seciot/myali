package com.alipay.mobile.logmonitor;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.text.TextUtils;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.logmonitor.model.LogFileModel;
import com.alipay.mobile.logmonitor.util.LogMonitorConstans;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

public class Logcat
{
  private static Pattern a = Pattern.compile("^([0-9:\\s\\-\\.]+).*");
  private static BufferedReader b = null;
  private static Process c;
  private static Thread d = null;
  private static LogFileModel e;
  private static BufferedWriter f;
  private static int g;
  private static boolean h = false;
  private static SimpleDateFormat i = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
  private static AtomicBoolean j = new AtomicBoolean(false);
  private static String k = "logSwitch";
  private static boolean l = true;
  private static int m = new Date().getYear();

  private static boolean b(LogFileModel paramLogFileModel, BufferedWriter paramBufferedWriter)
  {
    synchronized (LogMonitorConstans.GLOBAL_LOCK)
    {
      try
      {
        paramBufferedWriter.flush();
        boolean bool = paramLogFileModel.a();
        return bool;
      }
      catch (IOException localIOException)
      {
        return false;
      }
    }
  }

  private static long c(String paramString)
  {
    try
    {
      String str2 = paramString.substring(0, paramString.indexOf(" ", 8));
      str1 = str2;
      if (!TextUtils.isEmpty(str1))
        try
        {
          long l1 = i.parse(1900 + m + "-" + str1).getTime();
          return l1;
        }
        catch (ParseException localParseException)
        {
          return System.currentTimeMillis();
        }
      return System.currentTimeMillis();
    }
    catch (Throwable localThrowable)
    {
      while (true)
        String str1 = null;
    }
  }

  public static void flushCurrentFile()
  {
    if ((f != null) && (e != null))
      b(e, f);
    h = true;
  }

  private static void g()
  {
    ConfigService localConfigService = (ConfigService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName());
    if (localConfigService != null)
    {
      String str = localConfigService.getConfig(k);
      if (!TextUtils.isEmpty(str))
        l = Boolean.valueOf(str).booleanValue();
    }
    else
    {
      return;
    }
    l = true;
  }

  private static int h()
  {
    try
    {
      Iterator localIterator = ((ActivityManager)AlipayApplication.getInstance().getSystemService("activity")).getRunningAppProcesses().iterator();
      while (localIterator.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (localRunningAppProcessInfo.processName.equals("system"))
        {
          int n = localRunningAppProcessInfo.pid;
          return n;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return -1;
  }

  public static void start()
  {
    g();
    if (d != null)
      synchronized (j)
      {
        j.notifyAll();
        j.set(false);
        return;
      }
    Thread localThread = new Thread(new a());
    d = localThread;
    localThread.setPriority(1);
    d.start();
  }

  public static void stop()
  {
    g();
    if (d != null)
    {
      flushCurrentFile();
      j.set(true);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.logmonitor.Logcat
 * JD-Core Version:    0.6.2
 */
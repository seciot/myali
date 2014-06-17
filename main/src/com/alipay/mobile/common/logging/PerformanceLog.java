package com.alipay.mobile.common.logging;

import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

public class PerformanceLog extends BaseLogger
{
  private static PerformanceLog a;
  private String b;
  private SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

  public static PerformanceLog createInstance()
  {
    try
    {
      if (a == null)
      {
        a = new PerformanceLog();
        if (AppInfo.getInstance().isDebuggable())
          a.init();
      }
      PerformanceLog localPerformanceLog = a;
      return localPerformanceLog;
    }
    finally
    {
    }
  }

  public static PerformanceLog getInstance()
  {
    try
    {
      if (a == null)
        throw new IllegalStateException("PerformanceLog must be create by call createInstance(Context context)");
    }
    finally
    {
    }
    PerformanceLog localPerformanceLog = a;
    return localPerformanceLog;
  }

  protected void init()
  {
    String str1 = DeviceInfo.getInstance().getExternalStoragePath("log");
    String str3;
    if (str1 != null)
      str3 = str1 + File.separatorChar + "perf.csv";
    while (true)
    {
      this.b = str3;
      File localFile2 = new File(this.b);
      boolean bool = localFile2.exists();
      try
      {
        this.mPrintWriter = new PrintWriter(new FileWriter(localFile2, true));
        if (!bool)
        {
          this.mPrintWriter.format("%s,%s,%s", new Object[] { "time", "mem", "tag" });
          this.mPrintWriter.println();
        }
        this.mSpecifiers = "%s,%d,%s";
        return;
        String str2 = AppInfo.getInstance().getFilesDirPath() + File.separatorChar + "log";
        File localFile1 = new File(str2);
        if ((!localFile1.exists()) && (!localFile1.mkdir()))
        {
          new StringBuilder("fail to creat log dir:").append(str2).toString();
          str3 = str2 + File.separatorChar + "perf.csv";
        }
        else
        {
          if (!localFile1.isDirectory())
          {
            new StringBuilder("log dir exist,but not directory:").append(str2).toString();
            throw new RuntimeException("log dir exist,but not directory:" + str2);
          }
          str3 = str2 + File.separatorChar + "perf.csv";
        }
      }
      catch (IOException localIOException)
      {
        new StringBuilder().append(localIOException).toString();
      }
    }
  }

  public void log(String paramString)
  {
    if ((!AppInfo.getInstance().isDebuggable()) || (this.mPrintWriter == null))
      return;
    String str = this.c.format(Long.valueOf(System.currentTimeMillis()));
    synchronized (this.mPrintWriter)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = str;
      arrayOfObject[1] = Long.valueOf(Runtime.getRuntime().maxMemory());
      arrayOfObject[2] = paramString;
      doLog(arrayOfObject);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logging.PerformanceLog
 * JD-Core Version:    0.6.2
 */
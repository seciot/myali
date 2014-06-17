package com.alipay.android.app.monitor;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;

final class c
{
  private static Object e = new Object();
  private static int f = 0;
  private String a;
  private MonitorEnum b;
  private StringBuilder c;
  private String d;

  public c(MonitorEnum paramMonitorEnum, String paramString)
  {
    try
    {
      this.b = paramMonitorEnum;
      this.c = new StringBuilder();
      this.c.append(paramString);
      this.a = a("yyyy-MM-dd HH:mm:ss.SSS");
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private static File a(String paramString, MonitorEnum paramMonitorEnum)
  {
    Calendar localCalendar = Calendar.getInstance();
    Locale localLocale = Locale.getDefault();
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(localCalendar.get(11));
    arrayOfObject[1] = Integer.valueOf(localCalendar.get(12));
    arrayOfObject[2] = Integer.valueOf(localCalendar.get(13));
    arrayOfObject[3] = paramMonitorEnum.a();
    String str = String.format(localLocale, "%s-%s-%s.%s", arrayOfObject);
    File localFile = new File(paramString + str);
    localFile.getParentFile().mkdirs();
    localFile.getAbsoluteFile().createNewFile();
    return localFile;
  }

  public static String a(String paramString)
  {
    return new SimpleDateFormat(paramString, Locale.getDefault()).format(new Date());
  }

  static void a()
  {
    synchronized (e)
    {
      f = 1 + f;
      return;
    }
  }

  private static void a(File paramFile, String paramString)
  {
    if (paramFile.canWrite())
    {
      FileWriter localFileWriter = new FileWriter(paramFile, true);
      localFileWriter.write(paramString + "\r\n");
      localFileWriter.flush();
      localFileWriter.close();
    }
  }

  private static void a(String paramString1, String paramString2, MonitorEnum paramMonitorEnum)
  {
    while (true)
    {
      int j;
      int m;
      try
      {
        File localFile1 = new File(paramString1);
        localFile1.mkdirs();
        File[] arrayOfFile = localFile1.listFiles();
        if ((arrayOfFile == null) || (arrayOfFile.length == 0))
        {
          a(a(paramString1, paramMonitorEnum), paramString2);
          return;
        }
        int i = arrayOfFile.length;
        j = 0;
        k = 0;
        if (j >= i)
          break label281;
        File localFile2 = arrayOfFile[j];
        if (k == 0)
        {
          if (localFile2.getName().indexOf(paramMonitorEnum.a()) > 0)
            k = 1;
        }
        else
        {
          long l = localFile2.length();
          GlobalContext.a().c().b();
          if ((l >= 20480L) || (localFile2.getName().indexOf(paramMonitorEnum.a()) <= 0))
            break label246;
          m = k;
          localObject = localFile2;
          if (localObject == null);
          switch (d.a[paramMonitorEnum.ordinal()])
          {
          default:
            if (localObject == null)
              return;
            a((File)localObject, paramString2);
            return;
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          }
        }
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return;
      }
      int k = 0;
      continue;
      label246: j++;
      continue;
      Object localObject = a(paramString1, paramMonitorEnum);
      continue;
      if (m == 0)
      {
        File localFile3 = a(paramString1, paramMonitorEnum);
        localObject = localFile3;
        continue;
        label281: m = k;
        localObject = null;
      }
    }
  }

  protected final void b()
  {
    switch (d.a[this.b.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    while (true)
    {
      if (!DeviceInfo.e())
        return;
      try
      {
        long l = Long.parseLong(((TelephonyManager)GlobalContext.a().b().getSystemService("phone")).getSubscriberId()) % 8L;
        if (l != 0L)
        {
          return;
          String str1 = a("yyyy-MM-dd");
          String str2 = GlobalContext.a().c().a() + str1 + File.separator;
          try
          {
            JSONObject localJSONObject = new JSONObject();
            localJSONObject.put("datetime", this.a);
            localJSONObject.put("monitorType", this.b.name());
            Context localContext = GlobalContext.a().b();
            DeviceInfo localDeviceInfo = DeviceInfo.a(localContext);
            String str3 = localDeviceInfo.a();
            if (TextUtils.equals(localContext.getPackageName(), "com.alipay.android.app"));
            for (String str4 = "msp"; ; str4 = "sdk")
            {
              localJSONObject.put("message", "==android(" + str4 + ":" + str3 + ")" + this.c);
              localJSONObject.put("tid", localDeviceInfo.b());
              if (this.d != null)
                localJSONObject.put("session", this.d);
              a(str2, localJSONObject.toString(), this.b);
              synchronized (e)
              {
                f = -1 + f;
                return;
              }
            }
          }
          catch (Exception localException2)
          {
            while (true)
              LogUtils.a(localException2);
          }
        }
      }
      catch (Exception localException1)
      {
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.c
 * JD-Core Version:    0.6.2
 */
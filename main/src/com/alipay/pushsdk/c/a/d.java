package com.alipay.pushsdk.c.a;

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class d
{
  public static String A = "timer";
  public static String B = "status_check";
  public static String C = "service_start";
  public static String D = "service_stop";
  public static String E = "actioin_unknown";
  private static String F = "alipay";
  private static String G = "push";
  public static String a = "time";
  public static String b = "action";
  public static String c = "triger";
  public static String d = "expected_time";
  public static String e = "expected_action";
  public static String f = "service_start";
  public static String g = "service_stop";
  public static String h = "net_find";
  public static String i = "net_lost";
  public static String j = "conn_exception";
  public static String k = "conn_timeout";
  public static String l = "client_check";
  public static String m = "client_reconn";
  public static String n = "action_triger";
  public static String o = "screen_on";
  public static String p = "user_checked";
  public static String q = "push_checked";
  public static String r = "xmpp_conned";
  public static String s = "xmpp_registerd";
  public static String t = "xmpp_send";
  public static String u = "xmpp_recv";
  public static String v = "reason_unknown";
  public static String w = "connect";
  public static String x = "register";
  public static String y = "keeplive";
  public static String z = "disconnect";

  public static void a()
  {
    if (BundlesManagerImpl.BundlesManager > 3)
    {
      String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S", Locale.CHINA).format(Long.valueOf(System.currentTimeMillis()));
      Log.d("RecordtoFile", "curTime=" + str);
      File localFile = stop();
      if (localFile != null)
      {
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append("====================================================================================================\n");
        v(localFile, localStringBuffer.toString());
      }
    }
  }

  private static void a(File paramFile, String paramString)
  {
    if (paramFile == null);
    try
    {
      Log.w("RecordtoFile", "the file is null.");
      return;
      String str = System.getProperty("line.separator ");
      if (str != null)
      {
        Log.w("RecordtoFile", "writeFileToSD nextLine separator is null.");
        paramString = paramString + str;
      }
      FileOutputStream localFileOutputStream = new FileOutputStream(paramFile, true);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      Log.e("RecordtoFile", "Error on writeFilToSD.");
      localException.printStackTrace();
    }
  }

  public static void a(String paramString1, String paramString2, long paramLong1, String paramString3, long paramLong2, String paramString4)
  {
    if (BundlesManagerImpl.BundlesManager > 3)
    {
      String str1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S", Locale.CHINA).format(Long.valueOf(paramLong1));
      String str2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S", Locale.CHINA).format(Long.valueOf(paramLong2));
      Log.d("RecordtoFile", "curTime=" + str1);
      Log.d("RecordtoFile", "expectTime=" + str2);
      File localFile = stop();
      if (localFile != null)
      {
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append(str1).append(",    ").append(paramString1).append(",    \t\t").append(paramString2).append(",    \t\t").append(str2).append(",    ").append(paramString3).append(",    \t\t").append(paramString4).append("\n");
        String str3 = localStringBuffer.toString();
        Log.d("RecordtoFile", "current record=" + str3);
        v(localFile, str3);
      }
    }
  }

  private static File stop()
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      Log.w("RecordtoFile", "SD card is not avaiable/writeable right now.");
      return null;
    }
    String str1 = DateFormat.getDateInstance().format(new Date());
    BundlesManagerImpl.e(3, "RecordtoFile", "checkFileOfSD date=" + str1);
    try
    {
      String str2 = Environment.getExternalStorageDirectory() + "/" + F;
      File localFile1 = new File(str2);
      if (!localFile1.exists())
      {
        Log.d("RecordtoFile", "Create the path:" + str2);
        localFile1.mkdir();
      }
      File localFile2 = new File(str2, G + "_" + str1 + ".log");
      if (!localFile2.exists())
      {
        Log.d("RecordtoFile", "Create the file:" + G);
        localFile2.createNewFile();
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append("Time\t\t\tReason\t\t\tAction\t\t\tNextTime\t\t\tNextAction\t\t\tNote\t\t\t\n");
        localFileOutputStream.write(localStringBuffer.toString().getBytes());
        localStringBuffer.append("====================================================================================================\n");
        localFileOutputStream.write(localStringBuffer.toString().getBytes());
        localFileOutputStream.close();
      }
      return localFile2;
    }
    catch (Exception localException)
    {
      Log.w("RecordtoFile", "Error on writeFilToSD.");
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.d
 * JD-Core Version:    0.6.2
 */
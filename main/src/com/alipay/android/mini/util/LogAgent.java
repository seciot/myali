package com.alipay.android.mini.util;

import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.logagent.StorageManager;
import com.alipay.mobile.framework.AlipayApplication;

public class LogAgent
{
  private static void a(LogAgent.LogItem paramLogItem)
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    try
    {
      new StringBuilder("write log:").append(paramLogItem).toString();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.convert(paramLogItem.b);
      String str1 = paramLogItem.g;
      String str2 = paramLogItem.c;
      String str3 = paramLogItem.d;
      String str4 = paramLogItem.e;
      String str5 = paramLogItem.f;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = paramLogItem.h;
      arrayOfString[1] = paramLogItem.i;
      new StorageManager(localAlipayApplication, localBehaviourIdEnum, str1, null, str2, null, str3, str4, str5, null, null, null, arrayOfString).writeLog();
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("write log error:").append(localException.getLocalizedMessage()).toString();
    }
  }

  public static void a(String paramString)
  {
    a(new LogAgent.LogItem("UC-JJ-01", "openPage", paramString, "cashier", "", "", ""));
  }

  public static void a(String paramString1, String paramString2)
  {
    a(new LogAgent.LogItem("UC-JJ-06", "clicked", paramString1, "", paramString2, "backIcon", ""));
  }

  public static void a(String paramString1, String paramString2, String paramString3)
  {
    a(new LogAgent.LogItem("UC-JJ-04", "clicked", paramString1, "", paramString2, paramString3, ""));
  }

  public static void b(String paramString)
  {
    a(new LogAgent.LogItem("UC-JJ-02", "openPage", paramString, "cashier-init", "", "", ""));
  }

  public static void b(String paramString1, String paramString2)
  {
    a(new LogAgent.LogItem("UC-JJ-08", "clicked", paramString1, "", paramString2, "exit", ""));
  }

  public static void b(String paramString1, String paramString2, String paramString3)
  {
    a(new LogAgent.LogItem("UC-JJ-05", "clicked", paramString1, paramString2, paramString3, "check", ""));
  }

  public static void c(String paramString)
  {
    a(new LogAgent.LogItem("UC-JJ-03", "openPage", paramString, "cashier-card-no", "", "", ""));
  }

  public static void c(String paramString1, String paramString2)
  {
    a(new LogAgent.LogItem("UC-JJ-09", "payEnd", paramString1, "", paramString2, "payEnd", ""));
  }

  public static void d(String paramString)
  {
    a(new LogAgent.LogItem("UC-JJ-07", "clicked", paramString, "", "cashier-init", "details", ""));
  }

  public static void d(String paramString1, String paramString2)
  {
    LogAgent.LogItem localLogItem = new LogAgent.LogItem("UC-MORE-15", "clicked", paramString1, "defaultPayModeView", "defaultPayModeView", "selectPayMode", "");
    localLogItem.h = paramString2;
    a(localLogItem);
  }

  public static void e(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-13", "clicked", paramString, "moreHome", "paySetIndex", "backIcon", ""));
  }

  public static void e(String paramString1, String paramString2)
  {
    LogAgent.LogItem localLogItem = new LogAgent.LogItem("UC-MORE-21", "clicked", paramString1, "smallDenseFreeView", "smallDenseFreeView", "selectAmount ", "");
    localLogItem.h = paramString2;
    a(localLogItem);
  }

  public static void f(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-14", "clicked", paramString, "defaultPayModeView", "paySetIndex", "defaultPay", ""));
  }

  public static void g(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-16", "clicked", paramString, "paySetIndex", "defaultPayModeView", "backIcon", ""));
  }

  public static void h(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-17", "clicked", paramString, "savePaySetSuccess", "defaultPayModeView", "backIcon", ""));
  }

  public static void i(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-18", "clicked", paramString, "smallDenseFreeView", "paySetIndex", "smallPay", ""));
  }

  public static void j(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-19", "clicked", paramString, "smallDenseFreeView", "smallDenseFreeView", "open", ""));
  }

  public static void k(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-20", "clicked", paramString, "smallDenseFreeView", "smallDenseFreeView", "close", ""));
  }

  public static void l(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-22", "clicked", paramString, "paySetIndex", "smallDenseFreeView", "backIcon", ""));
  }

  public static void m(String paramString)
  {
    a(new LogAgent.LogItem("UC-MORE-23", "clicked", paramString, "isSavePaySetView", "smallDenseFreeView", "backIcon", ""));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.LogAgent
 * JD-Core Version:    0.6.2
 */
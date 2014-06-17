package com.alipay.mobile.common.logagent;

import android.content.Context;
import java.io.PrintWriter;
import java.io.StringWriter;

public class SystemExceptionHandler
{
  private static SystemExceptionHandler b;
  private Context a;
  private String c = "";

  private static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    Throwable localThrowable = paramThrowable.getCause();
    if (localThrowable == null)
      paramThrowable.printStackTrace(localPrintWriter);
    while (localThrowable != null)
    {
      localThrowable.printStackTrace(localPrintWriter);
      localThrowable = localThrowable.getCause();
    }
    localPrintWriter.close();
    return localStringWriter.toString();
  }

  public static SystemExceptionHandler getInstance()
  {
    if (b == null)
      b = new SystemExceptionHandler();
    return b;
  }

  public void init(Context paramContext)
  {
    this.a = paramContext;
  }

  public void saveConnInfoToFile(Throwable paramThrowable, String paramString)
  {
    String str = a(paramThrowable);
    if ((str != null) && (str.equals(this.c)));
    do
    {
      return;
      this.c = str;
    }
    while (str == null);
    StorageStateInfo localStorageStateInfo = StorageStateInfo.getInstance();
    AlipayLogAgent.onError(this.a, "operationType=" + localStorageStateInfo.getValue("requestType") + "|" + str, localStorageStateInfo.getValue("currentViewID"), paramString);
  }

  public void saveErrorInfoToFile(Throwable paramThrowable, String paramString)
  {
    String str = a(paramThrowable);
    if (str != null)
    {
      StorageStateInfo localStorageStateInfo = StorageStateInfo.getInstance();
      AlipayLogAgent.onError(this.a, str, localStorageStateInfo.getValue("currentViewID"), paramString);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.SystemExceptionHandler
 * JD-Core Version:    0.6.2
 */
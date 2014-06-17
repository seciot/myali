package com.alipay.mobile.command.util;

import com.alipay.mobile.common.logagent.AlipayLogAgent;

public class CommandLogUtil
{
  private static String a(Object[] paramArrayOfObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[').append(Thread.currentThread().getId()).append(']');
    int i = paramArrayOfObject.length;
    for (int j = 0; j < i; j++)
      localStringBuilder.append(paramArrayOfObject[j]);
    return localStringBuilder.toString();
  }

  public static void logD(String paramString, Object[] paramArrayOfObject)
  {
    if (CommandConfig.isDebug())
    {
      new StringBuilder("Alipay_").append(paramString).toString();
      a(paramArrayOfObject);
    }
  }

  public static void logE(String paramString, Throwable paramThrowable, Object[] paramArrayOfObject)
  {
    Object[] arrayOfObject;
    if (CommandConfig.isDebug())
    {
      new StringBuilder("Alipay_").append(paramString).toString();
      arrayOfObject = new Object[2];
      arrayOfObject[0] = paramArrayOfObject;
      if (paramThrowable != null)
        break label55;
    }
    label55: for (String str = ""; ; str = paramThrowable.getMessage())
    {
      arrayOfObject[1] = str;
      a(arrayOfObject);
      return;
    }
  }

  public static void logE(String paramString, Object[] paramArrayOfObject)
  {
    if (CommandConfig.isDebug())
    {
      new StringBuilder("Alipay_").append(paramString).toString();
      a(paramArrayOfObject);
    }
  }

  public static void logE(boolean paramBoolean, String paramString, Throwable paramThrowable, Object[] paramArrayOfObject)
  {
    Object[] arrayOfObject;
    if (CommandConfig.isDebug())
    {
      new StringBuilder("Alipay_").append(paramString).toString();
      arrayOfObject = new Object[2];
      arrayOfObject[0] = paramArrayOfObject;
      if (paramThrowable != null)
        break label55;
    }
    label55: for (String str = ""; ; str = paramThrowable.getMessage())
    {
      arrayOfObject[1] = str;
      a(arrayOfObject);
      return;
    }
  }

  public static void logE(boolean paramBoolean, String paramString, Object[] paramArrayOfObject)
  {
    if (CommandConfig.isDebug())
    {
      new StringBuilder("Alipay_").append(paramString).toString();
      a(paramArrayOfObject);
    }
  }

  public static void logV(String paramString, Object[] paramArrayOfObject)
  {
    if (CommandConfig.isDebug())
    {
      new StringBuilder("Alipay_").append(paramString).toString();
      a(paramArrayOfObject);
    }
  }

  public static void upErrorInfo(Throwable paramThrowable, Object[] paramArrayOfObject)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(a(paramArrayOfObject));
    if (paramThrowable == null);
    for (String str1 = ""; ; str1 = CommandUtil.getExceptionMsg(paramThrowable))
    {
      String str2 = str1;
      if (CommandUtil.isInWallet())
        AlipayLogAgent.onError(CommandConfig.getContext(), str2, "", "cmdcenter", "MonitorPoint_ClientsErr");
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.CommandLogUtil
 * JD-Core Version:    0.6.2
 */
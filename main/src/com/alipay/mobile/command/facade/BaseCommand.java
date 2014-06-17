package com.alipay.mobile.command.facade;

import android.text.TextUtils;
import android.util.Base64;
import com.alipay.mobile.command.util.CommandLogUtil;

public abstract class BaseCommand
{
  private static String[] a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
      for (int i = 0; i < paramArrayOfString.length; i++)
        if ((paramArrayOfString[i].startsWith("useRuntimeParam##")) && (!paramArrayOfString[i].equals("useRuntimeParam##${RuntimeParam}")))
        {
          String[] arrayOfString = paramArrayOfString[i].split("##");
          if (!TextUtils.isEmpty(arrayOfString[1]))
            paramArrayOfString[i] = ("useRuntimeParam##" + new String(Base64.decode(arrayOfString[1].getBytes(), 2)));
        }
    return paramArrayOfString;
  }

  public boolean doProcess(String paramString, String[] paramArrayOfString)
  {
    try
    {
      boolean bool = process(paramString, a(paramArrayOfString));
      return bool;
    }
    catch (Throwable localThrowable)
    {
      new Object[] { "taskId:", paramString, ",command process 执行异常." };
      CommandLogUtil.upErrorInfo(localThrowable, new Object[] { "taskId:", paramString, ",command process 执行异常." });
    }
    return false;
  }

  public boolean doRollback(String paramString, String[] paramArrayOfString)
  {
    try
    {
      boolean bool = rollback(paramString, a(paramArrayOfString));
      return bool;
    }
    catch (Throwable localThrowable)
    {
      new Object[] { "command rollback 执行异常." };
    }
    return false;
  }

  public abstract boolean process(String paramString, String[] paramArrayOfString);

  public abstract boolean rollback(String paramString, String[] paramArrayOfString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.facade.BaseCommand
 * JD-Core Version:    0.6.2
 */
package com.taobao.securityjni.errorcode;

import com.taobao.securityjni.tools.RetObject;

public class SErrCode
{
  private static ThreadLocal SERRORCODE = new ThreadLocal();

  public static RetObject GetErrorCode()
  {
    RetObject localRetObject = (RetObject)SERRORCODE.get();
    SERRORCODE.set(null);
    return localRetObject;
  }

  private static RetObject GetRetObject()
  {
    RetObject localRetObject = (RetObject)SERRORCODE.get();
    if (localRetObject == null)
      return new RetObject();
    localRetObject.errorCode = 0;
    return localRetObject;
  }

  public static RetObject ParseErrorCode(Throwable paramThrowable)
  {
    if (paramThrowable == null);
    String[] arrayOfString;
    RetObject localRetObject;
    do
    {
      String str;
      do
      {
        return null;
        str = paramThrowable.getMessage();
      }
      while (str == null);
      arrayOfString = str.split(":");
      localRetObject = GetRetObject();
    }
    while ((arrayOfString == null) || (arrayOfString.length < 8));
    if (arrayOfString[1] != null)
      localRetObject.functionName = arrayOfString[1].getBytes();
    try
    {
      if ((arrayOfString[3] != null) && (!"".equals(arrayOfString[3])))
        localRetObject.errorCode = Integer.valueOf(arrayOfString[3]).intValue();
      if ((arrayOfString[5] != null) && (!"".equals(arrayOfString[5])))
        localRetObject.extraData = Integer.valueOf(arrayOfString[5]).intValue();
      if ((arrayOfString[7] != null) && (!"".equals(arrayOfString[7])))
        localRetObject.reservedData = Integer.valueOf(arrayOfString[7]).intValue();
      label146: return localRetObject;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        localNumberFormatException.printStackTrace();
    }
    catch (Exception localException)
    {
      break label146;
    }
  }

  public static void SetErrorCode(RetObject paramRetObject)
  {
    SERRORCODE.set(paramRetObject);
  }

  public static void SetErrorCode(Throwable paramThrowable)
  {
    RetObject localRetObject = ParseErrorCode(paramThrowable);
    SERRORCODE.set(localRetObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.errorcode.SErrCode
 * JD-Core Version:    0.6.2
 */
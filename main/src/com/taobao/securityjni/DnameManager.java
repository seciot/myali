package com.taobao.securityjni;

import com.taobao.securityjni.tools.d;

public class DnameManager
{
  private static final DnameManager.AppBundle AHICK = new DnameManager.AppBundle((byte)0);

  public static void RegisterConfig(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString)));
    try
    {
      RegisterConfig(paramString.getBytes());
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  private static native void RegisterConfig(byte[] paramArrayOfByte);

  private static native void RegisterName(byte[] paramArrayOfByte);

  public static void RegisterName(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null)
      return;
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < paramArrayOfString.length; i++)
      if ((paramArrayOfString[i] != null) && (!"".equals(paramArrayOfString[i])))
      {
        localStringBuilder.append(paramArrayOfString[i]);
        if (i != -1 + paramArrayOfString.length)
          localStringBuilder.append(':');
      }
    try
    {
      RegisterName(localStringBuilder.toString().getBytes());
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  private static native void StartAHick();

  public static void StartDsAHick()
  {
    d.a(AHICK);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.DnameManager
 * JD-Core Version:    0.6.2
 */
package com.alipay.pushsdk.c;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.StringTokenizer;

public final class h
{
  public static String a()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration2;
        while (!localEnumeration2.hasMoreElements())
        {
          if (!localEnumeration1.hasMoreElements())
            break;
          localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration2.nextElement();
      }
      while (localInetAddress.isLoopbackAddress());
      String str = localInetAddress.getHostAddress().toString();
      return str;
    }
    catch (SocketException localSocketException)
    {
      localSocketException.printStackTrace();
    }
    return null;
  }

  public static String a(String[] paramArrayOfString)
  {
    Object localObject = "";
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      if (i > 0)
        localObject = (String)localObject + ",";
      String str = (String)localObject + paramArrayOfString[i];
      i++;
      localObject = str;
    }
    return localObject;
  }

  public static boolean a(String[] paramArrayOfString, String paramString)
  {
    for (int i = 0; ; i++)
    {
      int j = paramArrayOfString.length;
      boolean bool = false;
      if (i < j)
      {
        if (paramString.equals(paramArrayOfString[i]))
          bool = true;
      }
      else
        return bool;
    }
  }

  public static String[] a(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ",");
    String[] arrayOfString = new String[localStringTokenizer.countTokens()];
    for (int i = 0; localStringTokenizer.hasMoreTokens(); i++)
      arrayOfString[i] = localStringTokenizer.nextToken();
    return arrayOfString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.h
 * JD-Core Version:    0.6.2
 */
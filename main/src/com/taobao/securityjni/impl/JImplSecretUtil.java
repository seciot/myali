package com.taobao.securityjni.impl;

import com.taobao.securityjni.errorcode.SENotSupportedMethodError;
import com.taobao.securityjni.intelface.ISecretUtil;
import com.taobao.securityjni.tools.DataContext;
import com.taobao.securityjni.tools.a;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.TreeMap;

public class JImplSecretUtil
  implements ISecretUtil
{
  public static final String M_API = "API";
  public static final String M_DATA = "DATA";
  public static final String M_ECODE = "ECODE";
  public static final String M_IMEI = "IMEI";
  public static final String M_IMSI = "IMSI";
  public static final String M_KEY = "KEY";
  public static final String M_SECRET = "SECRET";
  public static final String M_TIME = "TIME";
  public static final String M_V = "V";
  private static final String SPLIT_STR = "&";

  private String byte2hex(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() == 1)
        localStringBuffer.append("0").append(str);
      while (true)
      {
        i++;
        break;
        localStringBuffer.append(str);
      }
    }
    return localStringBuffer.toString().toUpperCase();
  }

  private String signgbk(String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      String str2 = byte2hex(MessageDigest.getInstance("MD5").digest(paramString.getBytes("gbk")));
      str1 = str2;
      return str1.toLowerCase();
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        String str1 = null;
      }
    }
  }

  public String getExternalSign(LinkedHashMap paramLinkedHashMap, DataContext paramDataContext)
  {
    throw new SENotSupportedMethodError();
  }

  public String getLaiwangSign(String paramString1, String paramString2, DataContext paramDataContext)
  {
    throw new SENotSupportedMethodError();
  }

  public String getLoginTopToken(String paramString1, String paramString2, DataContext paramDataContext)
  {
    String str1;
    if ((paramDataContext.extData instanceof HashMap))
      str1 = (String)((HashMap)paramDataContext.extData).get("KEY");
    for (String str2 = (String)((HashMap)paramDataContext.extData).get("SECRET"); ; str2 = null)
    {
      return signgbk(str1 + signgbk(str2) + paramString1 + paramString2);
      str1 = null;
    }
  }

  public String getMtopSign(HashMap paramHashMap, DataContext paramDataContext)
  {
    while (true)
    {
      String str7;
      try
      {
        String str1 = (String)paramHashMap.get("KEY");
        String str2 = (String)paramHashMap.get("SECRET");
        String str3 = (String)paramHashMap.get("API");
        str4 = (String)paramHashMap.get("V");
        String str5 = (String)paramHashMap.get("IMEI");
        String str6 = (String)paramHashMap.get("IMSI");
        str7 = (String)paramHashMap.get("DATA");
        String str8 = (String)paramHashMap.get("TIME");
        String str9 = (String)paramHashMap.get("ECODE");
        if (str4 != null)
        {
          if (!"".equals(str4))
            break label347;
          break label343;
          String str10 = a.a(new ByteArrayInputStream(str1.getBytes("UTF-8")));
          StringBuffer localStringBuffer = new StringBuffer();
          if ((str9 != null) || ("".equals(str9)))
          {
            localStringBuffer.append(str9);
            localStringBuffer.append("&");
          }
          localStringBuffer.append(str2);
          localStringBuffer.append("&");
          localStringBuffer.append(str10);
          localStringBuffer.append("&");
          localStringBuffer.append(str3);
          localStringBuffer.append("&");
          localStringBuffer.append(str4);
          localStringBuffer.append("&");
          localStringBuffer.append(str5);
          localStringBuffer.append("&");
          localStringBuffer.append(str6);
          localStringBuffer.append("&");
          localStringBuffer.append(a.a(new ByteArrayInputStream(str7.getBytes("UTF-8"))));
          localStringBuffer.append("&");
          localStringBuffer.append(str8);
          String str11 = a.a(new ByteArrayInputStream(localStringBuffer.toString().getBytes("UTF-8")));
          return str11;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      label343: String str4 = "*";
      label347: if (str7 == null)
        str7 = "";
    }
  }

  public String getMtopV4RespSign(String paramString, DataContext paramDataContext)
  {
    throw new SENotSupportedMethodError();
  }

  public String getMtopV4Sign(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, DataContext paramDataContext)
  {
    throw new SENotSupportedMethodError();
  }

  public String getQianNiuSign(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    throw new SENotSupportedMethodError();
  }

  public String getTopSign(TreeMap paramTreeMap, DataContext paramDataContext)
  {
    if (paramTreeMap == null);
    String str1;
    do
    {
      return null;
      str1 = (String)paramTreeMap.get("SECRET");
    }
    while (str1 == null);
    paramTreeMap.remove("SECRET");
    paramTreeMap.remove("KEY");
    Iterator localIterator = paramTreeMap.keySet().iterator();
    StringBuffer localStringBuffer = new StringBuffer(str1);
    while (localIterator.hasNext())
    {
      String str4 = (String)localIterator.next();
      localStringBuffer.append(str4).append((String)paramTreeMap.get(str4));
    }
    localStringBuffer.append(str1);
    try
    {
      String str3 = byte2hex(MessageDigest.getInstance("MD5").digest(localStringBuffer.toString().getBytes("utf-8")));
      str2 = str3;
      return str2;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        String str2 = null;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.JImplSecretUtil
 * JD-Core Version:    0.6.2
 */
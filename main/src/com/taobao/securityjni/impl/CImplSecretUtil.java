package com.taobao.securityjni.impl;

import android.content.ContextWrapper;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.intelface.ISecretUtil;
import com.taobao.securityjni.tools.DataContext;
import com.taobao.securityjni.usertrack.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.TreeMap;

public class CImplSecretUtil extends SESecurity
  implements ISecretUtil
{
  private ContextWrapper context = null;
  private boolean trusted = false;

  public CImplSecretUtil(ContextWrapper paramContextWrapper)
  {
    this.context = paramContextWrapper;
    this.trusted = SOCredibleCheck(paramContextWrapper);
  }

  private void InitGlobalData()
  {
    new GlobalInit().InitData(this.context);
  }

  private native byte[] getExternalSignByte(byte[] paramArrayOfByte, DataContext paramDataContext);

  private native byte[] getLaiwangSignByte(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, DataContext paramDataContext);

  private native byte[] getMtopV4RespByte(byte[] paramArrayOfByte, DataContext paramDataContext);

  private native byte[] getMtopV4SignByte(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5, byte[] paramArrayOfByte6, byte[] paramArrayOfByte7, byte[] paramArrayOfByte8, byte[] paramArrayOfByte9, byte[] paramArrayOfByte10, DataContext paramDataContext);

  private native byte[] getQianNiuSignByte(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  private native String getSignNative(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, DataContext paramDataContext);

  private native byte[] getTopSignByte(byte[] paramArrayOfByte, DataContext paramDataContext);

  private native String getTopToken(byte[] paramArrayOfByte, String paramString, DataContext paramDataContext);

  public String getExternalSign(LinkedHashMap paramLinkedHashMap, DataContext paramDataContext)
  {
    if ((paramLinkedHashMap == null) || (paramLinkedHashMap.isEmpty()));
    do
    {
      return null;
      SOInitCheck();
    }
    while (!this.trusted);
    StringBuilder localStringBuilder = new StringBuilder(768);
    Iterator localIterator = paramLinkedHashMap.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      String str3 = (String)paramLinkedHashMap.get(str2);
      if (str3 != null)
        localStringBuilder.append(str2).append('=').append(str3);
      while (true)
      {
        localStringBuilder.append('&');
        break;
        localStringBuilder.append(str2);
      }
    }
    try
    {
      byte[] arrayOfByte2 = getExternalSignByte(localStringBuilder.substring(0, -1 + localStringBuilder.length()).getBytes("UTF-8"), paramDataContext);
      arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte1 != null)
      {
        str1 = new String(arrayOfByte1);
        return str1;
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        a.a("getExternalSign", localThrowable);
        byte[] arrayOfByte1 = null;
        continue;
        String str1 = null;
      }
    }
  }

  public String getLaiwangSign(String paramString1, String paramString2, DataContext paramDataContext)
  {
    if ((paramString1 != null) && (paramString2 != null));
    while (true)
    {
      try
      {
        byte[] arrayOfByte2 = getLaiwangSignByte(paramString1.getBytes("UTF-8"), paramString2.getBytes("UTF-8"), paramDataContext);
        arrayOfByte1 = arrayOfByte2;
        String str = null;
        if (arrayOfByte1 != null)
          str = new String(arrayOfByte1).toLowerCase();
        return str;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        a.a("getMtopV4RespSign", localThrowable);
        arrayOfByte1 = null;
        continue;
      }
      byte[] arrayOfByte1 = null;
    }
  }

  public String getLoginTopToken(String paramString1, String paramString2, DataContext paramDataContext)
  {
    if ((paramString1 == null) || (paramString2 == null));
    do
    {
      return null;
      SOInitCheck();
    }
    while (!this.trusted);
    try
    {
      String str = getTopToken(paramString1.getBytes("GBK"), paramString2, paramDataContext);
      return str;
    }
    catch (Throwable localThrowable)
    {
      a.a("getLoginTopToken", localThrowable);
    }
    return null;
  }

  public String getMtopSign(HashMap paramHashMap, DataContext paramDataContext)
  {
    if ((paramHashMap == null) || (paramDataContext == null))
      return null;
    StringBuilder localStringBuilder1 = new StringBuilder(768);
    String str1 = (String)paramHashMap.get("DATA");
    if ((str1 != null) && (!"".equals(str1)));
    for (byte[] arrayOfByte = str1.getBytes(); ; arrayOfByte = null)
    {
      paramHashMap.remove("DATA");
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str5 = (String)localIterator.next();
        String str6 = (String)paramHashMap.get(str5);
        if (str6 != null)
        {
          localStringBuilder1.append(str5).append('=').append(str6);
          localStringBuilder1.append('^');
        }
      }
      if (localStringBuilder1.length() <= 0)
        break;
      SOInitCheck();
      if (!this.trusted)
        break;
      try
      {
        String str4 = getSignNative(localStringBuilder1.substring(0, -1 + localStringBuilder1.length()).getBytes("UTF-8"), arrayOfByte, paramDataContext);
        return str4;
      }
      catch (Throwable localThrowable)
      {
        String str2 = localThrowable.getMessage();
        String str3 = localStringBuilder1.substring(0, -1 + localStringBuilder1.length());
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(str2).append(":OriginalData:").append(str3);
        a.a("getMtopSign", new Exception(localStringBuilder2.toString(), localThrowable.getCause()));
        return null;
      }
    }
  }

  public String getMtopV4RespSign(String paramString, DataContext paramDataContext)
  {
    if (paramString != null);
    while (true)
    {
      try
      {
        arrayOfByte1 = paramString.getBytes("UTF-8");
        byte[] arrayOfByte3 = getMtopV4RespByte(arrayOfByte1, paramDataContext);
        arrayOfByte2 = arrayOfByte3;
        String str = null;
        if (arrayOfByte2 != null)
          str = new String(arrayOfByte2).toLowerCase();
        return str;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        a.a("getMtopV4RespSign", localThrowable);
        byte[] arrayOfByte2 = null;
        continue;
      }
      byte[] arrayOfByte1 = null;
    }
  }

  public String getMtopV4Sign(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, DataContext paramDataContext)
  {
    byte[] arrayOfByte1 = null;
    if (paramString1 != null)
      arrayOfByte1 = paramString1.getBytes();
    byte[] arrayOfByte2 = null;
    if (paramString2 != null)
      arrayOfByte2 = paramString2.getBytes();
    byte[] arrayOfByte3 = null;
    if (paramString3 != null)
      arrayOfByte3 = paramString3.getBytes();
    byte[] arrayOfByte4 = null;
    if (paramString4 != null)
      arrayOfByte4 = paramString4.getBytes();
    byte[] arrayOfByte5 = null;
    if (paramString5 != null)
      arrayOfByte5 = paramString5.getBytes();
    byte[] arrayOfByte6 = null;
    if (paramString6 != null)
      arrayOfByte6 = paramString6.getBytes();
    byte[] arrayOfByte7 = null;
    if (paramString7 != null)
      arrayOfByte7 = paramString7.getBytes();
    byte[] arrayOfByte8 = null;
    if (paramString8 != null)
      arrayOfByte8 = paramString8.getBytes();
    byte[] arrayOfByte9 = null;
    if (paramString9 != null)
      arrayOfByte9 = paramString9.getBytes();
    byte[] arrayOfByte10 = null;
    if (paramString10 != null)
      arrayOfByte10 = paramString10.getBytes();
    try
    {
      byte[] arrayOfByte12 = getMtopV4SignByte(arrayOfByte1, arrayOfByte2, arrayOfByte3, arrayOfByte4, arrayOfByte5, arrayOfByte6, arrayOfByte7, arrayOfByte8, arrayOfByte9, arrayOfByte10, paramDataContext);
      arrayOfByte11 = arrayOfByte12;
      if (arrayOfByte11 != null)
        return new String(arrayOfByte11);
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        a.a("getMtopV4Sign", localThrowable);
        byte[] arrayOfByte11 = null;
      }
    }
    return null;
  }

  public String getQianNiuSign(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null));
    do
    {
      return null;
      SOInitCheck();
    }
    while (!this.trusted);
    try
    {
      str = new String(getQianNiuSignByte(paramArrayOfByte1, paramArrayOfByte2));
      return str;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        a.a("getQianNiuSign", localThrowable);
        String str = null;
      }
    }
  }

  public String getTopSign(TreeMap paramTreeMap, DataContext paramDataContext)
  {
    if ((paramTreeMap == null) || (paramTreeMap.isEmpty()));
    do
    {
      return null;
      SOInitCheck();
    }
    while (!this.trusted);
    Iterator localIterator = paramTreeMap.keySet().iterator();
    StringBuilder localStringBuilder = new StringBuilder(512);
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      String str3 = (String)paramTreeMap.get(str2);
      if (str3 != null)
        localStringBuilder.append(str2).append(str3);
      else
        localStringBuilder.append(str2);
    }
    try
    {
      byte[] arrayOfByte2 = getTopSignByte(localStringBuilder.toString().getBytes("UTF-8"), paramDataContext);
      arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte1 != null)
      {
        str1 = new String(arrayOfByte1);
        return str1;
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        a.a("getTopSign", localThrowable);
        byte[] arrayOfByte1 = null;
        continue;
        String str1 = null;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.CImplSecretUtil
 * JD-Core Version:    0.6.2
 */
package com.taobao.securityjni.impl;

import android.content.ContextWrapper;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.intelface.IUtilWX;
import com.taobao.securityjni.tools.DataContext;
import com.taobao.securityjni.tools.PhoneInfo;

public class CImplUtilWX extends SESecurity
  implements IUtilWX
{
  private ContextWrapper context = null;

  public CImplUtilWX(ContextWrapper paramContextWrapper)
  {
    this.context = paramContextWrapper;
  }

  private native byte[] EncryptDataN(byte[] paramArrayOfByte, DataContext paramDataContext);

  private String GetImeiPR()
  {
    return PhoneInfo.getSecImei(this.context);
  }

  private String GetImsiPR()
  {
    return PhoneInfo.getSecImsi(this.context);
  }

  private native byte[] GetN(byte[] paramArrayOfByte);

  private native byte[] GetN(byte[] paramArrayOfByte, DataContext paramDataContext);

  private void InitGlobalData()
  {
    new GlobalInit().InitData(this.context);
  }

  private native byte[] PutN(byte[] paramArrayOfByte);

  private native byte[] PutN(byte[] paramArrayOfByte, DataContext paramDataContext);

  public String EncryptData(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || ("".equals(paramString1)))
      return null;
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        DataContext localDataContext = new DataContext();
        localDataContext.extData = paramString2.getBytes("UTF-8");
        byte[] arrayOfByte = EncryptDataN(paramString1.getBytes(), localDataContext);
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    return null;
  }

  public byte[] EncryptData(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null));
    do
    {
      return null;
      SOInitCheck();
    }
    while (!SOCredibleCheck(this.context));
    try
    {
      DataContext localDataContext = new DataContext();
      localDataContext.extData = paramArrayOfByte2;
      byte[] arrayOfByte = EncryptDataN(paramArrayOfByte1, localDataContext);
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  public String Get(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
      return null;
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = GetN(paramString.getBytes());
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    return null;
  }

  public String Get(String paramString, DataContext paramDataContext)
  {
    if ((paramString == null) || ("".equals(paramString)) || (paramDataContext == null))
      return null;
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = GetN(paramString.getBytes(), paramDataContext);
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    return null;
  }

  public byte[] Get(byte[] paramArrayOfByte)
  {
    Object localObject;
    if ((paramArrayOfByte == null) || ("".equals(paramArrayOfByte)))
      localObject = null;
    while (true)
    {
      return localObject;
      SOInitCheck();
      if (SOCredibleCheck(this.context));
      try
      {
        byte[] arrayOfByte = GetN(paramArrayOfByte);
        localObject = arrayOfByte;
        if (localObject != null)
          continue;
        return null;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          localThrowable.printStackTrace();
      }
    }
  }

  public byte[] Get(byte[] paramArrayOfByte, DataContext paramDataContext)
  {
    if ((paramArrayOfByte == null) || (paramDataContext == null));
    do
    {
      return null;
      SOInitCheck();
    }
    while (!SOCredibleCheck(this.context));
    try
    {
      byte[] arrayOfByte = GetN(paramArrayOfByte, paramDataContext);
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  public String Put(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
      return null;
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = PutN(paramString.getBytes());
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    return null;
  }

  public String Put(String paramString, DataContext paramDataContext)
  {
    if ((paramString == null) || ("".equals(paramString)) || (paramDataContext == null))
      return null;
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = PutN(paramString.getBytes(), paramDataContext);
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    return null;
  }

  public byte[] Put(byte[] paramArrayOfByte)
  {
    Object localObject;
    if ((paramArrayOfByte == null) || ("".equals(paramArrayOfByte)))
      localObject = null;
    while (true)
    {
      return localObject;
      SOInitCheck();
      if (SOCredibleCheck(this.context));
      try
      {
        byte[] arrayOfByte = PutN(paramArrayOfByte);
        localObject = arrayOfByte;
        if (localObject != null)
          continue;
        return null;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          localThrowable.printStackTrace();
      }
    }
  }

  public byte[] Put(byte[] paramArrayOfByte, DataContext paramDataContext)
  {
    if ((paramArrayOfByte == null) || (paramDataContext == null));
    do
    {
      return null;
      SOInitCheck();
    }
    while (!SOCredibleCheck(this.context));
    try
    {
      byte[] arrayOfByte = PutN(paramArrayOfByte, paramDataContext);
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.CImplUtilWX
 * JD-Core Version:    0.6.2
 */
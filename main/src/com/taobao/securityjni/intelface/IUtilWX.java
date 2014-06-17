package com.taobao.securityjni.intelface;

import com.taobao.securityjni.tools.DataContext;

public abstract interface IUtilWX
{
  public abstract String EncryptData(String paramString1, String paramString2);

  public abstract byte[] EncryptData(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  public abstract String Get(String paramString);

  public abstract String Get(String paramString, DataContext paramDataContext);

  public abstract byte[] Get(byte[] paramArrayOfByte);

  public abstract byte[] Get(byte[] paramArrayOfByte, DataContext paramDataContext);

  public abstract String Put(String paramString);

  public abstract String Put(String paramString, DataContext paramDataContext);

  public abstract byte[] Put(byte[] paramArrayOfByte);

  public abstract byte[] Put(byte[] paramArrayOfByte, DataContext paramDataContext);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.intelface.IUtilWX
 * JD-Core Version:    0.6.2
 */
package com.taobao.securityjni;

import android.content.ContextWrapper;
import com.taobao.securityjni.impl.CImplUtilWX;
import com.taobao.securityjni.intelface.IAttachImpl;
import com.taobao.securityjni.intelface.IUtilWX;
import com.taobao.securityjni.tools.DataContext;

public class UtilWX
  implements IAttachImpl, IUtilWX
{
  private IUtilWX a = null;

  public UtilWX(ContextWrapper paramContextWrapper)
  {
    this.a = new CImplUtilWX(paramContextWrapper);
  }

  public UtilWX(ContextWrapper paramContextWrapper, IUtilWX paramIUtilWX)
  {
    if (paramIUtilWX == null)
    {
      this.a = new CImplUtilWX(paramContextWrapper);
      return;
    }
    this.a = paramIUtilWX;
  }

  public void AttachImplObject(Object paramObject)
  {
    if ((paramObject != null) && ((paramObject instanceof IUtilWX)))
      this.a = ((IUtilWX)paramObject);
  }

  public String EncryptData(String paramString1, String paramString2)
  {
    return this.a.EncryptData(paramString1, paramString2);
  }

  public byte[] EncryptData(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return this.a.EncryptData(paramArrayOfByte1, paramArrayOfByte2);
  }

  public String Get(String paramString)
  {
    return this.a.Get(paramString);
  }

  public String Get(String paramString, DataContext paramDataContext)
  {
    return this.a.Get(paramString, paramDataContext);
  }

  public byte[] Get(byte[] paramArrayOfByte)
  {
    return this.a.Get(paramArrayOfByte);
  }

  public byte[] Get(byte[] paramArrayOfByte, DataContext paramDataContext)
  {
    return this.a.Get(paramArrayOfByte, paramDataContext);
  }

  public String Put(String paramString)
  {
    return this.a.Put(paramString);
  }

  public String Put(String paramString, DataContext paramDataContext)
  {
    return this.a.Put(paramString, paramDataContext);
  }

  public byte[] Put(byte[] paramArrayOfByte)
  {
    return this.a.Put(paramArrayOfByte);
  }

  public byte[] Put(byte[] paramArrayOfByte, DataContext paramDataContext)
  {
    return this.a.Put(paramArrayOfByte, paramDataContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.UtilWX
 * JD-Core Version:    0.6.2
 */
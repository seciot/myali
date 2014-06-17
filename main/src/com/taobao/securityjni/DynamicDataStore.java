package com.taobao.securityjni;

import android.content.ContextWrapper;
import com.taobao.securityjni.impl.CImplDynamicData;
import com.taobao.securityjni.intelface.IAttachImpl;
import com.taobao.securityjni.intelface.IDynamicData;

public class DynamicDataStore
  implements IAttachImpl, IDynamicData
{
  private IDynamicData dynDataImpl = null;

  public DynamicDataStore(ContextWrapper paramContextWrapper)
  {
    this.dynDataImpl = new CImplDynamicData(paramContextWrapper);
  }

  public DynamicDataStore(ContextWrapper paramContextWrapper, IDynamicData paramIDynamicData)
  {
    if (paramIDynamicData == null)
    {
      this.dynDataImpl = new CImplDynamicData(paramContextWrapper);
      return;
    }
    this.dynDataImpl = paramIDynamicData;
  }

  static String getStringValue(ContextWrapper paramContextWrapper, String paramString)
  {
    return new DynamicDataStore(paramContextWrapper).getString(paramString);
  }

  public void AttachImplObject(Object paramObject)
  {
    if ((paramObject != null) && ((paramObject instanceof IDynamicData)))
      this.dynDataImpl = ((IDynamicData)paramObject);
  }

  public void clearAll()
  {
    this.dynDataImpl.clearAll();
  }

  public boolean getBoolean(String paramString)
  {
    return this.dynDataImpl.getBoolean(paramString);
  }

  public byte[] getByteArray(String paramString)
  {
    return this.dynDataImpl.getByteArray(paramString);
  }

  public float getFloat(String paramString)
  {
    return this.dynDataImpl.getFloat(paramString);
  }

  public int getInt(String paramString)
  {
    return this.dynDataImpl.getInt(paramString);
  }

  public long getLong(String paramString)
  {
    return this.dynDataImpl.getLong(paramString);
  }

  public String getString(String paramString)
  {
    return this.dynDataImpl.getString(paramString);
  }

  public int putBoolean(String paramString, boolean paramBoolean)
  {
    return this.dynDataImpl.putBoolean(paramString, paramBoolean);
  }

  public int putByteArray(String paramString, byte[] paramArrayOfByte)
  {
    return this.dynDataImpl.putByteArray(paramString, paramArrayOfByte);
  }

  public int putFloat(String paramString, float paramFloat)
  {
    return this.dynDataImpl.putFloat(paramString, paramFloat);
  }

  public int putInt(String paramString, int paramInt)
  {
    return this.dynDataImpl.putInt(paramString, paramInt);
  }

  public int putLong(String paramString, long paramLong)
  {
    return this.dynDataImpl.putLong(paramString, paramLong);
  }

  public int putString(String paramString1, String paramString2)
  {
    return this.dynDataImpl.putString(paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.DynamicDataStore
 * JD-Core Version:    0.6.2
 */
package com.taobao.securityjni.intelface;

public abstract interface IDynamicData
{
  public abstract void clearAll();

  public abstract boolean getBoolean(String paramString);

  public abstract byte[] getByteArray(String paramString);

  public abstract float getFloat(String paramString);

  public abstract int getInt(String paramString);

  public abstract long getLong(String paramString);

  public abstract String getString(String paramString);

  public abstract int putBoolean(String paramString, boolean paramBoolean);

  public abstract int putByteArray(String paramString, byte[] paramArrayOfByte);

  public abstract int putFloat(String paramString, float paramFloat);

  public abstract int putInt(String paramString, int paramInt);

  public abstract int putLong(String paramString, long paramLong);

  public abstract int putString(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.intelface.IDynamicData
 * JD-Core Version:    0.6.2
 */
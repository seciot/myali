package com.taobao.securityjni.impl;

import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.intelface.IDynamicData;
import com.taobao.securityjni.tools.PhoneInfo;
import com.taobao.securityjni.usertrack.a;
import java.lang.ref.WeakReference;

public class CImplDynamicData extends SESecurity
  implements IDynamicData
{
  private ContextWrapper context = null;
  private WeakReference currentSp = null;

  public CImplDynamicData(ContextWrapper paramContextWrapper)
  {
    this.context = paramContextWrapper;
    if (paramContextWrapper != null)
    {
      this.currentSp = new WeakReference(this.context.getSharedPreferences("DynamicData", 0));
      return;
    }
    this.currentSp = new WeakReference(null);
  }

  private String GetImeiPR()
  {
    return PhoneInfo.getSecImei(this.context);
  }

  private String GetImsiPR()
  {
    return PhoneInfo.getSecImsi(this.context);
  }

  private String GetString(String paramString)
  {
    if ((paramString == null) || (this.context == null))
      return null;
    SharedPreferences localSharedPreferences = (SharedPreferences)this.currentSp.get();
    if (localSharedPreferences == null)
    {
      localSharedPreferences = this.context.getSharedPreferences("DynamicData", 0);
      this.currentSp = new WeakReference(localSharedPreferences);
    }
    if (!localSharedPreferences.contains(paramString))
      return null;
    return localSharedPreferences.getString(paramString, null);
  }

  private void InitGlobalData()
  {
    new GlobalInit().InitData(this.context);
  }

  private void SetString(String paramString1, String paramString2)
  {
    if ((this.context == null) || (paramString1 == null) || (paramString2 == null))
      return;
    SharedPreferences localSharedPreferences = (SharedPreferences)this.currentSp.get();
    if (localSharedPreferences == null)
    {
      localSharedPreferences = this.context.getSharedPreferences("DynamicData", 0);
      this.currentSp = new WeakReference(localSharedPreferences);
    }
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  private native boolean getBooleanNative(String paramString);

  private native byte[] getByteArrayNative(String paramString);

  private native float getFloatNative(String paramString);

  private native int getIntNative(String paramString);

  private native long getLongNative(String paramString);

  private native byte[] getStringByte(String paramString);

  private native int putBooleanNative(String paramString, boolean paramBoolean);

  private native int putByteArrayNative(String paramString, byte[] paramArrayOfByte);

  private native int putFloatNative(String paramString, float paramFloat);

  private native int putIntNative(String paramString, int paramInt);

  private native int putLongNative(String paramString, long paramLong);

  private native int putStringNative(String paramString1, String paramString2);

  public void clearAll()
  {
    if (this.context == null)
      return;
    SharedPreferences localSharedPreferences = (SharedPreferences)this.currentSp.get();
    if (localSharedPreferences == null)
    {
      localSharedPreferences = this.context.getSharedPreferences("DynamicData", 0);
      this.currentSp = new WeakReference(localSharedPreferences);
    }
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.clear();
    localEditor.commit();
  }

  public boolean getBoolean(String paramString)
  {
    if (paramString == null)
      a.a("getBoolean", "", "key null");
    do
    {
      return false;
      SOInitCheck();
    }
    while (!SOCredibleCheck(this.context));
    try
    {
      boolean bool = getBooleanNative(paramString);
      return bool;
    }
    catch (Throwable localThrowable)
    {
      a.a("getBoolean", localThrowable);
    }
    return false;
  }

  public byte[] getByteArray(String paramString)
  {
    if (paramString == null)
      a.a("getByteArray", "", "key null");
    do
    {
      return null;
      SOInitCheck();
    }
    while (!SOCredibleCheck(this.context));
    try
    {
      byte[] arrayOfByte = getByteArrayNative(paramString);
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      a.a("getByteArray", localThrowable);
    }
    return null;
  }

  public float getFloat(String paramString)
  {
    if (paramString == null)
      a.a("getFloat", "", "key null");
    do
    {
      return -1.0F;
      SOInitCheck();
    }
    while (!SOCredibleCheck(this.context));
    try
    {
      float f = getFloatNative(paramString);
      return f;
    }
    catch (Throwable localThrowable)
    {
      a.a("getFloat", localThrowable);
    }
    return -1.0F;
  }

  public int getInt(String paramString)
  {
    if (paramString == null)
      a.a("getInt", "", "key null");
    do
    {
      return -1;
      SOInitCheck();
    }
    while (!SOCredibleCheck(this.context));
    try
    {
      int i = getIntNative(paramString);
      return i;
    }
    catch (Throwable localThrowable)
    {
      a.a("getInt", localThrowable);
    }
    return -1;
  }

  public long getLong(String paramString)
  {
    if (paramString == null)
      a.a("getLong", "", "key null");
    do
    {
      return -1L;
      SOInitCheck();
    }
    while (!SOCredibleCheck(this.context));
    try
    {
      long l = getLongNative(paramString);
      return l;
    }
    catch (Throwable localThrowable)
    {
      a.a("getLong", localThrowable);
    }
    return -1L;
  }

  public String getString(String paramString)
  {
    if (paramString == null)
    {
      a.a("getString", "", "key null");
      return null;
    }
    SOInitCheck();
    if (SOCredibleCheck(this.context));
    while (true)
    {
      try
      {
        byte[] arrayOfByte2 = getStringByte(paramString);
        arrayOfByte1 = arrayOfByte2;
        if (arrayOfByte1 == null)
          break;
        return new String(arrayOfByte1);
      }
      catch (Throwable localThrowable)
      {
        a.a("getString", localThrowable);
      }
      byte[] arrayOfByte1 = null;
    }
  }

  public int putBoolean(String paramString, boolean paramBoolean)
  {
    int i = -1;
    SOInitCheck();
    if (SOCredibleCheck(this.context));
    try
    {
      int j = putBooleanNative(paramString, paramBoolean);
      i = j;
      return i;
    }
    catch (Throwable localThrowable)
    {
      a.a("putBoolean-1", localThrowable);
    }
    return i;
  }

  public int putByteArray(String paramString, byte[] paramArrayOfByte)
  {
    int i = -1;
    SOInitCheck();
    if (SOCredibleCheck(this.context));
    try
    {
      int j = putByteArrayNative(paramString, paramArrayOfByte);
      i = j;
      return i;
    }
    catch (Throwable localThrowable)
    {
      a.a("putByteArray-1", localThrowable);
    }
    return i;
  }

  public int putFloat(String paramString, float paramFloat)
  {
    int i = -1;
    SOInitCheck();
    if (SOCredibleCheck(this.context));
    try
    {
      int j = putFloatNative(paramString, paramFloat);
      i = j;
      return i;
    }
    catch (Throwable localThrowable)
    {
      a.a("putFloat-1", localThrowable);
    }
    return i;
  }

  public int putInt(String paramString, int paramInt)
  {
    int i = -1;
    SOInitCheck();
    if (SOCredibleCheck(this.context));
    try
    {
      int j = putIntNative(paramString, paramInt);
      i = j;
      return i;
    }
    catch (Throwable localThrowable)
    {
      a.a("putInt-1", localThrowable);
    }
    return i;
  }

  public int putLong(String paramString, long paramLong)
  {
    int i = -1;
    SOInitCheck();
    if (SOCredibleCheck(this.context));
    try
    {
      int j = putLongNative(paramString, paramLong);
      i = j;
      return i;
    }
    catch (Throwable localThrowable)
    {
      a.a("putLong-1", localThrowable);
    }
    return i;
  }

  public int putString(String paramString1, String paramString2)
  {
    int i = -1;
    SOInitCheck();
    if (SOCredibleCheck(this.context));
    try
    {
      int j = putStringNative(paramString1, paramString2);
      i = j;
      return i;
    }
    catch (Throwable localThrowable)
    {
      a.a("putString-1", localThrowable);
    }
    return i;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.CImplDynamicData
 * JD-Core Version:    0.6.2
 */
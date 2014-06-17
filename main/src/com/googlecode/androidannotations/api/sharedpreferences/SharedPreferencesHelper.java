package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public abstract class SharedPreferencesHelper
{
  private final SharedPreferences a;

  public SharedPreferencesHelper(SharedPreferences paramSharedPreferences)
  {
    this.a = paramSharedPreferences;
  }

  protected BooleanPrefField booleanField(String paramString, boolean paramBoolean)
  {
    return new BooleanPrefField(this.a, paramString, paramBoolean);
  }

  public final void clear()
  {
    SharedPreferencesCompat.apply(this.a.edit().clear());
  }

  protected FloatPrefField floatField(String paramString, float paramFloat)
  {
    return new FloatPrefField(this.a, paramString, paramFloat);
  }

  public final SharedPreferences getSharedPreferences()
  {
    return this.a;
  }

  protected IntPrefField intField(String paramString, int paramInt)
  {
    return new IntPrefField(this.a, paramString, paramInt);
  }

  protected LongPrefField longField(String paramString, long paramLong)
  {
    return new LongPrefField(this.a, paramString, paramLong);
  }

  protected StringPrefField stringField(String paramString1, String paramString2)
  {
    return new StringPrefField(this.a, paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.SharedPreferencesHelper
 * JD-Core Version:    0.6.2
 */
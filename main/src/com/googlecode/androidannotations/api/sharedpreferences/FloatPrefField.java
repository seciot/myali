package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class FloatPrefField extends AbstractPrefField
{
  private final float a;

  FloatPrefField(SharedPreferences paramSharedPreferences, String paramString, float paramFloat)
  {
    super(paramSharedPreferences, paramString);
    this.a = paramFloat;
  }

  public final float get()
  {
    return getOr(this.a);
  }

  public final float getOr(float paramFloat)
  {
    return this.sharedPreferences.getFloat(this.key, paramFloat);
  }

  public final void put(float paramFloat)
  {
    apply(edit().putFloat(this.key, paramFloat));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.FloatPrefField
 * JD-Core Version:    0.6.2
 */
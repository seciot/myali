package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class IntPrefField extends AbstractPrefField
{
  private final int a;

  IntPrefField(SharedPreferences paramSharedPreferences, String paramString, int paramInt)
  {
    super(paramSharedPreferences, paramString);
    this.a = paramInt;
  }

  public final int get()
  {
    return getOr(this.a);
  }

  public final int getOr(int paramInt)
  {
    return this.sharedPreferences.getInt(this.key, paramInt);
  }

  public final void put(int paramInt)
  {
    apply(edit().putInt(this.key, paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.IntPrefField
 * JD-Core Version:    0.6.2
 */
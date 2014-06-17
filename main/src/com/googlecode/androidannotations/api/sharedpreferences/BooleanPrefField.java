package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class BooleanPrefField extends AbstractPrefField
{
  private final boolean a;

  BooleanPrefField(SharedPreferences paramSharedPreferences, String paramString, boolean paramBoolean)
  {
    super(paramSharedPreferences, paramString);
    this.a = paramBoolean;
  }

  public final boolean get()
  {
    return getOr(this.a);
  }

  public final boolean getOr(boolean paramBoolean)
  {
    return this.sharedPreferences.getBoolean(this.key, paramBoolean);
  }

  public final void put(boolean paramBoolean)
  {
    apply(edit().putBoolean(this.key, paramBoolean));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.BooleanPrefField
 * JD-Core Version:    0.6.2
 */
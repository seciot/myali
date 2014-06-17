package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class StringPrefField extends AbstractPrefField
{
  private final String a;

  StringPrefField(SharedPreferences paramSharedPreferences, String paramString1, String paramString2)
  {
    super(paramSharedPreferences, paramString1);
    this.a = paramString2;
  }

  public final String get()
  {
    return getOr(this.a);
  }

  public final String getOr(String paramString)
  {
    return this.sharedPreferences.getString(this.key, paramString);
  }

  public final void put(String paramString)
  {
    apply(edit().putString(this.key, paramString));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.StringPrefField
 * JD-Core Version:    0.6.2
 */
package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class LongPrefField extends AbstractPrefField
{
  private final long a;

  LongPrefField(SharedPreferences paramSharedPreferences, String paramString, long paramLong)
  {
    super(paramSharedPreferences, paramString);
    this.a = paramLong;
  }

  public final long get()
  {
    return getOr(this.a);
  }

  public final long getOr(long paramLong)
  {
    return this.sharedPreferences.getLong(this.key, paramLong);
  }

  public final void put(long paramLong)
  {
    apply(edit().putLong(this.key, paramLong));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.LongPrefField
 * JD-Core Version:    0.6.2
 */
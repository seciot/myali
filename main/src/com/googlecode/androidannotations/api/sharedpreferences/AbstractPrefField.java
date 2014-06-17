package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public abstract class AbstractPrefField
{
  protected final String key;
  protected final SharedPreferences sharedPreferences;

  public AbstractPrefField(SharedPreferences paramSharedPreferences, String paramString)
  {
    this.sharedPreferences = paramSharedPreferences;
    this.key = paramString;
  }

  protected final void apply(SharedPreferences.Editor paramEditor)
  {
    SharedPreferencesCompat.apply(paramEditor);
  }

  protected SharedPreferences.Editor edit()
  {
    return this.sharedPreferences.edit();
  }

  public final boolean exists()
  {
    return this.sharedPreferences.contains(this.key);
  }

  public final void remove()
  {
    SharedPreferencesCompat.apply(edit().remove(this.key));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.AbstractPrefField
 * JD-Core Version:    0.6.2
 */
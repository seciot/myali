package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public abstract class EditorHelper<T extends EditorHelper<T>>
{
  private final SharedPreferences.Editor a;

  public EditorHelper(SharedPreferences paramSharedPreferences)
  {
    this.a = paramSharedPreferences.edit();
  }

  private T cast()
  {
    return this;
  }

  public final void apply()
  {
    SharedPreferencesCompat.apply(this.a);
  }

  protected BooleanPrefEditorField<T> booleanField(String paramString)
  {
    return new BooleanPrefEditorField(cast(), paramString);
  }

  public final T clear()
  {
    this.a.clear();
    return cast();
  }

  protected FloatPrefEditorField<T> floatField(String paramString)
  {
    return new FloatPrefEditorField(cast(), paramString);
  }

  protected SharedPreferences.Editor getEditor()
  {
    return this.a;
  }

  protected IntPrefEditorField<T> intField(String paramString)
  {
    return new IntPrefEditorField(cast(), paramString);
  }

  protected LongPrefEditorField<T> longField(String paramString)
  {
    return new LongPrefEditorField(cast(), paramString);
  }

  protected StringPrefEditorField<T> stringField(String paramString)
  {
    return new StringPrefEditorField(cast(), paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.EditorHelper
 * JD-Core Version:    0.6.2
 */
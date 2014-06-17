package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences.Editor;

public final class FloatPrefEditorField<T extends EditorHelper<T>> extends AbstractPrefEditorField<T>
{
  FloatPrefEditorField(T paramT, String paramString)
  {
    super(paramT, paramString);
  }

  public final T put(float paramFloat)
  {
    this.editorHelper.getEditor().putFloat(this.key, paramFloat);
    return this.editorHelper;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.FloatPrefEditorField
 * JD-Core Version:    0.6.2
 */
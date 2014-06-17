package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences.Editor;

public final class LongPrefEditorField<T extends EditorHelper<T>> extends AbstractPrefEditorField<T>
{
  LongPrefEditorField(T paramT, String paramString)
  {
    super(paramT, paramString);
  }

  public final T put(long paramLong)
  {
    this.editorHelper.getEditor().putLong(this.key, paramLong);
    return this.editorHelper;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.LongPrefEditorField
 * JD-Core Version:    0.6.2
 */
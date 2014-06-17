package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences.Editor;

public final class StringPrefEditorField<T extends EditorHelper<T>> extends AbstractPrefEditorField<T>
{
  StringPrefEditorField(T paramT, String paramString)
  {
    super(paramT, paramString);
  }

  public final T put(String paramString)
  {
    this.editorHelper.getEditor().putString(this.key, paramString);
    return this.editorHelper;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.StringPrefEditorField
 * JD-Core Version:    0.6.2
 */
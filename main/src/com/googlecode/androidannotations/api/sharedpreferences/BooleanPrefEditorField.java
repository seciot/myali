package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences.Editor;

public final class BooleanPrefEditorField<T extends EditorHelper<T>> extends AbstractPrefEditorField<T>
{
  BooleanPrefEditorField(T paramT, String paramString)
  {
    super(paramT, paramString);
  }

  public final T put(boolean paramBoolean)
  {
    this.editorHelper.getEditor().putBoolean(this.key, paramBoolean);
    return this.editorHelper;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.BooleanPrefEditorField
 * JD-Core Version:    0.6.2
 */
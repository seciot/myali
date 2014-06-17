package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences.Editor;

public final class IntPrefEditorField<T extends EditorHelper<T>> extends AbstractPrefEditorField<T>
{
  IntPrefEditorField(T paramT, String paramString)
  {
    super(paramT, paramString);
  }

  public final T put(int paramInt)
  {
    this.editorHelper.getEditor().putInt(this.key, paramInt);
    return this.editorHelper;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.IntPrefEditorField
 * JD-Core Version:    0.6.2
 */
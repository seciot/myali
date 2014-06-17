package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences.Editor;

public abstract class AbstractPrefEditorField<T extends EditorHelper<T>>
{
  protected final T editorHelper;
  protected final String key;

  public AbstractPrefEditorField(T paramT, String paramString)
  {
    this.editorHelper = paramT;
    this.key = paramString;
  }

  public final T remove()
  {
    this.editorHelper.getEditor().remove(this.key);
    return this.editorHelper;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.AbstractPrefEditorField
 * JD-Core Version:    0.6.2
 */
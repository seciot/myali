package com.alipay.android.app.data;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.alipay.android.app.script.IDataScriptable;
import com.alipay.android.app.sys.GlobalContext;

final class e
  implements IDataScriptable
{
  public final void delete()
  {
    PreferenceManager.getDefaultSharedPreferences(GlobalContext.a().b()).edit().clear();
  }

  public final void delete(String paramString)
  {
    PreferenceManager.getDefaultSharedPreferences(GlobalContext.a().b()).edit().putString(paramString, "").commit();
  }

  public final void log(Object paramObject)
  {
  }

  public final void write(String paramString1, String paramString2)
  {
    PreferenceManager.getDefaultSharedPreferences(GlobalContext.a().b()).edit().putString(paramString1, paramString2).commit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.e
 * JD-Core Version:    0.6.2
 */
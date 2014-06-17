package com.alipay.mobile.mobilerechargeapp.history;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class KVStore
{
  private SharedPreferences a;
  private String b;

  public KVStore(Context paramContext, String paramString)
  {
    this.b = paramString;
    this.a = paramContext.getSharedPreferences(paramString, 0);
  }

  public final String a(String paramString)
  {
    return this.a.getString(paramString, "");
  }

  public final void a(String paramString1, String paramString2)
  {
    this.a.edit().putString(paramString1, paramString2).commit();
  }

  public final void b(String paramString)
  {
    this.a.edit().remove(paramString).commit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.history.KVStore
 * JD-Core Version:    0.6.2
 */
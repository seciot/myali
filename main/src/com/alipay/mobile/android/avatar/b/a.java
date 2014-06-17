package com.alipay.mobile.android.avatar.b;

import android.content.Context;
import android.content.SharedPreferences;

public final class a
{
  public SharedPreferences a;
  private Context b;

  public a(Context paramContext)
  {
    this.b = paramContext;
    this.a = this.b.getSharedPreferences("SETTING_Infos", 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.avatar.b.a
 * JD-Core Version:    0.6.2
 */
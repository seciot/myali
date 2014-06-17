package com.alipay.android.widget.security.msgreceiver;

import android.content.Context;
import android.content.Intent;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class TaobaoSsoTokenWriteBackTrigger_ extends TaobaoSsoTokenWriteBackTrigger
{
  private Context a;

  public final void a(Context paramContext)
  {
    BackgroundExecutor.execute(new b(this, paramContext));
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    this.a = paramContext;
    super.onReceive(paramContext, paramIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.msgreceiver.TaobaoSsoTokenWriteBackTrigger_
 * JD-Core Version:    0.6.2
 */
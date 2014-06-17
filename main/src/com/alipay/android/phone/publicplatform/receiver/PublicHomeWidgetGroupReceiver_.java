package com.alipay.android.phone.publicplatform.receiver;

import android.content.Context;
import android.content.Intent;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class PublicHomeWidgetGroupReceiver_ extends PublicHomeWidgetGroupReceiver
{
  private Context a;

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    this.a = paramContext;
    super.onReceive(paramContext, paramIntent);
  }

  public final void reload(boolean paramBoolean)
  {
    BackgroundExecutor.execute(new b(this, paramBoolean));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.receiver.PublicHomeWidgetGroupReceiver_
 * JD-Core Version:    0.6.2
 */
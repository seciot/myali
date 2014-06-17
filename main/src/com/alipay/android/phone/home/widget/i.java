package com.alipay.android.phone.home.widget;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import java.util.TimerTask;

final class i extends TimerTask
{
  i(HomeWidgetGroup paramHomeWidgetGroup)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent("com.alipay.mobile.intent.action.UPDATETODOLIST");
    localIntent.putExtra("refreshNow", true);
    LocalBroadcastManager.getInstance(this.a.context).sendBroadcast(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.i
 * JD-Core Version:    0.6.2
 */
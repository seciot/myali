package com.alipay.android.phone.publicplatform.home;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.framework.AlipayApplication;
import java.util.TimerTask;

final class a extends TimerTask
{
  a(PublicHomeWidgetGroup paramPublicHomeWidgetGroup)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent("com.alipay.mobile.intent.action.UPDATETODOLIST");
    localIntent.putExtra("refreshNow", true);
    LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getApplicationContext()).sendBroadcast(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.a
 * JD-Core Version:    0.6.2
 */
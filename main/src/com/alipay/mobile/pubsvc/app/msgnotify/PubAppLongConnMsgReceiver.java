package com.alipay.mobile.pubsvc.app.msgnotify;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Message;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;

public class PubAppLongConnMsgReceiver extends BroadcastReceiver
{
  private boolean a = false;
  private PubAppMsgNotifyHandler b;

  public PubAppLongConnMsgReceiver()
  {
    new Thread(new d(this)).start();
  }

  public final void a()
  {
    if (!this.a)
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.alipay.longlink.TRANSFER_20000042");
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getApplicationContext()).registerReceiver(this, localIntentFilter);
      this.a = true;
      LogCatLog.isSwitch();
    }
  }

  public final boolean b()
  {
    return this.a;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    LogCatLog.isSwitch();
    String str = paramIntent.getStringExtra("payload");
    if (TextUtils.isEmpty(str))
    {
      LogCatLog.isSwitch();
      return;
    }
    if (LogCatLog.isSwitch())
      new StringBuilder("event=[PubAppLongConnMsgReceiver#onReceive] notify message enqueue. message=[").append(str).append("]").toString();
    if (this.b != null)
    {
      this.b.obtainMessage(0, str).sendToTarget();
      return;
    }
    LogCatLog.isSwitch();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.PubAppLongConnMsgReceiver
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.mini.widget.CustomToast;

public class SmsSendReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((!TextUtils.equals("com.alipay.receiver.sms.sent", paramIntent.getAction())) && (!TextUtils.equals("com.alipay.receiver.sms.successed", paramIntent.getAction())))
      return;
    long l = System.currentTimeMillis() - paramIntent.getLongExtra("time_start", 0L);
    String str;
    if (TextUtils.equals("com.alipay.receiver.sms.sent", paramIntent.getAction()))
      str = "send sms delayed " + l;
    while (true)
    {
      if (GlobalConstant.DEBUG)
        CustomToast.a(paramContext, str);
      MonitorThread.a().c(l, str);
      return;
      boolean bool = TextUtils.equals("com.alipay.receiver.sms.successed", paramIntent.getAction());
      str = null;
      if (bool)
        str = " receive sms delayed " + l;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.SmsSendReceiver
 * JD-Core Version:    0.6.2
 */
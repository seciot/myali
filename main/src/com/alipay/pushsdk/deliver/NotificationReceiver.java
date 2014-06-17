package com.alipay.pushsdk.deliver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.data.NotifierInfo;
import com.alipay.pushsdk.data.b;

public final class NotificationReceiver extends BroadcastReceiver
{
  private static final String a = c.a(NotificationReceiver.class);
  private String b = "";

  public NotificationReceiver(String paramString)
  {
    this.b = paramString;
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    c.a(4, a, "NotificationReceiver.onReceive()...");
    String str = paramIntent.getAction();
    c.a(3, a, "onReceive:" + this.b + ", action=" + str);
    if (this.b.equals(str))
    {
      NotifierInfo localNotifierInfo = (NotifierInfo)paramIntent.getParcelableExtra("notifier_parcelable");
      c.a(3, a, "onReceive() style=" + localNotifierInfo.e() + ", title=" + localNotifierInfo.a() + ", text=" + localNotifierInfo.b() + ", id=" + localNotifierInfo.g().a() + ", uri=" + localNotifierInfo.d());
      Intent localIntent = new Intent(paramContext.getPackageName() + ".push.action.MESSAGE_RECEIVED");
      localIntent.putExtra("push_show_title", localNotifierInfo.a());
      localIntent.putExtra("push_show_text", localNotifierInfo.b());
      localIntent.putExtra("push_show_sound", localNotifierInfo.c());
      localIntent.putExtra("push_show_style", localNotifierInfo.e());
      localIntent.putExtra("push_msg_key", localNotifierInfo.g().a());
      localIntent.putExtra("push_msg_data", localNotifierInfo.d());
      localIntent.addCategory(paramContext.getPackageName());
      c.a(3, a, "onReceive() getAction:" + localIntent.getAction());
      paramContext.startService(localIntent);
      c.a(3, a, "onReceive() dispatchIntent to startService!");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.deliver.NotificationReceiver
 * JD-Core Version:    0.6.2
 */
package com.alipay.pushsdk;

import android.content.Context;
import android.content.Intent;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.d;
import com.alipay.pushsdk.push.h;

final class b
  implements Runnable
{
  b(a parama)
  {
  }

  public final void run()
  {
    String str1 = d.getBundle(a.getBundle(this.a)).getBundle("cur_triger");
    if ((str1 == null) || (str1.length() <= 0))
      str1 = "0";
    Intent localIntent = new Intent();
    localIntent.setAction(a.getBundle(this.a).getPackageName() + ".push.action.NotificationService");
    if (str1 != null)
    {
      localIntent.putExtra("cur_triger", str1);
      h localh = new h(a.getBundle(this.a));
      String str2 = localh.a();
      localIntent.putExtra("cur_userId", str2);
      localIntent.putExtra("cur_utdId", localh.d());
      localIntent.putExtra("cur_msptId", localh.e());
      BundlesManagerImpl.a(3, a.getBundleName(), "action=" + localIntent.getAction() + ", userid=" + str2);
    }
    a.getBundle(this.a).startService(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b
 * JD-Core Version:    0.6.2
 */
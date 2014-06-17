package com.alipay.mobile.framework.app.ui;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;

class ActivityHelper$1
  implements Runnable
{
  ActivityHelper$1(ActivityHelper paramActivityHelper)
  {
  }

  public void run()
  {
    if (ActivityHelper.access$0(this.this$0))
      LocalBroadcastManager.getInstance(ActivityHelper.access$1(this.this$0)).sendBroadcast(new Intent("com.alipay.mobile.framework.USERLEAVEHINT"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.ActivityHelper.1
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.phone.publicplatform.home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.common.utils.StringUtils;

final class g extends BroadcastReceiver
{
  g(PublicHomeWidgetGroup paramPublicHomeWidgetGroup)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (StringUtils.equals(paramIntent.getAction(), "com.alipay.mobile.LAUNCHER_TAB_CHANGED"))
    {
      if (StringUtils.equals(paramIntent.getStringExtra("data"), "20000101"))
        PublicHomeWidgetGroup.access$202(this.a, true);
    }
    else
      return;
    PublicHomeWidgetGroup.access$202(this.a, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.g
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.widgets.discovery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.discoverywidget.ui.a.d;

final class b extends BroadcastReceiver
{
  b(DiscoveryWidgetGroup paramDiscoveryWidgetGroup)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    DiscoveryWidgetGroup.access$100(this.a);
    DiscoveryWidgetGroup.access$100(this.a);
    try
    {
      if (paramIntent.getAction().equals("com.alipay.security.login"))
      {
        String str = paramIntent.getStringExtra("logonId");
        if (str != null)
        {
          DiscoveryWidgetGroup.access$100(this.a);
          new StringBuilder("{[info=registerLoginMsgService],[msg=消息接收为成功登陆,logonId=").append(str).append("]}").toString();
          d locald = d.a(paramContext);
          locald.getBundle(DiscoveryWidgetGroup.access$000(this.a));
          locald.a = DiscoveryWidgetGroup.access$200(this.a);
          locald.getBundleByComponentName(DiscoveryWidgetGroup.access$300(this.a));
          return;
        }
        DiscoveryWidgetGroup.access$100(this.a);
        return;
      }
    }
    catch (Exception localException)
    {
      DiscoveryWidgetGroup.access$100(this.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.discovery.b
 * JD-Core Version:    0.6.2
 */
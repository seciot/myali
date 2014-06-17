package com.alipay.android.launcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgManager;

public class TabLauncherBroadcastReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent != null) && ("com.alipay.security.login".equals(paramIntent.getAction())))
    {
      AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      if ((localAuthService != null) && (localAuthService.getUserInfo() != null))
      {
        WidgetMsgManager.getInstance().setUserId(localAuthService.getUserInfo().getUserId());
        WidgetMsgManager.getInstance().requestUpdateWidgetMsg();
      }
    }
    String str1;
    do
    {
      do
      {
        return;
        if ((paramIntent != null) && ("com.alipay.mobile.framework.widgetmsg.ackClick".equals(paramIntent.getAction())))
        {
          String str2 = paramIntent.getStringExtra("widgetId");
          WidgetMsgManager.getInstance().ackClick(str2);
          return;
        }
      }
      while ((paramIntent == null) || (!"com.alipay.longlink.TRANSFER_redpoint".equals(paramIntent.getAction())));
      str1 = paramIntent.getStringExtra("payload");
    }
    while (TextUtils.isEmpty(str1));
    WidgetMsgManager.getInstance().updateWidgetMsg(str1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.TabLauncherBroadcastReceiver
 * JD-Core Version:    0.6.2
 */
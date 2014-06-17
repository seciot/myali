package com.alipay.mobile.rome.longlinkservice.msg;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.longlink.LongLinkServiceManager;

public class LongLinkeMsgReceiver extends BroadcastReceiver
{
  private final String a = LongLinkeMsgReceiver.class.getSimpleName();

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new StringBuilder("onReceive: actionType = ").append(paramIntent.getAction()).toString();
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    String str4;
    String str5;
    label169: String str6;
    if ("com.alipay.security.login".equals(paramIntent.getAction()))
    {
      UserInfo localUserInfo2 = ((AuthService)localAlipayApplication.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
      if (localUserInfo2 != null)
      {
        new StringBuilder("onReceive: login getUserId=").append(localUserInfo2.getUserId()).toString();
        LongLinkServiceManager localLongLinkServiceManager2 = LongLinkServiceManager.getInstance(localAlipayApplication);
        localLongLinkServiceManager2.registerCommonFunc(new com.alipay.mobile.rome.longlinkservice.service.a(localAlipayApplication));
        if (AppInfo.getInstance().isDebuggable())
        {
          a.a();
          if (!a.a(paramContext))
            break label277;
          str4 = a.a(paramContext, "content://com.alipay.setting/PushServerUrl", "mobilepmgw.alipay.com");
          if (!a.a(paramContext))
            break label284;
          str5 = a.a(paramContext, "content://com.alipay.setting/PushPort", "443");
          int i = Integer.valueOf(str5).intValue();
          if (!a.a(paramContext))
            break label291;
          str6 = a.a(paramContext, "content://com.alipay.setting/PushUseSsl", "1");
          label196: localLongLinkServiceManager2.setLinkAddr(str4, i, str6);
          new StringBuilder("LongLinkServiceManager: setLinkAddr test_host:").append(str4).append(", test_port:").append(i).append(", test_ssl:").append(str6).toString();
        }
        localLongLinkServiceManager2.setAppUserInfo(localUserInfo2.getUserId(), localUserInfo2.getSessionId(), localUserInfo2.getLoginTime());
      }
    }
    label277: label284: label291: label458: String str1;
    String str2;
    do
    {
      do
      {
        String str3;
        do
        {
          return;
          return;
          str4 = "mobilepmgw.alipay.com";
          break;
          str5 = "443";
          break label169;
          str6 = "1";
          break label196;
          if (!"com.alipay.security.cleanAccount".equals(paramIntent.getAction()))
            break label458;
          str3 = paramIntent.getStringExtra("userId");
        }
        while ((str3 == null) || (str3.length() <= 0));
        new StringBuilder("onReceive: clear userId=").append(str3).toString();
        LongLinkServiceManager localLongLinkServiceManager1 = LongLinkServiceManager.getInstance(localAlipayApplication);
        UserInfo localUserInfo1 = ((AuthService)localAlipayApplication.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
        if (localUserInfo1 != null)
        {
          new StringBuilder("onReceive: curUserId=").append(localUserInfo1.getUserId()).toString();
          if (str3.equals(localUserInfo1.getUserId()))
          {
            localLongLinkServiceManager1.setAppUserInfo("", "", "");
            return;
          }
          return;
        }
        localLongLinkServiceManager1.setAppUserInfo("", "", "");
        return;
        if (("com.alipay.security.logout".equals(paramIntent.getAction())) || (paramIntent.getAction().equals("com.alipay.security.startlogin")))
        {
          LongLinkServiceManager.getInstance(localAlipayApplication).setAppUserInfo("", "", "");
          return;
        }
        if ("com.alipay.mobile.framework.ACTIVITY_START".equals(paramIntent.getAction()))
        {
          LongLinkServiceManager.getInstance(localAlipayApplication).startLink();
          return;
        }
        if ("com.alipay.mobile.framework.USERLEAVEHINT".equals(paramIntent.getAction()))
        {
          LongLinkServiceManager.getInstance(localAlipayApplication).stopLink();
          return;
        }
      }
      while (!"com.alipay.longlink.UPLINK".equals(paramIntent.getAction()));
      str1 = paramIntent.getStringExtra("appId");
      str2 = paramIntent.getStringExtra("payload");
      new StringBuilder("onReceive: uplink appId=").append(str1).append(", appData=").append(str2).toString();
    }
    while (str2 == null);
    if ((str2.length() > 0) && (str2.length() < 4096))
    {
      LongLinkServiceManager.getInstance(localAlipayApplication).sendPacketUplink(str1, str2);
      return;
    }
    new StringBuilder("onReceive: uplink appdata warning length=").append(str2.length()).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.longlinkservice.msg.LongLinkeMsgReceiver
 * JD-Core Version:    0.6.2
 */
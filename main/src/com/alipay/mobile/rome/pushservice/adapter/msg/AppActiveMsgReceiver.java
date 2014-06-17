package com.alipay.mobile.rome.pushservice.adapter.msg;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.base.config.ChannelConfig;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.rome.pushservice.PushSettingService;
import com.alipay.pushsdk.AliPushInterface;

public class AppActiveMsgReceiver extends BroadcastReceiver
{
  private final String a = AppActiveMsgReceiver.class.getSimpleName();

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool1 = true;
    new StringBuilder("onReceive: actionType = ").append(paramIntent.getAction()).toString();
    if (AppInfo.getInstance().isDebuggable())
      AliPushInterface.setDebugMode(bool1);
    if ("com.alipay.mobile.client.STARTED".equals(paramIntent.getAction()))
    {
      MicroApplicationContext localMicroApplicationContext2 = AlipayApplication.getInstance().getMicroApplicationContext();
      String str11 = ((ChannelConfig)localMicroApplicationContext2.findServiceByInterface(ChannelConfig.class.getName())).getConfig("isShowUserTip");
      if ((str11 != null) && ("true".equalsIgnoreCase(str11)))
      {
        if (!bool1)
          break label142;
        ((PushSettingService)localMicroApplicationContext2.getExtServiceByInterface(PushSettingService.class.getName())).setPushState("false");
      }
    }
    label142: String str1;
    do
    {
      do
      {
        return;
        bool1 = false;
        break;
        new Thread(new a(this, paramContext)).start();
        return;
        if ("com.alipay.mobile.framework.ACTIVITY_START".equals(paramIntent.getAction()))
        {
          MicroApplicationContext localMicroApplicationContext1 = AlipayApplication.getInstance().getMicroApplicationContext();
          String str5 = ((ChannelConfig)localMicroApplicationContext1.findServiceByInterface(ChannelConfig.class.getName())).getConfig("isShowUserTip");
          if ((str5 != null) && ("true".equalsIgnoreCase(str5)));
          for (boolean bool3 = bool1; ; bool3 = false)
          {
            if (bool3)
            {
              ConfigService localConfigService = (ConfigService)localMicroApplicationContext1.findServiceByInterface(ConfigService.class.getName());
              String str8 = AppInfo.getInstance().getmChannels();
              if ((str8 != null) && (str8.length() > 0))
              {
                String str9 = localConfigService.getConfig(str8 + "push_switch_android");
                PushSettingService localPushSettingService = (PushSettingService)localMicroApplicationContext1.getExtServiceByInterface(PushSettingService.class.getName());
                String str10 = localPushSettingService.getPushState();
                new StringBuilder("The channelId=").append(str8).append(", configPushState=").append(str9).append(", curPushState=").append(str10).toString();
                if ((str9 != null) && (!str9.equals(str10)))
                {
                  localPushSettingService.setPushState(str9);
                  new StringBuilder("setPushState with the value:").append(str9).toString();
                }
              }
            }
            DeviceInfo localDeviceInfo2 = DeviceInfo.createInstance(paramContext);
            String str6 = localDeviceInfo2.getClientId();
            AliPushInterface.setClientId(paramContext, str6);
            String str7 = localDeviceInfo2.getmDid();
            AliPushInterface.setUtdid(paramContext, str7);
            new StringBuilder("onReceive: utdid: ").append(str7).append(", clientId=").append(str6).toString();
            AliPushInterface.init(paramContext);
            return;
          }
        }
        if ("com.alipay.security.login".equals(paramIntent.getAction()))
        {
          String str2 = paramIntent.getStringExtra("userId");
          boolean bool2 = paramIntent.getBooleanExtra("switchaccount", false);
          new StringBuilder("onReceive: login bind userId: ").append(str2).append(", switchAccount=").append(bool2).toString();
          DeviceInfo localDeviceInfo1 = DeviceInfo.createInstance(paramContext);
          AliPushInterface.setClientId(paramContext, localDeviceInfo1.getClientId());
          MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
          String str3;
          if ((localMspDeviceInfoBean != null) && (localMspDeviceInfoBean.getTid() != null))
          {
            str3 = localMspDeviceInfoBean.getTid();
            new StringBuilder("onReceive: getMspTid: ").append(str3).toString();
          }
          while (true)
          {
            if ((str3 != null) && (str3.length() > 0))
              AliPushInterface.setMsptid(paramContext, str3);
            String str4 = localDeviceInfo1.getmDid();
            AliPushInterface.setUtdid(paramContext, str4);
            new StringBuilder("onReceive: login bind userId: ").append(str2).append(", switchAccount=").append(bool2).append(", utdid=").append(str4).append(", mspTid=").append(str3).toString();
            if ((str2 == null) || (str2.length() <= 0))
              break;
            AliPushInterface.setUserId(paramContext, str2);
            return;
            str3 = "";
          }
        }
      }
      while (!"com.alipay.security.cleanAccount".equals(paramIntent.getAction()));
      str1 = paramIntent.getStringExtra("userId");
      new StringBuilder("onReceive: clear unbind userId: ").append(str1).toString();
    }
    while ((str1 == null) || (str1.length() <= 0));
    AliPushInterface.delUserId(paramContext, str1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.adapter.msg.AppActiveMsgReceiver
 * JD-Core Version:    0.6.2
 */
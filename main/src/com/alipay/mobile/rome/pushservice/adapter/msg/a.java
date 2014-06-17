package com.alipay.mobile.rome.pushservice.adapter.msg;

import android.content.Context;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.pushsdk.AliPushInterface;

final class a
  implements Runnable
{
  a(AppActiveMsgReceiver paramAppActiveMsgReceiver, Context paramContext)
  {
  }

  public final void run()
  {
    LogCatLog.v(AppActiveMsgReceiver.a(this.b), "push-->");
    DeviceInfo localDeviceInfo = DeviceInfo.createInstance(this.a);
    String str1 = localDeviceInfo.getClientId();
    AliPushInterface.setClientId(this.a, str1);
    String str2 = localDeviceInfo.getmDid();
    AliPushInterface.setUtdid(this.a, str2);
    String str3 = AppInfo.getInstance().getmChannels();
    if ((str3 != null) && (str3.length() > 0))
      AliPushInterface.setChannel(this.a, str3);
    String str4 = AppInfo.getInstance().getmProductVersion();
    if ((str4 != null) && (str4.length() > 0))
      AliPushInterface.setVersion(this.a, str4);
    AppActiveMsgReceiver.a(this.b);
    new StringBuilder("onReceive: utdid: ").append(str2).append(", clientId=").append(str1).append(", channel=").append(str3).append(", version=").append(str4).toString();
    AliPushInterface.init(this.a);
    AppActiveMsgReceiver.a(this.b);
    LogCatLog.v(AppActiveMsgReceiver.a(this.b), "push<--");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.adapter.msg.a
 * JD-Core Version:    0.6.2
 */
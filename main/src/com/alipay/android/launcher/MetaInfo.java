package com.alipay.android.launcher;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "launcher";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("launcher").setClassName("com.alipay.android.launcher.TabLauncherApp").setAppId("20000001");
    this.applications.add(localApplicationDescription);
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setName("TabLauncherBroadcastReceiver");
    localBroadcastReceiverDescription.setClassName(TabLauncherBroadcastReceiver.class.getName());
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.security.login", "com.alipay.mobile.framework.widgetmsg.ackClick", "com.alipay.longlink.TRANSFER_redpoint" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.MetaInfo
 * JD-Core Version:    0.6.2
 */
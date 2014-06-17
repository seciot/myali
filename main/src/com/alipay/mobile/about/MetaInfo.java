package com.alipay.mobile.about;

import com.alipay.mobile.about.app.AboutApp;
import com.alipay.mobile.about.app.WapStationApp;
import com.alipay.mobile.about.receiver.ClientStartupReceiver;
import com.alipay.mobile.about.service.UpdateBroadcastReceiver;
import com.alipay.mobile.about.service.UpdateServicesImpl;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.about.UpdateServices;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "about";
    ApplicationDescription localApplicationDescription1 = new ApplicationDescription();
    localApplicationDescription1.setName("about").setClassName(AboutApp.class.getName()).setAppId("10000110");
    this.applications.add(localApplicationDescription1);
    ApplicationDescription localApplicationDescription2 = new ApplicationDescription();
    localApplicationDescription2.setName("wapStation").setClassName(WapStationApp.class.getName()).setAppId("10000113");
    this.applications.add(localApplicationDescription2);
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setClassName(UpdateServicesImpl.class.getName());
    localServiceDescription.setInterfaceClass(UpdateServices.class.getName());
    localServiceDescription.setLazy(true);
    this.services.add(localServiceDescription);
    BroadcastReceiverDescription localBroadcastReceiverDescription1 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription1.setName("UpdateBroadcastReceiver");
    localBroadcastReceiverDescription1.setMsgCode(new String[] { "com.alipay.mobile.about.UPDATE_CHECK_VERSION", "com.alipay.mobile.about.UPDATE_CLIENT", "com.alipay.mobile.LAUNCHER_STATUS_CHANGED" });
    localBroadcastReceiverDescription1.setClassName(UpdateBroadcastReceiver.class.getName());
    this.broadcastReceivers.add(localBroadcastReceiverDescription1);
    BroadcastReceiverDescription localBroadcastReceiverDescription2 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription2.setClassName(ClientStartupReceiver.class.getName());
    localBroadcastReceiverDescription2.setMsgCode(new String[] { "com.alipay.mobile.client.STARTED", "com.alipay.security.login" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.MetaInfo
 * JD-Core Version:    0.6.2
 */
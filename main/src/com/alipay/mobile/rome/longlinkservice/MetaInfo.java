package com.alipay.mobile.rome.longlinkservice;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.rome.longlinkservice.msg.LongLinkeMsgReceiver;
import com.alipay.mobile.rome.longlinkservice.service.LongLinkScreenOffService;
import com.alipay.mobile.rome.longlinkservice.service.LongLinkSyncServiceImpl;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setName("LongLinkeMsgReceiver");
    localBroadcastReceiverDescription.setClassName(LongLinkeMsgReceiver.class.getName());
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.mobile.framework.ACTIVITY_START", "com.alipay.mobile.framework.USERLEAVEHINT", "com.alipay.security.login", "com.alipay.security.logout", "com.alipay.security.cleanAccount", "com.alipay.security.startlogin", "com.alipay.longlink.UPLINK" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
    ServiceDescription localServiceDescription1 = new ServiceDescription();
    localServiceDescription1.setClassName(LongLinkSyncServiceImpl.class.getName());
    localServiceDescription1.setInterfaceClass(LongLinkSyncService.class.getName());
    localServiceDescription1.setLazy(false);
    this.services.add(localServiceDescription1);
    ServiceDescription localServiceDescription2 = new ServiceDescription();
    localServiceDescription2.setClassName(LongLinkScreenOffService.class.getName());
    localServiceDescription2.setInterfaceClass(LongLinkScreenOffService.class.getName());
    localServiceDescription2.setLazy(false);
    this.services.add(localServiceDescription2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.longlinkservice.MetaInfo
 * JD-Core Version:    0.6.2
 */
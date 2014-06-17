package com.alipay.mobile.rome.pushservice;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.rome.pushservice.adapter.msg.AppActiveMsgReceiver;
import com.alipay.mobile.rome.pushservice.adapter.service.PushSettingServiceImpl;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setName("AppActiveMsgReceiver");
    localBroadcastReceiverDescription.setClassName(AppActiveMsgReceiver.class.getName());
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.mobile.client.STARTED", "com.alipay.mobile.framework.ACTIVITY_START", "com.alipay.security.login", "com.alipay.security.cleanAccount" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setClassName(PushSettingServiceImpl.class.getName());
    localServiceDescription.setInterfaceClass(PushSettingService.class.getName());
    localServiceDescription.setLazy(false);
    this.services.add(localServiceDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.MetaInfo
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.security.securitycommon;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.security.securitycommon.service.LocationInfoReceiver;
import com.alipay.mobile.security.securitycommon.service.LocationInfoServiceImpl;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setClassName(LocationInfoServiceImpl.class.getName());
    localServiceDescription.setInterfaceClass(LocationInfoService.class.getName());
    localServiceDescription.setLazy(true);
    this.services.add(localServiceDescription);
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setName("LocationInfoReceiver");
    localBroadcastReceiverDescription.setClassName(LocationInfoReceiver.class.getName());
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.mobile.framework.ACTIVITY_RESUME" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.MetaInfo
 * JD-Core Version:    0.6.2
 */
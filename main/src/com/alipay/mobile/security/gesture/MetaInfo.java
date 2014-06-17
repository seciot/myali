package com.alipay.mobile.security.gesture;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.security.gesture.msg.ChangedTimeReceiver;
import com.alipay.mobile.security.gesture.msg.GestureMsgReceiver;
import com.alipay.mobile.security.gesture.service.ActivityResumeService;
import com.alipay.mobile.security.gesture.service.GestureServiceImpl;
import com.alipay.mobile.security.gesture.service.ScreenOnOffService;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "GestureApp";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("GestureApp").setClassName("com.alipay.mobile.security.gesture.app.GestureApp").setAppId("20000006");
    this.applications.add(localApplicationDescription);
    ServiceDescription localServiceDescription1 = new ServiceDescription();
    localServiceDescription1.setClassName(GestureServiceImpl.class.getName());
    localServiceDescription1.setInterfaceClass(GestureService.class.getName());
    localServiceDescription1.setLazy(true);
    this.services.add(localServiceDescription1);
    ServiceDescription localServiceDescription2 = new ServiceDescription();
    localServiceDescription2.setClassName(ScreenOnOffService.class.getName());
    localServiceDescription2.setInterfaceClass(ScreenOnOffService.class.getName());
    localServiceDescription2.setLazy(false);
    this.services.add(localServiceDescription2);
    BroadcastReceiverDescription localBroadcastReceiverDescription1 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription1.setName("GestureMsgReceiver");
    localBroadcastReceiverDescription1.setClassName(GestureMsgReceiver.class.getName());
    localBroadcastReceiverDescription1.setMsgCode(new String[] { "com.alipay.mobile.framework.ACTIVITY_START", "com.alipay.mobile.framework.USERLEAVEHINT" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription1);
    ServiceDescription localServiceDescription3 = new ServiceDescription();
    localServiceDescription3.setClassName(ChangedTimeReceiver.class.getName());
    localServiceDescription3.setInterfaceClass(ChangedTimeReceiver.class.getName());
    localServiceDescription3.setLazy(false);
    this.services.add(localServiceDescription3);
    BroadcastReceiverDescription localBroadcastReceiverDescription2 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription2.setName("ActivityResumeService");
    localBroadcastReceiverDescription2.setClassName(ActivityResumeService.class.getName());
    localBroadcastReceiverDescription2.setMsgCode(new String[] { "com.alipay.mobile.framework.ACTIVITY_RESUME" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.MetaInfo
 * JD-Core Version:    0.6.2
 */
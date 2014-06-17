package com.alipay.mobile.base;

import com.alipay.mobile.base.alivereport.AliveReportBroadCastReceiver;
import com.alipay.mobile.base.receiver.FrameInitedBroadcastReceiver;
import com.alipay.mobile.command.trigger.LoginTrigger;
import com.alipay.mobile.common.ui.contacts.AccountSwitchReceiver;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.logmonitor.trigger.AppActivityAction;
import com.alipay.mobile.phonecashier.assist.PhoneCashierAssistService;
import com.alipay.mobile.phonecashier.assist.PhoneCashierAssistServiceImpl;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    BroadcastReceiverDescription localBroadcastReceiverDescription1 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription1.setMsgCode(new String[] { "com.alipay.mobile.client.STARTED", "com.alipay.mobile.framework.ACTIVITY_RESUME", "com.alipay.mobile.framework.USERLEAVEHINT" });
    localBroadcastReceiverDescription1.setClassName(AliveReportBroadCastReceiver.class.getName());
    this.broadcastReceivers.add(localBroadcastReceiverDescription1);
    BroadcastReceiverDescription localBroadcastReceiverDescription2 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription2.setMsgCode(new String[] { "com.alipay.mobile.client.STARTED" });
    localBroadcastReceiverDescription2.setClassName(FrameInitedBroadcastReceiver.class.getName());
    this.broadcastReceivers.add(localBroadcastReceiverDescription2);
    BroadcastReceiverDescription localBroadcastReceiverDescription3 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription3.setMsgCode(new String[] { "com.alipay.security.login" });
    localBroadcastReceiverDescription3.setClassName(LoginTrigger.class.getName());
    this.broadcastReceivers.add(localBroadcastReceiverDescription3);
    BroadcastReceiverDescription localBroadcastReceiverDescription4 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription4.setMsgCode(new String[] { "com.alipay.mobile.framework.USERLEAVEHINT", "com.alipay.mobile.framework.ACTIVITY_START" });
    localBroadcastReceiverDescription4.setClassName(AppActivityAction.class.getName());
    this.broadcastReceivers.add(localBroadcastReceiverDescription4);
    BroadcastReceiverDescription localBroadcastReceiverDescription5 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription5.setName("AccountSwitchReceiver");
    localBroadcastReceiverDescription5.setClassName(AccountSwitchReceiver.class.getName());
    localBroadcastReceiverDescription5.setMsgCode(new String[] { "com.alipay.security.login" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription5);
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setName("PhoneCashierAssitService");
    localServiceDescription.setClassName(PhoneCashierAssistServiceImpl.class.getName());
    localServiceDescription.setInterfaceClass(PhoneCashierAssistService.class.getName());
    localServiceDescription.setLazy(true);
    this.services.add(localServiceDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.MetaInfo
 * JD-Core Version:    0.6.2
 */
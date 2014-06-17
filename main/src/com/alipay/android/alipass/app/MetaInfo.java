package com.alipay.android.alipass.app;

import com.alipay.mobile.alipassapp.biz.service.AlipassBroadcastReceiver;
import com.alipay.mobile.alipassapp.biz.service.a;
import com.alipay.mobile.alipassapp.biz.service.b;
import com.alipay.mobile.alipassapp.biz.service.d;
import com.alipay.mobile.alipassapp.biz.service.e;
import com.alipay.mobile.alipassapp.ui.common.ae;
import com.alipay.mobile.discoverycommon.api.service.AlipassAppEntryDistributeService;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "alipass";
    ApplicationDescription localApplicationDescription1 = new ApplicationDescription();
    localApplicationDescription1.setName("alipass");
    localApplicationDescription1.setClassName("com.alipay.mobile.alipassapp.ui.app.AlipassApp");
    localApplicationDescription1.setAppId("20000021");
    this.applications.add(localApplicationDescription1);
    ApplicationDescription localApplicationDescription2 = new ApplicationDescription();
    localApplicationDescription2.setName("alipass");
    localApplicationDescription2.setClassName("com.alipay.mobile.alipassapp.ui.app.AlipassApp");
    localApplicationDescription2.setAppId("09999987");
    this.applications.add(localApplicationDescription2);
    ApplicationDescription localApplicationDescription3 = new ApplicationDescription();
    localApplicationDescription3.setName("alipass");
    localApplicationDescription3.setClassName("com.alipay.mobile.alipassapp.ui.app.AlipassApp");
    localApplicationDescription3.setAppId("20000030");
    this.applications.add(localApplicationDescription3);
    ApplicationDescription localApplicationDescription4 = new ApplicationDescription();
    localApplicationDescription4.setName("alipass");
    localApplicationDescription4.setClassName("com.alipay.mobile.alipassapp.ui.app.AlipassApp");
    localApplicationDescription4.setAppId("20000062");
    this.applications.add(localApplicationDescription4);
    ServiceDescription localServiceDescription1 = new ServiceDescription();
    localServiceDescription1.setClassName(e.class.getName());
    localServiceDescription1.setInterfaceClass(d.class.getName());
    localServiceDescription1.setLazy(true);
    this.services.add(localServiceDescription1);
    ServiceDescription localServiceDescription2 = new ServiceDescription();
    localServiceDescription2.setClassName(a.class.getName());
    localServiceDescription2.setInterfaceClass(AlipassAppEntryDistributeService.class.getName());
    localServiceDescription2.setLazy(true);
    this.services.add(localServiceDescription2);
    ServiceDescription localServiceDescription3 = new ServiceDescription();
    localServiceDescription3.setClassName(b.class.getName());
    localServiceDescription3.setInterfaceClass(CreateDynamicCodeService.class.getName());
    localServiceDescription3.setLazy(true);
    this.services.add(localServiceDescription3);
    ServiceDescription localServiceDescription4 = new ServiceDescription();
    localServiceDescription4.setClassName(ae.class.getName());
    localServiceDescription4.setInterfaceClass(AlipassPayBridgeService.class.getName());
    localServiceDescription4.setLazy(true);
    this.services.add(localServiceDescription4);
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setName("AlipassBroadcastReceiver");
    localBroadcastReceiverDescription.setClassName(AlipassBroadcastReceiver.class.getName());
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.security.login", "com.alipay.mobile.framework.USERLEAVEHINT", "com.alipay.mobile.push.CMD_TRANSFERD" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.alipass.app.MetaInfo
 * JD-Core Version:    0.6.2
 */
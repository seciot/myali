package com.alipay.android.widget.init.security;

import com.alipay.android.widget.security.msgreceiver.SecurityInitMsgReceiver;
import com.alipay.android.widget.security.msgreceiver.TaobaoSsoTokenWriteBackTrigger_;
import com.alipay.android.widget.security.service.SecurityInitServiceImpl;
import com.alipay.android.widget.security.service.TaobaoBindingServiceImpl;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.interfaces.InterfaceDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.security.SecurityInitService;
import com.alipay.mobile.framework.service.ext.security.TaobaoBindingService;
import com.alipay.mobile.security.accountmanager.AccountInfo.biz.SecurityAccountQrCode;
import com.alipay.mobile.security.accountmanager.AccountInfo.biz.impl.SecurityAccountQrCodeImpl;
import com.alipay.mobile.security.startIntercept.SecurityStartIntercept;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    InterfaceDescription localInterfaceDescription = new InterfaceDescription();
    localInterfaceDescription.setClassName(SecurityStartIntercept.class.getName());
    this.interfaces.add(localInterfaceDescription);
    ServiceDescription localServiceDescription1 = new ServiceDescription();
    localServiceDescription1.setClassName(SecurityInitServiceImpl.class.getName());
    localServiceDescription1.setInterfaceClass(SecurityInitService.class.getName());
    localServiceDescription1.setLazy(true);
    this.services.add(localServiceDescription1);
    ServiceDescription localServiceDescription2 = new ServiceDescription();
    localServiceDescription2.setClassName(TaobaoBindingServiceImpl.class.getName());
    localServiceDescription2.setInterfaceClass(TaobaoBindingService.class.getName());
    localServiceDescription2.setLazy(true);
    this.services.add(localServiceDescription2);
    ServiceDescription localServiceDescription3 = new ServiceDescription();
    localServiceDescription3.setClassName(SecurityAccountQrCodeImpl.class.getName());
    localServiceDescription3.setInterfaceClass(SecurityAccountQrCode.class.getName());
    localServiceDescription2.setLazy(true);
    this.services.add(localServiceDescription3);
    BroadcastReceiverDescription localBroadcastReceiverDescription1 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription1.setClassName(SecurityInitMsgReceiver.class.getName());
    localBroadcastReceiverDescription1.setMsgCode(new String[] { "com.alipay.security.login", "com.alipay.security.init" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription1);
    BroadcastReceiverDescription localBroadcastReceiverDescription2 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription2.setClassName(TaobaoSsoTokenWriteBackTrigger_.class.getName());
    localBroadcastReceiverDescription2.setMsgCode(new String[] { "com.alipay.security.login" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.init.security.MetaInfo
 * JD-Core Version:    0.6.2
 */
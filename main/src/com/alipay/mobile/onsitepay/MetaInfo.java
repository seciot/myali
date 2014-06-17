package com.alipay.mobile.onsitepay;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackList;
import com.alipay.mobile.onsitepay.phoneblacklist.PhoneBlackListImpl;
import com.alipay.mobile.onsitepay.receiver.LoginAndPayBroadCastReceiver;
import com.alipay.mobile.onsitepay.receiver.LogoutBroadCastReceiver;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ApplicationDescription localApplicationDescription1 = new ApplicationDescription();
    localApplicationDescription1.setName("SendSoundApp");
    localApplicationDescription1.setClassName("com.alipay.mobile.onsitepay.payer.FacePayerApp");
    localApplicationDescription1.setAppId("10000014");
    ApplicationDescription localApplicationDescription2 = new ApplicationDescription();
    localApplicationDescription2.setName("oldBarcodePayerApp");
    localApplicationDescription2.setClassName("com.alipay.mobile.onsitepay.payer.BarcodePayerApp");
    localApplicationDescription2.setAppId("20000056");
    ApplicationDescription localApplicationDescription3 = new ApplicationDescription();
    localApplicationDescription3.setName("C2CPayeeApp");
    localApplicationDescription3.setClassName("com.alipay.mobile.onsitepay.payee.FacePayeeApp");
    localApplicationDescription3.setAppId("10000013");
    this.applications.add(localApplicationDescription1);
    this.applications.add(localApplicationDescription3);
    this.applications.add(localApplicationDescription2);
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setClassName(PhoneBlackListImpl.class.getName());
    localServiceDescription.setInterfaceClass(PhoneBlackList.class.getName());
    localServiceDescription.setLazy(true);
    this.services.add(localServiceDescription);
    BroadcastReceiverDescription localBroadcastReceiverDescription1 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription1.setName("LoginAndPayBroadCastReceiver");
    localBroadcastReceiverDescription1.setClassName(LoginAndPayBroadCastReceiver.class.getName());
    localBroadcastReceiverDescription1.setMsgCode(new String[] { "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED", "com.alipay.security.login" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription1);
    BroadcastReceiverDescription localBroadcastReceiverDescription2 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription2.setName("LogoutBroadCastReceiver");
    localBroadcastReceiverDescription2.setClassName(LogoutBroadCastReceiver.class.getName());
    localBroadcastReceiverDescription2.setMsgCode(new String[] { "com.alipay.security.logout" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.MetaInfo
 * JD-Core Version:    0.6.2
 */
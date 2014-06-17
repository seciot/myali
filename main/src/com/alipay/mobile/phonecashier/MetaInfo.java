package com.alipay.mobile.phonecashier;

import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.android.app.pay.PayHelperServcieImpl;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;
import com.alipay.mobile.phonecashier.service.PhoneCashierServiceImpl;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "MspSettingsApp";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("MspSettingsApp").setClassName("com.alipay.android.setting.MspSettingsApp").setAppId("20000024");
    this.applications.add(localApplicationDescription);
    ServiceDescription localServiceDescription1 = new ServiceDescription();
    localServiceDescription1.setInterfaceClass(PhoneCashierServcie.class.getName());
    localServiceDescription1.setClassName(PhoneCashierServiceImpl.class.getName());
    this.services.add(localServiceDescription1);
    ServiceDescription localServiceDescription2 = new ServiceDescription();
    localServiceDescription2.setInterfaceClass(PayHelperServcie.class.getName());
    localServiceDescription2.setClassName(PayHelperServcieImpl.class.getName());
    this.services.add(localServiceDescription2);
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setName("AccountChangeReceiver");
    localBroadcastReceiverDescription.setClassName(AccountChangeReceiver.class.getName());
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.security.login" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.MetaInfo
 * JD-Core Version:    0.6.2
 */
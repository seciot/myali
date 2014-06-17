package com.alipay.android.phone.home;

import com.alipay.android.phone.home.app.ClientStartupReceiver;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("AlipayHomeApplication").setClassName("com.alipay.android.phone.home.app.AlipayHomeApplication").setAppId("20000002");
    this.applications.add(localApplicationDescription);
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setClassName(ClientStartupReceiver.class.getName());
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.security.login" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.MetaInfo
 * JD-Core Version:    0.6.2
 */
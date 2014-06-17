package com.alipay.android.phone.publicplatform.home;

import com.alipay.android.phone.publicplatform.main.service.PublicMainService;
import com.alipay.android.phone.publicplatform.receiver.PublicHomeWidgetGroupReceiver_;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.publicsvc.home.proguard.d.a;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setClassName(PublicHomeWidgetGroupReceiver_.class.getName());
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.mobile.intent.action.UPDATETODOLIST", "com.alipay.security.login", "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED", "com.alipay.mobile.android.main.publichome.add", "com.alipay.mobile.android.main.publichome.remove", "com.alipay.mobile.android.main.publichome.sorttimeupdate", "com.alipay.mobile.android.main.publichome.refresh", "notifyHomeRefresh", "com.alipay.security.logout", "com.alipay.mobile.LAUNCHER_TAB_CHANGED" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setClassName(a.class.getName());
    localServiceDescription.setInterfaceClass(PublicMainService.class.getName());
    localServiceDescription.setLazy(false);
    this.services.add(localServiceDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.MetaInfo
 * JD-Core Version:    0.6.2
 */
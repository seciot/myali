package com.alipay.mobile.appstoreapp;

import com.alipay.mobile.appstoreapp.download.ExternalDownloadManagerImpl;
import com.alipay.mobile.appstoreapp.download.ExternalDownloadStatusReceiver;
import com.alipay.mobile.appstoreapp.manager.AppInstallStatusServiceImpl;
import com.alipay.mobile.appstoreapp.manager.AppManageServiceImpl;
import com.alipay.mobile.appstoreapp.receiver.ClientSetupReceiver;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallStatusService;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "AppStoreApp";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("AppStoreApp").setClassName("com.alipay.mobile.appstoreapp.app.AppStoreApp").setAppId("10000111");
    this.applications.add(localApplicationDescription);
    ServiceDescription localServiceDescription1 = new ServiceDescription();
    localServiceDescription1.setClassName(ExternalDownloadManagerImpl.class.getName());
    localServiceDescription1.setInterfaceClass(ExternalDownloadManager.class.getName());
    localServiceDescription1.setLazy(true);
    this.services.add(localServiceDescription1);
    BroadcastReceiverDescription localBroadcastReceiverDescription1 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription1.setClassName(ExternalDownloadStatusReceiver.class.getName());
    localBroadcastReceiverDescription1.setName("ExternalDownloadStatusReceiver");
    localBroadcastReceiverDescription1.setMsgCode(new String[] { "com.alipay.android.EXT_DOWNLOAD_EVENT_FILTER" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription1);
    ServiceDescription localServiceDescription2 = new ServiceDescription();
    localServiceDescription2.setClassName(AppManageServiceImpl.class.getName());
    localServiceDescription2.setInterfaceClass(AppManageService.class.getName());
    localServiceDescription2.setLazy(false);
    this.services.add(localServiceDescription2);
    ServiceDescription localServiceDescription3 = new ServiceDescription();
    localServiceDescription3.setClassName(AppInstallStatusServiceImpl.class.getName());
    localServiceDescription3.setInterfaceClass(AppInstallStatusService.class.getName());
    localServiceDescription3.setLazy(false);
    this.services.add(localServiceDescription3);
    BroadcastReceiverDescription localBroadcastReceiverDescription2 = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription2.setClassName(ClientSetupReceiver.class.getName());
    localBroadcastReceiverDescription2.setMsgCode(new String[] { "com.alipay.mobile.client.STARTED", "com.alipay.security.login" });
    this.broadcastReceivers.add(localBroadcastReceiverDescription2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.MetaInfo
 * JD-Core Version:    0.6.2
 */
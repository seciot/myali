package com.alipay.mobile.nfc;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.service.NFCService;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.impl.NFCServiceImpl;
import com.alipay.mobile.nfc.app.NfcApp;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("nfc").setClassName(NfcApp.class.getName()).setAppId("20000071");
    this.applications.add(localApplicationDescription);
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setClassName(NFCServiceImpl.class.getName());
    localServiceDescription.setInterfaceClass(NFCService.class.getName());
    localServiceDescription.setLazy(false);
    this.services.add(localServiceDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.MetaInfo
 * JD-Core Version:    0.6.2
 */
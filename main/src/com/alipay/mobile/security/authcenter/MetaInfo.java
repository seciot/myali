package com.alipay.mobile.security.authcenter;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.security.SMSService;
import com.alipay.mobile.security.authcenter.service.SMSServiceIml;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "LoginApp";
    ApplicationDescription localApplicationDescription1 = new ApplicationDescription();
    localApplicationDescription1.setName("LoginApp").setClassName("com.alipay.mobile.security.authcenter.app.LoginApp").setAppId("20000008");
    this.applications.add(localApplicationDescription1);
    ApplicationDescription localApplicationDescription2 = new ApplicationDescription();
    localApplicationDescription2.setName("LoginAppNew").setClassName("com.alipay.mobile.security.authcenter.app.LoginAppNew").setAppId("28000008");
    this.applications.add(localApplicationDescription2);
    ApplicationDescription localApplicationDescription3 = new ApplicationDescription();
    localApplicationDescription3.setName("RegisterApp").setClassName("com.alipay.mobile.security.authcenter.app.RegisterApp").setAppId("20000009");
    this.applications.add(localApplicationDescription3);
    ApplicationDescription localApplicationDescription4 = new ApplicationDescription();
    localApplicationDescription4.setName("SelectAccountApp").setClassName("com.alipay.mobile.security.authcenter.app").setAppId("20000018");
    this.applications.add(localApplicationDescription4);
    ApplicationDescription localApplicationDescription5 = new ApplicationDescription();
    localApplicationDescription5.setName("CompleteUserInfoApp");
    localApplicationDescription5.setAppId("20001017");
    localApplicationDescription5.setClassName("com.alipay.mobile.security.authcenter.app.CompleteUserInfoApp");
    this.applications.add(localApplicationDescription5);
    ApplicationDescription localApplicationDescription6 = new ApplicationDescription();
    localApplicationDescription6.setName("ExternalLoginApp");
    localApplicationDescription6.setAppId("20000034");
    localApplicationDescription6.setClassName("com.alipay.mobile.security.authcenter.app.ExternalLoginApp");
    this.applications.add(localApplicationDescription6);
    ApplicationDescription localApplicationDescription7 = new ApplicationDescription();
    localApplicationDescription7.setName("ExternalLoginApp");
    localApplicationDescription7.setAppId("20000044");
    localApplicationDescription7.setClassName("com.alipay.mobile.security.authcenter.app.ExternalLoginApp");
    this.applications.add(localApplicationDescription7);
    ApplicationDescription localApplicationDescription8 = new ApplicationDescription();
    localApplicationDescription8.setName("nfcSettingApp").setClassName("com.alipay.android.widget.security.app.NFCSettingApp").setAppId("20000102");
    this.applications.add(localApplicationDescription8);
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setClassName(SMSServiceIml.class.getName());
    localServiceDescription.setInterfaceClass(SMSService.class.getName());
    localServiceDescription.setLazy(true);
    this.services.add(localServiceDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.MetaInfo
 * JD-Core Version:    0.6.2
 */
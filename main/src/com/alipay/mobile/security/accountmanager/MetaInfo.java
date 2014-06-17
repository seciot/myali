package com.alipay.mobile.security.accountmanager;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;
import com.alipay.mobile.framework.service.ext.security.SelectAccountService;
import com.alipay.mobile.security.accountmanager.service.BindPhoneServiceImpl;
import com.alipay.mobile.security.accountmanager.service.SelectAccountServiceImpl;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ApplicationDescription localApplicationDescription1 = new ApplicationDescription();
    localApplicationDescription1.setName("ModifyPayPwdApp");
    localApplicationDescription1.setAppId("20000016");
    localApplicationDescription1.setClassName("com.alipay.mobile.security.accountmanager.app.ModifyPayPwdApp");
    this.applications.add(localApplicationDescription1);
    ApplicationDescription localApplicationDescription2 = new ApplicationDescription();
    localApplicationDescription2.setName("ForgotPayPwdApp");
    localApplicationDescription2.setAppId("20000013");
    localApplicationDescription2.setClassName("com.alipay.mobile.security.accountmanager.app.ForgotPayPwdApp");
    this.applications.add(localApplicationDescription2);
    ApplicationDescription localApplicationDescription3 = new ApplicationDescription();
    localApplicationDescription3.setName("ModifyLoginPwdApp");
    localApplicationDescription3.setAppId("20000017");
    localApplicationDescription3.setClassName("com.alipay.mobile.security.accountmanager.app.ModifyLoginPwdApp");
    this.applications.add(localApplicationDescription3);
    ApplicationDescription localApplicationDescription4 = new ApplicationDescription();
    localApplicationDescription4.setName("ForgotLoginPwdApp");
    localApplicationDescription4.setAppId("20000015");
    localApplicationDescription4.setClassName("com.alipay.mobile.security.accountmanager.app.ForgotLoginPwdApp");
    this.applications.add(localApplicationDescription4);
    ApplicationDescription localApplicationDescription5 = new ApplicationDescription();
    localApplicationDescription5.setName("BindPhoneApp");
    localApplicationDescription5.setAppId("20000010");
    localApplicationDescription5.setClassName("com.alipay.mobile.security.accountmanager.app.BindPhoneApp");
    this.applications.add(localApplicationDescription5);
    ApplicationDescription localApplicationDescription6 = new ApplicationDescription();
    localApplicationDescription6.setName("SelectAccountApp");
    localApplicationDescription6.setAppId("20000018");
    localApplicationDescription6.setClassName("com.alipay.mobile.security.accountmanager.app.SelectAccountApp");
    this.applications.add(localApplicationDescription6);
    ApplicationDescription localApplicationDescription7 = new ApplicationDescription();
    localApplicationDescription7.setName("AccountManagerApp");
    localApplicationDescription7.setAppId("20000027");
    localApplicationDescription7.setClassName("com.alipay.mobile.security.accountmanager.app.AccountManagerApp");
    this.applications.add(localApplicationDescription7);
    ApplicationDescription localApplicationDescription8 = new ApplicationDescription();
    localApplicationDescription8.setName("AccountInfoApp");
    localApplicationDescription8.setAppId("20000070");
    localApplicationDescription8.setClassName("com.alipay.mobile.security.accountmanager.app.AccountInfoApp");
    this.applications.add(localApplicationDescription8);
    ApplicationDescription localApplicationDescription9 = new ApplicationDescription();
    localApplicationDescription9.setName("TransferDataInfoApp");
    localApplicationDescription9.setAppId("20000069");
    localApplicationDescription9.setClassName("com.alipay.mobile.security.accountmanager.app.TransferDataInfoApp");
    this.applications.add(localApplicationDescription9);
    ApplicationDescription localApplicationDescription10 = new ApplicationDescription();
    localApplicationDescription10.setName("SecurityWebviewApp");
    localApplicationDescription10.setAppId("20000111");
    localApplicationDescription10.setClassName("com.alipay.android.widget.security.app.SecurityWebviewApp");
    this.applications.add(localApplicationDescription10);
    ServiceDescription localServiceDescription1 = new ServiceDescription();
    localServiceDescription1.setClassName(BindPhoneServiceImpl.class.getName());
    localServiceDescription1.setInterfaceClass(BindPhoneService.class.getName());
    localServiceDescription1.setLazy(true);
    this.services.add(localServiceDescription1);
    ServiceDescription localServiceDescription2 = new ServiceDescription();
    localServiceDescription2.setClassName(SelectAccountServiceImpl.class.getName());
    localServiceDescription2.setInterfaceClass(SelectAccountService.class.getName());
    localServiceDescription2.setLazy(true);
    this.services.add(localServiceDescription2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.MetaInfo
 * JD-Core Version:    0.6.2
 */
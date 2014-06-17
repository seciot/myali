package com.alipay.mobile.accountauth;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.security.AccountImportService;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.LogoutService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.UserInfoService;
import com.alipay.mobile.security.accountmanager.service.AccountServiceImpl;
import com.alipay.mobile.security.accountmanager.service.LogoutServiceImpl;
import com.alipay.mobile.security.accountmanager.service.RSAServiceImpl;
import com.alipay.mobile.security.accountmanager.service.UserInfoServiceImpl;
import com.alipay.mobile.security.authcenter.service.AccountImportServiceImpl;
import com.alipay.mobile.security.authcenter.service.AuthServiceImpl;
import com.alipay.mobile.security.authcenter.service.DeviceServiceImpl;
import com.alipay.mobile.security.authcenter.service.LoginServiceImpl;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ServiceDescription localServiceDescription1 = new ServiceDescription();
    localServiceDescription1.setClassName(DeviceServiceImpl.class.getName());
    localServiceDescription1.setInterfaceClass(DeviceService.class.getName());
    localServiceDescription1.setLazy(true);
    this.services.add(localServiceDescription1);
    ServiceDescription localServiceDescription2 = new ServiceDescription();
    localServiceDescription2.setClassName(LoginServiceImpl.class.getName());
    localServiceDescription2.setInterfaceClass(LoginService.class.getName());
    localServiceDescription2.setLazy(true);
    this.services.add(localServiceDescription2);
    ServiceDescription localServiceDescription3 = new ServiceDescription();
    localServiceDescription3.setClassName(AuthServiceImpl.class.getName());
    localServiceDescription3.setInterfaceClass(AuthService.class.getName());
    localServiceDescription3.setLazy(true);
    this.services.add(localServiceDescription3);
    ServiceDescription localServiceDescription4 = new ServiceDescription();
    localServiceDescription4.setClassName(AccountImportServiceImpl.class.getName());
    localServiceDescription4.setInterfaceClass(AccountImportService.class.getName());
    localServiceDescription4.setLazy(true);
    this.services.add(localServiceDescription4);
    ServiceDescription localServiceDescription5 = new ServiceDescription();
    localServiceDescription5.setClassName(UserInfoServiceImpl.class.getName());
    localServiceDescription5.setInterfaceClass(UserInfoService.class.getName());
    localServiceDescription5.setLazy(true);
    this.services.add(localServiceDescription5);
    ServiceDescription localServiceDescription6 = new ServiceDescription();
    localServiceDescription6.setClassName(AccountServiceImpl.class.getName());
    localServiceDescription6.setInterfaceClass(AccountService.class.getName());
    localServiceDescription6.setLazy(true);
    this.services.add(localServiceDescription6);
    ServiceDescription localServiceDescription7 = new ServiceDescription();
    localServiceDescription7.setClassName(RSAServiceImpl.class.getName());
    localServiceDescription7.setInterfaceClass(RSAService.class.getName());
    localServiceDescription7.setLazy(true);
    this.services.add(localServiceDescription7);
    ServiceDescription localServiceDescription8 = new ServiceDescription();
    localServiceDescription8.setClassName(LogoutServiceImpl.class.getName());
    localServiceDescription8.setInterfaceClass(LogoutService.class.getName());
    localServiceDescription8.setLazy(true);
    this.services.add(localServiceDescription8);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.accountauth.MetaInfo
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.authorization;

import com.alipay.mobile.authorization.app.AuthorizationApp;
import com.alipay.mobile.authorization.app.ThirdPartyAuthorizeServiceImpl;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.openplatform.service.ThirdPartyAuthorizeService;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "authorization";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("authorization").setClassName(AuthorizationApp.class.getName()).setAppId("10000112");
    this.applications.add(localApplicationDescription);
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setClassName(ThirdPartyAuthorizeServiceImpl.class.getName());
    localServiceDescription.setInterfaceClass(ThirdPartyAuthorizeService.class.getName());
    localServiceDescription.setLazy(true);
    this.services.add(localServiceDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.MetaInfo
 * JD-Core Version:    0.6.2
 */
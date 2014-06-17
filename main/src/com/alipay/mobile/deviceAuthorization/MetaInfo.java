package com.alipay.mobile.deviceAuthorization;

import com.alipay.mobile.deviceAuthorization.app.AuthorizationApp;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "deviceAuthorization";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("deviceAuthorization").setClassName(AuthorizationApp.class.getName()).setAppId("20000055");
    this.applications.add(localApplicationDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.MetaInfo
 * JD-Core Version:    0.6.2
 */
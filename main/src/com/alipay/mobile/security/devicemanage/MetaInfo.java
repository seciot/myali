package com.alipay.mobile.security.devicemanage;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("DeviceManageApp").setClassName("com.alipay.mobile.security.devicemanage.app.DeviceManageApp").setAppId("20000115");
    this.applications.add(localApplicationDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.devicemanage.MetaInfo
 * JD-Core Version:    0.6.2
 */
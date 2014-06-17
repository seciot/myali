package com.alipay.mobile.base.bundlemng;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.service.ServiceDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setName("BundleUpdateService");
    localServiceDescription.setClassName(BundleUpdateService.class.getName());
    localServiceDescription.setInterfaceClass(BundleUpdateService.class.getName());
    localServiceDescription.setLazy(false);
    this.services.add(localServiceDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.bundlemng.MetaInfo
 * JD-Core Version:    0.6.2
 */
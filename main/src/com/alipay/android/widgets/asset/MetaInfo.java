package com.alipay.android.widgets.asset;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("AssetApp").setClassName("com.alipay.android.widgets.asset.AssetApp").setAppId("20000004");
    this.applications.add(localApplicationDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.MetaInfo
 * JD-Core Version:    0.6.2
 */
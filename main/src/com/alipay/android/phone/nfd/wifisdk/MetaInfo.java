package com.alipay.android.phone.nfd.wifisdk;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "WifiSdk";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("WifiSdk").setClassName("com.alipay.android.phone.nfd.wifisdk.app.WifiSdk").setAppId("20000112");
    this.applications.add(localApplicationDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.MetaInfo
 * JD-Core Version:    0.6.2
 */
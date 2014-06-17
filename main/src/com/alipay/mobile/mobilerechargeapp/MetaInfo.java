package com.alipay.mobile.mobilerechargeapp;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "MobileRechargeApp";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("MobileRechargeApp");
    localApplicationDescription.setClassName("com.alipay.mobile.mobilerechargeapp.MobileRechargeApp");
    localApplicationDescription.setAppId("10000003");
    this.applications.add(localApplicationDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.MetaInfo
 * JD-Core Version:    0.6.2
 */
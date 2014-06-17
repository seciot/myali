package com.alipay.mobile.withdraw.app;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "WithdrawApp";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("WithdrawApp");
    localApplicationDescription.setClassName("com.alipay.mobile.withdraw.app.WithdrawApp");
    localApplicationDescription.setAppId("20000033");
    this.applications.add(localApplicationDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.app.MetaInfo
 * JD-Core Version:    0.6.2
 */
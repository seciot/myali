package com.alipay.mobile.android.avatar.app;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ApplicationDescription localApplicationDescription1 = new ApplicationDescription();
    localApplicationDescription1.setName("AvatarApplication").setClassName("com.alipay.mobile.android.avatar.app.AvatarApplication").setAppId("20000031");
    this.applications.add(localApplicationDescription1);
    ApplicationDescription localApplicationDescription2 = new ApplicationDescription();
    localApplicationDescription2.setName("SecuritySmsGuardApp");
    localApplicationDescription2.setClassName("com.alipay.android.widget.security.app.SecuritySmsGuardApp");
    localApplicationDescription2.setAppId("20000117");
    this.applications.add(localApplicationDescription2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.avatar.app.MetaInfo
 * JD-Core Version:    0.6.2
 */
package com.alipay.android.alipass.nfc.app;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "alipassnfc";
    ApplicationDescription localApplicationDescription = new ApplicationDescription();
    localApplicationDescription.setName("alipassnfc");
    localApplicationDescription.setClassName("com.alipay.mobile.alipassnfcapp.ui.app.AlipassNfcApp");
    localApplicationDescription.setAppId("20000045");
    this.applications.add(localApplicationDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.alipass.nfc.app.MetaInfo
 * JD-Core Version:    0.6.2
 */
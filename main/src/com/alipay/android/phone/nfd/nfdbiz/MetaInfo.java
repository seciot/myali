package com.alipay.android.phone.nfd.nfdbiz;

import com.alipay.android.phone.nfd.nfdbiz.biz.WifiSnifferServiceImpl;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.nfd.nfdbiz.service.WifiSnifferService;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    WifiSnifferServiceImpl localWifiSnifferServiceImpl = new WifiSnifferServiceImpl();
    localWifiSnifferServiceImpl.attachContext(AlipayApplication.getInstance().getMicroApplicationContext());
    AlipayApplication.getInstance().getMicroApplicationContext().registerService(WifiSnifferService.class.getName(), localWifiSnifferServiceImpl);
    localWifiSnifferServiceImpl.create(null);
    localWifiSnifferServiceImpl.regestLongLinkReserv();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.MetaInfo
 * JD-Core Version:    0.6.2
 */
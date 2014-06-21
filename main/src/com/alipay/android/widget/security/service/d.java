package com.alipay.android.widget.security.service;

import com.alipay.android.widget.security.a.a;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import java.util.List;

final class d
  implements Runnable
{
  d(SecurityInitServiceImpl paramSecurityInitServiceImpl, List paramList)
  {
  }

  public final void run()
  {
    MspDeviceInfoBean localMspDeviceInfoBean;
    if ((this.b.c != null) && (this.a != null))
    {
      String str = this.b.c.queryDeviceInfo().getWalletTid();
      new StringBuilder("walletTid=").append(str).toString();
      localMspDeviceInfoBean = this.b.c.queryCertification();
      if ((str != null) && (!StringUtils.isEmpty(str.trim())) && (!str.equals(localMspDeviceInfoBean.getTid())));
    }
    else
    {
      return;
    }
    MobileSecurityResult localMobileSecurityResult = SecurityInitServiceImpl.access$200(this.b).v(localMspDeviceInfoBean, this.a);
    this.b.handleUpdateLoginResult(localMobileSecurityResult);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.d
 * JD-Core Version:    0.6.2
 */
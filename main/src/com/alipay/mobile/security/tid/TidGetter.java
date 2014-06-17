package com.alipay.mobile.security.tid;

import android.text.TextUtils;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobilesecurity.core.model.Tid;

public class TidGetter
{
  private MicroApplicationContext a;
  private DeviceService b;

  public TidGetter(MicroApplicationContext paramMicroApplicationContext)
  {
    this.a = paramMicroApplicationContext;
    this.b = ((DeviceService)this.a.getExtServiceByInterface(DeviceService.class.getName()));
  }

  private Tid a()
  {
    Tid localTid = new Tid();
    MspDeviceInfoBean localMspDeviceInfoBean = this.b.queryCertification();
    localTid.setClientKey(localMspDeviceInfoBean.getMspkey());
    localTid.setImei(localMspDeviceInfoBean.getImei());
    localTid.setImsi(localMspDeviceInfoBean.getImsi());
    localTid.setTid(localMspDeviceInfoBean.getTid());
    localTid.setVimei(localMspDeviceInfoBean.getVimei());
    localTid.setVimsi(localMspDeviceInfoBean.getVimsi());
    return localTid;
  }

  public Tid getClientTid()
  {
    Tid localTid;
    if (CacheSet.getInstance(AlipayApplication.getInstance().getApplicationContext()).getBoolean("isUpdateAutoLoginKey", false))
      localTid = a();
    do
    {
      return localTid;
      localTid = new Tid();
      DeviceInfoBean localDeviceInfoBean = this.b.queryDeviceInfo();
      localTid.setClientKey(DeviceInfo.getInstance().getmClientKey());
      localTid.setImei(DeviceInfo.getInstance().getImei());
      localTid.setImsi(DeviceInfo.getInstance().getImsi());
      localTid.setTid(localDeviceInfoBean.getWalletTid());
    }
    while (!TextUtils.isEmpty(localTid.getTid()));
    return a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.tid.TidGetter
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;

public abstract class DeviceService extends ExternalService
{
  public abstract boolean addDeviceInfo(DeviceInfoBean paramDeviceInfoBean);

  public abstract void generateDid(DeviceCallBack paramDeviceCallBack);

  public abstract MspDeviceInfoBean queryCertification();

  public abstract DeviceInfoBean queryDeviceInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.DeviceService
 * JD-Core Version:    0.6.2
 */
package com.alipay.mobile.security.authcenter.service;

import android.os.Bundle;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityShareStore;
import com.alipay.mobile.framework.service.ext.security.DeviceCallBack;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.SecurityInitService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.security.authcenter.msp.QueryMspCertification;

public class DeviceServiceImpl extends DeviceService
{
  final String a = "DeviceServiceImpl";
  DeviceCallBack b;

  public boolean addDeviceInfo(DeviceInfoBean paramDeviceInfoBean)
  {
    if (paramDeviceInfoBean != null)
      SecurityShareStore.putString(getMicroApplicationContext().getApplicationContext(), "walletTid", paramDeviceInfoBean.getWalletTid());
    return false;
  }

  public boolean genTid(String paramString)
  {
    ((SecurityInitService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(SecurityInitService.class.getName())).copyMspTidToWalletId();
    return false;
  }

  public void generateDid(DeviceCallBack paramDeviceCallBack)
  {
    this.b = paramDeviceCallBack;
    DeviceInfo localDeviceInfo = DeviceInfo.getInstance();
    if (genTid(localDeviceInfo.getmClientKey()))
      genTid(localDeviceInfo.refleshClientKey());
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public MspDeviceInfoBean queryCertification()
  {
    return new QueryMspCertification(getMicroApplicationContext().getApplicationContext()).queryMspTid();
  }

  public DeviceInfoBean queryDeviceInfo()
  {
    DeviceInfoBean localDeviceInfoBean = new DeviceInfoBean();
    localDeviceInfoBean.setWalletTid(SecurityShareStore.getString(getMicroApplicationContext().getApplicationContext(), "walletTid"));
    return localDeviceInfoBean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.DeviceServiceImpl
 * JD-Core Version:    0.6.2
 */